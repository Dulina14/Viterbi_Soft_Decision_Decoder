set moduleName viterbi_decoder
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
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
set C_modelName {viterbi_decoder}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ encoded_in int 32 regular {axi_s 0 volatile  { encoded_in Data } }  }
	{ decoded_out int 32 regular {axi_s 1 volatile  { decoded_out Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "encoded_in", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "decoded_out", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ encoded_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ encoded_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ encoded_in_TREADY sc_out sc_logic 1 inacc 0 } 
	{ decoded_out_TDATA sc_out sc_lv 32 signal 1 } 
	{ decoded_out_TVALID sc_out sc_logic 1 outvld 1 } 
	{ decoded_out_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "encoded_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "encoded_in", "role": "TDATA" }} , 
 	{ "name": "encoded_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "encoded_in", "role": "TVALID" }} , 
 	{ "name": "encoded_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "encoded_in", "role": "TREADY" }} , 
 	{ "name": "decoded_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "decoded_out", "role": "TDATA" }} , 
 	{ "name": "decoded_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "decoded_out", "role": "TVALID" }} , 
 	{ "name": "decoded_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "decoded_out", "role": "TREADY" }}  ]}

set ArgLastReadFirstWriteLatency {
	viterbi_decoder {
		encoded_in {Type I LastRead 0 FirstWrite -1}
		decoded_out {Type O LastRead -1 FirstWrite 14}}
	viterbi_decoder_Pipeline_TRELLIS {
		survivor_63 {Type O LastRead -1 FirstWrite 1}
		survivor_62 {Type O LastRead -1 FirstWrite 1}
		survivor_61 {Type O LastRead -1 FirstWrite 1}
		survivor_60 {Type O LastRead -1 FirstWrite 1}
		survivor_59 {Type O LastRead -1 FirstWrite 1}
		survivor_58 {Type O LastRead -1 FirstWrite 1}
		survivor_57 {Type O LastRead -1 FirstWrite 1}
		survivor_56 {Type O LastRead -1 FirstWrite 1}
		survivor_55 {Type O LastRead -1 FirstWrite 1}
		survivor_54 {Type O LastRead -1 FirstWrite 1}
		survivor_53 {Type O LastRead -1 FirstWrite 1}
		survivor_52 {Type O LastRead -1 FirstWrite 1}
		survivor_51 {Type O LastRead -1 FirstWrite 1}
		survivor_50 {Type O LastRead -1 FirstWrite 1}
		survivor_49 {Type O LastRead -1 FirstWrite 1}
		survivor_48 {Type O LastRead -1 FirstWrite 1}
		survivor_47 {Type O LastRead -1 FirstWrite 1}
		survivor_46 {Type O LastRead -1 FirstWrite 1}
		survivor_45 {Type O LastRead -1 FirstWrite 1}
		survivor_44 {Type O LastRead -1 FirstWrite 1}
		survivor_43 {Type O LastRead -1 FirstWrite 1}
		survivor_42 {Type O LastRead -1 FirstWrite 1}
		survivor_41 {Type O LastRead -1 FirstWrite 1}
		survivor_40 {Type O LastRead -1 FirstWrite 1}
		survivor_39 {Type O LastRead -1 FirstWrite 1}
		survivor_38 {Type O LastRead -1 FirstWrite 1}
		survivor_37 {Type O LastRead -1 FirstWrite 1}
		survivor_36 {Type O LastRead -1 FirstWrite 1}
		survivor_35 {Type O LastRead -1 FirstWrite 1}
		survivor_34 {Type O LastRead -1 FirstWrite 1}
		survivor_33 {Type O LastRead -1 FirstWrite 1}
		survivor_32 {Type O LastRead -1 FirstWrite 1}
		survivor_31 {Type O LastRead -1 FirstWrite 1}
		survivor_30 {Type O LastRead -1 FirstWrite 1}
		survivor_29 {Type O LastRead -1 FirstWrite 1}
		survivor_28 {Type O LastRead -1 FirstWrite 1}
		survivor_27 {Type O LastRead -1 FirstWrite 1}
		survivor_26 {Type O LastRead -1 FirstWrite 1}
		survivor_25 {Type O LastRead -1 FirstWrite 1}
		survivor_24 {Type O LastRead -1 FirstWrite 1}
		survivor_23 {Type O LastRead -1 FirstWrite 1}
		survivor_22 {Type O LastRead -1 FirstWrite 1}
		survivor_21 {Type O LastRead -1 FirstWrite 1}
		survivor_20 {Type O LastRead -1 FirstWrite 1}
		survivor_19 {Type O LastRead -1 FirstWrite 1}
		survivor_18 {Type O LastRead -1 FirstWrite 1}
		survivor_17 {Type O LastRead -1 FirstWrite 1}
		survivor_16 {Type O LastRead -1 FirstWrite 1}
		survivor_15 {Type O LastRead -1 FirstWrite 1}
		survivor_14 {Type O LastRead -1 FirstWrite 1}
		survivor_13 {Type O LastRead -1 FirstWrite 1}
		survivor_12 {Type O LastRead -1 FirstWrite 1}
		survivor_11 {Type O LastRead -1 FirstWrite 1}
		survivor_10 {Type O LastRead -1 FirstWrite 1}
		survivor_9 {Type O LastRead -1 FirstWrite 1}
		survivor_8 {Type O LastRead -1 FirstWrite 1}
		survivor_7 {Type O LastRead -1 FirstWrite 1}
		survivor_6 {Type O LastRead -1 FirstWrite 1}
		survivor_5 {Type O LastRead -1 FirstWrite 1}
		survivor_4 {Type O LastRead -1 FirstWrite 1}
		survivor_3 {Type O LastRead -1 FirstWrite 1}
		survivor_2 {Type O LastRead -1 FirstWrite 1}
		survivor_1 {Type O LastRead -1 FirstWrite 1}
		survivor {Type O LastRead -1 FirstWrite 1}
		rx_sym {Type I LastRead 0 FirstWrite -1}
		rx_sym_1 {Type I LastRead 0 FirstWrite -1}
		rx_sym_2 {Type I LastRead 0 FirstWrite -1}
		rx_sym_3 {Type I LastRead 0 FirstWrite -1}
		rx_sym_4 {Type I LastRead 0 FirstWrite -1}
		rx_sym_5 {Type I LastRead 0 FirstWrite -1}
		rx_sym_6 {Type I LastRead 0 FirstWrite -1}
		rx_sym_7 {Type I LastRead 0 FirstWrite -1}
		rx_sym_8 {Type I LastRead 0 FirstWrite -1}
		rx_sym_9 {Type I LastRead 0 FirstWrite -1}
		rx_sym_15 {Type I LastRead 0 FirstWrite -1}
		rx_sym_10 {Type I LastRead 0 FirstWrite -1}
		rx_sym_11 {Type I LastRead 0 FirstWrite -1}
		rx_sym_12 {Type I LastRead 0 FirstWrite -1}
		rx_sym_13 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		p_0_0_0843_63139_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_62137_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_61135_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_60133_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_59131_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_58129_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_57127_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_56125_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_55123_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_54121_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_53119_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_52117_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_51115_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_50113_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_49111_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_48109_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_47107_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_46105_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_45103_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_44101_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_4399_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_4297_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_4195_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_4093_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3991_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3889_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3787_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3685_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3583_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3481_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3379_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3277_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3175_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_3073_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2971_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2869_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2767_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2665_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2563_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2461_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2359_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2257_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2155_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_2053_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1951_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1849_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1747_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1645_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1543_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1441_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1339_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1237_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1135_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_1033_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_931_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_829_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_727_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_625_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_523_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_421_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_319_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_217_out {Type O LastRead -1 FirstWrite 1}
		p_0_0_0843_115_out {Type O LastRead -1 FirstWrite 1}
		p_0_086513_out {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "51", "Max" : "51"}
	, {"Name" : "Interval", "Min" : "52", "Max" : "52"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	encoded_in { axis {  { encoded_in_TDATA in_data 0 32 }  { encoded_in_TVALID in_vld 0 1 }  { encoded_in_TREADY in_acc 1 1 } } }
	decoded_out { axis {  { decoded_out_TDATA out_data 1 32 }  { decoded_out_TVALID out_vld 1 1 }  { decoded_out_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
