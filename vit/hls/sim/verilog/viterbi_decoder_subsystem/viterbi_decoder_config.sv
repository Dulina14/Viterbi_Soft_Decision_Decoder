//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef VITERBI_DECODER_CONFIG__SV                        
    `define VITERBI_DECODER_CONFIG__SV                    
                                                            
    class viterbi_decoder_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        svr_pkg::svr_config port_encoded_in_cfg;
        svr_pkg::svr_config port_decoded_out_cfg;

        `uvm_object_utils_begin(viterbi_decoder_config)         
        `uvm_field_object(port_encoded_in_cfg, UVM_DEFAULT)
        `uvm_field_object(port_decoded_out_cfg, UVM_DEFAULT)
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "viterbi_decoder_config");
            super.new(name);                                
            port_encoded_in_cfg = svr_pkg::svr_config::type_id::create("port_encoded_in_cfg");
            port_decoded_out_cfg = svr_pkg::svr_config::type_id::create("port_decoded_out_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
