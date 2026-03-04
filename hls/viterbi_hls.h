#pragma once

#include <ap_int.h>
#include <hls_stream.h>
#include <stdint.h>

// -------------------------------------------------------
// Bit-width parameters (mirror RTL parameters)
// -------------------------------------------------------
#define WL_CB       5           // Channel sample bit-width
#define WL_BM       7           // Branch metric bit-width
#define WL_PM       9           // Path metric bit-width
#define WL_BM_PAD   (WL_PM - WL_BM)   // Sign-extension padding = 2

// Sliding-window traceback dimensions (mirror RTL 4 banks x 16 deep)
#define TB_NUM_BANKS    4
#define TB_BANK_DEPTH   16
#define TB_WINDOW       (TB_NUM_BANKS * TB_BANK_DEPTH)  // = 64 total

// -------------------------------------------------------
// Convenience typedefs
// -------------------------------------------------------
typedef ap_int<WL_CB>   cb_t;   // signed channel sample
typedef ap_int<WL_BM>   bm_t;   // signed branch metric
typedef ap_int<WL_PM>   pm_t;   // signed path metric
typedef ap_uint<4>      tb4_t;  // 4 traceback bits (one per state)
typedef ap_uint<16>     u16_t;

// -------------------------------------------------------
// AXI-Stream payload structs
// -------------------------------------------------------

// Input: one symbol pair per clock, packed as {g1[WL_CB-1:0], g0[WL_CB-1:0]}
typedef ap_uint<2*WL_CB>  vit_in_pkt_t;

// Output: 16-bit decoded word + 1-bit valid, packed as {valid, data[15:0]}
typedef ap_uint<17>       vit_out_pkt_t;

// -------------------------------------------------------
// Sub-module function declarations
// -------------------------------------------------------

// Branch Metric Unit (combinatorial)
//   bm0 = -g0-g1   (codeword 00)
//   bm1 = +g0-g1   (codeword 10)
//   bm2 = -g0+g1   (codeword 01)
//   bm3 = +g0+g1   (codeword 11)
void vit_bmu(
    cb_t   g0,  cb_t   g1,
    bm_t&  bm0, bm_t&  bm1,
    bm_t&  bm2, bm_t&  bm3
);

// Single radix-2 ACS element (combinatorial)
//   Computes max(pm_in0+bm_in0, pm_in1+bm_in1)
//   tb_out = 0 if pm_in0 path wins, 1 if pm_in1 path wins
pm_t acs_rad2(
    pm_t pm_in0, pm_t pm_in1,
    bm_t bm_in0, bm_t bm_in1,
    bool& tb_out
);

// One ACS column - all 4 states (combinatorial)
// Trellis for rate-1/2 K=3 code:
//   State 0 <- states {0,2} via bm{0,2}
//   State 1 <- states {0,2} via bm{2,0}
//   State 2 <- states {1,3} via bm{1,3}
//   State 3 <- states {1,3} via bm{3,1}
void vit_acs_stage(
    pm_t  pm0_in,  pm_t  pm1_in,  pm_t  pm2_in,  pm_t  pm3_in,
    bm_t  bm0,     bm_t  bm1,     bm_t  bm2,     bm_t  bm3,
    pm_t& pm0_out, pm_t& pm1_out, pm_t& pm2_out, pm_t& pm3_out,
    tb4_t& tb_out
);

// Traceback decode - walks a 32-deep window from final state to recover bits
// tbu_vec[31..0][3:0]: 32 time-steps of 4-bit TB vectors (newest at index 31)
// Returns 16-bit decoded word (bits [15:0] of the 32-bit info word)
void tbu_dec(
    tb4_t    tbu_vec[32],
    u16_t    info_seq_len,
    bool     msg_end,
    uint16_t start_word,     // 0 = lower 16 bits, 1 = upper 16 bits
    u16_t&   dec_bit,
    bool&    dec_bvld
);

// -------------------------------------------------------
// TOP-LEVEL HLS synthesis entry point
// -------------------------------------------------------
//
// Interface:
//   s_in  : AXI-Stream of packed symbol pairs {g1[4:0], g0[4:0]}
//           One entry per valid input sample.
//           The caller must supply exactly (info_seq_len + 2) symbols
//           (extra 2 are the zero-padded tail symbols for trellis termination).
//
//   s_out : AXI-Stream of decoded 16-bit words.
//           Each entry is {dec_bvld[0], dec_bit[15:0]} = 17 bits.
//           Valid entries have bit[16]==1.
//
//   info_seq_len : number of information bits in the frame.
//   init_neg     : when 1, non-zero states are initialised to the most
//                  negative path-metric value (forces trellis to start in
//                  state 0); mirrors RTL init_neg pin.
//
void vit_top_hls(
    hls::stream<vit_in_pkt_t>&  s_in,
    hls::stream<vit_out_pkt_t>& s_out,
    u16_t   info_seq_len,
    bool    init_neg
);
