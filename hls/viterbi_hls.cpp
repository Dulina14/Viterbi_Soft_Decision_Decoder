// =============================================================================
// viterbi_hls.cpp
// HLS Viterbi Decoder Implementation
// Rate 1/2, Constraint Length 3, 4-State, Sliding-Window Traceback (depth 32)
//
// Synthesise with Xilinx Vitis HLS / Vivado HLS.
// Top-level function: vit_top_hls()
// =============================================================================
#include "viterbi_hls.h"
#include <string.h>

// =============================================================================
// vit_bmu  -  Branch Metric Unit
//
// RTL equivalent: module vit_bmu
//
// All four Euclidean branch metrics for a BPSK/AWGN soft-decision channel.
// The generator polynomial mapping is:
//   codeword 00 -> bm0 = -g0 - g1
//   codeword 10 -> bm1 = +g0 - g1
//   codeword 01 -> bm2 = -g0 + g1
//   codeword 11 -> bm3 = +g0 + g1
//
// Note: The RTL registered the outputs; in HLS we leave them combinatorial
// and let the scheduler pipeline/register them as needed.
// =============================================================================
void vit_bmu(
    cb_t   g0, cb_t   g1,
    bm_t&  bm0, bm_t& bm1,
    bm_t&  bm2, bm_t& bm3)
{
#pragma HLS INLINE
    bm0 = bm_t(-g0) - bm_t(g1);   // -y0 - y1
    bm1 = bm_t( g0) - bm_t(g1);   // +y0 - y1
    bm2 = bm_t(-g0) + bm_t(g1);   // -y0 + y1
    bm3 = bm_t( g0) + bm_t(g1);   // +y0 + y1
}

// =============================================================================
// acs_rad2  -  Single radix-2 Add-Compare-Select element
//
// RTL equivalent: module acs_rad2
//
// Computes: max( pm_in0 + sign_ext(bm_in0),
//               pm_in1 + sign_ext(bm_in1) )
// tb_out  : 0 if upper path (pm_in0) wins, 1 if lower path (pm_in1) wins.
//           This matches the RTL MSB-of-diff convention.
//
// The RTL also has s_rst_acs / init_neg register resets; those are handled
// in the calling function (vit_top_hls) before the processing loop starts.
// =============================================================================
pm_t acs_rad2(
    pm_t pm_in0, pm_t pm_in1,
    bm_t bm_in0, bm_t bm_in1,
    bool& tb_out)
{
#pragma HLS INLINE
    // Sign-extend branch metrics to path-metric width, then add
    pm_t sum0 = pm_in0 + pm_t(bm_in0);
    pm_t sum1 = pm_in1 + pm_t(bm_in1);

    // Subtract to compare; MSB of result is the sign
    pm_t diff = sum0 - sum1;
    tb_out = (bool)diff[WL_PM - 1];    // 0: sum0 >= sum1, 1: sum0 < sum1

    return tb_out ? sum1 : sum0;
}

// =============================================================================
// vit_acs_stage  -  ACS column for all four trellis states
//
// RTL equivalent: module vit_acs (which instantiates 4 x acs_rad2)
//
// Trellis predecessor / branch-metric assignment for rate-1/2 K=3:
//   State 0 <- { state 0 via bm0, state 2 via bm2 }
//   State 1 <- { state 0 via bm2, state 2 via bm0 }   (init_neg applies here)
//   State 2 <- { state 1 via bm1, state 3 via bm3 }   (init_neg applies here)
//   State 3 <- { state 1 via bm3, state 3 via bm1 }   (init_neg applies here)
// =============================================================================
void vit_acs_stage(
    pm_t  pm0_in, pm_t pm1_in, pm_t pm2_in, pm_t pm3_in,
    bm_t  bm0,    bm_t bm1,    bm_t bm2,    bm_t bm3,
    pm_t& pm0_out, pm_t& pm1_out, pm_t& pm2_out, pm_t& pm3_out,
    tb4_t& tb_out)
{
#pragma HLS INLINE
    bool tb0, tb1, tb2, tb3;

    // acs0: NOTE init_neg is always 0 for state 0 (matches RTL comment)
    pm0_out = acs_rad2(pm0_in, pm2_in, bm0, bm2, tb0);
    pm1_out = acs_rad2(pm0_in, pm2_in, bm2, bm0, tb1);
    pm2_out = acs_rad2(pm1_in, pm3_in, bm1, bm3, tb2);
    pm3_out = acs_rad2(pm1_in, pm3_in, bm3, bm1, tb3);

    tb_out = (tb4_t(tb3) << 3) | (tb4_t(tb2) << 2) |
             (tb4_t(tb1) << 1) |  tb4_t(tb0);
}

