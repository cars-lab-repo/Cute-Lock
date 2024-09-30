// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/ITC99/b03_encrypted" written by ABC on Fri Sep 27 18:23:41 2024

module b03_encrypted  ( clock, 
    REQUEST1, REQUEST2, REQUEST3, REQUEST4, keyinput0, keyinput1,
    keyinput2, keyinput3, keyinput4,
    GRANT_O_REG_3_, GRANT_O_REG_2_, GRANT_O_REG_1_, GRANT_O_REG_0_  );
  input  clock;
  input  REQUEST1, REQUEST2, REQUEST3, REQUEST4, keyinput0, keyinput1,
    keyinput2, keyinput3, keyinput4;
  output GRANT_O_REG_3_, GRANT_O_REG_2_, GRANT_O_REG_1_, GRANT_O_REG_0_;
  reg STATO_REG_0_, CODA0_REG_2_, CODA0_REG_1_, CODA0_REG_0_, CODA1_REG_2_,
    CODA1_REG_1_, CODA1_REG_0_, CODA2_REG_2_, CODA2_REG_1_, CODA2_REG_0_,
    CODA3_REG_2_, CODA3_REG_1_, CODA3_REG_0_, GRANT_REG_3_, GRANT_REG_2_,
    GRANT_REG_1_, GRANT_REG_0_, GRANT_O_REG_3_, GRANT_O_REG_2_,
    GRANT_O_REG_1_, GRANT_O_REG_0_, RU3_REG, FU1_REG, FU3_REG, RU1_REG,
    RU4_REG, FU2_REG, FU4_REG, RU2_REG, STATO_REG_1_, Q_0, Q_1, Q_2, Q_3;
  wire new_U201, new_U202, new_U203, new_U218, new_U219, new_U220, new_U221,
    new_U222, new_U223, new_U224, new_U225, new_U226, new_U227, new_U228,
    new_U243, new_U244, new_U245, new_U246, new_U247, new_U248, new_U249,
    new_U250, new_U251, new_U252, new_U253, new_U254, new_U255, new_U256,
    new_U257, new_U258, new_U259, new_U260, new_U261, new_U262, new_U263,
    new_U264, new_U265, new_U266, new_U267, new_U268, new_U269, new_U270,
    new_U271, new_U272, new_U273, new_U274, new_U275, new_U276, new_U277,
    new_U278, new_U279, new_U280, new_U281, new_U282, new_U283, new_U284,
    new_U285, new_U286, new_U287, new_U288, new_U289, new_U290, new_U291,
    new_U292, new_U293, new_U294, new_U295, new_U296, new_U297, new_U298,
    new_U299, new_U300, new_U301, new_U302, new_U303, new_U304, new_U305,
    new_U306, new_U307, new_U308, new_U309, new_U310, new_U311, new_U312,
    new_U313, new_U314, new_U315, new_U316, new_U317, new_U318, new_U319,
    new_U320, new_U321, new_U322, new_not_keyinput0, new_not_keyinput1,
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
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n28,
    n33, n38, n43, n48, n53, n58, n63, n68, n73, n78, n83, n88, n93, n98,
    n103, n108, n113, n117, n121, n125, n129, n134, n139, n144, n149, n154,
    n159, n164, n168, n446, n449, n452, n455;
  assign new_U201 = new_U223 & new_U218;
  assign new_U202 = STATO_REG_1_ & new_U223;
  assign new_U203 = ~STATO_REG_0_;
  assign n144 = ~new_U222 | ~new_U292;
  assign n134 = ~new_U222 | ~new_U291;
  assign n88 = ~new_U290 | ~new_U289;
  assign n83 = ~new_U288 | ~new_U287;
  assign n78 = ~new_U286 | ~new_U285;
  assign n73 = ~new_U284 | ~new_U283 | ~new_U282;
  assign n68 = ~new_U281 | ~new_U280 | ~new_U279;
  assign n63 = ~new_U278 | ~new_U277 | ~new_U276;
  assign n58 = ~new_U275 | ~new_U274 | ~new_U273;
  assign n53 = ~new_U272 | ~new_U271 | ~new_U270;
  assign n48 = ~new_U269 | ~new_U268 | ~new_U267;
  assign n43 = ~new_U266 | ~new_U265 | ~new_U264;
  assign n38 = ~new_U263 | ~new_U262 | ~new_U261;
  assign n33 = ~new_U260 | ~new_U259 | ~new_U258;
  assign new_U218 = ~STATO_REG_1_;
  assign new_U219 = ~RU3_REG;
  assign new_U220 = ~RU3_REG | ~new_U243;
  assign new_U221 = ~RU1_REG;
  assign new_U222 = ~RU1_REG | ~STATO_REG_0_;
  assign new_U223 = ~new_U253 | ~new_U254 | ~new_U244;
  assign new_U224 = ~CODA0_REG_2_;
  assign new_U225 = ~CODA0_REG_1_;
  assign new_U226 = ~CODA0_REG_0_;
  assign new_U227 = ~FU1_REG;
  assign new_U228 = ~FU2_REG;
  assign n93 = ~new_U296 | ~new_U295;
  assign n98 = ~new_U298 | ~new_U297;
  assign n103 = ~new_U300 | ~new_U299;
  assign n108 = ~new_U302 | ~new_U301;
  assign n113 = ~new_U304 | ~new_U303;
  assign n117 = ~new_U306 | ~new_U305;
  assign n121 = ~new_U308 | ~new_U307;
  assign n125 = ~new_U310 | ~new_U309;
  assign n129 = ~new_U312 | ~new_U311;
  assign n139 = ~new_U314 | ~new_U313;
  assign n149 = ~new_U316 | ~new_U315;
  assign n154 = ~new_U318 | ~new_U317;
  assign n159 = ~new_U320 | ~new_U319;
  assign n164 = ~new_U322 | ~new_U321;
  assign new_U243 = ~RU2_REG;
  assign new_U244 = ~STATO_REG_1_ | ~new_U248;
  assign new_U245 = ~FU3_REG;
  assign new_U246 = ~FU4_REG;
  assign new_U247 = ~new_U222;
  assign new_U248 = FU4_REG | FU1_REG | FU3_REG | FU2_REG;
  assign new_U249 = ~new_U244;
  assign new_U250 = ~new_U220;
  assign new_U251 = ~new_U250 | ~new_U245;
  assign new_U252 = ~new_U251 | ~new_U294 | ~new_U293;
  assign new_U253 = ~new_U252 | ~new_U221 | ~STATO_REG_0_;
  assign new_U254 = ~new_U247 | ~new_U227;
  assign new_U255 = ~new_U223;
  assign new_U256 = RU2_REG | RU3_REG;
  assign new_U257 = ~new_U221 | ~new_U256;
  assign new_U258 = ~new_U201 | ~new_U257;
  assign new_U259 = ~CODA1_REG_2_ | ~new_U202;
  assign new_U260 = ~CODA0_REG_2_ | ~new_U255;
  assign new_U261 = ~new_U201 | ~new_U220 | ~new_U221;
  assign new_U262 = ~CODA1_REG_1_ | ~new_U202;
  assign new_U263 = ~CODA0_REG_1_ | ~new_U255;
  assign new_U264 = ~new_U201 | ~new_U221 | ~new_U243;
  assign new_U265 = ~CODA1_REG_0_ | ~new_U202;
  assign new_U266 = ~CODA0_REG_0_ | ~new_U255;
  assign new_U267 = ~CODA2_REG_2_ | ~new_U202;
  assign new_U268 = ~CODA0_REG_2_ | ~new_U201;
  assign new_U269 = ~new_U255 | ~CODA1_REG_2_;
  assign new_U270 = ~CODA2_REG_1_ | ~new_U202;
  assign new_U271 = ~CODA0_REG_1_ | ~new_U201;
  assign new_U272 = ~CODA1_REG_1_ | ~new_U255;
  assign new_U273 = ~CODA2_REG_0_ | ~new_U202;
  assign new_U274 = ~CODA0_REG_0_ | ~new_U201;
  assign new_U275 = ~CODA1_REG_0_ | ~new_U255;
  assign new_U276 = ~CODA3_REG_2_ | ~new_U202;
  assign new_U277 = ~CODA1_REG_2_ | ~new_U201;
  assign new_U278 = ~CODA2_REG_2_ | ~new_U255;
  assign new_U279 = ~CODA3_REG_1_ | ~new_U202;
  assign new_U280 = ~CODA1_REG_1_ | ~new_U201;
  assign new_U281 = ~CODA2_REG_1_ | ~new_U255;
  assign new_U282 = ~CODA3_REG_0_ | ~new_U202;
  assign new_U283 = ~CODA1_REG_0_ | ~new_U201;
  assign new_U284 = ~CODA2_REG_0_ | ~new_U255;
  assign new_U285 = ~CODA2_REG_2_ | ~new_U201;
  assign new_U286 = ~CODA3_REG_2_ | ~new_U255;
  assign new_U287 = ~CODA2_REG_1_ | ~new_U201;
  assign new_U288 = ~CODA3_REG_1_ | ~new_U255;
  assign new_U289 = ~CODA2_REG_0_ | ~new_U201;
  assign new_U290 = ~CODA3_REG_0_ | ~new_U255;
  assign new_U291 = ~FU1_REG | ~new_U203;
  assign new_U292 = ~REQUEST1 | ~new_U203;
  assign new_U293 = ~RU2_REG | ~new_U228;
  assign new_U294 = ~new_U243 | ~RU4_REG | ~new_U219 | ~new_U246;
  assign new_U295 = ~GRANT_REG_3_ | ~new_U244;
  assign new_U296 = ~new_U249 | ~CODA0_REG_2_ | ~new_U226 | ~new_U225;
  assign new_U297 = ~GRANT_REG_2_ | ~new_U244;
  assign new_U298 = ~new_U249 | ~CODA0_REG_1_ | ~new_U226 | ~new_U224;
  assign new_U299 = ~GRANT_REG_1_ | ~new_U244;
  assign new_U300 = ~new_U249 | ~CODA0_REG_0_ | ~new_U225 | ~new_U224;
  assign new_U301 = ~GRANT_REG_0_ | ~new_U244;
  assign new_U302 = ~new_U249 | ~CODA0_REG_0_ | ~CODA0_REG_1_ | ~CODA0_REG_2_;
  assign new_U303 = ~GRANT_O_REG_3_ | ~new_U203;
  assign new_U304 = ~GRANT_REG_3_ | ~STATO_REG_0_;
  assign new_U305 = ~GRANT_O_REG_2_ | ~new_U203;
  assign new_U306 = ~GRANT_REG_2_ | ~STATO_REG_0_;
  assign new_U307 = ~GRANT_O_REG_1_ | ~new_U203;
  assign new_U308 = ~GRANT_REG_1_ | ~STATO_REG_0_;
  assign new_U309 = ~GRANT_O_REG_0_ | ~new_U203;
  assign new_U310 = ~GRANT_REG_0_ | ~STATO_REG_0_;
  assign new_U311 = ~REQUEST3 | ~new_U203;
  assign new_U312 = ~RU3_REG | ~STATO_REG_0_;
  assign new_U313 = ~FU3_REG | ~new_U203;
  assign new_U314 = ~RU3_REG | ~STATO_REG_0_;
  assign new_U315 = ~REQUEST4 | ~new_U203;
  assign new_U316 = ~RU4_REG | ~STATO_REG_0_;
  assign new_U317 = ~FU2_REG | ~new_U203;
  assign new_U318 = ~RU2_REG | ~STATO_REG_0_;
  assign new_U319 = ~FU4_REG | ~new_U203;
  assign new_U320 = ~RU4_REG | ~STATO_REG_0_;
  assign new_U321 = ~REQUEST2 | ~new_U203;
  assign new_U322 = ~RU2_REG | ~STATO_REG_0_;
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
  assign n455 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n452 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n449 = new_and_17 | new_and_19;
  assign n446 = ~Q_0;
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
  assign new_y_mux_key0_and_0 = n38 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U203 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n38 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U203 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n38 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_U203 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n38 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U203 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n38 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4_and_1 = new_U203 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n38 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key5_and_1 = new_U203 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n38 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key6_and_1 = new_U203 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n38 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key7_and_1 = new_U203 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n38 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key8_and_1 = new_U203 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n38 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key9_and_1 = new_U203 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n38 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key10_and_1 = new_U203 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n38 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key11_and_1 = new_U203 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n38 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key12_and_1 = new_U203 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n38 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13_and_1 = new_U203 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n38 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key14_and_1 = new_U203 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n38 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key15_and_1 = new_U203 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n28 = new_and_mux__state_29 | new_and_mux__state_29_2;
  assign n168 = STATO_REG_0_;
  always @ (posedge clock) begin
    STATO_REG_0_ <= n28;
    CODA0_REG_2_ <= n33;
    CODA0_REG_1_ <= n38;
    CODA0_REG_0_ <= n43;
    CODA1_REG_2_ <= n48;
    CODA1_REG_1_ <= n53;
    CODA1_REG_0_ <= n58;
    CODA2_REG_2_ <= n63;
    CODA2_REG_1_ <= n68;
    CODA2_REG_0_ <= n73;
    CODA3_REG_2_ <= n78;
    CODA3_REG_1_ <= n83;
    CODA3_REG_0_ <= n88;
    GRANT_REG_3_ <= n93;
    GRANT_REG_2_ <= n98;
    GRANT_REG_1_ <= n103;
    GRANT_REG_0_ <= n108;
    GRANT_O_REG_3_ <= n113;
    GRANT_O_REG_2_ <= n117;
    GRANT_O_REG_1_ <= n121;
    GRANT_O_REG_0_ <= n125;
    RU3_REG <= n129;
    FU1_REG <= n134;
    FU3_REG <= n139;
    RU1_REG <= n144;
    RU4_REG <= n149;
    FU2_REG <= n154;
    FU4_REG <= n159;
    RU2_REG <= n164;
    STATO_REG_1_ <= n168;
    Q_0 <= n446;
    Q_1 <= n449;
    Q_2 <= n452;
    Q_3 <= n455;
  end
endmodule
