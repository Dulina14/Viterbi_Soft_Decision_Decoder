//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef VITERBI_DECODER_SUBSYSTEM_PKG__SV          
    `define VITERBI_DECODER_SUBSYSTEM_PKG__SV      
                                                     
    package viterbi_decoder_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "viterbi_decoder_config.sv"           
        `include "viterbi_decoder_reference_model.sv"  
        `include "viterbi_decoder_scoreboard.sv"       
        `include "viterbi_decoder_subsystem_monitor.sv"
        `include "viterbi_decoder_virtual_sequencer.sv"
        `include "viterbi_decoder_pkg_sequence_lib.sv" 
        `include "viterbi_decoder_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
