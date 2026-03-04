# =============================================================================
# viterbi_hls_project.tcl
# Vitis HLS / Vivado HLS project creation script
#
# Usage (from Vitis HLS Tcl console or vivado_hls -f):
#   vitis_hls -f viterbi_hls_project.tcl
#   vivado_hls  -f viterbi_hls_project.tcl   (for older Vivado HLS)
# =============================================================================

# ---- Project settings -------------------------------------------------------
set PROJECT_NAME    viterbi_hls
set TOP_FUNCTION    vit_top_hls
set PART            xc7z020clg484-1     ;# Zynq-7020; change to your target
set CLOCK_PERIOD    10                  ;# ns -> 100 MHz

# ---- Create project ---------------------------------------------------------
open_project  $PROJECT_NAME
set_top       $TOP_FUNCTION

# ---- Source files -----------------------------------------------------------
add_files       viterbi_hls.cpp  -cflags "-std=c++14"
add_files       viterbi_hls.h    -cflags "-std=c++14"
add_files -tb   viterbi_tb.cpp   -cflags "-std=c++14"

# ---- Solution ---------------------------------------------------------------
open_solution "solution1" -flow_target vivado

set_part      $PART
create_clock  -period $CLOCK_PERIOD -name default

# ---- Optimisation directives (can also go in the source via #pragma) --------
# Pipeline the ACS arithmetic
set_directive_pipeline -II 1 "vit_acs_stage"

# Fully unroll the small fixed-size loops in acs / bmu
set_directive_unroll   "vit_bmu"
set_directive_unroll   "acs_rad2"

# Partition path metric array for parallel access
set_directive_array_partition -type complete -dim 1 "vit_top_hls" pm

# ---- Run steps --------------------------------------------------------------
csim_design                        ;# C simulation
csynth_design                      ;# HLS synthesis
cosim_design -O -rtl verilog       ;# RTL co-simulation
export_design -format ip_catalog   ;# package as Vivado IP

puts "Done. Results in ./$PROJECT_NAME/solution1/"
