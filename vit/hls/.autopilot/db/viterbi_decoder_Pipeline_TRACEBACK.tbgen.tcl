set moduleName viterbi_decoder_Pipeline_TRACEBACK
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 5
set C_modelName {viterbi_decoder_Pipeline_TRACEBACK}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict survivor { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_1 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_2 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_3 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_4 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_5 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_6 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_7 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_8 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_9 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_10 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_11 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_12 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_13 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_14 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_15 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_16 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_17 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_18 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_19 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_20 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_21 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_22 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_23 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_24 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_25 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_26 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_27 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_28 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_29 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_30 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_31 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_32 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_33 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_34 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_35 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_36 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_37 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_38 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_39 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_40 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_41 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_42 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_43 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_44 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_45 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_46 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_47 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_48 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_49 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_50 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_51 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_52 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_53 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_54 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_55 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_56 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_57 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_58 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_59 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_60 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_61 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_62 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict survivor_63 { MEM_WIDTH 1 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ best_state_32 int 6 regular  }
	{ survivor int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_1 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_2 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_3 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_4 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_5 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_6 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_7 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_8 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_9 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_10 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_11 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_12 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_13 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_14 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_15 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_16 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_17 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_18 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_19 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_20 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_21 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_22 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_23 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_24 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_25 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_26 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_27 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_28 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_29 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_30 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_31 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_32 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_33 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_34 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_35 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_36 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_37 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_38 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_39 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_40 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_41 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_42 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_43 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_44 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_45 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_46 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_47 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_48 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_49 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_50 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_51 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_52 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_53 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_54 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_55 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_56 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_57 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_58 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_59 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_60 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_61 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_62 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ survivor_63 int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ p_out int 1 regular {pointer 1}  }
	{ p_out1 int 1 regular {pointer 1}  }
	{ p_out2 int 1 regular {pointer 1}  }
	{ p_out3 int 1 regular {pointer 1}  }
	{ p_out4 int 1 regular {pointer 1}  }
	{ p_out5 int 1 regular {pointer 1}  }
	{ p_out6 int 1 regular {pointer 1}  }
	{ p_out7 int 1 regular {pointer 1}  }
	{ p_out8 int 1 regular {pointer 1}  }
	{ p_out9 int 1 regular {pointer 1}  }
	{ p_out10 int 1 regular {pointer 1}  }
	{ p_out11 int 1 regular {pointer 1}  }
	{ p_out12 int 1 regular {pointer 1}  }
	{ p_out13 int 1 regular {pointer 1}  }
	{ p_out14 int 1 regular {pointer 1}  }
	{ p_out15 int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "best_state_32", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "survivor", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_1", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_2", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_3", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_4", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_5", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_6", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_7", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_8", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_9", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_10", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_11", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_12", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_13", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_14", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_15", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_16", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_17", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_18", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_19", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_20", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_21", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_22", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_23", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_24", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_25", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_26", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_27", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_28", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_29", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_30", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_31", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_32", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_33", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_34", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_35", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_36", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_37", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_38", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_39", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_40", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_41", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_42", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_43", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_44", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_45", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_46", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_47", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_48", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_49", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_50", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_51", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_52", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_53", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_54", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_55", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_56", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_57", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_58", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_59", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_60", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_61", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_62", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "survivor_63", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out6", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out7", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out8", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out9", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out10", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out11", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out12", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out13", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out14", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out15", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 231
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ best_state_32 sc_in sc_lv 6 signal 0 } 
	{ survivor_address0 sc_out sc_lv 5 signal 1 } 
	{ survivor_ce0 sc_out sc_logic 1 signal 1 } 
	{ survivor_q0 sc_in sc_lv 1 signal 1 } 
	{ survivor_1_address0 sc_out sc_lv 5 signal 2 } 
	{ survivor_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ survivor_1_q0 sc_in sc_lv 1 signal 2 } 
	{ survivor_2_address0 sc_out sc_lv 5 signal 3 } 
	{ survivor_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ survivor_2_q0 sc_in sc_lv 1 signal 3 } 
	{ survivor_3_address0 sc_out sc_lv 5 signal 4 } 
	{ survivor_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ survivor_3_q0 sc_in sc_lv 1 signal 4 } 
	{ survivor_4_address0 sc_out sc_lv 5 signal 5 } 
	{ survivor_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ survivor_4_q0 sc_in sc_lv 1 signal 5 } 
	{ survivor_5_address0 sc_out sc_lv 5 signal 6 } 
	{ survivor_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ survivor_5_q0 sc_in sc_lv 1 signal 6 } 
	{ survivor_6_address0 sc_out sc_lv 5 signal 7 } 
	{ survivor_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ survivor_6_q0 sc_in sc_lv 1 signal 7 } 
	{ survivor_7_address0 sc_out sc_lv 5 signal 8 } 
	{ survivor_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ survivor_7_q0 sc_in sc_lv 1 signal 8 } 
	{ survivor_8_address0 sc_out sc_lv 5 signal 9 } 
	{ survivor_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ survivor_8_q0 sc_in sc_lv 1 signal 9 } 
	{ survivor_9_address0 sc_out sc_lv 5 signal 10 } 
	{ survivor_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ survivor_9_q0 sc_in sc_lv 1 signal 10 } 
	{ survivor_10_address0 sc_out sc_lv 5 signal 11 } 
	{ survivor_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ survivor_10_q0 sc_in sc_lv 1 signal 11 } 
	{ survivor_11_address0 sc_out sc_lv 5 signal 12 } 
	{ survivor_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ survivor_11_q0 sc_in sc_lv 1 signal 12 } 
	{ survivor_12_address0 sc_out sc_lv 5 signal 13 } 
	{ survivor_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ survivor_12_q0 sc_in sc_lv 1 signal 13 } 
	{ survivor_13_address0 sc_out sc_lv 5 signal 14 } 
	{ survivor_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ survivor_13_q0 sc_in sc_lv 1 signal 14 } 
	{ survivor_14_address0 sc_out sc_lv 5 signal 15 } 
	{ survivor_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ survivor_14_q0 sc_in sc_lv 1 signal 15 } 
	{ survivor_15_address0 sc_out sc_lv 5 signal 16 } 
	{ survivor_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ survivor_15_q0 sc_in sc_lv 1 signal 16 } 
	{ survivor_16_address0 sc_out sc_lv 5 signal 17 } 
	{ survivor_16_ce0 sc_out sc_logic 1 signal 17 } 
	{ survivor_16_q0 sc_in sc_lv 1 signal 17 } 
	{ survivor_17_address0 sc_out sc_lv 5 signal 18 } 
	{ survivor_17_ce0 sc_out sc_logic 1 signal 18 } 
	{ survivor_17_q0 sc_in sc_lv 1 signal 18 } 
	{ survivor_18_address0 sc_out sc_lv 5 signal 19 } 
	{ survivor_18_ce0 sc_out sc_logic 1 signal 19 } 
	{ survivor_18_q0 sc_in sc_lv 1 signal 19 } 
	{ survivor_19_address0 sc_out sc_lv 5 signal 20 } 
	{ survivor_19_ce0 sc_out sc_logic 1 signal 20 } 
	{ survivor_19_q0 sc_in sc_lv 1 signal 20 } 
	{ survivor_20_address0 sc_out sc_lv 5 signal 21 } 
	{ survivor_20_ce0 sc_out sc_logic 1 signal 21 } 
	{ survivor_20_q0 sc_in sc_lv 1 signal 21 } 
	{ survivor_21_address0 sc_out sc_lv 5 signal 22 } 
	{ survivor_21_ce0 sc_out sc_logic 1 signal 22 } 
	{ survivor_21_q0 sc_in sc_lv 1 signal 22 } 
	{ survivor_22_address0 sc_out sc_lv 5 signal 23 } 
	{ survivor_22_ce0 sc_out sc_logic 1 signal 23 } 
	{ survivor_22_q0 sc_in sc_lv 1 signal 23 } 
	{ survivor_23_address0 sc_out sc_lv 5 signal 24 } 
	{ survivor_23_ce0 sc_out sc_logic 1 signal 24 } 
	{ survivor_23_q0 sc_in sc_lv 1 signal 24 } 
	{ survivor_24_address0 sc_out sc_lv 5 signal 25 } 
	{ survivor_24_ce0 sc_out sc_logic 1 signal 25 } 
	{ survivor_24_q0 sc_in sc_lv 1 signal 25 } 
	{ survivor_25_address0 sc_out sc_lv 5 signal 26 } 
	{ survivor_25_ce0 sc_out sc_logic 1 signal 26 } 
	{ survivor_25_q0 sc_in sc_lv 1 signal 26 } 
	{ survivor_26_address0 sc_out sc_lv 5 signal 27 } 
	{ survivor_26_ce0 sc_out sc_logic 1 signal 27 } 
	{ survivor_26_q0 sc_in sc_lv 1 signal 27 } 
	{ survivor_27_address0 sc_out sc_lv 5 signal 28 } 
	{ survivor_27_ce0 sc_out sc_logic 1 signal 28 } 
	{ survivor_27_q0 sc_in sc_lv 1 signal 28 } 
	{ survivor_28_address0 sc_out sc_lv 5 signal 29 } 
	{ survivor_28_ce0 sc_out sc_logic 1 signal 29 } 
	{ survivor_28_q0 sc_in sc_lv 1 signal 29 } 
	{ survivor_29_address0 sc_out sc_lv 5 signal 30 } 
	{ survivor_29_ce0 sc_out sc_logic 1 signal 30 } 
	{ survivor_29_q0 sc_in sc_lv 1 signal 30 } 
	{ survivor_30_address0 sc_out sc_lv 5 signal 31 } 
	{ survivor_30_ce0 sc_out sc_logic 1 signal 31 } 
	{ survivor_30_q0 sc_in sc_lv 1 signal 31 } 
	{ survivor_31_address0 sc_out sc_lv 5 signal 32 } 
	{ survivor_31_ce0 sc_out sc_logic 1 signal 32 } 
	{ survivor_31_q0 sc_in sc_lv 1 signal 32 } 
	{ survivor_32_address0 sc_out sc_lv 5 signal 33 } 
	{ survivor_32_ce0 sc_out sc_logic 1 signal 33 } 
	{ survivor_32_q0 sc_in sc_lv 1 signal 33 } 
	{ survivor_33_address0 sc_out sc_lv 5 signal 34 } 
	{ survivor_33_ce0 sc_out sc_logic 1 signal 34 } 
	{ survivor_33_q0 sc_in sc_lv 1 signal 34 } 
	{ survivor_34_address0 sc_out sc_lv 5 signal 35 } 
	{ survivor_34_ce0 sc_out sc_logic 1 signal 35 } 
	{ survivor_34_q0 sc_in sc_lv 1 signal 35 } 
	{ survivor_35_address0 sc_out sc_lv 5 signal 36 } 
	{ survivor_35_ce0 sc_out sc_logic 1 signal 36 } 
	{ survivor_35_q0 sc_in sc_lv 1 signal 36 } 
	{ survivor_36_address0 sc_out sc_lv 5 signal 37 } 
	{ survivor_36_ce0 sc_out sc_logic 1 signal 37 } 
	{ survivor_36_q0 sc_in sc_lv 1 signal 37 } 
	{ survivor_37_address0 sc_out sc_lv 5 signal 38 } 
	{ survivor_37_ce0 sc_out sc_logic 1 signal 38 } 
	{ survivor_37_q0 sc_in sc_lv 1 signal 38 } 
	{ survivor_38_address0 sc_out sc_lv 5 signal 39 } 
	{ survivor_38_ce0 sc_out sc_logic 1 signal 39 } 
	{ survivor_38_q0 sc_in sc_lv 1 signal 39 } 
	{ survivor_39_address0 sc_out sc_lv 5 signal 40 } 
	{ survivor_39_ce0 sc_out sc_logic 1 signal 40 } 
	{ survivor_39_q0 sc_in sc_lv 1 signal 40 } 
	{ survivor_40_address0 sc_out sc_lv 5 signal 41 } 
	{ survivor_40_ce0 sc_out sc_logic 1 signal 41 } 
	{ survivor_40_q0 sc_in sc_lv 1 signal 41 } 
	{ survivor_41_address0 sc_out sc_lv 5 signal 42 } 
	{ survivor_41_ce0 sc_out sc_logic 1 signal 42 } 
	{ survivor_41_q0 sc_in sc_lv 1 signal 42 } 
	{ survivor_42_address0 sc_out sc_lv 5 signal 43 } 
	{ survivor_42_ce0 sc_out sc_logic 1 signal 43 } 
	{ survivor_42_q0 sc_in sc_lv 1 signal 43 } 
	{ survivor_43_address0 sc_out sc_lv 5 signal 44 } 
	{ survivor_43_ce0 sc_out sc_logic 1 signal 44 } 
	{ survivor_43_q0 sc_in sc_lv 1 signal 44 } 
	{ survivor_44_address0 sc_out sc_lv 5 signal 45 } 
	{ survivor_44_ce0 sc_out sc_logic 1 signal 45 } 
	{ survivor_44_q0 sc_in sc_lv 1 signal 45 } 
	{ survivor_45_address0 sc_out sc_lv 5 signal 46 } 
	{ survivor_45_ce0 sc_out sc_logic 1 signal 46 } 
	{ survivor_45_q0 sc_in sc_lv 1 signal 46 } 
	{ survivor_46_address0 sc_out sc_lv 5 signal 47 } 
	{ survivor_46_ce0 sc_out sc_logic 1 signal 47 } 
	{ survivor_46_q0 sc_in sc_lv 1 signal 47 } 
	{ survivor_47_address0 sc_out sc_lv 5 signal 48 } 
	{ survivor_47_ce0 sc_out sc_logic 1 signal 48 } 
	{ survivor_47_q0 sc_in sc_lv 1 signal 48 } 
	{ survivor_48_address0 sc_out sc_lv 5 signal 49 } 
	{ survivor_48_ce0 sc_out sc_logic 1 signal 49 } 
	{ survivor_48_q0 sc_in sc_lv 1 signal 49 } 
	{ survivor_49_address0 sc_out sc_lv 5 signal 50 } 
	{ survivor_49_ce0 sc_out sc_logic 1 signal 50 } 
	{ survivor_49_q0 sc_in sc_lv 1 signal 50 } 
	{ survivor_50_address0 sc_out sc_lv 5 signal 51 } 
	{ survivor_50_ce0 sc_out sc_logic 1 signal 51 } 
	{ survivor_50_q0 sc_in sc_lv 1 signal 51 } 
	{ survivor_51_address0 sc_out sc_lv 5 signal 52 } 
	{ survivor_51_ce0 sc_out sc_logic 1 signal 52 } 
	{ survivor_51_q0 sc_in sc_lv 1 signal 52 } 
	{ survivor_52_address0 sc_out sc_lv 5 signal 53 } 
	{ survivor_52_ce0 sc_out sc_logic 1 signal 53 } 
	{ survivor_52_q0 sc_in sc_lv 1 signal 53 } 
	{ survivor_53_address0 sc_out sc_lv 5 signal 54 } 
	{ survivor_53_ce0 sc_out sc_logic 1 signal 54 } 
	{ survivor_53_q0 sc_in sc_lv 1 signal 54 } 
	{ survivor_54_address0 sc_out sc_lv 5 signal 55 } 
	{ survivor_54_ce0 sc_out sc_logic 1 signal 55 } 
	{ survivor_54_q0 sc_in sc_lv 1 signal 55 } 
	{ survivor_55_address0 sc_out sc_lv 5 signal 56 } 
	{ survivor_55_ce0 sc_out sc_logic 1 signal 56 } 
	{ survivor_55_q0 sc_in sc_lv 1 signal 56 } 
	{ survivor_56_address0 sc_out sc_lv 5 signal 57 } 
	{ survivor_56_ce0 sc_out sc_logic 1 signal 57 } 
	{ survivor_56_q0 sc_in sc_lv 1 signal 57 } 
	{ survivor_57_address0 sc_out sc_lv 5 signal 58 } 
	{ survivor_57_ce0 sc_out sc_logic 1 signal 58 } 
	{ survivor_57_q0 sc_in sc_lv 1 signal 58 } 
	{ survivor_58_address0 sc_out sc_lv 5 signal 59 } 
	{ survivor_58_ce0 sc_out sc_logic 1 signal 59 } 
	{ survivor_58_q0 sc_in sc_lv 1 signal 59 } 
	{ survivor_59_address0 sc_out sc_lv 5 signal 60 } 
	{ survivor_59_ce0 sc_out sc_logic 1 signal 60 } 
	{ survivor_59_q0 sc_in sc_lv 1 signal 60 } 
	{ survivor_60_address0 sc_out sc_lv 5 signal 61 } 
	{ survivor_60_ce0 sc_out sc_logic 1 signal 61 } 
	{ survivor_60_q0 sc_in sc_lv 1 signal 61 } 
	{ survivor_61_address0 sc_out sc_lv 5 signal 62 } 
	{ survivor_61_ce0 sc_out sc_logic 1 signal 62 } 
	{ survivor_61_q0 sc_in sc_lv 1 signal 62 } 
	{ survivor_62_address0 sc_out sc_lv 5 signal 63 } 
	{ survivor_62_ce0 sc_out sc_logic 1 signal 63 } 
	{ survivor_62_q0 sc_in sc_lv 1 signal 63 } 
	{ survivor_63_address0 sc_out sc_lv 5 signal 64 } 
	{ survivor_63_ce0 sc_out sc_logic 1 signal 64 } 
	{ survivor_63_q0 sc_in sc_lv 1 signal 64 } 
	{ p_out sc_out sc_lv 1 signal 65 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ p_out1 sc_out sc_lv 1 signal 66 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ p_out2 sc_out sc_lv 1 signal 67 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ p_out3 sc_out sc_lv 1 signal 68 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ p_out4 sc_out sc_lv 1 signal 69 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ p_out5 sc_out sc_lv 1 signal 70 } 
	{ p_out5_ap_vld sc_out sc_logic 1 outvld 70 } 
	{ p_out6 sc_out sc_lv 1 signal 71 } 
	{ p_out6_ap_vld sc_out sc_logic 1 outvld 71 } 
	{ p_out7 sc_out sc_lv 1 signal 72 } 
	{ p_out7_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ p_out8 sc_out sc_lv 1 signal 73 } 
	{ p_out8_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ p_out9 sc_out sc_lv 1 signal 74 } 
	{ p_out9_ap_vld sc_out sc_logic 1 outvld 74 } 
	{ p_out10 sc_out sc_lv 1 signal 75 } 
	{ p_out10_ap_vld sc_out sc_logic 1 outvld 75 } 
	{ p_out11 sc_out sc_lv 1 signal 76 } 
	{ p_out11_ap_vld sc_out sc_logic 1 outvld 76 } 
	{ p_out12 sc_out sc_lv 1 signal 77 } 
	{ p_out12_ap_vld sc_out sc_logic 1 outvld 77 } 
	{ p_out13 sc_out sc_lv 1 signal 78 } 
	{ p_out13_ap_vld sc_out sc_logic 1 outvld 78 } 
	{ p_out14 sc_out sc_lv 1 signal 79 } 
	{ p_out14_ap_vld sc_out sc_logic 1 outvld 79 } 
	{ p_out15 sc_out sc_lv 1 signal 80 } 
	{ p_out15_ap_vld sc_out sc_logic 1 outvld 80 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "best_state_32", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "best_state_32", "role": "default" }} , 
 	{ "name": "survivor_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor", "role": "address0" }} , 
 	{ "name": "survivor_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor", "role": "ce0" }} , 
 	{ "name": "survivor_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor", "role": "q0" }} , 
 	{ "name": "survivor_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_1", "role": "address0" }} , 
 	{ "name": "survivor_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_1", "role": "ce0" }} , 
 	{ "name": "survivor_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_1", "role": "q0" }} , 
 	{ "name": "survivor_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_2", "role": "address0" }} , 
 	{ "name": "survivor_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_2", "role": "ce0" }} , 
 	{ "name": "survivor_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_2", "role": "q0" }} , 
 	{ "name": "survivor_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_3", "role": "address0" }} , 
 	{ "name": "survivor_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_3", "role": "ce0" }} , 
 	{ "name": "survivor_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_3", "role": "q0" }} , 
 	{ "name": "survivor_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_4", "role": "address0" }} , 
 	{ "name": "survivor_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_4", "role": "ce0" }} , 
 	{ "name": "survivor_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_4", "role": "q0" }} , 
 	{ "name": "survivor_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_5", "role": "address0" }} , 
 	{ "name": "survivor_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_5", "role": "ce0" }} , 
 	{ "name": "survivor_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_5", "role": "q0" }} , 
 	{ "name": "survivor_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_6", "role": "address0" }} , 
 	{ "name": "survivor_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_6", "role": "ce0" }} , 
 	{ "name": "survivor_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_6", "role": "q0" }} , 
 	{ "name": "survivor_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_7", "role": "address0" }} , 
 	{ "name": "survivor_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_7", "role": "ce0" }} , 
 	{ "name": "survivor_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_7", "role": "q0" }} , 
 	{ "name": "survivor_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_8", "role": "address0" }} , 
 	{ "name": "survivor_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_8", "role": "ce0" }} , 
 	{ "name": "survivor_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_8", "role": "q0" }} , 
 	{ "name": "survivor_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_9", "role": "address0" }} , 
 	{ "name": "survivor_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_9", "role": "ce0" }} , 
 	{ "name": "survivor_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_9", "role": "q0" }} , 
 	{ "name": "survivor_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_10", "role": "address0" }} , 
 	{ "name": "survivor_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_10", "role": "ce0" }} , 
 	{ "name": "survivor_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_10", "role": "q0" }} , 
 	{ "name": "survivor_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_11", "role": "address0" }} , 
 	{ "name": "survivor_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_11", "role": "ce0" }} , 
 	{ "name": "survivor_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_11", "role": "q0" }} , 
 	{ "name": "survivor_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_12", "role": "address0" }} , 
 	{ "name": "survivor_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_12", "role": "ce0" }} , 
 	{ "name": "survivor_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_12", "role": "q0" }} , 
 	{ "name": "survivor_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_13", "role": "address0" }} , 
 	{ "name": "survivor_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_13", "role": "ce0" }} , 
 	{ "name": "survivor_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_13", "role": "q0" }} , 
 	{ "name": "survivor_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_14", "role": "address0" }} , 
 	{ "name": "survivor_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_14", "role": "ce0" }} , 
 	{ "name": "survivor_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_14", "role": "q0" }} , 
 	{ "name": "survivor_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_15", "role": "address0" }} , 
 	{ "name": "survivor_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_15", "role": "ce0" }} , 
 	{ "name": "survivor_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_15", "role": "q0" }} , 
 	{ "name": "survivor_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_16", "role": "address0" }} , 
 	{ "name": "survivor_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_16", "role": "ce0" }} , 
 	{ "name": "survivor_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_16", "role": "q0" }} , 
 	{ "name": "survivor_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_17", "role": "address0" }} , 
 	{ "name": "survivor_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_17", "role": "ce0" }} , 
 	{ "name": "survivor_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_17", "role": "q0" }} , 
 	{ "name": "survivor_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_18", "role": "address0" }} , 
 	{ "name": "survivor_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_18", "role": "ce0" }} , 
 	{ "name": "survivor_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_18", "role": "q0" }} , 
 	{ "name": "survivor_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_19", "role": "address0" }} , 
 	{ "name": "survivor_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_19", "role": "ce0" }} , 
 	{ "name": "survivor_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_19", "role": "q0" }} , 
 	{ "name": "survivor_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_20", "role": "address0" }} , 
 	{ "name": "survivor_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_20", "role": "ce0" }} , 
 	{ "name": "survivor_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_20", "role": "q0" }} , 
 	{ "name": "survivor_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_21", "role": "address0" }} , 
 	{ "name": "survivor_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_21", "role": "ce0" }} , 
 	{ "name": "survivor_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_21", "role": "q0" }} , 
 	{ "name": "survivor_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_22", "role": "address0" }} , 
 	{ "name": "survivor_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_22", "role": "ce0" }} , 
 	{ "name": "survivor_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_22", "role": "q0" }} , 
 	{ "name": "survivor_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_23", "role": "address0" }} , 
 	{ "name": "survivor_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_23", "role": "ce0" }} , 
 	{ "name": "survivor_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_23", "role": "q0" }} , 
 	{ "name": "survivor_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_24", "role": "address0" }} , 
 	{ "name": "survivor_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_24", "role": "ce0" }} , 
 	{ "name": "survivor_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_24", "role": "q0" }} , 
 	{ "name": "survivor_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_25", "role": "address0" }} , 
 	{ "name": "survivor_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_25", "role": "ce0" }} , 
 	{ "name": "survivor_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_25", "role": "q0" }} , 
 	{ "name": "survivor_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_26", "role": "address0" }} , 
 	{ "name": "survivor_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_26", "role": "ce0" }} , 
 	{ "name": "survivor_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_26", "role": "q0" }} , 
 	{ "name": "survivor_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_27", "role": "address0" }} , 
 	{ "name": "survivor_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_27", "role": "ce0" }} , 
 	{ "name": "survivor_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_27", "role": "q0" }} , 
 	{ "name": "survivor_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_28", "role": "address0" }} , 
 	{ "name": "survivor_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_28", "role": "ce0" }} , 
 	{ "name": "survivor_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_28", "role": "q0" }} , 
 	{ "name": "survivor_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_29", "role": "address0" }} , 
 	{ "name": "survivor_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_29", "role": "ce0" }} , 
 	{ "name": "survivor_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_29", "role": "q0" }} , 
 	{ "name": "survivor_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_30", "role": "address0" }} , 
 	{ "name": "survivor_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_30", "role": "ce0" }} , 
 	{ "name": "survivor_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_30", "role": "q0" }} , 
 	{ "name": "survivor_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_31", "role": "address0" }} , 
 	{ "name": "survivor_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_31", "role": "ce0" }} , 
 	{ "name": "survivor_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_31", "role": "q0" }} , 
 	{ "name": "survivor_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_32", "role": "address0" }} , 
 	{ "name": "survivor_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_32", "role": "ce0" }} , 
 	{ "name": "survivor_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_32", "role": "q0" }} , 
 	{ "name": "survivor_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_33", "role": "address0" }} , 
 	{ "name": "survivor_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_33", "role": "ce0" }} , 
 	{ "name": "survivor_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_33", "role": "q0" }} , 
 	{ "name": "survivor_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_34", "role": "address0" }} , 
 	{ "name": "survivor_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_34", "role": "ce0" }} , 
 	{ "name": "survivor_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_34", "role": "q0" }} , 
 	{ "name": "survivor_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_35", "role": "address0" }} , 
 	{ "name": "survivor_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_35", "role": "ce0" }} , 
 	{ "name": "survivor_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_35", "role": "q0" }} , 
 	{ "name": "survivor_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_36", "role": "address0" }} , 
 	{ "name": "survivor_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_36", "role": "ce0" }} , 
 	{ "name": "survivor_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_36", "role": "q0" }} , 
 	{ "name": "survivor_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_37", "role": "address0" }} , 
 	{ "name": "survivor_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_37", "role": "ce0" }} , 
 	{ "name": "survivor_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_37", "role": "q0" }} , 
 	{ "name": "survivor_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_38", "role": "address0" }} , 
 	{ "name": "survivor_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_38", "role": "ce0" }} , 
 	{ "name": "survivor_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_38", "role": "q0" }} , 
 	{ "name": "survivor_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_39", "role": "address0" }} , 
 	{ "name": "survivor_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_39", "role": "ce0" }} , 
 	{ "name": "survivor_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_39", "role": "q0" }} , 
 	{ "name": "survivor_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_40", "role": "address0" }} , 
 	{ "name": "survivor_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_40", "role": "ce0" }} , 
 	{ "name": "survivor_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_40", "role": "q0" }} , 
 	{ "name": "survivor_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_41", "role": "address0" }} , 
 	{ "name": "survivor_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_41", "role": "ce0" }} , 
 	{ "name": "survivor_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_41", "role": "q0" }} , 
 	{ "name": "survivor_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_42", "role": "address0" }} , 
 	{ "name": "survivor_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_42", "role": "ce0" }} , 
 	{ "name": "survivor_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_42", "role": "q0" }} , 
 	{ "name": "survivor_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_43", "role": "address0" }} , 
 	{ "name": "survivor_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_43", "role": "ce0" }} , 
 	{ "name": "survivor_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_43", "role": "q0" }} , 
 	{ "name": "survivor_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_44", "role": "address0" }} , 
 	{ "name": "survivor_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_44", "role": "ce0" }} , 
 	{ "name": "survivor_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_44", "role": "q0" }} , 
 	{ "name": "survivor_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_45", "role": "address0" }} , 
 	{ "name": "survivor_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_45", "role": "ce0" }} , 
 	{ "name": "survivor_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_45", "role": "q0" }} , 
 	{ "name": "survivor_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_46", "role": "address0" }} , 
 	{ "name": "survivor_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_46", "role": "ce0" }} , 
 	{ "name": "survivor_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_46", "role": "q0" }} , 
 	{ "name": "survivor_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_47", "role": "address0" }} , 
 	{ "name": "survivor_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_47", "role": "ce0" }} , 
 	{ "name": "survivor_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_47", "role": "q0" }} , 
 	{ "name": "survivor_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_48", "role": "address0" }} , 
 	{ "name": "survivor_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_48", "role": "ce0" }} , 
 	{ "name": "survivor_48_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_48", "role": "q0" }} , 
 	{ "name": "survivor_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_49", "role": "address0" }} , 
 	{ "name": "survivor_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_49", "role": "ce0" }} , 
 	{ "name": "survivor_49_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_49", "role": "q0" }} , 
 	{ "name": "survivor_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_50", "role": "address0" }} , 
 	{ "name": "survivor_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_50", "role": "ce0" }} , 
 	{ "name": "survivor_50_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_50", "role": "q0" }} , 
 	{ "name": "survivor_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_51", "role": "address0" }} , 
 	{ "name": "survivor_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_51", "role": "ce0" }} , 
 	{ "name": "survivor_51_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_51", "role": "q0" }} , 
 	{ "name": "survivor_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_52", "role": "address0" }} , 
 	{ "name": "survivor_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_52", "role": "ce0" }} , 
 	{ "name": "survivor_52_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_52", "role": "q0" }} , 
 	{ "name": "survivor_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_53", "role": "address0" }} , 
 	{ "name": "survivor_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_53", "role": "ce0" }} , 
 	{ "name": "survivor_53_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_53", "role": "q0" }} , 
 	{ "name": "survivor_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_54", "role": "address0" }} , 
 	{ "name": "survivor_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_54", "role": "ce0" }} , 
 	{ "name": "survivor_54_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_54", "role": "q0" }} , 
 	{ "name": "survivor_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_55", "role": "address0" }} , 
 	{ "name": "survivor_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_55", "role": "ce0" }} , 
 	{ "name": "survivor_55_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_55", "role": "q0" }} , 
 	{ "name": "survivor_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_56", "role": "address0" }} , 
 	{ "name": "survivor_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_56", "role": "ce0" }} , 
 	{ "name": "survivor_56_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_56", "role": "q0" }} , 
 	{ "name": "survivor_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_57", "role": "address0" }} , 
 	{ "name": "survivor_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_57", "role": "ce0" }} , 
 	{ "name": "survivor_57_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_57", "role": "q0" }} , 
 	{ "name": "survivor_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_58", "role": "address0" }} , 
 	{ "name": "survivor_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_58", "role": "ce0" }} , 
 	{ "name": "survivor_58_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_58", "role": "q0" }} , 
 	{ "name": "survivor_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_59", "role": "address0" }} , 
 	{ "name": "survivor_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_59", "role": "ce0" }} , 
 	{ "name": "survivor_59_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_59", "role": "q0" }} , 
 	{ "name": "survivor_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_60", "role": "address0" }} , 
 	{ "name": "survivor_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_60", "role": "ce0" }} , 
 	{ "name": "survivor_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_60", "role": "q0" }} , 
 	{ "name": "survivor_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_61", "role": "address0" }} , 
 	{ "name": "survivor_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_61", "role": "ce0" }} , 
 	{ "name": "survivor_61_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_61", "role": "q0" }} , 
 	{ "name": "survivor_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_62", "role": "address0" }} , 
 	{ "name": "survivor_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_62", "role": "ce0" }} , 
 	{ "name": "survivor_62_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_62", "role": "q0" }} , 
 	{ "name": "survivor_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "survivor_63", "role": "address0" }} , 
 	{ "name": "survivor_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_63", "role": "ce0" }} , 
 	{ "name": "survivor_63_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "survivor_63", "role": "q0" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "p_out5", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out5", "role": "default" }} , 
 	{ "name": "p_out5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out5", "role": "ap_vld" }} , 
 	{ "name": "p_out6", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out6", "role": "default" }} , 
 	{ "name": "p_out6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out6", "role": "ap_vld" }} , 
 	{ "name": "p_out7", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out7", "role": "default" }} , 
 	{ "name": "p_out7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out7", "role": "ap_vld" }} , 
 	{ "name": "p_out8", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out8", "role": "default" }} , 
 	{ "name": "p_out8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out8", "role": "ap_vld" }} , 
 	{ "name": "p_out9", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out9", "role": "default" }} , 
 	{ "name": "p_out9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out9", "role": "ap_vld" }} , 
 	{ "name": "p_out10", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out10", "role": "default" }} , 
 	{ "name": "p_out10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out10", "role": "ap_vld" }} , 
 	{ "name": "p_out11", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out11", "role": "default" }} , 
 	{ "name": "p_out11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out11", "role": "ap_vld" }} , 
 	{ "name": "p_out12", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out12", "role": "default" }} , 
 	{ "name": "p_out12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out12", "role": "ap_vld" }} , 
 	{ "name": "p_out13", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out13", "role": "default" }} , 
 	{ "name": "p_out13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out13", "role": "ap_vld" }} , 
 	{ "name": "p_out14", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out14", "role": "default" }} , 
 	{ "name": "p_out14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out14", "role": "ap_vld" }} , 
 	{ "name": "p_out15", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out15", "role": "default" }} , 
 	{ "name": "p_out15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out15", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	viterbi_decoder_Pipeline_TRACEBACK {
		best_state_32 {Type I LastRead 0 FirstWrite -1}
		survivor {Type I LastRead 0 FirstWrite -1}
		survivor_1 {Type I LastRead 0 FirstWrite -1}
		survivor_2 {Type I LastRead 0 FirstWrite -1}
		survivor_3 {Type I LastRead 0 FirstWrite -1}
		survivor_4 {Type I LastRead 0 FirstWrite -1}
		survivor_5 {Type I LastRead 0 FirstWrite -1}
		survivor_6 {Type I LastRead 0 FirstWrite -1}
		survivor_7 {Type I LastRead 0 FirstWrite -1}
		survivor_8 {Type I LastRead 0 FirstWrite -1}
		survivor_9 {Type I LastRead 0 FirstWrite -1}
		survivor_10 {Type I LastRead 0 FirstWrite -1}
		survivor_11 {Type I LastRead 0 FirstWrite -1}
		survivor_12 {Type I LastRead 0 FirstWrite -1}
		survivor_13 {Type I LastRead 0 FirstWrite -1}
		survivor_14 {Type I LastRead 0 FirstWrite -1}
		survivor_15 {Type I LastRead 0 FirstWrite -1}
		survivor_16 {Type I LastRead 0 FirstWrite -1}
		survivor_17 {Type I LastRead 0 FirstWrite -1}
		survivor_18 {Type I LastRead 0 FirstWrite -1}
		survivor_19 {Type I LastRead 0 FirstWrite -1}
		survivor_20 {Type I LastRead 0 FirstWrite -1}
		survivor_21 {Type I LastRead 0 FirstWrite -1}
		survivor_22 {Type I LastRead 0 FirstWrite -1}
		survivor_23 {Type I LastRead 0 FirstWrite -1}
		survivor_24 {Type I LastRead 0 FirstWrite -1}
		survivor_25 {Type I LastRead 0 FirstWrite -1}
		survivor_26 {Type I LastRead 0 FirstWrite -1}
		survivor_27 {Type I LastRead 0 FirstWrite -1}
		survivor_28 {Type I LastRead 0 FirstWrite -1}
		survivor_29 {Type I LastRead 0 FirstWrite -1}
		survivor_30 {Type I LastRead 0 FirstWrite -1}
		survivor_31 {Type I LastRead 0 FirstWrite -1}
		survivor_32 {Type I LastRead 0 FirstWrite -1}
		survivor_33 {Type I LastRead 0 FirstWrite -1}
		survivor_34 {Type I LastRead 0 FirstWrite -1}
		survivor_35 {Type I LastRead 0 FirstWrite -1}
		survivor_36 {Type I LastRead 0 FirstWrite -1}
		survivor_37 {Type I LastRead 0 FirstWrite -1}
		survivor_38 {Type I LastRead 0 FirstWrite -1}
		survivor_39 {Type I LastRead 0 FirstWrite -1}
		survivor_40 {Type I LastRead 0 FirstWrite -1}
		survivor_41 {Type I LastRead 0 FirstWrite -1}
		survivor_42 {Type I LastRead 0 FirstWrite -1}
		survivor_43 {Type I LastRead 0 FirstWrite -1}
		survivor_44 {Type I LastRead 0 FirstWrite -1}
		survivor_45 {Type I LastRead 0 FirstWrite -1}
		survivor_46 {Type I LastRead 0 FirstWrite -1}
		survivor_47 {Type I LastRead 0 FirstWrite -1}
		survivor_48 {Type I LastRead 0 FirstWrite -1}
		survivor_49 {Type I LastRead 0 FirstWrite -1}
		survivor_50 {Type I LastRead 0 FirstWrite -1}
		survivor_51 {Type I LastRead 0 FirstWrite -1}
		survivor_52 {Type I LastRead 0 FirstWrite -1}
		survivor_53 {Type I LastRead 0 FirstWrite -1}
		survivor_54 {Type I LastRead 0 FirstWrite -1}
		survivor_55 {Type I LastRead 0 FirstWrite -1}
		survivor_56 {Type I LastRead 0 FirstWrite -1}
		survivor_57 {Type I LastRead 0 FirstWrite -1}
		survivor_58 {Type I LastRead 0 FirstWrite -1}
		survivor_59 {Type I LastRead 0 FirstWrite -1}
		survivor_60 {Type I LastRead 0 FirstWrite -1}
		survivor_61 {Type I LastRead 0 FirstWrite -1}
		survivor_62 {Type I LastRead 0 FirstWrite -1}
		survivor_63 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		p_out3 {Type O LastRead -1 FirstWrite 0}
		p_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}
		p_out8 {Type O LastRead -1 FirstWrite 0}
		p_out9 {Type O LastRead -1 FirstWrite 0}
		p_out10 {Type O LastRead -1 FirstWrite 0}
		p_out11 {Type O LastRead -1 FirstWrite 0}
		p_out12 {Type O LastRead -1 FirstWrite 0}
		p_out13 {Type O LastRead -1 FirstWrite 0}
		p_out14 {Type O LastRead -1 FirstWrite 0}
		p_out15 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	best_state_32 { ap_none {  { best_state_32 in_data 0 6 } } }
	survivor { ap_memory {  { survivor_address0 mem_address 1 5 }  { survivor_ce0 mem_ce 1 1 }  { survivor_q0 mem_dout 0 1 } } }
	survivor_1 { ap_memory {  { survivor_1_address0 mem_address 1 5 }  { survivor_1_ce0 mem_ce 1 1 }  { survivor_1_q0 mem_dout 0 1 } } }
	survivor_2 { ap_memory {  { survivor_2_address0 mem_address 1 5 }  { survivor_2_ce0 mem_ce 1 1 }  { survivor_2_q0 mem_dout 0 1 } } }
	survivor_3 { ap_memory {  { survivor_3_address0 mem_address 1 5 }  { survivor_3_ce0 mem_ce 1 1 }  { survivor_3_q0 mem_dout 0 1 } } }
	survivor_4 { ap_memory {  { survivor_4_address0 mem_address 1 5 }  { survivor_4_ce0 mem_ce 1 1 }  { survivor_4_q0 mem_dout 0 1 } } }
	survivor_5 { ap_memory {  { survivor_5_address0 mem_address 1 5 }  { survivor_5_ce0 mem_ce 1 1 }  { survivor_5_q0 mem_dout 0 1 } } }
	survivor_6 { ap_memory {  { survivor_6_address0 mem_address 1 5 }  { survivor_6_ce0 mem_ce 1 1 }  { survivor_6_q0 mem_dout 0 1 } } }
	survivor_7 { ap_memory {  { survivor_7_address0 mem_address 1 5 }  { survivor_7_ce0 mem_ce 1 1 }  { survivor_7_q0 mem_dout 0 1 } } }
	survivor_8 { ap_memory {  { survivor_8_address0 mem_address 1 5 }  { survivor_8_ce0 mem_ce 1 1 }  { survivor_8_q0 mem_dout 0 1 } } }
	survivor_9 { ap_memory {  { survivor_9_address0 mem_address 1 5 }  { survivor_9_ce0 mem_ce 1 1 }  { survivor_9_q0 mem_dout 0 1 } } }
	survivor_10 { ap_memory {  { survivor_10_address0 mem_address 1 5 }  { survivor_10_ce0 mem_ce 1 1 }  { survivor_10_q0 mem_dout 0 1 } } }
	survivor_11 { ap_memory {  { survivor_11_address0 mem_address 1 5 }  { survivor_11_ce0 mem_ce 1 1 }  { survivor_11_q0 mem_dout 0 1 } } }
	survivor_12 { ap_memory {  { survivor_12_address0 mem_address 1 5 }  { survivor_12_ce0 mem_ce 1 1 }  { survivor_12_q0 mem_dout 0 1 } } }
	survivor_13 { ap_memory {  { survivor_13_address0 mem_address 1 5 }  { survivor_13_ce0 mem_ce 1 1 }  { survivor_13_q0 mem_dout 0 1 } } }
	survivor_14 { ap_memory {  { survivor_14_address0 mem_address 1 5 }  { survivor_14_ce0 mem_ce 1 1 }  { survivor_14_q0 mem_dout 0 1 } } }
	survivor_15 { ap_memory {  { survivor_15_address0 mem_address 1 5 }  { survivor_15_ce0 mem_ce 1 1 }  { survivor_15_q0 mem_dout 0 1 } } }
	survivor_16 { ap_memory {  { survivor_16_address0 mem_address 1 5 }  { survivor_16_ce0 mem_ce 1 1 }  { survivor_16_q0 mem_dout 0 1 } } }
	survivor_17 { ap_memory {  { survivor_17_address0 mem_address 1 5 }  { survivor_17_ce0 mem_ce 1 1 }  { survivor_17_q0 mem_dout 0 1 } } }
	survivor_18 { ap_memory {  { survivor_18_address0 mem_address 1 5 }  { survivor_18_ce0 mem_ce 1 1 }  { survivor_18_q0 mem_dout 0 1 } } }
	survivor_19 { ap_memory {  { survivor_19_address0 mem_address 1 5 }  { survivor_19_ce0 mem_ce 1 1 }  { survivor_19_q0 mem_dout 0 1 } } }
	survivor_20 { ap_memory {  { survivor_20_address0 mem_address 1 5 }  { survivor_20_ce0 mem_ce 1 1 }  { survivor_20_q0 mem_dout 0 1 } } }
	survivor_21 { ap_memory {  { survivor_21_address0 mem_address 1 5 }  { survivor_21_ce0 mem_ce 1 1 }  { survivor_21_q0 mem_dout 0 1 } } }
	survivor_22 { ap_memory {  { survivor_22_address0 mem_address 1 5 }  { survivor_22_ce0 mem_ce 1 1 }  { survivor_22_q0 mem_dout 0 1 } } }
	survivor_23 { ap_memory {  { survivor_23_address0 mem_address 1 5 }  { survivor_23_ce0 mem_ce 1 1 }  { survivor_23_q0 mem_dout 0 1 } } }
	survivor_24 { ap_memory {  { survivor_24_address0 mem_address 1 5 }  { survivor_24_ce0 mem_ce 1 1 }  { survivor_24_q0 mem_dout 0 1 } } }
	survivor_25 { ap_memory {  { survivor_25_address0 mem_address 1 5 }  { survivor_25_ce0 mem_ce 1 1 }  { survivor_25_q0 mem_dout 0 1 } } }
	survivor_26 { ap_memory {  { survivor_26_address0 mem_address 1 5 }  { survivor_26_ce0 mem_ce 1 1 }  { survivor_26_q0 mem_dout 0 1 } } }
	survivor_27 { ap_memory {  { survivor_27_address0 mem_address 1 5 }  { survivor_27_ce0 mem_ce 1 1 }  { survivor_27_q0 mem_dout 0 1 } } }
	survivor_28 { ap_memory {  { survivor_28_address0 mem_address 1 5 }  { survivor_28_ce0 mem_ce 1 1 }  { survivor_28_q0 mem_dout 0 1 } } }
	survivor_29 { ap_memory {  { survivor_29_address0 mem_address 1 5 }  { survivor_29_ce0 mem_ce 1 1 }  { survivor_29_q0 mem_dout 0 1 } } }
	survivor_30 { ap_memory {  { survivor_30_address0 mem_address 1 5 }  { survivor_30_ce0 mem_ce 1 1 }  { survivor_30_q0 mem_dout 0 1 } } }
	survivor_31 { ap_memory {  { survivor_31_address0 mem_address 1 5 }  { survivor_31_ce0 mem_ce 1 1 }  { survivor_31_q0 mem_dout 0 1 } } }
	survivor_32 { ap_memory {  { survivor_32_address0 mem_address 1 5 }  { survivor_32_ce0 mem_ce 1 1 }  { survivor_32_q0 mem_dout 0 1 } } }
	survivor_33 { ap_memory {  { survivor_33_address0 mem_address 1 5 }  { survivor_33_ce0 mem_ce 1 1 }  { survivor_33_q0 mem_dout 0 1 } } }
	survivor_34 { ap_memory {  { survivor_34_address0 mem_address 1 5 }  { survivor_34_ce0 mem_ce 1 1 }  { survivor_34_q0 mem_dout 0 1 } } }
	survivor_35 { ap_memory {  { survivor_35_address0 mem_address 1 5 }  { survivor_35_ce0 mem_ce 1 1 }  { survivor_35_q0 mem_dout 0 1 } } }
	survivor_36 { ap_memory {  { survivor_36_address0 mem_address 1 5 }  { survivor_36_ce0 mem_ce 1 1 }  { survivor_36_q0 mem_dout 0 1 } } }
	survivor_37 { ap_memory {  { survivor_37_address0 mem_address 1 5 }  { survivor_37_ce0 mem_ce 1 1 }  { survivor_37_q0 mem_dout 0 1 } } }
	survivor_38 { ap_memory {  { survivor_38_address0 mem_address 1 5 }  { survivor_38_ce0 mem_ce 1 1 }  { survivor_38_q0 mem_dout 0 1 } } }
	survivor_39 { ap_memory {  { survivor_39_address0 mem_address 1 5 }  { survivor_39_ce0 mem_ce 1 1 }  { survivor_39_q0 mem_dout 0 1 } } }
	survivor_40 { ap_memory {  { survivor_40_address0 mem_address 1 5 }  { survivor_40_ce0 mem_ce 1 1 }  { survivor_40_q0 mem_dout 0 1 } } }
	survivor_41 { ap_memory {  { survivor_41_address0 mem_address 1 5 }  { survivor_41_ce0 mem_ce 1 1 }  { survivor_41_q0 mem_dout 0 1 } } }
	survivor_42 { ap_memory {  { survivor_42_address0 mem_address 1 5 }  { survivor_42_ce0 mem_ce 1 1 }  { survivor_42_q0 mem_dout 0 1 } } }
	survivor_43 { ap_memory {  { survivor_43_address0 mem_address 1 5 }  { survivor_43_ce0 mem_ce 1 1 }  { survivor_43_q0 mem_dout 0 1 } } }
	survivor_44 { ap_memory {  { survivor_44_address0 mem_address 1 5 }  { survivor_44_ce0 mem_ce 1 1 }  { survivor_44_q0 mem_dout 0 1 } } }
	survivor_45 { ap_memory {  { survivor_45_address0 mem_address 1 5 }  { survivor_45_ce0 mem_ce 1 1 }  { survivor_45_q0 mem_dout 0 1 } } }
	survivor_46 { ap_memory {  { survivor_46_address0 mem_address 1 5 }  { survivor_46_ce0 mem_ce 1 1 }  { survivor_46_q0 mem_dout 0 1 } } }
	survivor_47 { ap_memory {  { survivor_47_address0 mem_address 1 5 }  { survivor_47_ce0 mem_ce 1 1 }  { survivor_47_q0 mem_dout 0 1 } } }
	survivor_48 { ap_memory {  { survivor_48_address0 mem_address 1 5 }  { survivor_48_ce0 mem_ce 1 1 }  { survivor_48_q0 mem_dout 0 1 } } }
	survivor_49 { ap_memory {  { survivor_49_address0 mem_address 1 5 }  { survivor_49_ce0 mem_ce 1 1 }  { survivor_49_q0 mem_dout 0 1 } } }
	survivor_50 { ap_memory {  { survivor_50_address0 mem_address 1 5 }  { survivor_50_ce0 mem_ce 1 1 }  { survivor_50_q0 mem_dout 0 1 } } }
	survivor_51 { ap_memory {  { survivor_51_address0 mem_address 1 5 }  { survivor_51_ce0 mem_ce 1 1 }  { survivor_51_q0 mem_dout 0 1 } } }
	survivor_52 { ap_memory {  { survivor_52_address0 mem_address 1 5 }  { survivor_52_ce0 mem_ce 1 1 }  { survivor_52_q0 mem_dout 0 1 } } }
	survivor_53 { ap_memory {  { survivor_53_address0 mem_address 1 5 }  { survivor_53_ce0 mem_ce 1 1 }  { survivor_53_q0 mem_dout 0 1 } } }
	survivor_54 { ap_memory {  { survivor_54_address0 mem_address 1 5 }  { survivor_54_ce0 mem_ce 1 1 }  { survivor_54_q0 mem_dout 0 1 } } }
	survivor_55 { ap_memory {  { survivor_55_address0 mem_address 1 5 }  { survivor_55_ce0 mem_ce 1 1 }  { survivor_55_q0 mem_dout 0 1 } } }
	survivor_56 { ap_memory {  { survivor_56_address0 mem_address 1 5 }  { survivor_56_ce0 mem_ce 1 1 }  { survivor_56_q0 mem_dout 0 1 } } }
	survivor_57 { ap_memory {  { survivor_57_address0 mem_address 1 5 }  { survivor_57_ce0 mem_ce 1 1 }  { survivor_57_q0 mem_dout 0 1 } } }
	survivor_58 { ap_memory {  { survivor_58_address0 mem_address 1 5 }  { survivor_58_ce0 mem_ce 1 1 }  { survivor_58_q0 mem_dout 0 1 } } }
	survivor_59 { ap_memory {  { survivor_59_address0 mem_address 1 5 }  { survivor_59_ce0 mem_ce 1 1 }  { survivor_59_q0 mem_dout 0 1 } } }
	survivor_60 { ap_memory {  { survivor_60_address0 mem_address 1 5 }  { survivor_60_ce0 mem_ce 1 1 }  { survivor_60_q0 mem_dout 0 1 } } }
	survivor_61 { ap_memory {  { survivor_61_address0 mem_address 1 5 }  { survivor_61_ce0 mem_ce 1 1 }  { survivor_61_q0 mem_dout 0 1 } } }
	survivor_62 { ap_memory {  { survivor_62_address0 mem_address 1 5 }  { survivor_62_ce0 mem_ce 1 1 }  { survivor_62_q0 mem_dout 0 1 } } }
	survivor_63 { ap_memory {  { survivor_63_address0 mem_address 1 5 }  { survivor_63_ce0 mem_ce 1 1 }  { survivor_63_q0 mem_dout 0 1 } } }
	p_out { ap_vld {  { p_out out_data 1 1 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 1 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 1 }  { p_out2_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 1 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 1 }  { p_out4_ap_vld out_vld 1 1 } } }
	p_out5 { ap_vld {  { p_out5 out_data 1 1 }  { p_out5_ap_vld out_vld 1 1 } } }
	p_out6 { ap_vld {  { p_out6 out_data 1 1 }  { p_out6_ap_vld out_vld 1 1 } } }
	p_out7 { ap_vld {  { p_out7 out_data 1 1 }  { p_out7_ap_vld out_vld 1 1 } } }
	p_out8 { ap_vld {  { p_out8 out_data 1 1 }  { p_out8_ap_vld out_vld 1 1 } } }
	p_out9 { ap_vld {  { p_out9 out_data 1 1 }  { p_out9_ap_vld out_vld 1 1 } } }
	p_out10 { ap_vld {  { p_out10 out_data 1 1 }  { p_out10_ap_vld out_vld 1 1 } } }
	p_out11 { ap_vld {  { p_out11 out_data 1 1 }  { p_out11_ap_vld out_vld 1 1 } } }
	p_out12 { ap_vld {  { p_out12 out_data 1 1 }  { p_out12_ap_vld out_vld 1 1 } } }
	p_out13 { ap_vld {  { p_out13 out_data 1 1 }  { p_out13_ap_vld out_vld 1 1 } } }
	p_out14 { ap_vld {  { p_out14 out_data 1 1 }  { p_out14_ap_vld out_vld 1 1 } } }
	p_out15 { ap_vld {  { p_out15 out_data 1 1 }  { p_out15_ap_vld out_vld 1 1 } } }
}
