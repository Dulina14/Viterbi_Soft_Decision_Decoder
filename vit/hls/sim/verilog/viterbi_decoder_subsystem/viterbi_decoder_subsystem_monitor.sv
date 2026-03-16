//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef VITERBI_DECODER_SUBSYSTEM_MONITOR_SV
`define VITERBI_DECODER_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_svr_master_encoded_in)
`uvm_analysis_imp_decl(_svr_slave_decoded_out)

class viterbi_decoder_subsystem_monitor extends uvm_component;

    viterbi_decoder_reference_model refm;
    viterbi_decoder_scoreboard scbd;

    `uvm_component_utils_begin(viterbi_decoder_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_svr_master_encoded_in#(svr_pkg::svr_transfer#(32), viterbi_decoder_subsystem_monitor) svr_master_encoded_in_imp;
    uvm_analysis_imp_svr_slave_decoded_out#(svr_pkg::svr_transfer#(32), viterbi_decoder_subsystem_monitor) svr_slave_decoded_out_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(viterbi_decoder_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = viterbi_decoder_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        svr_master_encoded_in_imp = new("svr_master_encoded_in_imp", this);
        svr_slave_decoded_out_imp = new("svr_slave_decoded_out_imp", this);
    endfunction

    virtual function void write_svr_master_encoded_in(svr_transfer#(32) tr);
        refm.write_svr_master_encoded_in(tr);
        scbd.write_svr_master_encoded_in(tr);
    endfunction

    virtual function void write_svr_slave_decoded_out(svr_transfer#(32) tr);
        refm.write_svr_slave_decoded_out(tr);
        scbd.write_svr_slave_decoded_out(tr);
    endfunction
endclass
`endif
