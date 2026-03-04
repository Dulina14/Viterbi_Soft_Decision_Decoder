# Viterbi Decoder — SystemVerilog to HLS Conversion Notes

## Files

| File                      | Description                                                |
| ------------------------- | ---------------------------------------------------------- |
| `viterbi_hls.h`           | Types, constants, function declarations                    |
| `viterbi_hls.cpp`         | Full implementation (synthesis entry point: `vit_top_hls`) |
| `viterbi_tb.cpp`          | C simulation testbench                                     |
| `viterbi_hls_project.tcl` | Vitis/Vivado HLS project script                            |

---

## RTL → HLS Module Mapping

| RTL Module | HLS Function                | Notes                                                  |
| ---------- | --------------------------- | ------------------------------------------------------ |
| `acs_rad2` | `acs_rad2()`                | Pure combinatorial; registers removed                  |
| `vit_bmu`  | `vit_bmu()`                 | Pure combinatorial; registered outputs moved to caller |
| `vit_acs`  | `vit_acs_stage()`           | Inlines all 4 `acs_rad2` calls                         |
| `vit_fsm`  | Embedded in `vit_top_hls()` | Loop counter replaces FSM register                     |
| `tbu_dec`  | `tbu_dec()`                 | Fixed-iteration loop over 32-symbol window             |
| `vit_tbu`  | Embedded in `vit_top_hls()` | Bank mux logic inlined                                 |
| `vit_top`  | `vit_top_hls()`             | **Top-level HLS entry point**                          |

---

## Key Design Decisions

### 1. Clock / Reset abstraction
HLS infers clock and reset automatically.  The explicit `clk`/`rstn` ports
and `always_ff` registers in the RTL become:
- Local variables inside `vit_top_hls` (reset on each function call / frame)
- `static` variables are NOT used here — each call to `vit_top_hls`
  processes exactly one complete frame, so all state is local.

### 2. AXI-Stream interface
```
s_in  : {g1[4:0], g0[4:0]}   — one packed 10-bit word per symbol
s_out : {valid[0], data[15:0]} — 17-bit output word; valid is bit [16]
```
The caller feeds **(info_seq_len + 2)** symbols per frame (the extra 2 are
zero-padded tail symbols for trellis termination, replacing the
`zero_pad_dvld` signal in the RTL).

### 3. Path metric initialisation (`init_neg`)
When `init_neg = 1` the RTL initialises states 1–3 to
`{2'b11, zeros} = -(2^(WL_PM-2))` (a large negative value forcing the
trellis to start in state 0).  The HLS mirrors this exactly.

### 4. Traceback window
The RTL uses four banks (A/B/C/D) of 16 symbols and two parallel TBU
decoders.  The HLS simplifies to a single 32-symbol sliding window
assembled from the two most-recently completed banks, decoded
sequentially — functionally identical, simpler for the HLS scheduler.

### 5. Removed RTL `rem_tb_done` state
The REM_TB state in the FSM is handled by a post-loop fragment that
processes any partial bank left at end-of-frame.

---

## Build & Simulate

### Software (g++) — quick functional check
```bash
g++ -std=c++14 -I$XILINX_HLS/include \
    viterbi_hls.cpp viterbi_tb.cpp -o vit_sim
./vit_sim
```

### Vitis HLS
```bash
vitis_hls -f viterbi_hls_project.tcl
```
This will run C-sim → synthesis → RTL co-sim → IP export.

### Vivado HLS (older flows)
```bash
vivado_hls -f viterbi_hls_project.tcl
```

---

## Parameters

All bit-width parameters are `#define` constants in `viterbi_hls.h`:

| Parameter       | Default | Meaning                       |
| --------------- | ------- | ----------------------------- |
| `WL_CB`         | 5       | Channel sample width (signed) |
| `WL_BM`         | 7       | Branch metric width           |
| `WL_PM`         | 9       | Path metric width             |
| `TB_BANK_DEPTH` | 16      | Symbols per traceback bank    |
| `TB_NUM_BANKS`  | 4       | Number of traceback banks     |

To change the code rate or constraint length you would need to modify
`vit_acs_stage()` (trellis connections) and `vit_bmu()` (branch metric
computation).
