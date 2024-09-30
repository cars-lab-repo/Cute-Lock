// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s641_encrypted" written by ABC on Fri Sep 27 18:22:55 2024

module \./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s641_encrypted  ( clock, 
    G1, G2, G3, G4, G5, G6, G8, G9, G10, G11, G12, G13, G14, G15, G16, G17,
    G18, G19, G20, G21, G22, G23, G24, G25, G26, G27, G28, G29, G30, G31,
    G32, G33, G34, G35, G36, keyinput0, keyinput1, keyinput2, keyinput3,
    keyinput4,
    G91, G94, G107, G83, G84, G85, G100BF, G98BF, G96BF, G92, G87BF, G89BF,
    G101BF, G106BF, G97BF, G104BF, G88BF, G99BF, G105BF, G138, G86BF,
    G95BF, G103BF, G90  );
  input  clock;
  input  G1, G2, G3, G4, G5, G6, G8, G9, G10, G11, G12, G13, G14, G15,
    G16, G17, G18, G19, G20, G21, G22, G23, G24, G25, G26, G27, G28, G29,
    G30, G31, G32, G33, G34, G35, G36, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4;
  output G91, G94, G107, G83, G84, G85, G100BF, G98BF, G96BF, G92, G87BF,
    G89BF, G101BF, G106BF, G97BF, G104BF, G88BF, G99BF, G105BF, G138,
    G86BF, G95BF, G103BF, G90;
  reg G64, G65, G66, G67, G68, G69, G70, G71, G72, G73, G74, G75, G76, G77,
    G78, G79, G80, G81, G82, Q_0, Q_1, Q_2, Q_3;
  wire new_I633, new_G366, new_G379, new_I643, new_I646, new_I649, new_I652,
    new_I655, new_I660, new_I680, new_I684, new_I687, new_I165, new_II178,
    new_I169, new_I172, new_I175, new_I178, new_I181, new_I184, new_I187,
    new_I190, new_I193, new_I196, new_I199, new_I202, new_I205, new_I208,
    new_I211, new_G352, new_G360, new_G361, new_G362, new_G363, new_G364,
    new_G367, new_G386, new_G388, new_G389, new_G113, new_G115, new_G117,
    new_G219, new_G119, new_G221, new_G121, new_G223, new_G209, new_G109,
    new_G211, new_G111, new_G213, new_G215, new_G217, new_G110, new_G114,
    new_G118, new_G216, new_G218, new_G220, new_G222, new_G365, new_G368,
    new_G387, new_G225, new_G390, new_I356, new_I254, new_I257, new_I260,
    new_I263, new_I266, new_I269, new_I272, new_I275, new_I278, new_I281,
    new_G143, new_G166, new_G325, new_G194, new_G339, new_G202, new_G345,
    new_G313, new_G316, new_G319, new_G322, new_I303, new_I299, new_I313,
    new_I287, new_I291, new_I295, new_G350, new_I301, new_I315, new_G381,
    new_G375, new_G371, new_G135, new_G137, new_G382, new_G376, new_G372,
    new_I321, new_I324, new_G329, new_G333, new_I406, new_I422, new_G173,
    new_G183, new_I335, new_I338, new_G174, new_G184, new_I341, new_G359,
    new_G355, new_G108, new_G356, new_G116, new_I354, new_I357, new_I360,
    new_I363, new_G146, new_G294, new_G162, new_G310, new_I366, new_I369,
    new_I372, new_I375, new_I378, new_I382, new_G198, new_G342, new_G154,
    new_G304, new_G383, new_G396, new_I386, new_I390, new_G384, new_G397,
    new_G373, new_G392, new_II476, new_I279, new_G374, new_G393, new_G224,
    new_I306, new_I373, new_G286, new_II208, new_I308, new_I334, new_I327,
    new_I210, new_G136, new_I336, new_I329, new_I442, new_G331, new_I414,
    new_G178, new_I449, new_G179, new_I452, new_G357, new_G358, new_G112,
    new_I460, new_I463, new_I466, new_I469, new_G190, new_G336, new_G158,
    new_G307, new_I472, new_I476, new_G395, new_G377, new_II272, new_G378,
    new_I265, new_I292, new_I440, new_G284, new_I294, new_I320, new_I285,
    new_G134, new_I322, new_II287, new_I517, new_G327, new_I398, new_G168,
    new_I524, new_G169, new_I527, new_G353, new_G354, new_G120, new_I535,
    new_I538, new_I541, new_I544, new_G206, new_G348, new_G150, new_G301,
    new_I547, new_I551, new_G391, new_G369, new_G380, new_G370, new_I258,
    new_I230, new_I511, new_G288, new_I237, new_I244, new_I251, new_I348,
    new_II341, new_I222, new_I350, new_I343, new_I224, new_G124, new_I608,
    new_G298, new_G289, new_G324, new_G338, new_G344, new_G312, new_G315,
    new_G318, new_G321, new_G231, new_G232, new_G233, new_G234, new_G247,
    new_G248, new_G263, new_G264, new_G100, new_G98, new_G96, new_G87,
    new_G89, new_G293, new_G309, new_G341, new_G303, new_G101, new_G106,
    new_G97, new_G104, new_G266, new_G229, new_G245, new_G278, new_G249,
    new_I533, new_G227, new_G243, new_G265, new_G236, new_G237, new_G252,
    new_II527, new_G88, new_G335, new_G306, new_G99, new_G228, new_G244,
    new_G277, new_G105, new_I515, new_G261, new_G276, new_I512, new_II538,
    new_G256, new_G230, new_G235, new_G246, new_G86, new_G347, new_G300,
    new_G95, new_G226, new_G242, new_I553, new_G103, new_G275, new_I518,
    new_I521, new_II524, new_I495, new_G257, new_I537, new_G258, new_G259,
    new_G260, new_G241, new_G267, new_G238, new_G239, new_G254, new_G281,
    new_G283, new_G282, new_G285, new_G280, new_G279, new_G271, new_G272,
    new_G273, new_G274, new_I546, new_G287, new_G270, new_G214, new_G210,
    new_G212, new_G208, new_not_keyinput0, new_not_keyinput1,
    new_not_keyinput2, new_not_keyinput3, new_not_keyinput4, new_not_0,
    new_and_1, new_not_2, new_and_3, new_not_4, new_and_5, new_not_6,
    new_and_7, new_not_9, new_and_10, new_not_11, new_and_12, new_not_13,
    new_and_14, new_not_16, new_and_17, new_not_18, new_and_19,
    new_not_Q_0, new_not_Q_1, new_not_Q_2, new_not_Q_3, new_count_state_1,
    new_count_state_2, new_count_state_3, new_count_state_4,
    new_count_state_5, new_count_state_6, new_count_state_7,
    new_count_state_8, new_count_state_9, new_count_state_10,
    new_count_state_11, new_count_state_12, new_count_state_13,
    new_count_state_14, new_count_state_15, new_y_mux_key0_and_0,
    new_y_mux_key0_and_1, new_y_mux_key0, new_y_mux_key1_and_0,
    new_y_mux_key1_and_1, new_y_mux_key1, new_y_mux_key2_and_0,
    new_y_mux_key2_and_1, new_y_mux_key2, new_y_mux_key3_and_0,
    new_y_mux_key3_and_1, new_y_mux_key3, new_y_mux_key4_and_0,
    new_y_mux_key4_and_1, new_y_mux_key4, new_y_mux_key5_and_0,
    new_y_mux_key5_and_1, new_y_mux_key5, new_y_mux_key6_and_0,
    new_y_mux_key6_and_1, new_y_mux_key6, new_y_mux_key7_and_0,
    new_y_mux_key7_and_1, new_y_mux_key7, new_y_mux_key8_and_0,
    new_y_mux_key8_and_1, new_y_mux_key8, new_y_mux_key9_and_0,
    new_y_mux_key9_and_1, new_y_mux_key9, new_y_mux_key10_and_0,
    new_y_mux_key10_and_1, new_y_mux_key10, new_y_mux_key11_and_0,
    new_y_mux_key11_and_1, new_y_mux_key11, new_y_mux_key12_and_0,
    new_y_mux_key12_and_1, new_y_mux_key12, new_y_mux_key13_and_0,
    new_y_mux_key13_and_1, new_y_mux_key13, new_y_mux_key14_and_0,
    new_y_mux_key14_and_1, new_y_mux_key14, new_y_mux_key15_and_0,
    new_y_mux_key15_and_1, new_y_mux_key15, new__state_1, new__state_2,
    new__state_3, new__state_4, new__state_5, new__state_6, new__state_7,
    new__state_8, new__state_9, new__state_10, new__state_11,
    new__state_12, new__state_13, new__state_14, new__state_15,
    new__state_17, new__state_18, new__state_19, new__state_20,
    new__state_21, new__state_22, new__state_23, new__state_25,
    new__state_26, new__state_27, new__state_29, new_s__state_1,
    new_not_s__state_1, new_I0__state_1, new_I1__state_1,
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
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n130,
    n135, n140, n145, n150, n155, n159, n164, n169, n174, n179, n184, n189,
    n194, n199, n204, n209, n214, n219, n998, n1001, n1004, n1007;
  assign new_I633 = ~G1;
  assign new_G366 = ~G2;
  assign new_G379 = ~G3;
  assign new_I643 = ~G4;
  assign new_I646 = ~G5;
  assign new_I649 = ~G6;
  assign new_I652 = ~G8;
  assign new_I655 = ~G9;
  assign new_I660 = ~G10;
  assign new_I680 = ~G11;
  assign new_I684 = ~G12;
  assign new_I687 = ~G13;
  assign new_I165 = ~G27;
  assign new_II178 = ~G29;
  assign new_I169 = ~G70;
  assign new_I172 = ~G71;
  assign new_I175 = ~G72;
  assign new_I178 = ~G80;
  assign new_I181 = ~G73;
  assign new_I184 = ~G81;
  assign new_I187 = ~G74;
  assign new_I190 = ~G82;
  assign new_I193 = ~G75;
  assign new_I196 = ~G68;
  assign new_I199 = ~G76;
  assign new_I202 = ~G69;
  assign new_I205 = ~G77;
  assign new_I208 = ~G78;
  assign new_I211 = ~G79;
  assign new_G352 = ~new_I633;
  assign new_G360 = ~new_I643;
  assign new_G361 = ~new_I646;
  assign new_G362 = ~new_I649;
  assign new_G363 = ~new_I652;
  assign new_G364 = ~new_I655;
  assign new_G367 = ~new_I660;
  assign new_G386 = ~new_I680;
  assign new_G388 = ~new_I684;
  assign new_G389 = ~new_I687;
  assign G91 = ~new_I165;
  assign G94 = ~new_II178;
  assign new_G113 = ~new_I169;
  assign new_G115 = ~new_I172;
  assign new_G117 = ~new_I175;
  assign new_G219 = ~new_I178;
  assign new_G119 = ~new_I181;
  assign new_G221 = ~new_I184;
  assign new_G121 = ~new_I187;
  assign new_G223 = ~new_I190;
  assign new_G209 = ~new_I193;
  assign new_G109 = ~new_I196;
  assign new_G211 = ~new_I199;
  assign new_G111 = ~new_I202;
  assign new_G213 = ~new_I205;
  assign new_G215 = ~new_I208;
  assign new_G217 = ~new_I211;
  assign new_G110 = ~new_G360;
  assign new_G114 = ~new_G360;
  assign new_G118 = ~new_G360;
  assign new_G216 = ~new_G360;
  assign new_G218 = ~new_G360;
  assign new_G220 = ~new_G360;
  assign new_G222 = ~new_G360;
  assign new_G365 = ~new_G364;
  assign new_G368 = ~new_G367;
  assign new_G387 = ~new_G386;
  assign new_G225 = ~new_G388;
  assign new_G390 = ~new_G389;
  assign new_I356 = ~new_G289;
  assign new_I254 = ~new_G324;
  assign new_I257 = ~new_G324;
  assign new_I260 = ~new_G338;
  assign new_I263 = ~new_G338;
  assign new_I266 = ~new_G344;
  assign new_I269 = ~new_G344;
  assign new_I272 = ~new_G312;
  assign new_I275 = ~new_G315;
  assign new_I278 = ~new_G318;
  assign new_I281 = ~new_G321;
  assign new_G143 = ~new_I356;
  assign new_G166 = ~new_I254;
  assign new_G325 = ~new_I257;
  assign new_G194 = ~new_I260;
  assign new_G339 = ~new_I263;
  assign new_G202 = ~new_I266;
  assign new_G345 = ~new_I269;
  assign new_G313 = ~new_I272;
  assign new_G316 = ~new_I275;
  assign new_G319 = ~new_I278;
  assign new_G322 = ~new_I281;
  assign new_I303 = ~new_G143;
  assign new_I299 = ~new_G281;
  assign new_I313 = ~new_G283;
  assign new_I287 = ~new_G166;
  assign new_I291 = ~new_G194;
  assign new_I295 = ~new_G202;
  assign new_G350 = ~new_I303;
  assign new_I301 = ~new_I299;
  assign new_I315 = ~new_I313;
  assign new_G381 = ~new_I287;
  assign G100BF = ~new_G100;
  assign new_G375 = ~new_I291;
  assign G98BF = ~new_G98;
  assign new_G371 = ~new_I295;
  assign G96BF = ~new_G96;
  assign new_G135 = ~new_I301;
  assign new_G137 = ~new_I315;
  assign new_G382 = ~new_G381;
  assign new_G376 = ~new_G375;
  assign new_G372 = ~new_G371;
  assign new_I321 = ~new_G135;
  assign new_I324 = ~new_G137;
  assign new_G329 = ~new_I321;
  assign new_G333 = ~new_I324;
  assign G87BF = ~new_G87;
  assign new_I406 = ~new_G87;
  assign G89BF = ~new_G89;
  assign new_I422 = ~new_G89;
  assign new_G173 = ~new_I406;
  assign new_G183 = ~new_I422;
  assign new_I335 = ~new_G173;
  assign new_I338 = ~new_G183;
  assign new_G174 = ~new_I335;
  assign new_G184 = ~new_I338;
  assign new_I341 = ~new_G174;
  assign new_G359 = ~new_G184;
  assign new_G355 = ~new_I341;
  assign new_G108 = ~new_G359;
  assign new_G356 = ~new_G355;
  assign new_G116 = ~new_G356;
  assign new_I354 = ~new_G293;
  assign new_I357 = ~new_G293;
  assign new_I360 = ~new_G309;
  assign new_I363 = ~new_G309;
  assign new_G146 = ~new_I354;
  assign new_G294 = ~new_I357;
  assign new_G162 = ~new_I360;
  assign new_G310 = ~new_I363;
  assign new_I366 = ~new_G341;
  assign new_I369 = ~new_G341;
  assign new_I372 = ~new_G303;
  assign new_I375 = ~new_G303;
  assign new_I378 = ~new_G146;
  assign new_I382 = ~new_G162;
  assign new_G198 = ~new_I366;
  assign new_G342 = ~new_I369;
  assign new_G154 = ~new_I372;
  assign new_G304 = ~new_I375;
  assign new_G383 = ~new_I378;
  assign G101BF = ~new_G101;
  assign new_G396 = ~new_I382;
  assign G106BF = ~new_G106;
  assign new_I386 = ~new_G198;
  assign new_I390 = ~new_G154;
  assign new_G384 = ~new_G383;
  assign new_G397 = ~new_G396;
  assign new_G373 = ~new_I386;
  assign G97BF = ~new_G97;
  assign new_G392 = ~new_I390;
  assign G104BF = ~new_G104;
  assign new_II476 = ~new_G384;
  assign new_I279 = ~new_G278;
  assign new_G374 = ~new_G373;
  assign new_G393 = ~new_G392;
  assign new_G224 = ~new_II476;
  assign n219 = ~new_I279;
  assign new_I306 = ~new_G282;
  assign new_I373 = ~new_G237;
  assign new_G286 = ~new_I373;
  assign new_II208 = ~new_G224;
  assign new_I308 = ~new_I306;
  assign new_I334 = ~new_G286;
  assign new_I327 = ~new_G285;
  assign new_I210 = ~new_II208;
  assign new_G136 = ~new_I308;
  assign new_I336 = ~new_I334;
  assign new_I329 = ~new_I327;
  assign n150 = ~new_I210;
  assign new_I442 = ~new_G136;
  assign n169 = ~new_I336;
  assign n164 = ~new_I329;
  assign new_G331 = ~new_I442;
  assign G88BF = ~new_G88;
  assign new_I414 = ~new_G88;
  assign new_G178 = ~new_I414;
  assign new_I449 = ~new_G178;
  assign new_G179 = ~new_I449;
  assign new_I452 = ~new_G179;
  assign new_G357 = ~new_I452;
  assign new_G358 = ~new_G357;
  assign new_G112 = ~new_G358;
  assign new_I460 = ~new_G335;
  assign new_I463 = ~new_G335;
  assign new_I466 = ~new_G306;
  assign new_I469 = ~new_G306;
  assign new_G190 = ~new_I460;
  assign new_G336 = ~new_I463;
  assign new_G158 = ~new_I466;
  assign new_G307 = ~new_I469;
  assign new_I472 = ~new_G190;
  assign new_I476 = ~new_G158;
  assign new_G395 = ~new_G158;
  assign new_G377 = ~new_I472;
  assign G99BF = ~new_G99;
  assign n140 = ~new_I476;
  assign new_II272 = ~new_G277;
  assign G105BF = ~new_G105;
  assign new_G378 = ~new_G377;
  assign n214 = ~new_II272;
  assign new_I265 = ~new_G276;
  assign new_I292 = ~new_G280;
  assign n209 = ~new_I265;
  assign new_I440 = ~new_G235;
  assign new_G284 = ~new_I440;
  assign new_I294 = ~new_I292;
  assign new_I320 = ~new_G284;
  assign new_I285 = ~new_G279;
  assign new_G134 = ~new_I294;
  assign new_I322 = ~new_I320;
  assign new_II287 = ~new_I285;
  assign new_I517 = ~new_G134;
  assign G138 = ~new_I322;
  assign n155 = ~new_II287;
  assign new_G327 = ~new_I517;
  assign G86BF = ~new_G86;
  assign new_I398 = ~new_G86;
  assign new_G168 = ~new_I398;
  assign new_I524 = ~new_G168;
  assign new_G169 = ~new_I524;
  assign new_I527 = ~new_G169;
  assign new_G353 = ~new_I527;
  assign new_G354 = ~new_G353;
  assign new_G120 = ~new_G354;
  assign new_I535 = ~new_G347;
  assign new_I538 = ~new_G347;
  assign new_I541 = ~new_G300;
  assign new_I544 = ~new_G300;
  assign new_G206 = ~new_I535;
  assign new_G348 = ~new_I538;
  assign new_G150 = ~new_I541;
  assign new_G301 = ~new_I544;
  assign new_I547 = ~new_G206;
  assign new_I551 = ~new_G150;
  assign new_G391 = ~new_G150;
  assign new_G369 = ~new_I547;
  assign G95BF = ~new_G95;
  assign new_G380 = ~new_I551;
  assign G103BF = ~new_G103;
  assign new_G370 = ~new_G369;
  assign new_I258 = ~new_G275;
  assign n204 = ~new_I258;
  assign new_I230 = ~new_G271;
  assign new_I511 = ~new_G239;
  assign new_G288 = ~new_I511;
  assign new_I237 = ~new_G272;
  assign new_I244 = ~new_G273;
  assign new_I251 = ~new_G274;
  assign n184 = ~new_I230;
  assign new_I348 = ~new_G288;
  assign new_II341 = ~new_G287;
  assign n189 = ~new_I237;
  assign n194 = ~new_I244;
  assign n199 = ~new_I251;
  assign new_I222 = ~new_G270;
  assign new_I350 = ~new_I348;
  assign new_I343 = ~new_II341;
  assign new_I224 = ~new_I222;
  assign n179 = ~new_I350;
  assign n174 = ~new_I343;
  assign new_G124 = ~new_I224;
  assign new_I608 = ~new_G124;
  assign new_G298 = ~new_I608;
  assign new_G289 = new_G389 & new_G386 & new_G388;
  assign new_G324 = new_G110 & new_G111;
  assign new_G338 = new_G114 & new_G115;
  assign new_G344 = new_G118 & new_G119;
  assign new_G312 = new_G216 & new_G217;
  assign new_G315 = new_G218 & new_G219;
  assign new_G318 = new_G220 & new_G221;
  assign new_G321 = new_G222 & new_G223;
  assign new_G231 = new_G379 & new_G387;
  assign new_G232 = new_G379 & new_G387;
  assign new_G233 = new_G379 & new_G387;
  assign new_G234 = new_G379 & new_G387;
  assign new_G247 = new_G390 & new_G368 & new_G379 & new_G365;
  assign new_G248 = new_G390 & new_G367 & new_G379 & new_G365;
  assign new_G263 = new_G390 & new_G368 & new_G379 & new_G364;
  assign new_G264 = new_G390 & new_G367 & new_G379 & new_G364;
  assign new_G100 = new_G325 & G35;
  assign new_G98 = new_G339 & G33;
  assign new_G96 = new_G345 & G31;
  assign G107 = new_G313 & G18;
  assign G83 = new_G316 & G19;
  assign G84 = new_G319 & G20;
  assign G85 = new_G322 & G21;
  assign G92 = new_G350 & G28;
  assign new_G87 = new_G329 & G23;
  assign new_G89 = new_G333 & G25;
  assign new_G293 = new_G108 & new_G109;
  assign new_G309 = new_G214 & new_G215;
  assign new_G341 = new_G116 & new_G117;
  assign new_G303 = new_G210 & new_G211;
  assign new_G101 = new_G294 & G36;
  assign new_G106 = new_G310 & G17;
  assign new_G97 = new_G342 & G32;
  assign new_G104 = new_G304 & G15;
  assign new_G266 = new_G390 & new_G383 & new_G364 & new_G367;
  assign new_G229 = new_G366 & new_G396;
  assign new_G245 = new_G352 & new_G396;
  assign n145 = new_G366 & new_G396;
  assign new_G278 = new_G366 & new_G396;
  assign new_G249 = new_G397 & new_G366 & G66;
  assign new_I533 = new_G373 & new_G365 & new_G367;
  assign new_G227 = new_G366 & new_G392;
  assign new_G243 = new_G392 & new_G361;
  assign new_G265 = new_I533 & new_G375 & new_G390;
  assign new_G236 = new_G374 & new_G376;
  assign new_G237 = new_G374 & new_G375;
  assign new_G252 = new_G355 & new_G374;
  assign new_II527 = new_G393 & new_G366 & G64;
  assign new_G88 = new_G331 & G24;
  assign new_G335 = new_G112 & new_G113;
  assign new_G306 = new_G212 & new_G213;
  assign new_G99 = new_G336 & G34;
  assign new_G228 = new_G366 & new_G158;
  assign new_G244 = new_G158 & new_G362;
  assign new_G277 = new_G397 & new_G366 & new_G158;
  assign new_G105 = new_G307 & G16;
  assign new_I515 = new_G397 & new_G393 & new_G395;
  assign new_G261 = new_II527 & new_G395 & new_G397;
  assign n135 = new_G397 & new_G395 & new_G366 & new_G392;
  assign new_G276 = new_G397 & new_G395 & new_G366 & new_G392;
  assign new_I512 = new_G377 & new_G364 & new_G368;
  assign new_II538 = new_G387 & new_G383 & new_G377 & new_G381;
  assign new_G256 = new_I512 & new_G381 & new_G390;
  assign new_G230 = new_G378 & new_G382;
  assign new_G235 = new_G378 & new_G381;
  assign new_G246 = new_G357 & new_G378;
  assign new_G86 = new_G327 & G22;
  assign new_G347 = new_G120 & new_G121;
  assign new_G300 = new_G208 & new_G209;
  assign new_G95 = new_G348 & G30;
  assign new_G226 = new_G366 & new_G150;
  assign new_G242 = new_G150 & new_G363;
  assign new_I553 = new_G393 & new_G366 & new_G150;
  assign new_G103 = new_G301 & G14;
  assign new_G275 = new_I553 & new_G395 & new_G397;
  assign new_I518 = new_G397 & new_G391 & new_G395;
  assign new_I521 = new_G397 & new_G391 & new_G393;
  assign new_II524 = new_G393 & new_G352 & new_G391;
  assign new_I495 = new_G369 & new_G365 & new_G368;
  assign new_G257 = new_I515 & new_G371 & new_G363 & new_G369;
  assign new_I537 = new_G375 & new_G373 & new_G369 & new_G371;
  assign new_G258 = new_I518 & new_G375 & new_G361 & new_G373;
  assign new_G259 = new_I521 & new_G381 & new_G362 & new_G377;
  assign new_G260 = new_II524 & new_G395 & new_G383;
  assign new_G241 = new_I495 & new_G371 & new_G390;
  assign new_G267 = new_I537 & new_II538;
  assign new_G238 = new_G370 & new_G372;
  assign new_G239 = new_G370 & new_G371;
  assign new_G254 = new_G353 & new_G370;
  assign G90 = new_G298 & G26;
  assign new_G281 = G65 | new_G232 | new_G248;
  assign new_G283 = new_G264 | new_G234 | G67;
  assign new_G282 = new_G263 | new_G233 | new_G249;
  assign new_G285 = new_G236 | new_G252;
  assign new_G280 = new_G261 | new_G231 | new_G247;
  assign new_G279 = new_G230 | new_G246;
  assign new_G271 = new_G257 | new_G226 | new_G242;
  assign new_G272 = new_G258 | new_G227 | new_G243;
  assign new_G273 = new_G259 | new_G228 | new_G244;
  assign new_G274 = new_G260 | new_G229 | new_G245;
  assign new_I546 = new_G256 | new_G225 | new_G241;
  assign new_G287 = new_G238 | new_G254;
  assign new_G270 = new_I546 | new_G267 | new_G265 | new_G266;
  assign new_G214 = ~new_G379 | ~new_G359;
  assign new_G210 = ~new_G379 | ~new_G356;
  assign new_G212 = ~new_G379 | ~new_G358;
  assign new_G208 = ~new_G379 | ~new_G354;
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
  assign n1007 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n1004 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n1001 = new_and_17 | new_and_19;
  assign n998 = ~Q_0;
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
  assign new_y_mux_key0_and_0 = n140 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key0_and_1 = new_G380 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n140 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_G380 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n140 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_G380 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n140 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_G380 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n140 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key4_and_1 = new_G380 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n140 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key5_and_1 = new_G380 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n140 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key6_and_1 = new_G380 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n140 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key7_and_1 = new_G380 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n140 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key8_and_1 = new_G380 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n140 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key9_and_1 = new_G380 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n140 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key10_and_1 = new_G380 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n140 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11_and_1 = new_G380 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n140 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key12_and_1 = new_G380 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n140 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13_and_1 = new_G380 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n140 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key14_and_1 = new_G380 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n140 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key15_and_1 = new_G380 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n130 = new_and_mux__state_29 | new_and_mux__state_29_2;
  assign n159 = G138;
  always @ (posedge clock) begin
    G64 <= n130;
    G65 <= n135;
    G66 <= n140;
    G67 <= n145;
    G68 <= n150;
    G69 <= n155;
    G70 <= n159;
    G71 <= n164;
    G72 <= n169;
    G73 <= n174;
    G74 <= n179;
    G75 <= n184;
    G76 <= n189;
    G77 <= n194;
    G78 <= n199;
    G79 <= n204;
    G80 <= n209;
    G81 <= n214;
    G82 <= n219;
    Q_0 <= n998;
    Q_1 <= n1001;
    Q_2 <= n1004;
    Q_3 <= n1007;
  end
endmodule


