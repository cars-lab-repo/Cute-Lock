// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s444_encrypted" written by ABC on Fri Sep 27 18:22:53 2024

module \./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s444_encrypted  ( clock, 
    G0, G1, G2, keyinput0, keyinput1, keyinput2, keyinput3, keyinput4,
    G118, G167, G107, G119, G168, G108  );
  input  clock;
  input  G0, G1, G2, keyinput0, keyinput1, keyinput2, keyinput3,
    keyinput4;
  output G118, G167, G107, G119, G168, G108;
  reg G11, G12, G13, G14, G15, G16, G17, G18, G19, G20, G21, G22, G23, G24,
    G25, G26, G27, G28, G29, G30, G31, Q_0, Q_1, Q_2, Q_3;
  wire new_I372, new_I382, new_I318, new_G34, new_I180, new_G35, new_G77,
    new_G135, new_G36, new_G78, new_G144, new_G32, new_G74, new_G142,
    new_I392, new_G55, new_G102, new_G136, new_G156, new_G56, new_G143,
    new_G161, new_I321, new_G53, new_I324, new_G76, new_G150, new_I336,
    new_G152, new_G160, new_G106, new_G43, new_I182, new_G99, new_G139,
    new_G153, new_G157, new_G103, new_G38, new_G60, new_G79, new_G42,
    new_G46, new_I105, new_G166, new_G50, new_G82, new_G59, new_G63,
    new_G67, new_G71, new_G81, new_G85, new_G89, new_G94, new_G122,
    new_G124, new_G125, new_G126, new_G127, new_G154, new_G100, new_G115,
    new_G163, new_G116, new_G164, new_G141, new_G137, new_G138, new_G140,
    new_G133, new_G134, new_G145, new_G146, new_G147, new_G158, new_G104,
    new_G131, new_G159, new_G105, new_I181, new_G129, new_G121, new_I190,
    new_G40, new_I200, new_I210, new_G120, new_G132, new_G123, new_G151,
    new_G117, new_I191, new_I192, new_I201, new_I202, new_G149, new_I211,
    new_I212, new_G148, new_G44, new_G48, new_G162, new_G52, new_I225,
    new_I235, new_I245, new_I255, new_G165, new_I226, new_I227, new_I236,
    new_I237, new_I246, new_I247, new_I256, new_I257, new_G61, new_G65,
    new_G69, new_G73, new_I271, new_I281, new_I291, new_I302, new_I272,
    new_I273, new_I282, new_I283, new_I292, new_I293, new_I303, new_I304,
    new_G83, new_G87, new_G91, new_G96, new_G33, new_G54, new_G75, new_G47,
    new_G51, new_G98, new_G128, new_G130, new_G57, new_G64, new_G68,
    new_G72, new_G97, new_G37, new_G86, new_G90, new_G93, new_G95,
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
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n30,
    n35, n40, n45, n50, n55, n60, n65, n70, n75, n80, n85, n90, n95, n100,
    n105, n110, n115, n120, n125, n130, n528, n531, n534, n537;
  assign new_I372 = ~G0;
  assign new_I382 = ~G1;
  assign new_I318 = ~G2;
  assign new_G34 = ~G11;
  assign new_I180 = ~G11;
  assign new_G35 = ~G12;
  assign new_G77 = ~G20;
  assign new_G135 = ~G20;
  assign new_G36 = ~G13;
  assign new_G78 = ~G21;
  assign new_G144 = ~G21;
  assign new_G32 = ~G14;
  assign new_G74 = ~G22;
  assign new_G142 = ~G22;
  assign new_I392 = ~G30;
  assign new_G55 = ~G15;
  assign new_G102 = ~G23;
  assign new_G136 = ~G23;
  assign new_G156 = ~G31;
  assign new_G56 = ~G16;
  assign new_G143 = ~G24;
  assign new_G161 = ~G17;
  assign new_I321 = ~G25;
  assign new_G53 = ~G18;
  assign new_I324 = ~G26;
  assign new_G76 = ~G19;
  assign new_G150 = ~G19;
  assign new_I336 = ~G27;
  assign G119 = ~G28;
  assign G167 = ~G29;
  assign new_G152 = ~new_I372;
  assign new_G160 = ~new_I382;
  assign new_G106 = ~new_I318;
  assign new_G43 = ~new_G34;
  assign new_I182 = ~new_I180;
  assign G168 = ~new_I392;
  assign G107 = ~new_I321;
  assign G108 = ~new_I324;
  assign G118 = ~new_I336;
  assign new_G99 = ~new_G152;
  assign new_G139 = ~new_G152;
  assign new_G153 = ~new_G152;
  assign new_G157 = ~new_G160;
  assign new_G103 = ~new_G106;
  assign new_G38 = ~new_G40;
  assign new_G60 = ~new_G57;
  assign new_G79 = ~new_G97;
  assign new_G42 = ~new_G44;
  assign new_G46 = ~new_G48;
  assign new_I105 = ~new_G162;
  assign new_G166 = ~new_G162;
  assign new_G50 = ~new_G52;
  assign new_G82 = ~new_G79;
  assign n95 = ~new_I105;
  assign new_G59 = ~new_G61;
  assign new_G63 = ~new_G65;
  assign new_G67 = ~new_G69;
  assign new_G71 = ~new_G73;
  assign new_G81 = ~new_G83;
  assign new_G85 = ~new_G87;
  assign new_G89 = ~new_G91;
  assign new_G94 = ~new_G96;
  assign new_G122 = G24 & new_G121;
  assign new_G124 = new_G150 & new_G139 & G22;
  assign new_G125 = G19 & new_G139 & G20;
  assign new_G126 = new_G139 & G21;
  assign new_G127 = new_G139 & G24;
  assign new_G154 = new_G158 & new_G159;
  assign new_G100 = new_G104 & new_G105;
  assign n130 = new_G154 & new_G153;
  assign n90 = new_G100 & new_G99;
  assign new_G115 = new_G162 & new_G161 & new_G117;
  assign new_G163 = new_G162 & new_G161 & new_G165;
  assign new_G116 = new_G117 & new_G166;
  assign new_G164 = new_G165 & new_G166;
  assign new_G141 = G21 | G24 | G22;
  assign new_G137 = G19 | new_G136 | G20;
  assign new_G138 = new_G136 | new_G142;
  assign new_G140 = new_G150 | G20 | G24 | G21;
  assign new_G133 = new_G144 | G22 | new_G152 | new_G136;
  assign new_G134 = G21 | new_G152 | new_G142;
  assign new_G145 = G19 | G20 | new_G152 | new_G142;
  assign new_G146 = new_G152 | new_G143;
  assign new_G147 = new_G152 | new_G144;
  assign new_G158 = G31 | new_G160;
  assign new_G104 = G23 | new_G106;
  assign new_G131 = new_G129 | G23 | new_G144 | G22;
  assign new_G159 = new_G156 | new_G157;
  assign new_G105 = new_G102 | new_G103;
  assign new_I181 = ~G11 | ~new_I180;
  assign new_G129 = ~G19 | ~new_G135;
  assign new_G121 = ~new_G136 | ~new_G142 | ~G19 | ~new_G135;
  assign new_I190 = ~G12 | ~new_G43;
  assign new_G40 = ~new_I181 | ~new_I182;
  assign new_I200 = ~G13 | ~new_G47;
  assign new_I210 = ~G14 | ~new_G51;
  assign new_G120 = ~new_G150 | ~new_G128;
  assign new_G132 = ~new_G133 | ~new_G134;
  assign n110 = ~new_G139 | ~new_G140 | ~new_G141;
  assign new_G123 = ~new_G139 | ~G21 | ~new_G137 | ~new_G138;
  assign new_G151 = ~new_G139 | ~new_G143 | ~G20 | ~new_G144;
  assign new_G117 = ~new_G147 | ~new_G145 | ~new_G146;
  assign new_I191 = ~G12 | ~new_I190;
  assign new_I192 = ~new_G43 | ~new_I190;
  assign new_I201 = ~G13 | ~new_I200;
  assign new_I202 = ~new_G47 | ~new_I200;
  assign new_G149 = ~new_G131 | ~new_G130;
  assign new_I211 = ~G14 | ~new_I210;
  assign new_I212 = ~new_G51 | ~new_I210;
  assign new_G148 = ~new_G132 | ~new_G150 | ~new_G135;
  assign new_G44 = ~new_I191 | ~new_I192;
  assign new_G48 = ~new_I201 | ~new_I202;
  assign new_G162 = ~new_G120 | ~new_G149;
  assign new_G52 = ~new_I211 | ~new_I212;
  assign new_I225 = ~G15 | ~new_G60;
  assign new_I235 = ~G16 | ~new_G64;
  assign new_I245 = ~G17 | ~new_G68;
  assign new_I255 = ~G18 | ~new_G72;
  assign new_G165 = ~new_G148 | ~new_G149;
  assign new_I226 = ~G15 | ~new_I225;
  assign new_I227 = ~new_G60 | ~new_I225;
  assign new_I236 = ~G16 | ~new_I235;
  assign new_I237 = ~new_G64 | ~new_I235;
  assign new_I246 = ~G17 | ~new_I245;
  assign new_I247 = ~new_G68 | ~new_I245;
  assign new_I256 = ~G18 | ~new_I255;
  assign new_I257 = ~new_G72 | ~new_I255;
  assign new_G61 = ~new_I226 | ~new_I227;
  assign new_G65 = ~new_I236 | ~new_I237;
  assign new_G69 = ~new_I246 | ~new_I247;
  assign new_G73 = ~new_I256 | ~new_I257;
  assign new_I271 = ~G19 | ~new_G82;
  assign new_I281 = ~G20 | ~new_G86;
  assign new_I291 = ~G21 | ~new_G90;
  assign new_I302 = ~G22 | ~new_G95;
  assign new_I272 = ~G19 | ~new_I271;
  assign new_I273 = ~new_G82 | ~new_I271;
  assign new_I282 = ~G20 | ~new_I281;
  assign new_I283 = ~new_G86 | ~new_I281;
  assign new_I292 = ~G21 | ~new_I291;
  assign new_I293 = ~new_G90 | ~new_I291;
  assign new_I303 = ~G22 | ~new_I302;
  assign new_I304 = ~new_G95 | ~new_I302;
  assign new_G83 = ~new_I272 | ~new_I273;
  assign new_G87 = ~new_I282 | ~new_I283;
  assign new_G91 = ~new_I292 | ~new_I293;
  assign new_G96 = ~new_I303 | ~new_I304;
  assign new_G33 = ~G13 & ~G11 & ~G12;
  assign new_G54 = ~G17 & ~G15 & ~G16;
  assign new_G75 = ~G21 & ~G19 & ~G20;
  assign new_G47 = ~new_G34 & ~new_G35;
  assign new_G51 = ~new_G36 & ~new_G34 & ~new_G35;
  assign new_G98 = ~new_G32 & ~new_G33;
  assign new_G128 = ~new_G152 & ~new_G136 & ~G20 & ~new_G144;
  assign new_G130 = ~new_G143 & ~new_G152;
  assign new_G57 = ~G31 & ~new_G98;
  assign new_G64 = ~new_G55 & ~new_G57;
  assign new_G68 = ~new_G57 & ~new_G55 & ~new_G56;
  assign new_G72 = ~new_G57 & ~new_G161 & ~new_G55 & ~new_G56;
  assign new_G97 = ~new_G54 & ~new_G53 & ~new_G57;
  assign n100 = ~new_G122 & ~new_G123;
  assign n105 = ~new_G127 & ~new_G126 & ~new_G124 & ~new_G125;
  assign n125 = ~new_G150 & ~new_G151;
  assign new_G37 = ~new_G152 & ~new_G98 & ~new_G38;
  assign new_G86 = ~new_G76 & ~new_G79;
  assign new_G90 = ~new_G79 & ~new_G76 & ~new_G77;
  assign new_G93 = ~new_G75 & ~new_G74 & ~new_G79;
  assign new_G95 = ~new_G79 & ~new_G78 & ~new_G76 & ~new_G77;
  assign n35 = ~new_G152 & ~new_G98 & ~new_G42;
  assign n40 = ~new_G152 & ~new_G98 & ~new_G46;
  assign n45 = ~new_G152 & ~new_G98 & ~new_G50;
  assign n115 = ~new_G115 & ~new_G116;
  assign n120 = ~new_G163 & ~new_G164;
  assign n50 = ~new_G152 & ~new_G97 & ~new_G59;
  assign n55 = ~new_G152 & ~new_G97 & ~new_G63;
  assign n60 = ~new_G152 & ~new_G97 & ~new_G67;
  assign n65 = ~new_G152 & ~new_G97 & ~new_G71;
  assign n70 = ~new_G152 & ~new_G93 & ~new_G81;
  assign n75 = ~new_G152 & ~new_G93 & ~new_G85;
  assign n80 = ~new_G152 & ~new_G93 & ~new_G89;
  assign n85 = ~new_G152 & ~new_G93 & ~new_G94;
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
  assign n537 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n534 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n531 = new_and_17 | new_and_19;
  assign n528 = ~Q_0;
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
  assign new_y_mux_key0_and_0 = n40 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_G37 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n40 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_G37 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_G37 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n40 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3_and_1 = new_G37 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n40 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key4_and_1 = new_G37 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key5_and_1 = new_G37 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n40 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key6_and_1 = new_G37 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n40 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key7_and_1 = new_G37 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n40 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key8_and_1 = new_G37 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n40 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9_and_1 = new_G37 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10_and_1 = new_G37 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n40 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11_and_1 = new_G37 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key12_and_1 = new_G37 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n40 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key13_and_1 = new_G37 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key14_and_1 = new_G37 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n40 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key15_and_1 = new_G37 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
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
    G11 <= n30;
    G12 <= n35;
    G13 <= n40;
    G14 <= n45;
    G15 <= n50;
    G16 <= n55;
    G17 <= n60;
    G18 <= n65;
    G19 <= n70;
    G20 <= n75;
    G21 <= n80;
    G22 <= n85;
    G23 <= n90;
    G24 <= n95;
    G25 <= n100;
    G26 <= n105;
    G27 <= n110;
    G28 <= n115;
    G29 <= n120;
    G30 <= n125;
    G31 <= n130;
    Q_0 <= n528;
    Q_1 <= n531;
    Q_2 <= n534;
    Q_3 <= n537;
  end
endmodule


