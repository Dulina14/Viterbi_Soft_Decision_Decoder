//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef VITERBI_DECODER_ENV__SV                                                                                   
    `define VITERBI_DECODER_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class viterbi_decoder_env extends uvm_env;                                                                          
                                                                                                                    
        viterbi_decoder_virtual_sequencer viterbi_decoder_virtual_sqr;                                                      
        viterbi_decoder_config viterbi_decoder_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(32) env_master_svr_encoded_in;
        svr_pkg::svr_env#(32) env_slave_svr_decoded_out;
                                                                                                                    
        viterbi_decoder_reference_model   refm;                                                                         
                                                                                                                    
        viterbi_decoder_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(viterbi_decoder_env)                                                                 
        `uvm_field_object (env_master_svr_encoded_in,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_decoded_out,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (viterbi_decoder_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (viterbi_decoder_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "viterbi_decoder_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void viterbi_decoder_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        viterbi_decoder_cfg = viterbi_decoder_config::type_id::create("viterbi_decoder_cfg", this);                           
                                                                                                                    
        viterbi_decoder_cfg.port_encoded_in_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_encoded_in  = svr_env#(32)::type_id::create("env_master_svr_encoded_in", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_encoded_in*", "cfg", viterbi_decoder_cfg.port_encoded_in_cfg);
        viterbi_decoder_cfg.port_encoded_in_cfg.prt_type = svr_pkg::AXIS;
        viterbi_decoder_cfg.port_encoded_in_cfg.is_active = svr_pkg::SVR_ACTIVE;
        viterbi_decoder_cfg.port_encoded_in_cfg.spec_cfg = svr_pkg::NORMAL;
        viterbi_decoder_cfg.port_encoded_in_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 
        viterbi_decoder_cfg.port_decoded_out_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_decoded_out  = svr_env#(32)::type_id::create("env_slave_svr_decoded_out", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_decoded_out*", "cfg", viterbi_decoder_cfg.port_decoded_out_cfg);
        viterbi_decoder_cfg.port_decoded_out_cfg.prt_type = svr_pkg::AXIS;
        viterbi_decoder_cfg.port_decoded_out_cfg.is_active = svr_pkg::SVR_ACTIVE;
        viterbi_decoder_cfg.port_decoded_out_cfg.spec_cfg = svr_pkg::NORMAL;
        viterbi_decoder_cfg.port_decoded_out_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 



        refm = viterbi_decoder_reference_model::type_id::create("refm", this);


        uvm_config_db#(viterbi_decoder_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = viterbi_decoder_subsystem_monitor::type_id::create("subsys_mon", this);


        viterbi_decoder_virtual_sqr = viterbi_decoder_virtual_sequencer::type_id::create("viterbi_decoder_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void viterbi_decoder_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        viterbi_decoder_virtual_sqr.svr_port_encoded_in_sqr = env_master_svr_encoded_in.m_agt.sqr;
        env_master_svr_encoded_in.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_encoded_in_imp);
 
        viterbi_decoder_virtual_sqr.svr_port_decoded_out_sqr = env_slave_svr_decoded_out.s_agt.sqr;
        env_slave_svr_decoded_out.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_decoded_out_imp);
 
        refm.viterbi_decoder_cfg = viterbi_decoder_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task viterbi_decoder_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "viterbi_decoder_env is running", UVM_LOW)
    endtask


`endif
