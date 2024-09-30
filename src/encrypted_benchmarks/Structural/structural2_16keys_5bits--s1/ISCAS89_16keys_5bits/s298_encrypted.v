// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s298_encrypted" written by ABC on Fri Sep 27 18:22:51 2024

module \./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s298_encrypted  ( clock, 
    G0, G1, G2, keyinput0, keyinput1, keyinput2, keyinput3, keyinput4,
    G117, G132, G66, G118, G133, G67  );
  input  clock;
  input  G0, G1, G2, keyinput0, keyinput1, keyinput2, keyinput3,
    keyinput4;
  output G117, G132, G66, G118, G133, G67;
  reg G10, G11, G12, G13, G14, G15, G16, G17, G18, G19, G20, G21, G22, G23,
    Q_0, Q_1, Q_2, Q_3;
  wire new_G28, new_G38, new_G40, new_G45, new_G46, new_G50, new_G51,
    new_G54, new_G55, new_G59, new_G60, new_G64, new_I155, new_I158,
    new_G76, new_G82, new_G87, new_G91, new_G93, new_G96, new_G99,
    new_G103, new_G108, new_G114, new_I210, new_I213, new_G120, new_G121,
    new_I221, new_G124, new_G126, new_G127, new_I229, new_G130, new_I232,
    new_G131, new_I235, new_I238, new_G26, new_G27, new_G31, new_G32,
    new_G33, new_G35, new_G36, new_G37, new_G42, new_G48, new_G49, new_G57,
    new_G58, new_G62, new_G63, new_G74, new_G75, new_G88, new_G89, new_G90,
    new_G94, new_G95, new_G100, new_G105, new_G110, new_G111, new_G115,
    new_G122, new_G123, new_G128, new_G129, new_G24, new_G25, new_G68,
    new_G69, new_G70, new_G71, new_G72, new_G73, new_G77, new_G78, new_G79,
    new_G80, new_G81, new_G83, new_G84, new_G85, new_G41, new_G43, new_G52,
    new_G65, new_G97, new_G101, new_G106, new_G109, new_G116, new_G29,
    new_G47, new_G53, new_G61, new_G104, new_G112, new_not_keyinput0,
    new_not_keyinput1, new_not_keyinput2, new_not_keyinput3,
    new_not_keyinput4, new_not_0, new_and_1, new_not_2, new_and_3,
    new_not_4, new_and_5, new_not_6, new_and_7, new_not_9, new_and_10,
    new_not_11, new_and_12, new_not_13, new_and_14, new_not_16, new_and_17,
    new_not_18, new_and_19, new_not_Q_0, new_not_Q_1, new_not_Q_2,
    new_not_Q_3, new_count_state_1, new_count_state_2, new_count_state_3,
    new_count_state_4, new_count_state_5, new_count_state_6,
    new_count_state_7, new_count_state_8, new_count_state_9,
    new_count_state_10, new_count_state_11, new_count_state_12,
    new_count_state_13, new_count_state_14, new_count_state_15,
    new_y_mux_key0_and_0, new_y_mux_key0_and_1, new_y_mux_key0,
    new_y_mux_key1_and_0, new_y_mux_key1_and_1, new_y_mux_key1,
    new_y_mux_key2_and_0, new_y_mux_key2_and_1, new_y_mux_key2,
    new_y_mux_key3_and_0, new_y_mux_key3_and_1, new_y_mux_key3,
    new_y_mux_key4_and_0, new_y_mux_key4_and_1, new_y_mux_key4,
    new_y_mux_key5_and_0, new_y_mux_key5_and_1, new_y_mux_key5,
    new_y_mux_key6_and_0, new_y_mux_key6_and_1, new_y_mux_key6,
    new_y_mux_key7_and_0, new_y_mux_key7_and_1, new_y_mux_key7,
    new_y_mux_key8_and_0, new_y_mux_key8_and_1, new_y_mux_key8,
    new_y_mux_key9_and_0, new_y_mux_key9_and_1, new_y_mux_key9,
    new_y_mux_key10_and_0, new_y_mux_key10_and_1, new_y_mux_key10,
    new_y_mux_key11_and_0, new_y_mux_key11_and_1, new_y_mux_key11,
    new_y_mux_key12_and_0, new_y_mux_key12_and_1, new_y_mux_key12,
    new_y_mux_key13_and_0, new_y_mux_key13_and_1, new_y_mux_key13,
    new_y_mux_key14_and_0, new_y_mux_key14_and_1, new_y_mux_key14,
    new_y_mux_key15_and_0, new_y_mux_key15_and_1, new_y_mux_key15,
    new__state_1, new__state_2, new__state_3, new__state_4, new__state_5,
    new__state_6, new__state_7, new__state_8, new__state_9, new__state_10,
    new__state_11, new__state_12, new__state_13, new__state_14,
    new__state_15, new__state_17, new__state_18, new__state_19,
    new__state_20, new__state_21, new__state_22, new__state_23,
    new__state_25, new__state_26, new__state_27, new__state_29,
    new_s__state_1, new_not_s__state_1, new_I0__state_1, new_I1__state_1,
    new_and_mux__state_1, new_and_mux__state_1_2, new_y_mux_16,
    new_s__state_3, new_not_s__state_3, new_I0__state_3, new_I1__state_3,
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
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n30,
    n35, n40, n45, n50, n55, n60, n65, n70, n75, n80, n85, n90, n95, n376,
    n379, n382, n385;
  assign new_G28 = ~new_G130;
  assign new_G38 = ~G10;
  assign new_G40 = ~G13;
  assign new_G45 = ~G12;
  assign new_G46 = ~G11;
  assign new_G50 = ~G14;
  assign new_G51 = ~G23;
  assign new_G54 = ~G11;
  assign new_G55 = ~G13;
  assign new_G59 = ~G12;
  assign new_G60 = ~G22;
  assign new_G64 = ~G15;
  assign new_I155 = ~G16;
  assign G66 = ~new_I155;
  assign new_I158 = ~G17;
  assign G67 = ~new_I158;
  assign new_G76 = ~G10;
  assign new_G82 = ~G11;
  assign new_G87 = ~G16;
  assign new_G91 = ~G12;
  assign new_G93 = ~G17;
  assign new_G96 = ~G14;
  assign new_G99 = ~G18;
  assign new_G103 = ~G13;
  assign new_G108 = ~new_G112;
  assign new_G114 = ~G21;
  assign new_I210 = ~G18;
  assign G117 = ~new_I210;
  assign new_I213 = ~G19;
  assign G118 = ~new_I213;
  assign new_G120 = ~new_G124;
  assign new_G121 = ~G22;
  assign new_I221 = ~G2;
  assign new_G124 = ~new_I221;
  assign new_G126 = ~new_G131;
  assign new_G127 = ~G23;
  assign new_I229 = ~G0;
  assign new_G130 = ~new_I229;
  assign new_I232 = ~G1;
  assign new_G131 = ~new_I232;
  assign new_I235 = ~G20;
  assign G132 = ~new_I235;
  assign new_I238 = ~G21;
  assign G133 = ~new_I238;
  assign new_G26 = new_G28 & new_G50;
  assign new_G27 = new_G51 & new_G28;
  assign new_G31 = G13 & G10 & new_G45;
  assign new_G32 = G10 & G11;
  assign new_G33 = new_G38 & new_G46;
  assign new_G35 = G12 & G10 & G11;
  assign new_G36 = new_G38 & new_G45;
  assign new_G37 = new_G46 & new_G45;
  assign new_G42 = new_G40 & new_G41;
  assign new_G48 = new_G47 & G10 & new_G45 & new_G46;
  assign new_G49 = new_G52 & new_G50 & new_G51;
  assign new_G57 = new_G61 & new_G60 & new_G59 & G11;
  assign new_G58 = new_G64 & new_G65;
  assign new_G62 = new_G61 & new_G60 & new_G59 & G11;
  assign new_G63 = new_G64 & new_G65;
  assign new_G74 = G19 & G12 & G14;
  assign new_G75 = G14 & new_G82 & new_G91;
  assign new_G88 = G14 & new_G87;
  assign new_G89 = new_G103 & new_G96;
  assign new_G90 = new_G91 & new_G103;
  assign new_G94 = new_G93 & G13;
  assign new_G95 = new_G96 & G13;
  assign new_G100 = G12 & new_G99 & G14;
  assign new_G105 = new_G104 & new_G103 & new_G108;
  assign new_G110 = new_G108 & new_G109;
  assign new_G111 = G10 & new_G112;
  assign new_G115 = new_G114 & G14;
  assign new_G122 = new_G120 & new_G121;
  assign new_G123 = new_G124 & G22;
  assign new_G128 = new_G126 & new_G127;
  assign new_G129 = new_G131 & G23;
  assign new_G24 = new_G40 | new_G45 | new_G38 | new_G46;
  assign new_G25 = G12 | new_G38 | G11;
  assign new_G68 = new_G96 | G13 | G11 | G12;
  assign new_G69 = new_G103 | G18;
  assign new_G70 = new_G103 | G14;
  assign new_G71 = G13 | new_G82 | G12;
  assign new_G72 = new_G91 | G20;
  assign new_G73 = new_G103 | G20;
  assign new_G77 = G19 | new_G96 | new_G112 | new_G103;
  assign new_G78 = new_G108 | new_G76;
  assign new_G79 = new_G103 | G14;
  assign new_G80 = G11 | G14;
  assign new_G81 = G12 | G13;
  assign new_G83 = new_G96 | G13 | G11 | G12;
  assign new_G84 = G14 | new_G82 | new_G91;
  assign new_G85 = G17 | new_G91 | new_G96;
  assign new_G41 = ~G10 | ~G12 | ~G11;
  assign new_G43 = ~new_G28 | ~new_G24 | ~new_G25;
  assign new_G52 = ~G10 | ~new_G46 | ~G13 | ~new_G45;
  assign new_G65 = ~new_G61 | ~G22 | ~new_G59 | ~new_G54;
  assign new_G97 = ~new_G108 | ~new_G85 | ~new_G83 | ~new_G84;
  assign new_G101 = ~new_G108 | ~new_G70 | ~new_G68 | ~new_G69;
  assign new_G106 = ~new_G77 | ~new_G78;
  assign new_G109 = ~G14 | ~new_G73 | ~new_G71 | ~new_G72;
  assign new_G116 = ~new_G108 | ~new_G81 | ~new_G79 | ~new_G80;
  assign new_G29 = ~G10 & ~new_G130;
  assign n35 = ~new_G130 & ~new_G33 & ~new_G31 & ~new_G32;
  assign n40 = ~new_G130 & ~new_G37 & ~new_G35 & ~new_G36;
  assign n45 = ~new_G42 & ~new_G43;
  assign n50 = ~new_G53 & ~new_G48 & ~new_G49;
  assign new_G47 = ~new_G50 & ~new_G40;
  assign new_G53 = ~new_G26 & ~new_G27;
  assign n55 = ~new_G130 & ~new_G57 & ~new_G58;
  assign new_G61 = ~G14 & ~new_G55;
  assign n60 = ~new_G112 & ~new_G90 & ~new_G88 & ~new_G89;
  assign n65 = ~new_G97 & ~new_G94 & ~new_G95;
  assign n70 = ~new_G100 & ~new_G101;
  assign n75 = ~new_G105 & ~new_G106;
  assign new_G104 = ~new_G74 & ~new_G75;
  assign n80 = ~new_G110 & ~new_G111;
  assign new_G112 = ~new_G62 & ~new_G63;
  assign n85 = ~new_G115 & ~new_G116;
  assign n90 = ~new_G130 & ~new_G122 & ~new_G123;
  assign n95 = ~new_G130 & ~new_G128 & ~new_G129;
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
  assign n385 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n382 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n379 = new_and_17 | new_and_19;
  assign n376 = ~Q_0;
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
  assign new_y_mux_key0_and_0 = n40 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0_and_1 = new_G29 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n40 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_G29 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n40 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_G29 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_G29 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n40 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key4_and_1 = new_G29 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n40 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5_and_1 = new_G29 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key6_and_1 = new_G29 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7_and_1 = new_G29 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8_and_1 = new_G29 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n40 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key9_and_1 = new_G29 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n40 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key10_and_1 = new_G29 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n40 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key11_and_1 = new_G29 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n40 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key12_and_1 = new_G29 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n40 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13_and_1 = new_G29 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key14_and_1 = new_G29 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n40 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key15_and_1 = new_G29 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n30 = new_and_mux__state_29 | new_and_mux__state_29_2;
  always @ (posedge clock) begin
    G10 <= n30;
    G11 <= n35;
    G12 <= n40;
    G13 <= n45;
    G14 <= n50;
    G15 <= n55;
    G16 <= n60;
    G17 <= n65;
    G18 <= n70;
    G19 <= n75;
    G20 <= n80;
    G21 <= n85;
    G22 <= n90;
    G23 <= n95;
    Q_0 <= n376;
    Q_1 <= n379;
    Q_2 <= n382;
    Q_3 <= n385;
  end
endmodule


