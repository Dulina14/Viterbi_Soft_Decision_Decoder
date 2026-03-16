# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler viterbi_decoder_sparsemux_33_4_2_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3 \
    name survivor_63 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_63 \
    op interface \
    ports { survivor_63_address0 { O 5 vector } survivor_63_ce0 { O 1 bit } survivor_63_we0 { O 1 bit } survivor_63_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4 \
    name survivor_62 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_62 \
    op interface \
    ports { survivor_62_address0 { O 5 vector } survivor_62_ce0 { O 1 bit } survivor_62_we0 { O 1 bit } survivor_62_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5 \
    name survivor_61 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_61 \
    op interface \
    ports { survivor_61_address0 { O 5 vector } survivor_61_ce0 { O 1 bit } survivor_61_we0 { O 1 bit } survivor_61_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6 \
    name survivor_60 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_60 \
    op interface \
    ports { survivor_60_address0 { O 5 vector } survivor_60_ce0 { O 1 bit } survivor_60_we0 { O 1 bit } survivor_60_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7 \
    name survivor_59 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_59 \
    op interface \
    ports { survivor_59_address0 { O 5 vector } survivor_59_ce0 { O 1 bit } survivor_59_we0 { O 1 bit } survivor_59_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8 \
    name survivor_58 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_58 \
    op interface \
    ports { survivor_58_address0 { O 5 vector } survivor_58_ce0 { O 1 bit } survivor_58_we0 { O 1 bit } survivor_58_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 9 \
    name survivor_57 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_57 \
    op interface \
    ports { survivor_57_address0 { O 5 vector } survivor_57_ce0 { O 1 bit } survivor_57_we0 { O 1 bit } survivor_57_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 10 \
    name survivor_56 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_56 \
    op interface \
    ports { survivor_56_address0 { O 5 vector } survivor_56_ce0 { O 1 bit } survivor_56_we0 { O 1 bit } survivor_56_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 11 \
    name survivor_55 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_55 \
    op interface \
    ports { survivor_55_address0 { O 5 vector } survivor_55_ce0 { O 1 bit } survivor_55_we0 { O 1 bit } survivor_55_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name survivor_54 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_54 \
    op interface \
    ports { survivor_54_address0 { O 5 vector } survivor_54_ce0 { O 1 bit } survivor_54_we0 { O 1 bit } survivor_54_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name survivor_53 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_53 \
    op interface \
    ports { survivor_53_address0 { O 5 vector } survivor_53_ce0 { O 1 bit } survivor_53_we0 { O 1 bit } survivor_53_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name survivor_52 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_52 \
    op interface \
    ports { survivor_52_address0 { O 5 vector } survivor_52_ce0 { O 1 bit } survivor_52_we0 { O 1 bit } survivor_52_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name survivor_51 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_51 \
    op interface \
    ports { survivor_51_address0 { O 5 vector } survivor_51_ce0 { O 1 bit } survivor_51_we0 { O 1 bit } survivor_51_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name survivor_50 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_50 \
    op interface \
    ports { survivor_50_address0 { O 5 vector } survivor_50_ce0 { O 1 bit } survivor_50_we0 { O 1 bit } survivor_50_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name survivor_49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_49 \
    op interface \
    ports { survivor_49_address0 { O 5 vector } survivor_49_ce0 { O 1 bit } survivor_49_we0 { O 1 bit } survivor_49_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name survivor_48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_48 \
    op interface \
    ports { survivor_48_address0 { O 5 vector } survivor_48_ce0 { O 1 bit } survivor_48_we0 { O 1 bit } survivor_48_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name survivor_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_47 \
    op interface \
    ports { survivor_47_address0 { O 5 vector } survivor_47_ce0 { O 1 bit } survivor_47_we0 { O 1 bit } survivor_47_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name survivor_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_46 \
    op interface \
    ports { survivor_46_address0 { O 5 vector } survivor_46_ce0 { O 1 bit } survivor_46_we0 { O 1 bit } survivor_46_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name survivor_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_45 \
    op interface \
    ports { survivor_45_address0 { O 5 vector } survivor_45_ce0 { O 1 bit } survivor_45_we0 { O 1 bit } survivor_45_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name survivor_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_44 \
    op interface \
    ports { survivor_44_address0 { O 5 vector } survivor_44_ce0 { O 1 bit } survivor_44_we0 { O 1 bit } survivor_44_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name survivor_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_43 \
    op interface \
    ports { survivor_43_address0 { O 5 vector } survivor_43_ce0 { O 1 bit } survivor_43_we0 { O 1 bit } survivor_43_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name survivor_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_42 \
    op interface \
    ports { survivor_42_address0 { O 5 vector } survivor_42_ce0 { O 1 bit } survivor_42_we0 { O 1 bit } survivor_42_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name survivor_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_41 \
    op interface \
    ports { survivor_41_address0 { O 5 vector } survivor_41_ce0 { O 1 bit } survivor_41_we0 { O 1 bit } survivor_41_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name survivor_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_40 \
    op interface \
    ports { survivor_40_address0 { O 5 vector } survivor_40_ce0 { O 1 bit } survivor_40_we0 { O 1 bit } survivor_40_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name survivor_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_39 \
    op interface \
    ports { survivor_39_address0 { O 5 vector } survivor_39_ce0 { O 1 bit } survivor_39_we0 { O 1 bit } survivor_39_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name survivor_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_38 \
    op interface \
    ports { survivor_38_address0 { O 5 vector } survivor_38_ce0 { O 1 bit } survivor_38_we0 { O 1 bit } survivor_38_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name survivor_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_37 \
    op interface \
    ports { survivor_37_address0 { O 5 vector } survivor_37_ce0 { O 1 bit } survivor_37_we0 { O 1 bit } survivor_37_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name survivor_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_36 \
    op interface \
    ports { survivor_36_address0 { O 5 vector } survivor_36_ce0 { O 1 bit } survivor_36_we0 { O 1 bit } survivor_36_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name survivor_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_35 \
    op interface \
    ports { survivor_35_address0 { O 5 vector } survivor_35_ce0 { O 1 bit } survivor_35_we0 { O 1 bit } survivor_35_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name survivor_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_34 \
    op interface \
    ports { survivor_34_address0 { O 5 vector } survivor_34_ce0 { O 1 bit } survivor_34_we0 { O 1 bit } survivor_34_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name survivor_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_33 \
    op interface \
    ports { survivor_33_address0 { O 5 vector } survivor_33_ce0 { O 1 bit } survivor_33_we0 { O 1 bit } survivor_33_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name survivor_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_32 \
    op interface \
    ports { survivor_32_address0 { O 5 vector } survivor_32_ce0 { O 1 bit } survivor_32_we0 { O 1 bit } survivor_32_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name survivor_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_31 \
    op interface \
    ports { survivor_31_address0 { O 5 vector } survivor_31_ce0 { O 1 bit } survivor_31_we0 { O 1 bit } survivor_31_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name survivor_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_30 \
    op interface \
    ports { survivor_30_address0 { O 5 vector } survivor_30_ce0 { O 1 bit } survivor_30_we0 { O 1 bit } survivor_30_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name survivor_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_29 \
    op interface \
    ports { survivor_29_address0 { O 5 vector } survivor_29_ce0 { O 1 bit } survivor_29_we0 { O 1 bit } survivor_29_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name survivor_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_28 \
    op interface \
    ports { survivor_28_address0 { O 5 vector } survivor_28_ce0 { O 1 bit } survivor_28_we0 { O 1 bit } survivor_28_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name survivor_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_27 \
    op interface \
    ports { survivor_27_address0 { O 5 vector } survivor_27_ce0 { O 1 bit } survivor_27_we0 { O 1 bit } survivor_27_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name survivor_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_26 \
    op interface \
    ports { survivor_26_address0 { O 5 vector } survivor_26_ce0 { O 1 bit } survivor_26_we0 { O 1 bit } survivor_26_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name survivor_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_25 \
    op interface \
    ports { survivor_25_address0 { O 5 vector } survivor_25_ce0 { O 1 bit } survivor_25_we0 { O 1 bit } survivor_25_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name survivor_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_24 \
    op interface \
    ports { survivor_24_address0 { O 5 vector } survivor_24_ce0 { O 1 bit } survivor_24_we0 { O 1 bit } survivor_24_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name survivor_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_23 \
    op interface \
    ports { survivor_23_address0 { O 5 vector } survivor_23_ce0 { O 1 bit } survivor_23_we0 { O 1 bit } survivor_23_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name survivor_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_22 \
    op interface \
    ports { survivor_22_address0 { O 5 vector } survivor_22_ce0 { O 1 bit } survivor_22_we0 { O 1 bit } survivor_22_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name survivor_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_21 \
    op interface \
    ports { survivor_21_address0 { O 5 vector } survivor_21_ce0 { O 1 bit } survivor_21_we0 { O 1 bit } survivor_21_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name survivor_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_20 \
    op interface \
    ports { survivor_20_address0 { O 5 vector } survivor_20_ce0 { O 1 bit } survivor_20_we0 { O 1 bit } survivor_20_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name survivor_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_19 \
    op interface \
    ports { survivor_19_address0 { O 5 vector } survivor_19_ce0 { O 1 bit } survivor_19_we0 { O 1 bit } survivor_19_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name survivor_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_18 \
    op interface \
    ports { survivor_18_address0 { O 5 vector } survivor_18_ce0 { O 1 bit } survivor_18_we0 { O 1 bit } survivor_18_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name survivor_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_17 \
    op interface \
    ports { survivor_17_address0 { O 5 vector } survivor_17_ce0 { O 1 bit } survivor_17_we0 { O 1 bit } survivor_17_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name survivor_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_16 \
    op interface \
    ports { survivor_16_address0 { O 5 vector } survivor_16_ce0 { O 1 bit } survivor_16_we0 { O 1 bit } survivor_16_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name survivor_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_15 \
    op interface \
    ports { survivor_15_address0 { O 5 vector } survivor_15_ce0 { O 1 bit } survivor_15_we0 { O 1 bit } survivor_15_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name survivor_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_14 \
    op interface \
    ports { survivor_14_address0 { O 5 vector } survivor_14_ce0 { O 1 bit } survivor_14_we0 { O 1 bit } survivor_14_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name survivor_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_13 \
    op interface \
    ports { survivor_13_address0 { O 5 vector } survivor_13_ce0 { O 1 bit } survivor_13_we0 { O 1 bit } survivor_13_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name survivor_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_12 \
    op interface \
    ports { survivor_12_address0 { O 5 vector } survivor_12_ce0 { O 1 bit } survivor_12_we0 { O 1 bit } survivor_12_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name survivor_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_11 \
    op interface \
    ports { survivor_11_address0 { O 5 vector } survivor_11_ce0 { O 1 bit } survivor_11_we0 { O 1 bit } survivor_11_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name survivor_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_10 \
    op interface \
    ports { survivor_10_address0 { O 5 vector } survivor_10_ce0 { O 1 bit } survivor_10_we0 { O 1 bit } survivor_10_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name survivor_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_9 \
    op interface \
    ports { survivor_9_address0 { O 5 vector } survivor_9_ce0 { O 1 bit } survivor_9_we0 { O 1 bit } survivor_9_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name survivor_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_8 \
    op interface \
    ports { survivor_8_address0 { O 5 vector } survivor_8_ce0 { O 1 bit } survivor_8_we0 { O 1 bit } survivor_8_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name survivor_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_7 \
    op interface \
    ports { survivor_7_address0 { O 5 vector } survivor_7_ce0 { O 1 bit } survivor_7_we0 { O 1 bit } survivor_7_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name survivor_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_6 \
    op interface \
    ports { survivor_6_address0 { O 5 vector } survivor_6_ce0 { O 1 bit } survivor_6_we0 { O 1 bit } survivor_6_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name survivor_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_5 \
    op interface \
    ports { survivor_5_address0 { O 5 vector } survivor_5_ce0 { O 1 bit } survivor_5_we0 { O 1 bit } survivor_5_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name survivor_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_4 \
    op interface \
    ports { survivor_4_address0 { O 5 vector } survivor_4_ce0 { O 1 bit } survivor_4_we0 { O 1 bit } survivor_4_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name survivor_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_3 \
    op interface \
    ports { survivor_3_address0 { O 5 vector } survivor_3_ce0 { O 1 bit } survivor_3_we0 { O 1 bit } survivor_3_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name survivor_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_2 \
    op interface \
    ports { survivor_2_address0 { O 5 vector } survivor_2_ce0 { O 1 bit } survivor_2_we0 { O 1 bit } survivor_2_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name survivor_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor_1 \
    op interface \
    ports { survivor_1_address0 { O 5 vector } survivor_1_ce0 { O 1 bit } survivor_1_we0 { O 1 bit } survivor_1_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name survivor \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename survivor \
    op interface \
    ports { survivor_address0 { O 5 vector } survivor_ce0 { O 1 bit } survivor_we0 { O 1 bit } survivor_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'survivor'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name rx_sym \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym \
    op interface \
    ports { rx_sym { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name rx_sym_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_1 \
    op interface \
    ports { rx_sym_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name rx_sym_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_2 \
    op interface \
    ports { rx_sym_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name rx_sym_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_3 \
    op interface \
    ports { rx_sym_3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name rx_sym_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_4 \
    op interface \
    ports { rx_sym_4 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name rx_sym_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_5 \
    op interface \
    ports { rx_sym_5 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name rx_sym_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_6 \
    op interface \
    ports { rx_sym_6 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name rx_sym_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_7 \
    op interface \
    ports { rx_sym_7 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name rx_sym_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_8 \
    op interface \
    ports { rx_sym_8 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name rx_sym_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_9 \
    op interface \
    ports { rx_sym_9 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name rx_sym_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_15 \
    op interface \
    ports { rx_sym_15 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name rx_sym_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_10 \
    op interface \
    ports { rx_sym_10 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name rx_sym_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_11 \
    op interface \
    ports { rx_sym_11 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name rx_sym_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_12 \
    op interface \
    ports { rx_sym_12 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name rx_sym_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_sym_13 \
    op interface \
    ports { rx_sym_13 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name p_0_0_0843_63139_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_63139_out \
    op interface \
    ports { p_0_0_0843_63139_out { O 8 vector } p_0_0_0843_63139_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name p_0_0_0843_62137_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_62137_out \
    op interface \
    ports { p_0_0_0843_62137_out { O 8 vector } p_0_0_0843_62137_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name p_0_0_0843_61135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_61135_out \
    op interface \
    ports { p_0_0_0843_61135_out { O 8 vector } p_0_0_0843_61135_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name p_0_0_0843_60133_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_60133_out \
    op interface \
    ports { p_0_0_0843_60133_out { O 8 vector } p_0_0_0843_60133_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name p_0_0_0843_59131_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_59131_out \
    op interface \
    ports { p_0_0_0843_59131_out { O 8 vector } p_0_0_0843_59131_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name p_0_0_0843_58129_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_58129_out \
    op interface \
    ports { p_0_0_0843_58129_out { O 8 vector } p_0_0_0843_58129_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name p_0_0_0843_57127_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_57127_out \
    op interface \
    ports { p_0_0_0843_57127_out { O 8 vector } p_0_0_0843_57127_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name p_0_0_0843_56125_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_56125_out \
    op interface \
    ports { p_0_0_0843_56125_out { O 8 vector } p_0_0_0843_56125_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name p_0_0_0843_55123_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_55123_out \
    op interface \
    ports { p_0_0_0843_55123_out { O 8 vector } p_0_0_0843_55123_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name p_0_0_0843_54121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_54121_out \
    op interface \
    ports { p_0_0_0843_54121_out { O 8 vector } p_0_0_0843_54121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name p_0_0_0843_53119_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_53119_out \
    op interface \
    ports { p_0_0_0843_53119_out { O 8 vector } p_0_0_0843_53119_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name p_0_0_0843_52117_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_52117_out \
    op interface \
    ports { p_0_0_0843_52117_out { O 8 vector } p_0_0_0843_52117_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name p_0_0_0843_51115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_51115_out \
    op interface \
    ports { p_0_0_0843_51115_out { O 8 vector } p_0_0_0843_51115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name p_0_0_0843_50113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_50113_out \
    op interface \
    ports { p_0_0_0843_50113_out { O 8 vector } p_0_0_0843_50113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name p_0_0_0843_49111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_49111_out \
    op interface \
    ports { p_0_0_0843_49111_out { O 8 vector } p_0_0_0843_49111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name p_0_0_0843_48109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_48109_out \
    op interface \
    ports { p_0_0_0843_48109_out { O 8 vector } p_0_0_0843_48109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name p_0_0_0843_47107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_47107_out \
    op interface \
    ports { p_0_0_0843_47107_out { O 8 vector } p_0_0_0843_47107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name p_0_0_0843_46105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_46105_out \
    op interface \
    ports { p_0_0_0843_46105_out { O 8 vector } p_0_0_0843_46105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name p_0_0_0843_45103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_45103_out \
    op interface \
    ports { p_0_0_0843_45103_out { O 8 vector } p_0_0_0843_45103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name p_0_0_0843_44101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_44101_out \
    op interface \
    ports { p_0_0_0843_44101_out { O 8 vector } p_0_0_0843_44101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name p_0_0_0843_4399_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_4399_out \
    op interface \
    ports { p_0_0_0843_4399_out { O 8 vector } p_0_0_0843_4399_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name p_0_0_0843_4297_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_4297_out \
    op interface \
    ports { p_0_0_0843_4297_out { O 8 vector } p_0_0_0843_4297_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name p_0_0_0843_4195_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_4195_out \
    op interface \
    ports { p_0_0_0843_4195_out { O 8 vector } p_0_0_0843_4195_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name p_0_0_0843_4093_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_4093_out \
    op interface \
    ports { p_0_0_0843_4093_out { O 8 vector } p_0_0_0843_4093_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name p_0_0_0843_3991_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3991_out \
    op interface \
    ports { p_0_0_0843_3991_out { O 8 vector } p_0_0_0843_3991_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name p_0_0_0843_3889_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3889_out \
    op interface \
    ports { p_0_0_0843_3889_out { O 8 vector } p_0_0_0843_3889_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name p_0_0_0843_3787_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3787_out \
    op interface \
    ports { p_0_0_0843_3787_out { O 8 vector } p_0_0_0843_3787_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name p_0_0_0843_3685_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3685_out \
    op interface \
    ports { p_0_0_0843_3685_out { O 8 vector } p_0_0_0843_3685_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name p_0_0_0843_3583_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3583_out \
    op interface \
    ports { p_0_0_0843_3583_out { O 8 vector } p_0_0_0843_3583_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name p_0_0_0843_3481_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3481_out \
    op interface \
    ports { p_0_0_0843_3481_out { O 8 vector } p_0_0_0843_3481_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name p_0_0_0843_3379_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3379_out \
    op interface \
    ports { p_0_0_0843_3379_out { O 8 vector } p_0_0_0843_3379_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name p_0_0_0843_3277_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3277_out \
    op interface \
    ports { p_0_0_0843_3277_out { O 8 vector } p_0_0_0843_3277_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name p_0_0_0843_3175_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3175_out \
    op interface \
    ports { p_0_0_0843_3175_out { O 8 vector } p_0_0_0843_3175_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name p_0_0_0843_3073_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_3073_out \
    op interface \
    ports { p_0_0_0843_3073_out { O 8 vector } p_0_0_0843_3073_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name p_0_0_0843_2971_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2971_out \
    op interface \
    ports { p_0_0_0843_2971_out { O 8 vector } p_0_0_0843_2971_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name p_0_0_0843_2869_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2869_out \
    op interface \
    ports { p_0_0_0843_2869_out { O 8 vector } p_0_0_0843_2869_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name p_0_0_0843_2767_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2767_out \
    op interface \
    ports { p_0_0_0843_2767_out { O 8 vector } p_0_0_0843_2767_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name p_0_0_0843_2665_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2665_out \
    op interface \
    ports { p_0_0_0843_2665_out { O 8 vector } p_0_0_0843_2665_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name p_0_0_0843_2563_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2563_out \
    op interface \
    ports { p_0_0_0843_2563_out { O 8 vector } p_0_0_0843_2563_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name p_0_0_0843_2461_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2461_out \
    op interface \
    ports { p_0_0_0843_2461_out { O 8 vector } p_0_0_0843_2461_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name p_0_0_0843_2359_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2359_out \
    op interface \
    ports { p_0_0_0843_2359_out { O 8 vector } p_0_0_0843_2359_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name p_0_0_0843_2257_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2257_out \
    op interface \
    ports { p_0_0_0843_2257_out { O 8 vector } p_0_0_0843_2257_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name p_0_0_0843_2155_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2155_out \
    op interface \
    ports { p_0_0_0843_2155_out { O 8 vector } p_0_0_0843_2155_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name p_0_0_0843_2053_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_2053_out \
    op interface \
    ports { p_0_0_0843_2053_out { O 8 vector } p_0_0_0843_2053_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name p_0_0_0843_1951_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1951_out \
    op interface \
    ports { p_0_0_0843_1951_out { O 8 vector } p_0_0_0843_1951_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name p_0_0_0843_1849_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1849_out \
    op interface \
    ports { p_0_0_0843_1849_out { O 8 vector } p_0_0_0843_1849_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name p_0_0_0843_1747_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1747_out \
    op interface \
    ports { p_0_0_0843_1747_out { O 8 vector } p_0_0_0843_1747_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name p_0_0_0843_1645_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1645_out \
    op interface \
    ports { p_0_0_0843_1645_out { O 8 vector } p_0_0_0843_1645_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name p_0_0_0843_1543_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1543_out \
    op interface \
    ports { p_0_0_0843_1543_out { O 8 vector } p_0_0_0843_1543_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name p_0_0_0843_1441_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1441_out \
    op interface \
    ports { p_0_0_0843_1441_out { O 8 vector } p_0_0_0843_1441_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name p_0_0_0843_1339_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1339_out \
    op interface \
    ports { p_0_0_0843_1339_out { O 8 vector } p_0_0_0843_1339_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name p_0_0_0843_1237_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1237_out \
    op interface \
    ports { p_0_0_0843_1237_out { O 8 vector } p_0_0_0843_1237_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name p_0_0_0843_1135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1135_out \
    op interface \
    ports { p_0_0_0843_1135_out { O 8 vector } p_0_0_0843_1135_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_0_0_0843_1033_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_1033_out \
    op interface \
    ports { p_0_0_0843_1033_out { O 8 vector } p_0_0_0843_1033_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_0_0_0843_931_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_931_out \
    op interface \
    ports { p_0_0_0843_931_out { O 8 vector } p_0_0_0843_931_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_0_0_0843_829_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_829_out \
    op interface \
    ports { p_0_0_0843_829_out { O 8 vector } p_0_0_0843_829_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_0_0_0843_727_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_727_out \
    op interface \
    ports { p_0_0_0843_727_out { O 8 vector } p_0_0_0843_727_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_0_0_0843_625_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_625_out \
    op interface \
    ports { p_0_0_0843_625_out { O 8 vector } p_0_0_0843_625_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_0_0_0843_523_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_523_out \
    op interface \
    ports { p_0_0_0843_523_out { O 8 vector } p_0_0_0843_523_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_0_0_0843_421_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_421_out \
    op interface \
    ports { p_0_0_0843_421_out { O 8 vector } p_0_0_0843_421_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_0_0_0843_319_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_319_out \
    op interface \
    ports { p_0_0_0843_319_out { O 8 vector } p_0_0_0843_319_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_0_0_0843_217_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_217_out \
    op interface \
    ports { p_0_0_0843_217_out { O 8 vector } p_0_0_0843_217_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_0_0_0843_115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_0843_115_out \
    op interface \
    ports { p_0_0_0843_115_out { O 8 vector } p_0_0_0843_115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name p_0_086513_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_086513_out \
    op interface \
    ports { p_0_086513_out { O 8 vector } p_0_086513_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName viterbi_decoder_flow_control_loop_pipe_sequential_init_U
set CompName viterbi_decoder_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix viterbi_decoder_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


