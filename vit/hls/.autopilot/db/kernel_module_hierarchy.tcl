set ModuleHierarchy {[{
"Name" : "viterbi_decoder", "RefName" : "viterbi_decoder","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_viterbi_decoder_Pipeline_TRELLIS_fu_813", "RefName" : "viterbi_decoder_Pipeline_TRELLIS","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "TRELLIS","RefName" : "TRELLIS","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_viterbi_decoder_Pipeline_TRACEBACK_fu_1025", "RefName" : "viterbi_decoder_Pipeline_TRACEBACK","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "TRACEBACK","RefName" : "TRACEBACK","ID" : "4","Type" : "pipeline"},]},]
}]}