//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import svr_pkg::*;
import viterbi_decoder_subsystem_pkg::*;
`include "viterbi_decoder_subsys_test_sequence_lib.sv"
`include "viterbi_decoder_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_viterbi_decoder_top.AESL_clock), .reset(apatb_viterbi_decoder_top.AESL_reset) );
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(32)  svr_encoded_in_if    (.clk  (apatb_viterbi_decoder_top.AESL_clock), .rst(apatb_viterbi_decoder_top.AESL_reset));
    assign svr_encoded_in_if.ready = apatb_viterbi_decoder_top.encoded_in_TREADY;
    assign apatb_viterbi_decoder_top.encoded_in_TVALID = svr_encoded_in_if.valid;
    assign apatb_viterbi_decoder_top.encoded_in_TDATA = svr_encoded_in_if.data[31:0];
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_master_svr_encoded_in.*", "vif", svr_encoded_in_if);
    end


    svr_if #(32)  svr_decoded_out_if    (.clk  (apatb_viterbi_decoder_top.AESL_clock), .rst(apatb_viterbi_decoder_top.AESL_reset));
    assign apatb_viterbi_decoder_top.decoded_out_TREADY = svr_decoded_out_if.ready;
    assign svr_decoded_out_if.valid = apatb_viterbi_decoder_top.decoded_out_TVALID;
    assign svr_decoded_out_if.data[31:0] = apatb_viterbi_decoder_top.decoded_out_TDATA;
    initial begin
        uvm_config_db #( virtual svr_if#(32) )::set(null, "uvm_test_top.top_env.env_slave_svr_decoded_out.*", "vif", svr_decoded_out_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
