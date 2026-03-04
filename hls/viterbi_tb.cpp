// =============================================================================
// viterbi_tb.cpp
// HLS Testbench for vit_top_hls()
//
// Encodes a known 32-bit information word with the rate-1/2 K=3 convolutional
// encoder, then decodes it with the Viterbi decoder and checks the output.
//
// Compile (software sim):
//   g++ -std=c++14 -I$HLS_ROOT/include viterbi_tb.cpp viterbi_hls.cpp -o vit_sim
//
// Run Vitis HLS C-sim by adding this file as a testbench in the HLS project.
// =============================================================================
#include "viterbi_hls.h"
#include <stdio.h>
#include <stdlib.h>

// ---------------------------------------------------------------------------
// Rate-1/2 K=3 convolutional encoder
// Generator polynomials (octal): G0 = 5 (101), G1 = 7 (111)
//   Output bit 0 (g0) = d[0] ^ d[2]
//   Output bit 1 (g1) = d[0] ^ d[1] ^ d[2]
// where d[0] is the current input bit (MSB-first shift register).
// ---------------------------------------------------------------------------
static void conv_encode(const bool* info, int len, int8_t* g0_out, int8_t* g1_out)
{
    int sr[3] = {0, 0, 0};    // shift register (d[0]=newest, d[2]=oldest)
    for (int i = 0; i < len; i++) {
        sr[2] = sr[1];
        sr[1] = sr[0];
        sr[0] = (int)info[i];

        int c0 = sr[0] ^ sr[2];            // g0 = 101
        int c1 = sr[0] ^ sr[1] ^ sr[2];   // g1 = 111

        // BPSK: map 0->+1, 1->-1, scale by 8 (fits in 5-bit channel value)
        g0_out[i] = (int8_t)(c0 ? -8 : +8);
        g1_out[i] = (int8_t)(c1 ? -8 : +8);
    }
}

// ---------------------------------------------------------------------------
// Run one test frame
// ---------------------------------------------------------------------------
static int run_test(const bool* info_bits, uint16_t n_bits)
{
    // Encode (n_bits info + 2 tail zeros for trellis termination)
    int total = n_bits + 2;
    int8_t* g0v = new int8_t[total]();
    int8_t* g1v = new int8_t[total]();

    bool* padded = new bool[total]();
    for (int i = 0; i < n_bits; i++) padded[i] = info_bits[i];
    conv_encode(padded, total, g0v, g1v);

    // Pack into AXI stream
    hls::stream<vit_in_pkt_t>  s_in("s_in");
    hls::stream<vit_out_pkt_t> s_out("s_out");

    for (int i = 0; i < total; i++) {
        vit_in_pkt_t pkt = 0;
        // g0 in [4:0], g1 in [9:5]
        pkt.range(WL_CB - 1, 0)       = ap_int<WL_CB>(g0v[i]);
        pkt.range(2*WL_CB - 1, WL_CB) = ap_int<WL_CB>(g1v[i]);
        s_in.write(pkt);
    }

    // Run decoder
    vit_top_hls(s_in, s_out, (u16_t)n_bits, /*init_neg=*/true);

    // Collect output words
    bool decoded[64] = {};
    int  bit_count = 0;
    while (!s_out.empty()) {
        vit_out_pkt_t pkt = s_out.read();
        bool   valid   = (bool)pkt[16];
        u16_t  word    = (u16_t)(pkt & 0xFFFFu);
        if (!valid) continue;

        // Unpack 16 bits MSB-first
        for (int b = 15; b >= 0 && bit_count < n_bits; b--, bit_count++) {
            decoded[bit_count] = (bool)word[b];
        }
    }

    // Compare
    int errors = 0;
    for (int i = 0; i < n_bits; i++) {
        if (decoded[i] != info_bits[i]) {
            printf("  BIT ERROR at position %d: expected %d got %d\n",
                   i, (int)info_bits[i], (int)decoded[i]);
            errors++;
        }
    }

    delete[] g0v;
    delete[] g1v;
    delete[] padded;
    return errors;
}

// ---------------------------------------------------------------------------
// main
// ---------------------------------------------------------------------------
int main()
{
    int total_errors = 0;

    // ---- Test 1: 16 all-zeros ----
    printf("Test 1: 16 zero bits\n");
    {
        bool bits[16] = {};
        total_errors += run_test(bits, 16);
    }

    // ---- Test 2: 16 all-ones ----
    printf("Test 2: 16 one bits\n");
    {
        bool bits[16];
        for (int i = 0; i < 16; i++) bits[i] = 1;
        total_errors += run_test(bits, 16);
    }

    // ---- Test 3: alternating 0101... ----
    printf("Test 3: 32 alternating bits\n");
    {
        bool bits[32];
        for (int i = 0; i < 32; i++) bits[i] = (bool)(i & 1);
        total_errors += run_test(bits, 32);
    }

    // ---- Test 4: pseudo-random 32 bits ----
    printf("Test 4: 32 pseudo-random bits\n");
    {
        bool bits[32];
        unsigned lfsr = 0xACE1u;
        for (int i = 0; i < 32; i++) {
            bits[i] = lfsr & 1;
            lfsr = (lfsr >> 1) ^ (-(lfsr & 1u) & 0xB400u);
        }
        total_errors += run_test(bits, 32);
    }

    if (total_errors == 0)
        printf("\nAll tests PASSED.\n");
    else
        printf("\nFAILED with %d bit errors.\n", total_errors);

    return (total_errors == 0) ? 0 : 1;
}