// =============================================================================
// tbu_dec  -  Traceback unit decoder
//
// RTL equivalent: module tbu_dec
//
// Walks backwards through a 32-symbol window of 4-bit traceback vectors,
// starting from start_state = state 0, and recovers the information bit
// sequence.  The decoded word is packed into a 32-bit integer; this function
// extracts either the lower 16 bits (start_word=0) or upper 16 bits
// (start_word=1), mirroring the tbu_shift_enb / word2_en logic in the RTL.
//
// tbu_vec[31] is the NEWEST symbol (most recently received).
// tbu_vec[0]  is the OLDEST symbol in the window.
//
// The start state is hard-coded to 2'b00 as in the RTL (start_state = 2'd0).
// =============================================================================
void tbu_dec(
    tb4_t    tbu_vec[32],
    u16_t    info_seq_len,
    bool     msg_end,
    uint16_t start_word,
    u16_t&   dec_bit,
    bool&    dec_bvld)
{
#pragma HLS INLINE off

    // ------------------------------------------------------------------
    // Traceback walk
    // The RTL counts from k=30 down to 0, using tbu_vec[31] for the
    // first decision and tbu_vec[k] in subsequent steps.
    // State s is 2 bits wide; bit[0] is the input bit, bit[1] is MSB.
    // Predecessor state:
    //   if tb_bit==0  ->  s_prev = {0, s[1]}      (shift right, input 0)
    //   if tb_bit==1  ->  s_prev = {0, s[1]} + 2  (shift right, input 1)
    // ------------------------------------------------------------------

    ap_uint<2>  s         = 0;             // start at state 0 (matches RTL start_state)
    ap_uint<32> info_bits = 0;

    // Step 0: seed from tbu_vec[31]
    bool d = (bool)tbu_vec[31][s];         // tb bit for starting state
    if (d == 0) s = ap_uint<2>(ap_uint<2>(s[1]) << 1);
    else        s = ap_uint<2>((ap_uint<2>(s[1]) << 1) | 0x2u);

    // Steps 1..30: walk k from 30 down to 0
    TB_WALK: for (int k = 30; k >= 0; k--) {
#pragma HLS UNROLL factor=4
        d = (bool)tbu_vec[k][s];           // pick tb bit for current state

        // Recover information bit from state LSB (s[0])
        info_bits[k] = s[0];

        // Transition to predecessor state
        if (d == 0) s = ap_uint<2>(ap_uint<2>(s[1])  << 1);
        else        s = ap_uint<2>((ap_uint<2>(s[1]) << 1) | 0x2u);
    }

    // ------------------------------------------------------------------
    // Output selection - mirrors tbu_shift_enb / word2_en mux in RTL
    //   start_word == 0  -> emit info_bits[15:0]   (always valid)
    //   start_word == 1  -> emit info_bits[31:16]  (only when msg_end &&
    //                                               info_seq_len[3:0]!=0xF)
    // ------------------------------------------------------------------
    bool word2_en = msg_end && ((info_seq_len & 0xFu) != 0xFu);

    if (start_word == 0) {
        dec_bit  = (u16_t)(info_bits & 0xFFFFu);
        dec_bvld = true;
    } else if (word2_en) {
        dec_bit  = (u16_t)((info_bits >> 16) & 0xFFFFu);
        dec_bvld = true;
    } else {
        dec_bit  = 0;
        dec_bvld = false;
    }
}

