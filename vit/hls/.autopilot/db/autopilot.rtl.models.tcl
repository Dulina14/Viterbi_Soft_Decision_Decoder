set SynModuleInfo {
  {SRCNAME viterbi_decoder_Pipeline_TRELLIS MODELNAME viterbi_decoder_Pipeline_TRELLIS RTLNAME viterbi_decoder_viterbi_decoder_Pipeline_TRELLIS
    SUBMODULES {
      {MODELNAME viterbi_decoder_sparsemux_33_4_2_1_1 RTLNAME viterbi_decoder_sparsemux_33_4_2_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME viterbi_decoder_flow_control_loop_pipe_sequential_init RTLNAME viterbi_decoder_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME viterbi_decoder_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME viterbi_decoder_Pipeline_TRACEBACK MODELNAME viterbi_decoder_Pipeline_TRACEBACK RTLNAME viterbi_decoder_viterbi_decoder_Pipeline_TRACEBACK
    SUBMODULES {
      {MODELNAME viterbi_decoder_sparsemux_129_6_1_1_1 RTLNAME viterbi_decoder_sparsemux_129_6_1_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME viterbi_decoder MODELNAME viterbi_decoder RTLNAME viterbi_decoder IS_TOP 1
    SUBMODULES {
      {MODELNAME viterbi_decoder_survivor_RAM_AUTO_1R1W RTLNAME viterbi_decoder_survivor_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME viterbi_decoder_regslice_both RTLNAME viterbi_decoder_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
