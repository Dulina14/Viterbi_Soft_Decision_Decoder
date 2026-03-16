
set PATH=
call D:/Xilinx/2025.2/Vivado/bin/xelab xil_defaultlib.apatb_viterbi_decoder_top xil_defaultlib.glbl -Oenable_linking_all_libraries -prj viterbi_decoder.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_1_21 -L floating_point_v7_0_26 --lib "ieee_proposed=./ieee_proposed" -L uvm -relax -i ./svr -i ./axivip -i ./svtb -i ./file_agent -i ./viterbi_decoder_subsystem  -s viterbi_decoder 
call D:/Xilinx/2025.2/Vivado/bin/xsim -testplusarg "UVM_VERBOSITY=UVM_NONE" -testplusarg "UVM_TESTNAME=viterbi_decoder_test_lib" -testplusarg "UVM_TIMEOUT=20000000000000" --noieeewarnings viterbi_decoder -tclbatch viterbi_decoder.tcl 

