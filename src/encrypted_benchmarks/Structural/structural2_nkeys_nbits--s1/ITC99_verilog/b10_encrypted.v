// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/ITC99/b10_encrypted" written by ABC on Fri Sep 27 18:34:20 2024

module b10_encrypted  ( clock, 
    R_BUTTON, G_BUTTON, KEY, START, TEST, RTS, RTR, V_IN_3_, V_IN_2_,
    V_IN_1_, V_IN_0_, keyinput0, keyinput1, keyinput2, keyinput3,
    keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9,
    keyinput10,
    CTS_REG, CTR_REG, V_OUT_REG_3_, V_OUT_REG_2_, V_OUT_REG_1_,
    V_OUT_REG_0_  );
  input  clock;
  input  R_BUTTON, G_BUTTON, KEY, START, TEST, RTS, RTR, V_IN_3_,
    V_IN_2_, V_IN_1_, V_IN_0_, keyinput0, keyinput1, keyinput2, keyinput3,
    keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9,
    keyinput10;
  output CTS_REG, CTR_REG, V_OUT_REG_3_, V_OUT_REG_2_, V_OUT_REG_1_,
    V_OUT_REG_0_;
  reg VOTO0_REG, STATO_REG_3_, STATO_REG_2_, STATO_REG_1_, STATO_REG_0_,
    V_OUT_REG_3_, V_OUT_REG_2_, V_OUT_REG_1_, V_OUT_REG_0_, SIGN_REG_3_,
    VOTO1_REG, CTR_REG, VOTO3_REG, LAST_R_REG, CTS_REG, VOTO2_REG,
    LAST_G_REG, Q_0, Q_1, Q_2;
  wire new_U200, new_U201, new_U202, new_U203, new_U204, new_U205, new_U206,
    new_U213, new_U214, new_U215, new_U216, new_U217, new_U218, new_U219,
    new_U220, new_U221, new_U222, new_U223, new_U224, new_U225, new_U226,
    new_U227, new_U228, new_U229, new_U230, new_U231, new_U232, new_U243,
    new_U244, new_U245, new_U246, new_U247, new_U248, new_U249, new_U250,
    new_U251, new_U252, new_U253, new_U254, new_U255, new_U256, new_U257,
    new_U258, new_U259, new_U260, new_U261, new_U262, new_U263, new_U264,
    new_U265, new_U266, new_U267, new_U268, new_U269, new_U270, new_U271,
    new_U272, new_U273, new_U274, new_U275, new_U276, new_U277, new_U278,
    new_U279, new_U280, new_U281, new_U282, new_U283, new_U284, new_U285,
    new_U286, new_U287, new_U288, new_U289, new_U290, new_U291, new_U292,
    new_U293, new_U294, new_U295, new_U296, new_U297, new_U298, new_U299,
    new_U300, new_U301, new_U302, new_U303, new_U304, new_U305, new_U306,
    new_U307, new_U308, new_U309, new_U310, new_U311, new_U312, new_U313,
    new_U314, new_U315, new_U316, new_U317, new_U318, new_U319, new_U320,
    new_U321, new_U322, new_U323, new_U324, new_U325, new_U326, new_U327,
    new_U328, new_U329, new_U330, new_U331, new_U332, new_U333, new_U334,
    new_U335, new_U336, new_U337, new_U338, new_U339, new_U340, new_U341,
    new_U342, new_U343, new_U344, new_U345, new_U346, new_U347, new_U348,
    new_U349, new_U350, new_U351, new_U352, new_U353, new_U354, new_U355,
    new_U356, new_U357, new_U358, new_U359, new_U360, new_U361, new_U362,
    new_U363, new_U364, new_U365, new_U366, new_U367, new_U368, new_U369,
    new_U370, new_U371, new_not_keyinput0, new_not_keyinput1,
    new_not_keyinput2, new_not_keyinput3, new_not_keyinput4,
    new_not_keyinput5, new_not_keyinput6, new_not_keyinput7,
    new_not_keyinput8, new_not_keyinput9, new_not_keyinput10, new_not_0,
    new_and_1, new_not_2, new_and_3, new_not_4, new_and_5, new_not_7,
    new_and_8, new_not_9, new_and_10, new_not_Q_0, new_not_Q_1,
    new_not_Q_2, new_count_state_1, new_count_state_2, new_count_state_3,
    new_count_state_4, new_count_state_5, new_count_state_6,
    new_count_state_7, new_y_mux_key0_and_0, new_y_mux_key0_and_1,
    new_y_mux_key0_and_2, new_y_mux_key0_and_3, new_y_mux_key0_and_4,
    new_y_mux_key0, new_y_mux_key1_and_0, new_y_mux_key1_and_1,
    new_y_mux_key1_and_2, new_y_mux_key1_and_3, new_y_mux_key1_and_4,
    new_y_mux_key1, new_y_mux_key2_and_0, new_y_mux_key2_and_1,
    new_y_mux_key2_and_2, new_y_mux_key2_and_3, new_y_mux_key2_and_4,
    new_y_mux_key2, new_y_mux_key3_and_0, new_y_mux_key3_and_1,
    new_y_mux_key3_and_2, new_y_mux_key3_and_3, new_y_mux_key3_and_4,
    new_y_mux_key3, new_y_mux_key4_and_0, new_y_mux_key4_and_1,
    new_y_mux_key4_and_2, new_y_mux_key4_and_3, new_y_mux_key4_and_4,
    new_y_mux_key4, new_y_mux_key5_and_0, new_y_mux_key5_and_1,
    new_y_mux_key5_and_2, new_y_mux_key5_and_3, new_y_mux_key5_and_4,
    new_y_mux_key5, new_y_mux_key6_and_0, new_y_mux_key6_and_1,
    new_y_mux_key6_and_2, new_y_mux_key6_and_3, new_y_mux_key6_and_4,
    new_y_mux_key6, new_y_mux_key7_and_0, new_y_mux_key7_and_1,
    new_y_mux_key7_and_2, new_y_mux_key7_and_3, new_y_mux_key7_and_4,
    new_y_mux_key7, new__state_1, new__state_2, new__state_3, new__state_4,
    new__state_5, new__state_6, new__state_7, new__state_9, new__state_10,
    new__state_11, new__state_13, new_s__state_1, new_not_s__state_1,
    new_I0__state_1, new_I1__state_1, new_and_mux__state_1,
    new_and_mux__state_1_2, new_y_mux_8, new_s__state_3,
    new_not_s__state_3, new_I0__state_3, new_I1__state_3,
    new_and_mux__state_3, new_and_mux__state_3_2, new_y_mux_9,
    new_s__state_5, new_not_s__state_5, new_I0__state_5, new_I1__state_5,
    new_and_mux__state_5, new_and_mux__state_5_2, new_y_mux_10,
    new_s__state_7, new_not_s__state_7, new_I0__state_7, new_I1__state_7,
    new_and_mux__state_7, new_and_mux__state_7_2, new_y_mux_11,
    new_s__state_9, new_not_s__state_9, new_I0__state_9, new_I1__state_9,
    new_and_mux__state_9, new_and_mux__state_9_2, new_y_mux_12,
    new_s__state_11, new_not_s__state_11, new_I0__state_11,
    new_I1__state_11, new_and_mux__state_11, new_and_mux__state_11_2,
    new_y_mux_13, new_s__state_13, new_not_s__state_13, new_I0__state_13,
    new_I1__state_13, new_and_mux__state_13, new_and_mux__state_13_2, n58,
    n63, n68, n73, n78, n83, n87, n91, n95, n99, n104, n109, n113, n118,
    n123, n127, n132, n515, n518, n521;
  assign new_U200 = ~STATO_REG_3_ & ~STATO_REG_2_;
  assign new_U201 = STATO_REG_2_ & new_U213;
  assign new_U202 = START & new_U258;
  assign new_U203 = new_U269 & new_U268;
  assign new_U204 = new_U203 & new_U261;
  assign new_U205 = new_U204 & new_U291;
  assign new_U206 = new_U231 & new_U299;
  assign n123 = ~new_U317 | ~new_U316 | ~new_U315 | ~new_U246;
  assign n109 = ~new_U260 | ~new_U301;
  assign n99 = ~new_U290 | ~new_U289;
  assign n73 = ~new_U340 | ~new_U341 | ~new_U332 | ~new_U218;
  assign n68 = ~new_U284 | ~new_U283 | ~new_U218;
  assign n63 = ~new_U280 | ~new_U279;
  assign new_U213 = ~STATO_REG_0_;
  assign new_U214 = ~STATO_REG_0_ | ~new_U217;
  assign new_U215 = ~STATO_REG_2_;
  assign new_U216 = ~RTR;
  assign new_U217 = ~STATO_REG_1_;
  assign new_U218 = ~STATO_REG_1_ | ~new_U201;
  assign new_U219 = ~RTS;
  assign new_U220 = ~new_U200 | ~new_U213;
  assign new_U221 = ~STATO_REG_3_;
  assign new_U222 = ~START;
  assign new_U223 = ~START | ~new_U200;
  assign new_U224 = ~STATO_REG_1_ | ~STATO_REG_0_;
  assign new_U225 = ~STATO_REG_1_ | ~new_U221;
  assign new_U226 = ~VOTO1_REG;
  assign new_U227 = ~VOTO2_REG;
  assign new_U228 = ~new_U248 | ~new_U247 | ~VOTO2_REG | ~VOTO1_REG;
  assign new_U229 = ~new_U203 | ~new_U244 | ~new_U272 | ~new_U246 | ~new_U260;
  assign new_U230 = ~SIGN_REG_3_;
  assign new_U231 = ~STATO_REG_1_ | ~new_U215;
  assign new_U232 = ~KEY;
  assign n78 = ~new_U343 | ~new_U342;
  assign n83 = ~new_U345 | ~new_U344;
  assign n87 = ~new_U347 | ~new_U346;
  assign n91 = ~new_U349 | ~new_U348;
  assign n95 = ~new_U351 | ~new_U350;
  assign n104 = ~new_U353 | ~new_U352;
  assign n113 = ~new_U363 | ~new_U362;
  assign n118 = ~new_U365 | ~new_U364;
  assign n127 = ~new_U367 | ~new_U366;
  assign n132 = ~new_U369 | ~new_U368;
  assign new_U243 = ~new_U371 | ~new_U370;
  assign new_U244 = new_U273 & new_U336 & new_U335;
  assign new_U245 = ~new_U357 | ~new_U356;
  assign new_U246 = ~new_U201 | ~RTR | ~new_U217;
  assign new_U247 = ~VOTO3_REG;
  assign new_U248 = ~VOTO0_REG;
  assign new_U249 = ~new_U205 | ~new_U292 | ~new_U263;
  assign new_U250 = ~new_U205 | ~new_U304;
  assign new_U251 = ~LAST_R_REG;
  assign new_U252 = ~new_U202 | ~KEY | ~STATO_REG_1_;
  assign new_U253 = ~new_U205 | ~new_U318 | ~new_U263;
  assign new_U254 = ~LAST_G_REG;
  assign new_U255 = ~new_U204 | ~new_U323 | ~new_U223;
  assign new_U256 = ~new_U228;
  assign new_U257 = ~TEST;
  assign new_U258 = ~new_U220;
  assign new_U259 = ~new_U218;
  assign new_U260 = ~new_U264 | ~STATO_REG_2_ | ~new_U219;
  assign new_U261 = ~new_U264 | ~STATO_REG_3_ | ~new_U215;
  assign new_U262 = ~new_U223;
  assign new_U263 = ~new_U202 | ~new_U232;
  assign new_U264 = ~new_U214;
  assign new_U265 = ~new_U231;
  assign new_U266 = ~new_U224;
  assign new_U267 = ~new_U246;
  assign new_U268 = ~RTS | ~new_U259;
  assign new_U269 = ~new_U258 | ~new_U217;
  assign new_U270 = RTR | STATO_REG_1_;
  assign new_U271 = ~new_U225;
  assign new_U272 = ~STATO_REG_3_ | ~new_U334 | ~new_U333;
  assign new_U273 = ~new_U262 | ~STATO_REG_0_;
  assign new_U274 = ~new_U229;
  assign new_U275 = ~new_U256 | ~new_U201;
  assign new_U276 = ~new_U258 | ~new_U257;
  assign new_U277 = ~new_U276 | ~new_U275;
  assign new_U278 = ~new_U213 | ~new_U229;
  assign new_U279 = ~new_U229 | ~new_U277 | ~new_U217;
  assign new_U280 = ~STATO_REG_3_ | ~new_U278;
  assign new_U281 = ~new_U213 | ~new_U228;
  assign new_U282 = ~new_U229 | ~new_U281 | ~new_U214;
  assign new_U283 = ~STATO_REG_1_ | ~new_U339;
  assign new_U284 = ~STATO_REG_2_ | ~new_U282;
  assign new_U285 = ~new_U256 | ~new_U221;
  assign new_U286 = ~new_U285 | ~new_U213 | ~new_U217;
  assign new_U287 = ~new_U286 | ~new_U218 | ~new_U220;
  assign new_U288 = ~new_U258 | ~new_U257 | ~new_U217;
  assign new_U289 = ~SIGN_REG_3_ | ~new_U288;
  assign new_U290 = ~STATO_REG_3_ | ~STATO_REG_0_;
  assign new_U291 = ~new_U264 | ~START | ~new_U215;
  assign new_U292 = ~new_U202 | ~G_BUTTON | ~new_U254;
  assign new_U293 = ~new_U249;
  assign new_U294 = ~new_U259 | ~new_U221;
  assign new_U295 = ~new_U261 | ~new_U294;
  assign new_U296 = ~new_U265 | ~KEY | ~new_U226;
  assign new_U297 = ~V_IN_1_ | ~new_U295;
  assign new_U298 = ~new_U297 | ~new_U296;
  assign new_U299 = ~STATO_REG_2_ | ~new_U217;
  assign new_U300 = ~new_U206 | ~new_U213 | ~new_U355 | ~new_U354;
  assign new_U301 = ~CTR_REG | ~new_U300;
  assign new_U302 = ~START | ~new_U232;
  assign new_U303 = ~new_U224 | ~new_U302;
  assign new_U304 = ~new_U200 | ~new_U303;
  assign new_U305 = ~new_U250;
  assign new_U306 = ~new_U266 | ~new_U361;
  assign new_U307 = ~V_IN_3_ | ~new_U295;
  assign new_U308 = ~new_U307 | ~new_U306;
  assign new_U309 = ~new_U252;
  assign new_U310 = STATO_REG_0_ | STATO_REG_3_;
  assign new_U311 = ~RTR | ~new_U310;
  assign new_U312 = ~STATO_REG_3_ | ~new_U264;
  assign new_U313 = ~STATO_REG_1_ | ~new_U213;
  assign new_U314 = ~new_U311 | ~new_U312 | ~new_U206 | ~new_U313;
  assign new_U315 = ~new_U201 | ~STATO_REG_3_ | ~new_U217;
  assign new_U316 = ~new_U264 | ~RTR | ~new_U200;
  assign new_U317 = ~CTS_REG | ~new_U314;
  assign new_U318 = ~new_U202 | ~R_BUTTON | ~new_U251;
  assign new_U319 = ~new_U253;
  assign new_U320 = ~new_U265 | ~KEY | ~new_U227;
  assign new_U321 = ~V_IN_2_ | ~new_U295;
  assign new_U322 = ~new_U321 | ~new_U320;
  assign new_U323 = ~new_U265 | ~new_U339;
  assign new_U324 = ~new_U255;
  assign new_U325 = ~KEY | ~new_U258;
  assign new_U326 = ~STATO_REG_3_ | ~new_U230;
  assign new_U327 = ~new_U326 | ~new_U325;
  assign new_U328 = ~STATO_REG_1_ | ~new_U327;
  assign new_U329 = ~V_IN_0_ | ~new_U295;
  assign new_U330 = ~new_U329 | ~new_U328;
  assign new_U331 = ~V_IN_1_ | ~V_IN_0_ | ~V_IN_3_ | ~V_IN_2_;
  assign new_U332 = ~new_U274 | ~STATO_REG_1_;
  assign new_U333 = ~STATO_REG_0_ | ~new_U331;
  assign new_U334 = ~new_U213 | ~new_U270 | ~new_U231;
  assign new_U335 = ~new_U215 | ~new_U271 | ~new_U222;
  assign new_U336 = ~STATO_REG_2_ | ~new_U266 | ~new_U216;
  assign new_U337 = ~STATO_REG_3_ | ~new_U213;
  assign new_U338 = ~STATO_REG_0_ | ~new_U221;
  assign new_U339 = ~new_U338 | ~new_U337;
  assign new_U340 = ~new_U225 | ~STATO_REG_0_ | ~new_U229;
  assign new_U341 = ~new_U271 | ~new_U213;
  assign new_U342 = ~new_U274 | ~STATO_REG_0_;
  assign new_U343 = ~new_U287 | ~new_U229;
  assign new_U344 = ~V_OUT_REG_3_ | ~new_U246;
  assign new_U345 = ~VOTO3_REG | ~new_U267;
  assign new_U346 = ~V_OUT_REG_2_ | ~new_U246;
  assign new_U347 = ~new_U267 | ~VOTO2_REG;
  assign new_U348 = ~V_OUT_REG_1_ | ~new_U246;
  assign new_U349 = ~new_U267 | ~VOTO1_REG;
  assign new_U350 = ~V_OUT_REG_0_ | ~new_U246;
  assign new_U351 = ~VOTO0_REG | ~new_U267;
  assign new_U352 = ~new_U293 | ~VOTO1_REG;
  assign new_U353 = ~new_U298 | ~new_U249;
  assign new_U354 = ~STATO_REG_3_ | ~new_U217;
  assign new_U355 = ~STATO_REG_1_ | ~new_U219;
  assign new_U356 = ~VOTO2_REG | ~new_U248;
  assign new_U357 = ~VOTO0_REG | ~new_U227;
  assign new_U358 = ~new_U245;
  assign new_U359 = ~new_U358 | ~VOTO1_REG;
  assign new_U360 = ~new_U245 | ~new_U226;
  assign new_U361 = ~new_U360 | ~new_U359;
  assign new_U362 = ~new_U305 | ~VOTO3_REG;
  assign new_U363 = ~new_U308 | ~new_U250;
  assign new_U364 = ~LAST_R_REG | ~new_U252;
  assign new_U365 = ~new_U309 | ~R_BUTTON;
  assign new_U366 = ~new_U319 | ~VOTO2_REG;
  assign new_U367 = ~new_U322 | ~new_U253;
  assign new_U368 = ~LAST_G_REG | ~new_U252;
  assign new_U369 = ~new_U309 | ~G_BUTTON;
  assign new_U370 = ~new_U324 | ~VOTO0_REG;
  assign new_U371 = ~new_U330 | ~new_U255;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_keyinput3 = ~keyinput3;
  assign new_not_keyinput4 = ~keyinput4;
  assign new_not_keyinput5 = ~keyinput5;
  assign new_not_keyinput6 = ~keyinput6;
  assign new_not_keyinput7 = ~keyinput7;
  assign new_not_keyinput8 = ~keyinput8;
  assign new_not_keyinput9 = ~keyinput9;
  assign new_not_keyinput10 = ~keyinput10;
  assign new_not_0 = ~Q_2;
  assign new_and_1 = new_not_0 & Q_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = new_not_2 & Q_2;
  assign new_not_4 = ~Q_0;
  assign new_and_5 = new_not_4 & Q_2;
  assign n521 = new_and_5 | new_and_1 | new_and_3;
  assign new_not_7 = ~Q_1;
  assign new_and_8 = Q_0 & new_not_7;
  assign new_not_9 = ~Q_0;
  assign new_and_10 = new_not_9 & Q_1;
  assign n518 = new_and_8 | new_and_10;
  assign n515 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_not_Q_2 = ~Q_2;
  assign new_count_state_1 = Q_0 & new_not_Q_2 & new_not_Q_1;
  assign new_count_state_2 = new_not_Q_0 & new_not_Q_2 & Q_1;
  assign new_count_state_3 = Q_0 & new_not_Q_2 & Q_1;
  assign new_count_state_4 = new_not_Q_0 & Q_2 & new_not_Q_1;
  assign new_count_state_5 = Q_0 & Q_2 & new_not_Q_1;
  assign new_count_state_6 = new_not_Q_0 & Q_2 & Q_1;
  assign new_count_state_7 = Q_0 & Q_2 & Q_1;
  assign new_y_mux_key0_and_0 = n68 & new_not_keyinput10 & keyinput9 & new_not_keyinput8 & new_not_keyinput7 & keyinput6 & keyinput5 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key0_and_1 = n73 & new_not_keyinput10 & keyinput9 & new_not_keyinput8 & new_not_keyinput7 & new_not_keyinput6 & new_not_keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_2 = n78 & new_not_keyinput10 & keyinput9 & keyinput8 & new_not_keyinput7 & keyinput6 & keyinput5 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_3 = n83 & keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & keyinput5 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_4 = new_U243 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & new_not_keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_4 | new_y_mux_key0_and_3 | new_y_mux_key0_and_2 | new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n68 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & new_not_keyinput6 & keyinput5 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = n73 & keyinput10 & new_not_keyinput9 & keyinput8 & new_not_keyinput7 & keyinput6 & new_not_keyinput5 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_2 = n78 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & new_not_keyinput5 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_3 = n83 & new_not_keyinput10 & new_not_keyinput9 & keyinput8 & new_not_keyinput7 & keyinput6 & keyinput5 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_4 = new_U243 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & keyinput5 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_4 | new_y_mux_key1_and_3 | new_y_mux_key1_and_2 | new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n68 & new_not_keyinput10 & keyinput9 & keyinput8 & new_not_keyinput7 & new_not_keyinput6 & keyinput5 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = n73 & new_not_keyinput10 & keyinput9 & keyinput8 & new_not_keyinput7 & keyinput6 & keyinput5 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_2 = n78 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & new_not_keyinput5 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_3 = n83 & new_not_keyinput10 & keyinput9 & keyinput8 & new_not_keyinput7 & new_not_keyinput6 & keyinput5 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_4 = new_U243 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_4 | new_y_mux_key2_and_3 | new_y_mux_key2_and_2 | new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n68 & keyinput10 & new_not_keyinput9 & keyinput8 & keyinput7 & keyinput6 & new_not_keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3_and_1 = n73 & new_not_keyinput10 & new_not_keyinput9 & keyinput8 & new_not_keyinput7 & new_not_keyinput6 & keyinput5 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_2 = n78 & keyinput10 & new_not_keyinput9 & keyinput8 & new_not_keyinput7 & new_not_keyinput6 & new_not_keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3_and_3 = n83 & keyinput10 & keyinput9 & keyinput8 & new_not_keyinput7 & new_not_keyinput6 & new_not_keyinput5 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3_and_4 = new_U243 & new_not_keyinput10 & keyinput9 & keyinput8 & keyinput7 & keyinput6 & new_not_keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_4 | new_y_mux_key3_and_3 | new_y_mux_key3_and_2 | new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n68 & new_not_keyinput10 & keyinput9 & new_not_keyinput8 & new_not_keyinput7 & new_not_keyinput6 & new_not_keyinput5 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4_and_1 = n73 & keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & new_not_keyinput6 & new_not_keyinput5 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key4_and_2 = n78 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & new_not_keyinput7 & new_not_keyinput6 & keyinput5 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key4_and_3 = n83 & new_not_keyinput10 & new_not_keyinput9 & keyinput8 & new_not_keyinput7 & keyinput6 & keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4_and_4 = new_U243 & new_not_keyinput10 & new_not_keyinput9 & keyinput8 & keyinput7 & keyinput6 & keyinput5 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_4 | new_y_mux_key4_and_3 | new_y_mux_key4_and_2 | new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n68 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & new_not_keyinput7 & keyinput6 & keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5_and_1 = n73 & keyinput10 & keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & new_not_keyinput5 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5_and_2 = n78 & new_not_keyinput10 & keyinput9 & new_not_keyinput8 & new_not_keyinput7 & new_not_keyinput6 & new_not_keyinput5 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5_and_3 = n83 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & new_not_keyinput7 & keyinput6 & keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5_and_4 = new_U243 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & keyinput5 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_4 | new_y_mux_key5_and_3 | new_y_mux_key5_and_2 | new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n68 & keyinput10 & keyinput9 & keyinput8 & new_not_keyinput7 & new_not_keyinput6 & new_not_keyinput5 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6_and_1 = n73 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & new_not_keyinput6 & keyinput5 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key6_and_2 = n78 & new_not_keyinput10 & keyinput9 & keyinput8 & new_not_keyinput7 & keyinput6 & keyinput5 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6_and_3 = n83 & new_not_keyinput10 & keyinput9 & new_not_keyinput8 & keyinput7 & new_not_keyinput6 & keyinput5 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key6_and_4 = new_U243 & keyinput10 & keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & keyinput5 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_4 | new_y_mux_key6_and_3 | new_y_mux_key6_and_2 | new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n68 & keyinput10 & new_not_keyinput9 & new_not_keyinput8 & new_not_keyinput7 & new_not_keyinput6 & new_not_keyinput5 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key7_and_1 = n73 & new_not_keyinput10 & new_not_keyinput9 & new_not_keyinput8 & keyinput7 & keyinput6 & keyinput5 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key7_and_2 = n78 & keyinput10 & keyinput9 & new_not_keyinput8 & keyinput7 & new_not_keyinput6 & keyinput5 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key7_and_3 = n83 & keyinput10 & keyinput9 & new_not_keyinput8 & keyinput7 & new_not_keyinput6 & new_not_keyinput5 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key7_and_4 = new_U243 & keyinput10 & keyinput9 & new_not_keyinput8 & new_not_keyinput7 & keyinput6 & new_not_keyinput5 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_4 | new_y_mux_key7_and_3 | new_y_mux_key7_and_2 | new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new__state_1 = new_count_state_1;
  assign new__state_2 = new_count_state_2;
  assign new__state_3 = new_count_state_3;
  assign new__state_4 = new_count_state_4;
  assign new__state_5 = new_count_state_5;
  assign new__state_6 = new_count_state_6;
  assign new__state_7 = new_count_state_7;
  assign new__state_9 = new__state_2 | new__state_3;
  assign new__state_10 = new__state_4 | new__state_5;
  assign new__state_11 = new__state_6 | new__state_7;
  assign new__state_13 = new__state_10 | new__state_11;
  assign new_s__state_1 = new__state_1;
  assign new_not_s__state_1 = ~new_s__state_1;
  assign new_I0__state_1 = new_y_mux_key0;
  assign new_I1__state_1 = new_y_mux_key1;
  assign new_and_mux__state_1 = new_not_s__state_1 & new_I0__state_1;
  assign new_and_mux__state_1_2 = new_s__state_1 & new_I1__state_1;
  assign new_y_mux_8 = new_and_mux__state_1 | new_and_mux__state_1_2;
  assign new_s__state_3 = new__state_3;
  assign new_not_s__state_3 = ~new_s__state_3;
  assign new_I0__state_3 = new_y_mux_key2;
  assign new_I1__state_3 = new_y_mux_key3;
  assign new_and_mux__state_3 = new_not_s__state_3 & new_I0__state_3;
  assign new_and_mux__state_3_2 = new_s__state_3 & new_I1__state_3;
  assign new_y_mux_9 = new_and_mux__state_3 | new_and_mux__state_3_2;
  assign new_s__state_5 = new__state_5;
  assign new_not_s__state_5 = ~new_s__state_5;
  assign new_I0__state_5 = new_y_mux_key4;
  assign new_I1__state_5 = new_y_mux_key5;
  assign new_and_mux__state_5 = new_not_s__state_5 & new_I0__state_5;
  assign new_and_mux__state_5_2 = new_s__state_5 & new_I1__state_5;
  assign new_y_mux_10 = new_and_mux__state_5 | new_and_mux__state_5_2;
  assign new_s__state_7 = new__state_7;
  assign new_not_s__state_7 = ~new_s__state_7;
  assign new_I0__state_7 = new_y_mux_key6;
  assign new_I1__state_7 = new_y_mux_key7;
  assign new_and_mux__state_7 = new_not_s__state_7 & new_I0__state_7;
  assign new_and_mux__state_7_2 = new_s__state_7 & new_I1__state_7;
  assign new_y_mux_11 = new_and_mux__state_7 | new_and_mux__state_7_2;
  assign new_s__state_9 = new__state_9;
  assign new_not_s__state_9 = ~new_s__state_9;
  assign new_I0__state_9 = new_y_mux_8;
  assign new_I1__state_9 = new_y_mux_9;
  assign new_and_mux__state_9 = new_not_s__state_9 & new_I0__state_9;
  assign new_and_mux__state_9_2 = new_s__state_9 & new_I1__state_9;
  assign new_y_mux_12 = new_and_mux__state_9 | new_and_mux__state_9_2;
  assign new_s__state_11 = new__state_11;
  assign new_not_s__state_11 = ~new_s__state_11;
  assign new_I0__state_11 = new_y_mux_10;
  assign new_I1__state_11 = new_y_mux_11;
  assign new_and_mux__state_11 = new_not_s__state_11 & new_I0__state_11;
  assign new_and_mux__state_11_2 = new_s__state_11 & new_I1__state_11;
  assign new_y_mux_13 = new_and_mux__state_11 | new_and_mux__state_11_2;
  assign new_s__state_13 = new__state_13;
  assign new_not_s__state_13 = ~new_s__state_13;
  assign new_I0__state_13 = new_y_mux_12;
  assign new_I1__state_13 = new_y_mux_13;
  assign new_and_mux__state_13 = new_not_s__state_13 & new_I0__state_13;
  assign new_and_mux__state_13_2 = new_s__state_13 & new_I1__state_13;
  assign n58 = new_and_mux__state_13 | new_and_mux__state_13_2;
  always @ (posedge clock) begin
    VOTO0_REG <= n58;
    STATO_REG_3_ <= n63;
    STATO_REG_2_ <= n68;
    STATO_REG_1_ <= n73;
    STATO_REG_0_ <= n78;
    V_OUT_REG_3_ <= n83;
    V_OUT_REG_2_ <= n87;
    V_OUT_REG_1_ <= n91;
    V_OUT_REG_0_ <= n95;
    SIGN_REG_3_ <= n99;
    VOTO1_REG <= n104;
    CTR_REG <= n109;
    VOTO3_REG <= n113;
    LAST_R_REG <= n118;
    CTS_REG <= n123;
    VOTO2_REG <= n127;
    LAST_G_REG <= n132;
    Q_0 <= n515;
    Q_1 <= n518;
    Q_2 <= n521;
  end
endmodule