// =============================================================================
// vit_top_hls  -  Top-level Viterbi decoder  (HLS synthesis entry point)
//
// RTL equivalent: module vit_top (and all instantiated sub-modules)
//
// This function implements the complete sliding-window Viterbi decoder.
// It is called once per frame and consumes exactly
//     (info_seq_len + 2)  input symbols
// from s_in (the +2 accounts for the zero-padded trellis tail).
//
// Internally it mirrors the four-state FSM (VTD_IDLE / RST_VTD /
// A_TBM / B_TBM / C_TBM / D_TBM / REM_TB) and the four traceback
// banks (a, b, c, d) each 16 symbols deep, plus two parallel TBU
// decoders (a_dec / b_dec).
//
// Pipeline intent:
//   The outer frame loop cannot be pipelined because the traceback
//   unit reads the same memory it writes during the same iteration.
//   Individual sub-functions are marked INLINE so the HLS tool can
//   pipeline the inner arithmetic.
// =============================================================================
void vit_top_hls(
    hls::stream<vit_in_pkt_t>&  s_in,
    hls::stream<vit_out_pkt_t>& s_out,
    u16_t   info_seq_len,
    bool    init_neg)
{
// ------------------------------------------------------------------
// HLS interface directives
// ------------------------------------------------------------------
#pragma HLS INTERFACE axis          port=s_in
#pragma HLS INTERFACE axis          port=s_out
#pragma HLS INTERFACE s_axilite     port=info_seq_len  bundle=ctrl
#pragma HLS INTERFACE s_axilite     port=init_neg      bundle=ctrl
#pragma HLS INTERFACE s_axilite     port=return        bundle=ctrl

// ------------------------------------------------------------------
// Path metrics
// Initialised once here (mirrors s_rst_acs / init_neg in the RTL).
//   State 0 always starts at 0.
//   States 1-3 start at 0 unless init_neg=1, in which case they start
//   at {2'b11, zeros} = -(2^(WL_PM-2))  (most-negative signed value
//   in the RTL representation).
// ------------------------------------------------------------------
    pm_t pm[4];
#pragma HLS ARRAY_PARTITION variable=pm complete

    pm[0] = 0;
    const pm_t PM_NEG = pm_t(ap_int<WL_PM>(-(1 << (WL_PM - 2))));
    pm[1] = init_neg ? PM_NEG : pm_t(0);
    pm[2] = init_neg ? PM_NEG : pm_t(0);
    pm[3] = init_neg ? PM_NEG : pm_t(0);

// ------------------------------------------------------------------
// Traceback memory - four banks of 16 symbols x 4 bits.
// tb_mem[bank][slot] holds a 4-bit vector (one bit per state).
// Each bank is a shift register: slot[15] is newest, slot[0] is oldest.
// Mirrored from RTL arrays a[15:0][3:0] .. d[15:0][3:0].
// ------------------------------------------------------------------
    tb4_t tb_mem[TB_NUM_BANKS][TB_BANK_DEPTH];
#pragma HLS ARRAY_PARTITION variable=tb_mem complete dim=1

    // Initialise traceback memory to 0 (mirrors rstp_all in RTL)
    for (int bnk = 0; bnk < TB_NUM_BANKS; bnk++) {
        for (int sl = 0; sl < TB_BANK_DEPTH; sl++) {
#pragma HLS UNROLL
            tb_mem[bnk][sl] = 0;
        }
    }

// ------------------------------------------------------------------
// FSM counters / state variables
// Mirrors cnt, bank selection and tbm_done logic in vit_fsm.
// ------------------------------------------------------------------
    typedef enum { A_TBM = 0, B_TBM = 1, C_TBM = 2, D_TBM = 3, REM_TB = 4 }
        tbm_state_t;

    tbm_state_t tbm_state = A_TBM;

    // Global symbol counter (mirrors cnt in FSM).
    // Counts up from 0 to info_seq_len; drives end_seq and tbm_done.
    u16_t cnt = 0;

    // Total symbols to process = info_seq_len + 2 zero-pad tail symbols.
    // Mirrors fsm_seq_len = info_seq_len + 1 and the zero_pad_dvld logic
    // in vit_top RTL, but simplified: we just zero-stuff two extra inputs.
    u16_t total_syms = (u16_t)(info_seq_len + 2u);

    // tbu_seq_len mirrors the RTL: info_seq_len - 1 (for TBU index maths)
    u16_t tbu_seq_len = (info_seq_len > 0) ? (u16_t)(info_seq_len - 1u) : u16_t(0);

    // Sliding-window context flags
    bool msg_end_flag = false;

    // Current write bank index (0=A, 1=B, 2=C, 3=D) and slot within bank.
    ap_uint<2>  wr_bank  = 0;
    ap_uint<4>  wr_slot  = 0;   // counts 0..15 within each bank

    // Track how many full 16-symbol banks have been written since the
    // last time we triggered a traceback (mirrors cnt[3:0]==0xF logic).
    ap_uint<2>  banks_completed = 0;

// ------------------------------------------------------------------
// Main processing loop
// One iteration = one input symbol.
// After info_seq_len symbols, two zero-padded tail symbols are fed.
// ------------------------------------------------------------------
    MAIN_LOOP: for (u16_t sym = 0; sym < total_syms; sym++) {
        // ---- 1. Read input symbol (or inject zero tail) ----------------
        cb_t g0, g1;
        bool is_tail = (sym >= info_seq_len);
        if (!is_tail) {
            vit_in_pkt_t pkt = s_in.read();
            g0 = cb_t(pkt.range(WL_CB - 1, 0));
            g1 = cb_t(pkt.range(2*WL_CB - 1, WL_CB));
        } else {
            g0 = 0;
            g1 = 0;
        }

        // ---- 2. Branch Metric Unit ------------------------------------
        bm_t bm0, bm1, bm2, bm3;
        vit_bmu(g0, g1, bm0, bm1, bm2, bm3);

        // ---- 3. ACS stage (all 4 states) ------------------------------
        pm_t pm_new[4];
#pragma HLS ARRAY_PARTITION variable=pm_new complete
        tb4_t tb_vec;
        vit_acs_stage(pm[0], pm[1], pm[2], pm[3],
                      bm0, bm1, bm2, bm3,
                      pm_new[0], pm_new[1], pm_new[2], pm_new[3],
                      tb_vec);
        pm[0] = pm_new[0];
        pm[1] = pm_new[1];
        pm[2] = pm_new[2];
        pm[3] = pm_new[3];

        // ---- 4. Write traceback into current bank (shift-in newest) ---
        //  Slot layout matches RTL: tb_mem[bank][15] = newest,
        //  older entries shift toward slot 0.
        WR_SHIFT: for (int sl = 0; sl < TB_BANK_DEPTH - 1; sl++) {
#pragma HLS UNROLL
            tb_mem[wr_bank][sl] = tb_mem[wr_bank][sl + 1];
        }
        tb_mem[wr_bank][TB_BANK_DEPTH - 1] = tb_vec;

        // ---- 5. End-of-bank: trigger traceback decode -----------------
        //  The bank is full every 16 symbols (wr_slot wraps from 15->0).
        //  Mirrors a_tbm_done / b_tbm_done etc. in vit_fsm.
        bool bank_done = (wr_slot == (TB_BANK_DEPTH - 1));
        wr_slot = bank_done ? ap_uint<4>(0) : ap_uint<4>(wr_slot + 1u);

        if (bank_done) {
            // ----------------------------------------------------------
            // Assemble a 32-deep window from the *previous* two banks
            // (newest bank + bank before it), matching the RTL a_vec /
            // b_vec mux logic in vit_tbu.
            //
            // Window layout: index 0 = oldest, index 31 = newest.
            //   prev_bank  = (wr_bank - 1) mod 4   -> symbols 0..15
            //   wr_bank    = current (just completed) -> symbols 16..31
            // ----------------------------------------------------------
            ap_uint<2> prev_bank = (ap_uint<2>)(wr_bank - 1u);  // wraps mod 4

            tb4_t window[32];
#pragma HLS ARRAY_PARTITION variable=window complete

            // Older bank fills lower half
            for (int sl = 0; sl < TB_BANK_DEPTH; sl++) {
#pragma HLS UNROLL
                window[sl] = tb_mem[prev_bank][sl];
            }
            // Current bank fills upper half
            for (int sl = 0; sl < TB_BANK_DEPTH; sl++) {
#pragma HLS UNROLL
                window[TB_BANK_DEPTH + sl] = tb_mem[wr_bank][sl];
            }

            // Determine if this is the last full bank of the message
            // (mirrors d_tb_start condition cnt > 16'd60 in FSM, i.e.
            // at least 4 complete banks have been written).
            bool is_last_bank = (sym + 1u >= info_seq_len);
            if (is_last_bank) msg_end_flag = true;

            // ----------------------------------------------------------
            // Traceback decode: emit lower word immediately, upper word
            // only when msg_end and frame doesn't end on a 16-boundary.
            // Mirrors tbu_shift_enb[0] -> lower word,
            //         word2_en         -> upper word  logic in tbu_dec.
            // ----------------------------------------------------------
            // Only decode after at least 2 full banks (need a valid window)
            if (banks_completed >= 1) {
                u16_t  dec_bit_lo;
                bool   dec_bvld_lo;
                tbu_dec(window, tbu_seq_len, msg_end_flag, 0,
                        dec_bit_lo, dec_bvld_lo);

                if (dec_bvld_lo) {
                    vit_out_pkt_t out_pkt =
                        (vit_out_pkt_t(1) << 16) | vit_out_pkt_t(dec_bit_lo);
                    s_out.write(out_pkt);
                }

                // Upper-word output (last partial bank at end-of-frame)
                u16_t  dec_bit_hi;
                bool   dec_bvld_hi;
                tbu_dec(window, tbu_seq_len, msg_end_flag, 1,
                        dec_bit_hi, dec_bvld_hi);

                if (dec_bvld_hi) {
                    vit_out_pkt_t out_pkt =
                        (vit_out_pkt_t(1) << 16) | vit_out_pkt_t(dec_bit_hi);
                    s_out.write(out_pkt);
                }
            }

            // Advance write bank and completed-bank count
            wr_bank = (ap_uint<2>)(wr_bank + 1u);
            if (banks_completed < 4) banks_completed++;
        }

        cnt++;
    } // MAIN_LOOP

    // ------------------------------------------------------------------
    // REM_TB: handle any remaining partial bank at the very end of the
    // frame (mirrors REM_TB state in vit_fsm).  If the last bank was not
    // a complete 16-symbol bank we do one final traceback.
    // ------------------------------------------------------------------
    if (wr_slot != 0) {
        ap_uint<2> prev_bank = (ap_uint<2>)(wr_bank - 1u);

        tb4_t window[32];
#pragma HLS ARRAY_PARTITION variable=window complete

        for (int sl = 0; sl < TB_BANK_DEPTH; sl++) {
#pragma HLS UNROLL
            window[sl] = tb_mem[prev_bank][sl];
        }
        for (int sl = 0; sl < TB_BANK_DEPTH; sl++) {
#pragma HLS UNROLL
            window[TB_BANK_DEPTH + sl] = tb_mem[wr_bank][sl];
        }

        u16_t dec_bit_rem;
        bool  dec_bvld_rem;
        tbu_dec(window, tbu_seq_len, true /*msg_end*/, 0,
                dec_bit_rem, dec_bvld_rem);

        if (dec_bvld_rem) {
            vit_out_pkt_t out_pkt =
                (vit_out_pkt_t(1) << 16) | vit_out_pkt_t(dec_bit_rem);
            s_out.write(out_pkt);
        }
    }
}
