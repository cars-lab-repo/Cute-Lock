// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s510_encrypted" written by ABC on Fri Sep 27 18:22:54 2024

module \./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s510_encrypted  ( clock, 
    john, cnt13, cnt21, cnt284, pcnt6, cnt261, cnt44, pcnt12, pcnt17,
    cnt591, cnt45, cnt567, pcnt27, cnt283, cnt272, cnt10, cnt511, pcnt241,
    cnt509, keyinput0, keyinput1, keyinput2, keyinput3, keyinput4,
    csm, pclr, pc, cclr, vsync, cblank, csync  );
  input  clock;
  input  john, cnt13, cnt21, cnt284, pcnt6, cnt261, cnt44, pcnt12,
    pcnt17, cnt591, cnt45, cnt567, pcnt27, cnt283, cnt272, cnt10, cnt511,
    pcnt241, cnt509, keyinput0, keyinput1, keyinput2, keyinput3, keyinput4;
  output csm, pclr, pc, cclr, vsync, cblank, csync;
  reg st_5, st_4, st_3, st_2, st_1, st_0, Q_0, Q_1, Q_2, Q_3;
  wire new_I68, new_I67, new_I78, new_I73, new_I61, new_I60, new_I59,
    new_I58, new_I57, new_I56, new_I69, new_I70, new_I554, new_I591,
    new_I594, new_I546, new_I667, new_I475, new_I798, new_I495, new_I467,
    new_I462, new_I130, new_I567, new_I483, new_I530, new_I486, new_I607,
    new_I778, new_I347, new_I204, new_I216, new_I936_2, new_I946_1,
    new_I946_2, new_I936_1, new_I1089_1, new_I1044_1, new_I943_1,
    new_I1102_2, new_I1059_1, new_I1071_1, new_I1106_1, new_I1123_1,
    new_I967_1, new_I1055_1, new_I1062_1, new_I1120_1, new_I1116_1,
    new_I950_2, new_I950_1, new_I1102_1, new_I954_2, new_I1081_1,
    new_I1106_2, new_I940_1, new_I1077_1, new_I988_1, new_I1085_1,
    new_I954_1, new_I1081_2, new_I1116_2, new_I1065_1, new_I1113_1,
    new_I1055_2, new_I1085_2, new_I1038_1, new_I985_1, new_I914_1,
    new_I1068_1, new_I933_1, new_I958_1, new_I958_2, new_I924_2,
    new_I903_2, new_I1092_1, new_I917_1, new_I921_1, new_I909_1,
    new_I962_2, new_I1095_1, new_I1099_1, new_I917_2, new_I982_1,
    new_I1074_1, new_I1095_2, new_I970_1, new_I900_1, new_I903_1,
    new_I962_1, new_I975_1, new_I978_1, new_I928_1, new_I1110_1,
    new_I924_1, new_I590, new_I458, new_I490, new_I578, new_I666, new_I658,
    new_I814, new_I574, new_I498, new_I638, new_I642, new_I474, new_I570,
    new_I598, new_I742, new_I618, new_I478, new_I494, new_I774, new_I466,
    new_I506, new_I566, new_I104, new_I482, new_I390, new_I834, new_I698,
    new_I694, new_I274, new_I606, new_I346, new_I810, new_I782, new_I230,
    new_I870, new_I298, new_I710, new_I714, new_I326, new_I270, new_I838,
    new_I872, new_I266, new_I232, new_I234, new_I278, new_I282, new_I884,
    new_I2, new_I874, new_I555, new_I587, new_I595, new_I511, new_I739,
    new_I627, new_I547, new_I675, new_I535, new_I671, new_I663, new_I551,
    new_I583, new_I603, new_I799, new_I209, new_I563, new_I795, new_I95,
    new_I463, new_I131, new_I455, new_I559, new_I531, new_I787, new_I487,
    new_I543, new_I747, new_I539, new_I207, new_I779, new_I259, new_I837,
    new_I867, new_I615, new_I827, new_I213, new_I877, new_I823, new_I855,
    new_I205, new_I841, new_I371, new_I731, new_I217, new_I861, new_I889,
    new_I881, new_I899, new_I831, new_I895, new_I821, new_I863, new_I887,
    new_not_keyinput0, new_not_keyinput1, new_not_keyinput2,
    new_not_keyinput3, new_not_keyinput4, new_not_0, new_and_1, new_not_2,
    new_and_3, new_not_4, new_and_5, new_not_6, new_and_7, new_not_9,
    new_and_10, new_not_11, new_and_12, new_not_13, new_and_14, new_not_16,
    new_and_17, new_not_18, new_and_19, new_not_Q_0, new_not_Q_1,
    new_not_Q_2, new_not_Q_3, new_count_state_1, new_count_state_2,
    new_count_state_3, new_count_state_4, new_count_state_5,
    new_count_state_6, new_count_state_7, new_count_state_8,
    new_count_state_9, new_count_state_10, new_count_state_11,
    new_count_state_12, new_count_state_13, new_count_state_14,
    new_count_state_15, new_y_mux_key0_and_0, new_y_mux_key0_and_1,
    new_y_mux_key0, new_y_mux_key1_and_0, new_y_mux_key1_and_1,
    new_y_mux_key1, new_y_mux_key2_and_0, new_y_mux_key2_and_1,
    new_y_mux_key2, new_y_mux_key3_and_0, new_y_mux_key3_and_1,
    new_y_mux_key3, new_y_mux_key4_and_0, new_y_mux_key4_and_1,
    new_y_mux_key4, new_y_mux_key5_and_0, new_y_mux_key5_and_1,
    new_y_mux_key5, new_y_mux_key6_and_0, new_y_mux_key6_and_1,
    new_y_mux_key6, new_y_mux_key7_and_0, new_y_mux_key7_and_1,
    new_y_mux_key7, new_y_mux_key8_and_0, new_y_mux_key8_and_1,
    new_y_mux_key8, new_y_mux_key9_and_0, new_y_mux_key9_and_1,
    new_y_mux_key9, new_y_mux_key10_and_0, new_y_mux_key10_and_1,
    new_y_mux_key10, new_y_mux_key11_and_0, new_y_mux_key11_and_1,
    new_y_mux_key11, new_y_mux_key12_and_0, new_y_mux_key12_and_1,
    new_y_mux_key12, new_y_mux_key13_and_0, new_y_mux_key13_and_1,
    new_y_mux_key13, new_y_mux_key14_and_0, new_y_mux_key14_and_1,
    new_y_mux_key14, new_y_mux_key15_and_0, new_y_mux_key15_and_1,
    new_y_mux_key15, new__state_1, new__state_2, new__state_3,
    new__state_4, new__state_5, new__state_6, new__state_7, new__state_8,
    new__state_9, new__state_10, new__state_11, new__state_12,
    new__state_13, new__state_14, new__state_15, new__state_17,
    new__state_18, new__state_19, new__state_20, new__state_21,
    new__state_22, new__state_23, new__state_25, new__state_26,
    new__state_27, new__state_29, new_s__state_1, new_not_s__state_1,
    new_I0__state_1, new_I1__state_1, new_and_mux__state_1,
    new_and_mux__state_1_2, new_y_mux_16, new_s__state_3,
    new_not_s__state_3, new_I0__state_3, new_I1__state_3,
    new_and_mux__state_3, new_and_mux__state_3_2, new_y_mux_17,
    new_s__state_5, new_not_s__state_5, new_I0__state_5, new_I1__state_5,
    new_and_mux__state_5, new_and_mux__state_5_2, new_y_mux_18,
    new_s__state_7, new_not_s__state_7, new_I0__state_7, new_I1__state_7,
    new_and_mux__state_7, new_and_mux__state_7_2, new_y_mux_19,
    new_s__state_9, new_not_s__state_9, new_I0__state_9, new_I1__state_9,
    new_and_mux__state_9, new_and_mux__state_9_2, new_y_mux_20,
    new_s__state_11, new_not_s__state_11, new_I0__state_11,
    new_I1__state_11, new_and_mux__state_11, new_and_mux__state_11_2,
    new_y_mux_21, new_s__state_13, new_not_s__state_13, new_I0__state_13,
    new_I1__state_13, new_and_mux__state_13, new_and_mux__state_13_2,
    new_y_mux_22, new_s__state_15, new_not_s__state_15, new_I0__state_15,
    new_I1__state_15, new_and_mux__state_15, new_and_mux__state_15_2,
    new_y_mux_23, new_s__state_17, new_not_s__state_17, new_I0__state_17,
    new_I1__state_17, new_and_mux__state_17, new_and_mux__state_17_2,
    new_y_mux_24, new_s__state_19, new_not_s__state_19, new_I0__state_19,
    new_I1__state_19, new_and_mux__state_19, new_and_mux__state_19_2,
    new_y_mux_25, new_s__state_21, new_not_s__state_21, new_I0__state_21,
    new_I1__state_21, new_and_mux__state_21, new_and_mux__state_21_2,
    new_y_mux_26, new_s__state_23, new_not_s__state_23, new_I0__state_23,
    new_I1__state_23, new_and_mux__state_23, new_and_mux__state_23_2,
    new_y_mux_27, new_s__state_25, new_not_s__state_25, new_I0__state_25,
    new_I1__state_25, new_and_mux__state_25, new_and_mux__state_25_2,
    new_y_mux_28, new_s__state_27, new_not_s__state_27, new_I0__state_27,
    new_I1__state_27, new_and_mux__state_27, new_and_mux__state_27_2,
    new_y_mux_29, new_s__state_29, new_not_s__state_29, new_I0__state_29,
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n64,
    n69, n74, n79, n84, n89, n561, n564, n567, n570;
  assign new_I68 = ~cnt44;
  assign new_I67 = ~cnt261;
  assign new_I78 = ~cnt511;
  assign new_I73 = ~cnt567;
  assign new_I61 = ~st_0;
  assign new_I60 = ~st_1;
  assign new_I59 = ~st_2;
  assign new_I58 = ~st_3;
  assign new_I57 = ~st_4;
  assign new_I56 = ~st_5;
  assign new_I69 = ~pcnt12;
  assign new_I70 = ~pcnt17;
  assign new_I554 = ~new_I555;
  assign new_I591 = ~new_I590;
  assign new_I594 = ~new_I595;
  assign new_I546 = ~new_I547;
  assign new_I667 = ~new_I666;
  assign new_I475 = ~new_I474;
  assign new_I798 = ~new_I799;
  assign new_I495 = ~new_I494;
  assign new_I467 = ~new_I466;
  assign new_I462 = ~new_I463;
  assign new_I130 = ~new_I131;
  assign new_I567 = ~new_I566;
  assign new_I483 = ~new_I482;
  assign new_I530 = ~new_I531;
  assign new_I486 = ~new_I487;
  assign new_I607 = ~new_I606;
  assign new_I778 = ~new_I779;
  assign new_I347 = ~new_I346;
  assign new_I204 = ~new_I205;
  assign new_I216 = ~new_I217;
  assign new_I936_2 = cnt272 & st_2;
  assign new_I946_1 = cnt10 & st_5;
  assign new_I946_2 = john & st_4;
  assign new_I936_1 = cnt591 & new_I59;
  assign new_I1089_1 = new_I59 & new_I555;
  assign new_I1044_1 = new_I70 & cnt284;
  assign new_I943_1 = new_I578 & st_3;
  assign new_I1102_2 = new_I56 & new_I675;
  assign new_I1059_1 = st_5 & new_I671;
  assign new_I1071_1 = new_I551 & new_I671;
  assign new_I1106_1 = new_I60 & new_I551;
  assign new_I1123_1 = new_I551 & new_I663;
  assign new_I967_1 = new_I498 & new_I57;
  assign new_I1055_1 = st_2 & new_I570 & st_0;
  assign new_I1062_1 = new_I535 & new_I598;
  assign new_I1120_1 = new_I795 & new_I618;
  assign new_I1116_1 = new_I95 & new_I603;
  assign new_I950_2 = new_I463 & cnt283;
  assign new_I950_1 = new_I455 & cnt45;
  assign new_I1102_1 = st_5 & new_I455;
  assign new_I954_2 = new_I104 & cnt45 & new_I587;
  assign new_I1081_1 = new_I58 & new_I543 & new_I490;
  assign new_I1106_2 = new_I57 & new_I543;
  assign new_I940_1 = new_I495 & new_I60;
  assign new_I1077_1 = new_I104 & new_I539;
  assign new_I988_1 = new_I694 & new_I698;
  assign new_I1085_1 = new_I787 & new_I130;
  assign new_I954_1 = new_I567 & st_5 & cnt509;
  assign new_I1081_2 = st_2 & new_I483;
  assign new_I1116_2 = new_I61 & new_I230;
  assign new_I1065_1 = new_I475 & new_I232;
  assign new_I1113_1 = st_4 & new_I234;
  assign new_I1055_2 = new_I58 & new_I204;
  assign new_I1085_2 = new_I61 & new_I216;
  assign new_I1038_1 = cnt21 | st_0;
  assign new_I985_1 = pcnt27 | new_I73;
  assign new_I914_1 = new_I60 | new_I61;
  assign new_I1068_1 = st_4 | new_I590;
  assign new_I933_1 = new_I57 | new_I58;
  assign new_I958_1 = new_I57 | new_I59;
  assign new_I958_2 = cnt284 | new_I642;
  assign new_I924_2 = new_I474 | new_I666;
  assign new_I903_2 = new_I58 | new_I478;
  assign new_I1092_1 = st_4 | new_I478;
  assign new_I917_1 = st_5 | new_I458 | new_I494;
  assign new_I921_1 = new_I494 | new_I570;
  assign new_I909_1 = new_I466 | new_I627;
  assign new_I962_2 = new_I466 | new_I78;
  assign new_I1095_1 = cnt13 | new_I506;
  assign new_I1099_1 = new_I506 | new_I209;
  assign new_I917_2 = new_I482 | new_I590;
  assign new_I982_1 = new_I559 | new_I487;
  assign new_I1074_1 = new_I475 | new_I546;
  assign new_I1095_2 = new_I475 | new_I578;
  assign new_I970_1 = new_I495 | new_I603;
  assign new_I900_1 = new_I56 | new_I207;
  assign new_I903_1 = new_I606 | new_I742;
  assign new_I962_1 = new_I462 | new_I73;
  assign new_I975_1 = new_I531 | new_I483;
  assign new_I978_1 = new_I483 | new_I747;
  assign new_I928_1 = st_0 | new_I530;
  assign new_I1110_1 = new_I61 | new_I530;
  assign new_I924_1 = st_0 | new_I731;
  assign new_I590 = ~st_1 | ~st_2;
  assign new_I458 = ~st_3 | ~st_1;
  assign new_I490 = ~cnt284 | ~pcnt17;
  assign new_I578 = ~new_I61 | ~st_1;
  assign new_I666 = ~new_I61 | ~st_3;
  assign new_I658 = ~st_2 | ~new_I58;
  assign new_I814 = ~new_I595 | ~new_I58 | ~cnt21;
  assign new_I574 = ~st_3 | ~new_I57;
  assign new_I498 = ~new_I511 | ~new_I587;
  assign new_I638 = ~new_I511 | ~st_0;
  assign new_I642 = ~new_I739 | ~st_2;
  assign new_I474 = ~new_I56 | ~new_I57;
  assign new_I570 = ~new_I458 | ~new_I56;
  assign new_I598 = ~cnt13 | ~new_I56;
  assign new_I742 = ~new_I56 | ~st_0;
  assign new_I618 = ~new_I69 | ~cnt44;
  assign new_I478 = ~new_I547 | ~new_I739;
  assign new_I494 = ~new_I57 | ~new_I547;
  assign new_I774 = ~new_I458 | ~st_5 | ~new_I547;
  assign new_I466 = ~st_3 | ~new_I535;
  assign new_I506 = ~new_I535 | ~new_I58;
  assign new_I566 = ~new_I663 | ~st_2;
  assign new_I104 = ~new_I933_1 | ~new_I56;
  assign new_I482 = ~new_I58 | ~new_I551;
  assign new_I390 = ~st_0 | ~new_I583;
  assign new_I834 = ~new_I1068_1 | ~new_I642;
  assign new_I698 = ~new_I563 | ~new_I59;
  assign new_I694 = ~new_I795 | ~new_I57;
  assign new_I274 = ~new_I56 | ~new_I667;
  assign new_I606 = ~new_I95 | ~new_I57;
  assign new_I346 = ~new_I985_1 | ~new_I463;
  assign new_I810 = ~new_I455 | ~pcnt6 | ~cnt284;
  assign new_I782 = ~new_I675 | ~new_I67 | ~new_I559;
  assign new_I230 = ~new_I958_1 | ~new_I958_2;
  assign new_I870 = ~new_I1092_1 | ~new_I566;
  assign new_I298 = ~new_I539 | ~new_I574;
  assign new_I710 = ~new_I467 | ~cnt10;
  assign new_I714 = ~new_I1038_1 | ~new_I567;
  assign pclr = ~new_I917_1 | ~new_I917_2;
  assign new_I326 = ~new_I982_1 | ~new_I61;
  assign pc = ~new_I921_1 | ~new_I837;
  assign new_I270 = ~st_3 | ~new_I615;
  assign new_I838 = ~new_I1074_1 | ~new_I530;
  assign new_I872 = ~new_I774 | ~new_I1095_1 | ~new_I1095_2;
  assign new_I266 = ~new_I970_1 | ~st_1;
  assign new_I232 = ~new_I810 | ~new_I962_1 | ~new_I962_2;
  assign cclr = ~new_I390 | ~new_I546 | ~new_I486 | ~new_I877;
  assign new_I234 = ~new_I714 | ~new_I710 | ~new_I213 | ~new_I814;
  assign new_I278 = ~new_I975_1 | ~new_I60;
  assign new_I282 = ~new_I978_1 | ~st_1;
  assign n69 = ~new_I823 | ~new_I903_1 | ~new_I903_2;
  assign vsync = ~new_I867 | ~new_I914_1 | ~new_I855;
  assign cblank = ~new_I928_1 | ~new_I841;
  assign n74 = ~new_I266 | ~new_I270 | ~new_I278 | ~new_I274;
  assign new_I884 = ~new_I326 | ~new_I1110_1 | ~new_I861;
  assign n79 = ~new_I298 | ~new_I827 | ~new_I282 | ~new_I889;
  assign csync = ~new_I881 | ~new_I924_1 | ~new_I924_2;
  assign n84 = ~new_I895 | ~new_I909_1 | ~new_I899;
  assign new_I2 = ~new_I900_1 | ~new_I821;
  assign new_I874 = ~new_I831 | ~new_I1099_1 | ~new_I863;
  assign n89 = ~new_I887 | ~new_I778 | ~new_I782;
  assign new_I555 = ~st_0 & ~st_1;
  assign new_I587 = ~st_1 & ~st_2;
  assign new_I595 = ~st_0 & ~st_2;
  assign new_I511 = ~st_3 & ~st_5;
  assign new_I739 = ~st_5 & ~st_1;
  assign new_I627 = ~pcnt241 & ~new_I78;
  assign new_I547 = ~new_I61 & ~st_2;
  assign new_I675 = ~new_I61 & ~st_1;
  assign new_I535 = ~new_I590 & ~st_0;
  assign new_I671 = ~new_I458 & ~new_I59;
  assign new_I663 = ~st_1 & ~new_I58;
  assign new_I551 = ~new_I61 & ~new_I57;
  assign new_I583 = ~new_I511 & ~new_I60;
  assign new_I603 = ~new_I61 & ~new_I56;
  assign new_I799 = ~new_I59 & ~new_I56 & ~new_I58;
  assign new_I209 = ~new_I946_1 & ~new_I946_2;
  assign new_I563 = ~new_I578 & ~new_I56;
  assign new_I795 = ~new_I578 & ~st_3 & ~st_2;
  assign new_I95 = ~new_I587 & ~new_I591;
  assign new_I463 = ~new_I458 & ~new_I594;
  assign new_I131 = ~new_I936_1 & ~new_I936_2;
  assign new_I455 = ~new_I554 & ~new_I658;
  assign new_I559 = ~new_I658 & ~new_I56;
  assign new_I531 = ~new_I574 & ~new_I59;
  assign new_I787 = ~new_I574 & ~new_I554 & ~st_5;
  assign new_I487 = ~st_4 & ~new_I498;
  assign new_I543 = ~new_I742 & ~new_I590;
  assign new_I747 = ~new_I638 & ~new_I1044_1;
  assign new_I539 = ~new_I546 & ~new_I60;
  assign new_I207 = ~new_I595 & ~new_I943_1;
  assign new_I779 = ~new_I638 & ~new_I95 & ~st_4;
  assign new_I259 = ~st_0 & ~new_I967_1;
  assign new_I837 = ~new_I487 & ~new_I1071_1;
  assign new_I867 = ~new_I834 & ~new_I1089_1;
  assign new_I615 = ~new_I475 & ~st_2;
  assign new_I827 = ~new_I531 & ~new_I1062_1;
  assign csm = ~new_I555 & ~new_I798;
  assign new_I213 = ~new_I950_1 & ~new_I950_2;
  assign new_I877 = ~new_I551 & ~new_I1102_1 & ~new_I1102_2;
  assign new_I823 = ~new_I259 & ~new_I1059_1;
  assign new_I855 = ~new_I615 & ~st_3;
  assign new_I205 = ~new_I563 & ~new_I940_1;
  assign new_I841 = ~new_I799 & ~new_I1077_1;
  assign new_I371 = ~new_I68 & ~new_I988_1;
  assign new_I731 = ~new_I583 & ~new_I607;
  assign new_I217 = ~new_I954_1 & ~new_I954_2;
  assign new_I861 = ~new_I1081_1 & ~new_I1081_2;
  assign new_I889 = ~new_I870 & ~new_I1116_1 & ~new_I1116_2;
  assign new_I881 = ~new_I838 & ~new_I1106_1 & ~new_I1106_2;
  assign new_I899 = ~new_I1123_1 & ~new_I872 & ~new_I347;
  assign new_I831 = ~new_I371 & ~new_I1065_1;
  assign new_I895 = ~new_I884 & ~new_I1120_1;
  assign new_I821 = ~new_I1055_1 & ~new_I1055_2;
  assign new_I863 = ~new_I1085_1 & ~new_I1085_2;
  assign new_I887 = ~new_I874 & ~new_I1113_1;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_keyinput3 = ~keyinput3;
  assign new_not_keyinput4 = ~keyinput4;
  assign new_not_0 = ~Q_1;
  assign new_and_1 = new_not_0 & Q_3;
  assign new_not_2 = ~Q_2;
  assign new_and_3 = new_not_2 & Q_3;
  assign new_not_4 = ~Q_0;
  assign new_and_5 = new_not_4 & Q_3;
  assign new_not_6 = ~Q_3;
  assign new_and_7 = new_not_6 & Q_2 & Q_0 & Q_1;
  assign n570 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n567 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n564 = new_and_17 | new_and_19;
  assign n561 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_not_Q_2 = ~Q_2;
  assign new_not_Q_3 = ~Q_3;
  assign new_count_state_1 = Q_0 & new_not_Q_1 & new_not_Q_3 & new_not_Q_2;
  assign new_count_state_2 = new_not_Q_0 & Q_1 & new_not_Q_3 & new_not_Q_2;
  assign new_count_state_3 = Q_0 & Q_1 & new_not_Q_3 & new_not_Q_2;
  assign new_count_state_4 = new_not_Q_0 & new_not_Q_1 & new_not_Q_3 & Q_2;
  assign new_count_state_5 = Q_0 & new_not_Q_1 & new_not_Q_3 & Q_2;
  assign new_count_state_6 = new_not_Q_0 & Q_1 & new_not_Q_3 & Q_2;
  assign new_count_state_7 = Q_0 & Q_1 & new_not_Q_3 & Q_2;
  assign new_count_state_8 = new_not_Q_0 & new_not_Q_1 & Q_3 & new_not_Q_2;
  assign new_count_state_9 = Q_0 & new_not_Q_1 & Q_3 & new_not_Q_2;
  assign new_count_state_10 = new_not_Q_0 & Q_1 & Q_3 & new_not_Q_2;
  assign new_count_state_11 = Q_0 & Q_1 & Q_3 & new_not_Q_2;
  assign new_count_state_12 = new_not_Q_0 & new_not_Q_1 & Q_3 & Q_2;
  assign new_count_state_13 = Q_0 & new_not_Q_1 & Q_3 & Q_2;
  assign new_count_state_14 = new_not_Q_0 & Q_1 & Q_3 & Q_2;
  assign new_count_state_15 = Q_0 & Q_1 & Q_3 & Q_2;
  assign new_y_mux_key0_and_0 = n74 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_I2 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n74 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_I2 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n74 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_I2 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n74 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3_and_1 = new_I2 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n74 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4_and_1 = new_I2 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n74 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key5_and_1 = new_I2 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n74 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key6_and_1 = new_I2 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n74 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key7_and_1 = new_I2 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n74 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key8_and_1 = new_I2 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n74 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9_and_1 = new_I2 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n74 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key10_and_1 = new_I2 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n74 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11_and_1 = new_I2 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n74 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key12_and_1 = new_I2 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n74 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key13_and_1 = new_I2 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n74 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14_and_1 = new_I2 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n74 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key15_and_1 = new_I2 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key15 = new_y_mux_key15_and_0 | new_y_mux_key15_and_1;
  assign new__state_1 = new_count_state_1;
  assign new__state_2 = new_count_state_2;
  assign new__state_3 = new_count_state_3;
  assign new__state_4 = new_count_state_4;
  assign new__state_5 = new_count_state_5;
  assign new__state_6 = new_count_state_6;
  assign new__state_7 = new_count_state_7;
  assign new__state_8 = new_count_state_8;
  assign new__state_9 = new_count_state_9;
  assign new__state_10 = new_count_state_10;
  assign new__state_11 = new_count_state_11;
  assign new__state_12 = new_count_state_12;
  assign new__state_13 = new_count_state_13;
  assign new__state_14 = new_count_state_14;
  assign new__state_15 = new_count_state_15;
  assign new__state_17 = new__state_2 | new__state_3;
  assign new__state_18 = new__state_4 | new__state_5;
  assign new__state_19 = new__state_6 | new__state_7;
  assign new__state_20 = new__state_8 | new__state_9;
  assign new__state_21 = new__state_10 | new__state_11;
  assign new__state_22 = new__state_12 | new__state_13;
  assign new__state_23 = new__state_14 | new__state_15;
  assign new__state_25 = new__state_18 | new__state_19;
  assign new__state_26 = new__state_20 | new__state_21;
  assign new__state_27 = new__state_22 | new__state_23;
  assign new__state_29 = new__state_26 | new__state_27;
  assign new_s__state_1 = new__state_1;
  assign new_not_s__state_1 = ~new_s__state_1;
  assign new_I0__state_1 = new_y_mux_key0;
  assign new_I1__state_1 = new_y_mux_key1;
  assign new_and_mux__state_1 = new_not_s__state_1 & new_I0__state_1;
  assign new_and_mux__state_1_2 = new_s__state_1 & new_I1__state_1;
  assign new_y_mux_16 = new_and_mux__state_1 | new_and_mux__state_1_2;
  assign new_s__state_3 = new__state_3;
  assign new_not_s__state_3 = ~new_s__state_3;
  assign new_I0__state_3 = new_y_mux_key2;
  assign new_I1__state_3 = new_y_mux_key3;
  assign new_and_mux__state_3 = new_not_s__state_3 & new_I0__state_3;
  assign new_and_mux__state_3_2 = new_s__state_3 & new_I1__state_3;
  assign new_y_mux_17 = new_and_mux__state_3 | new_and_mux__state_3_2;
  assign new_s__state_5 = new__state_5;
  assign new_not_s__state_5 = ~new_s__state_5;
  assign new_I0__state_5 = new_y_mux_key4;
  assign new_I1__state_5 = new_y_mux_key5;
  assign new_and_mux__state_5 = new_not_s__state_5 & new_I0__state_5;
  assign new_and_mux__state_5_2 = new_s__state_5 & new_I1__state_5;
  assign new_y_mux_18 = new_and_mux__state_5 | new_and_mux__state_5_2;
  assign new_s__state_7 = new__state_7;
  assign new_not_s__state_7 = ~new_s__state_7;
  assign new_I0__state_7 = new_y_mux_key6;
  assign new_I1__state_7 = new_y_mux_key7;
  assign new_and_mux__state_7 = new_not_s__state_7 & new_I0__state_7;
  assign new_and_mux__state_7_2 = new_s__state_7 & new_I1__state_7;
  assign new_y_mux_19 = new_and_mux__state_7 | new_and_mux__state_7_2;
  assign new_s__state_9 = new__state_9;
  assign new_not_s__state_9 = ~new_s__state_9;
  assign new_I0__state_9 = new_y_mux_key8;
  assign new_I1__state_9 = new_y_mux_key9;
  assign new_and_mux__state_9 = new_not_s__state_9 & new_I0__state_9;
  assign new_and_mux__state_9_2 = new_s__state_9 & new_I1__state_9;
  assign new_y_mux_20 = new_and_mux__state_9 | new_and_mux__state_9_2;
  assign new_s__state_11 = new__state_11;
  assign new_not_s__state_11 = ~new_s__state_11;
  assign new_I0__state_11 = new_y_mux_key10;
  assign new_I1__state_11 = new_y_mux_key11;
  assign new_and_mux__state_11 = new_not_s__state_11 & new_I0__state_11;
  assign new_and_mux__state_11_2 = new_s__state_11 & new_I1__state_11;
  assign new_y_mux_21 = new_and_mux__state_11 | new_and_mux__state_11_2;
  assign new_s__state_13 = new__state_13;
  assign new_not_s__state_13 = ~new_s__state_13;
  assign new_I0__state_13 = new_y_mux_key12;
  assign new_I1__state_13 = new_y_mux_key13;
  assign new_and_mux__state_13 = new_not_s__state_13 & new_I0__state_13;
  assign new_and_mux__state_13_2 = new_s__state_13 & new_I1__state_13;
  assign new_y_mux_22 = new_and_mux__state_13 | new_and_mux__state_13_2;
  assign new_s__state_15 = new__state_15;
  assign new_not_s__state_15 = ~new_s__state_15;
  assign new_I0__state_15 = new_y_mux_key14;
  assign new_I1__state_15 = new_y_mux_key15;
  assign new_and_mux__state_15 = new_not_s__state_15 & new_I0__state_15;
  assign new_and_mux__state_15_2 = new_s__state_15 & new_I1__state_15;
  assign new_y_mux_23 = new_and_mux__state_15 | new_and_mux__state_15_2;
  assign new_s__state_17 = new__state_17;
  assign new_not_s__state_17 = ~new_s__state_17;
  assign new_I0__state_17 = new_y_mux_16;
  assign new_I1__state_17 = new_y_mux_17;
  assign new_and_mux__state_17 = new_not_s__state_17 & new_I0__state_17;
  assign new_and_mux__state_17_2 = new_s__state_17 & new_I1__state_17;
  assign new_y_mux_24 = new_and_mux__state_17 | new_and_mux__state_17_2;
  assign new_s__state_19 = new__state_19;
  assign new_not_s__state_19 = ~new_s__state_19;
  assign new_I0__state_19 = new_y_mux_18;
  assign new_I1__state_19 = new_y_mux_19;
  assign new_and_mux__state_19 = new_not_s__state_19 & new_I0__state_19;
  assign new_and_mux__state_19_2 = new_s__state_19 & new_I1__state_19;
  assign new_y_mux_25 = new_and_mux__state_19 | new_and_mux__state_19_2;
  assign new_s__state_21 = new__state_21;
  assign new_not_s__state_21 = ~new_s__state_21;
  assign new_I0__state_21 = new_y_mux_20;
  assign new_I1__state_21 = new_y_mux_21;
  assign new_and_mux__state_21 = new_not_s__state_21 & new_I0__state_21;
  assign new_and_mux__state_21_2 = new_s__state_21 & new_I1__state_21;
  assign new_y_mux_26 = new_and_mux__state_21 | new_and_mux__state_21_2;
  assign new_s__state_23 = new__state_23;
  assign new_not_s__state_23 = ~new_s__state_23;
  assign new_I0__state_23 = new_y_mux_22;
  assign new_I1__state_23 = new_y_mux_23;
  assign new_and_mux__state_23 = new_not_s__state_23 & new_I0__state_23;
  assign new_and_mux__state_23_2 = new_s__state_23 & new_I1__state_23;
  assign new_y_mux_27 = new_and_mux__state_23 | new_and_mux__state_23_2;
  assign new_s__state_25 = new__state_25;
  assign new_not_s__state_25 = ~new_s__state_25;
  assign new_I0__state_25 = new_y_mux_24;
  assign new_I1__state_25 = new_y_mux_25;
  assign new_and_mux__state_25 = new_not_s__state_25 & new_I0__state_25;
  assign new_and_mux__state_25_2 = new_s__state_25 & new_I1__state_25;
  assign new_y_mux_28 = new_and_mux__state_25 | new_and_mux__state_25_2;
  assign new_s__state_27 = new__state_27;
  assign new_not_s__state_27 = ~new_s__state_27;
  assign new_I0__state_27 = new_y_mux_26;
  assign new_I1__state_27 = new_y_mux_27;
  assign new_and_mux__state_27 = new_not_s__state_27 & new_I0__state_27;
  assign new_and_mux__state_27_2 = new_s__state_27 & new_I1__state_27;
  assign new_y_mux_29 = new_and_mux__state_27 | new_and_mux__state_27_2;
  assign new_s__state_29 = new__state_29;
  assign new_not_s__state_29 = ~new_s__state_29;
  assign new_I0__state_29 = new_y_mux_28;
  assign new_I1__state_29 = new_y_mux_29;
  assign new_and_mux__state_29 = new_not_s__state_29 & new_I0__state_29;
  assign new_and_mux__state_29_2 = new_s__state_29 & new_I1__state_29;
  assign n64 = new_and_mux__state_29 | new_and_mux__state_29_2;
  always @ (posedge clock) begin
    st_5 <= n64;
    st_4 <= n69;
    st_3 <= n74;
    st_2 <= n79;
    st_1 <= n84;
    st_0 <= n89;
    Q_0 <= n561;
    Q_1 <= n564;
    Q_2 <= n567;
    Q_3 <= n570;
  end
endmodule


