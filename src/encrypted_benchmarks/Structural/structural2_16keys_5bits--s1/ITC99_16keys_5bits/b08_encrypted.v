// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/ITC99/b08_encrypted" written by ABC on Fri Sep 27 18:23:43 2024

module b08_encrypted  ( clock, 
    START, I_7_, I_6_, I_5_, I_4_, I_3_, I_2_, I_1_, I_0_, keyinput0,
    keyinput1, keyinput2, keyinput3, keyinput4,
    O_REG_3_, O_REG_2_, O_REG_1_, O_REG_0_  );
  input  clock;
  input  START, I_7_, I_6_, I_5_, I_4_, I_3_, I_2_, I_1_, I_0_,
    keyinput0, keyinput1, keyinput2, keyinput3, keyinput4;
  output O_REG_3_, O_REG_2_, O_REG_1_, O_REG_0_;
  reg O_REG_0_, STATO_REG_1_, STATO_REG_0_, MAR_REG_2_, MAR_REG_1_,
    MAR_REG_0_, IN_R_REG_7_, IN_R_REG_6_, IN_R_REG_5_, IN_R_REG_4_,
    IN_R_REG_3_, IN_R_REG_2_, IN_R_REG_1_, IN_R_REG_0_, OUT_R_REG_3_,
    OUT_R_REG_2_, OUT_R_REG_1_, OUT_R_REG_0_, O_REG_3_, O_REG_2_, O_REG_1_,
    Q_0, Q_1, Q_2, Q_3;
  wire new_U176, new_U177, new_U178, new_U179, new_U180, new_U181, new_U182,
    new_U190, new_U191, new_U192, new_U193, new_U194, new_U195, new_U196,
    new_U197, new_U198, new_U199, new_U200, new_U201, new_U202, new_U203,
    new_U204, new_U205, new_U219, new_U220, new_U221, new_U222, new_U223,
    new_U224, new_U225, new_U226, new_U227, new_U228, new_U229, new_U230,
    new_U231, new_U232, new_U233, new_U234, new_U235, new_U236, new_U237,
    new_U238, new_U239, new_U240, new_U241, new_U242, new_U243, new_U244,
    new_U245, new_U246, new_U247, new_U248, new_U249, new_U250, new_U251,
    new_U252, new_U253, new_U254, new_U255, new_U256, new_U257, new_U258,
    new_U259, new_U260, new_U261, new_U262, new_U263, new_U264, new_U265,
    new_U266, new_U267, new_U268, new_U269, new_U270, new_U271, new_U272,
    new_U273, new_U274, new_U275, new_U276, new_U277, new_U278, new_U279,
    new_U280, new_U281, new_U282, new_U283, new_U284, new_U285, new_U286,
    new_U287, new_U288, new_U289, new_U290, new_U291, new_U292, new_U293,
    new_U294, new_U295, new_U296, new_U297, new_U298, new_U299, new_U300,
    new_U301, new_U302, new_U303, new_U304, new_U305, new_U306, new_U307,
    new_U308, new_U309, new_U310, new_U311, new_U312, new_U313, new_U314,
    new_U315, new_U316, new_U317, new_U318, new_U319, new_U320, new_U321,
    new_U322, new_U323, new_U324, new_not_keyinput0, new_not_keyinput1,
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
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n38,
    n42, n47, n52, n57, n62, n67, n72, n77, n82, n87, n92, n97, n102, n107,
    n112, n117, n122, n127, n131, n135, n474, n477, n480, n483;
  assign new_U176 = STATO_REG_1_ & new_U272;
  assign new_U177 = STATO_REG_0_ & STATO_REG_1_;
  assign new_U178 = MAR_REG_0_ & MAR_REG_1_;
  assign new_U179 = new_U195 & new_U251;
  assign new_U180 = new_U252 & new_U249;
  assign new_U181 = new_U248 & new_U250;
  assign new_U182 = new_U179 & new_U254;
  assign n122 = ~new_U232 | ~new_U281;
  assign n117 = ~new_U280 | ~new_U279 | ~new_U232;
  assign n112 = ~new_U277 | ~new_U276;
  assign n107 = ~new_U275 | ~new_U274 | ~new_U232;
  assign n52 = ~new_U244 | ~new_U243;
  assign n47 = ~new_U204 | ~new_U240;
  assign n42 = ~new_U237 | ~new_U223 | ~new_U204;
  assign new_U190 = ~STATO_REG_1_;
  assign new_U191 = ~STATO_REG_0_;
  assign new_U192 = ~MAR_REG_1_;
  assign new_U193 = ~MAR_REG_0_;
  assign new_U194 = ~MAR_REG_2_;
  assign new_U195 = ~MAR_REG_2_ | ~new_U178;
  assign new_U196 = ~START;
  assign new_U197 = ~STATO_REG_0_ | ~new_U238;
  assign new_U198 = ~new_U178 | ~new_U194;
  assign new_U199 = ~new_U179 | ~new_U250;
  assign new_U200 = ~new_U181 | ~new_U198;
  assign new_U201 = ~new_U253 | ~new_U195;
  assign new_U202 = ~new_U251 | ~new_U254;
  assign new_U203 = ~new_U253 | ~new_U179 | ~new_U249;
  assign new_U204 = ~STATO_REG_1_ | ~new_U191;
  assign new_U205 = ~new_U235 | ~new_U196;
  assign n57 = ~new_U284 | ~new_U283;
  assign n62 = ~new_U286 | ~new_U285;
  assign n67 = ~new_U288 | ~new_U287;
  assign n72 = ~new_U290 | ~new_U289;
  assign n77 = ~new_U292 | ~new_U291;
  assign n82 = ~new_U294 | ~new_U293;
  assign n87 = ~new_U296 | ~new_U295;
  assign n92 = ~new_U298 | ~new_U297;
  assign n97 = ~new_U300 | ~new_U299;
  assign n102 = ~new_U302 | ~new_U301;
  assign n127 = ~new_U318 | ~new_U317;
  assign n131 = ~new_U320 | ~new_U319;
  assign n135 = ~new_U322 | ~new_U321;
  assign new_U219 = ~new_U324 | ~new_U323;
  assign new_U220 = new_U266 & new_U269 & new_U221 & new_U233 & new_U270;
  assign new_U221 = new_U303 & new_U304 & new_U306 & new_U305;
  assign new_U222 = ~IN_R_REG_7_;
  assign new_U223 = ~STATO_REG_0_ | ~new_U190;
  assign new_U224 = ~IN_R_REG_6_;
  assign new_U225 = ~IN_R_REG_5_;
  assign new_U226 = ~IN_R_REG_4_;
  assign new_U227 = ~IN_R_REG_3_;
  assign new_U228 = ~IN_R_REG_2_;
  assign new_U229 = ~IN_R_REG_1_;
  assign new_U230 = ~IN_R_REG_0_;
  assign new_U231 = ~new_U236 | ~STATO_REG_0_ | ~STATO_REG_1_;
  assign new_U232 = ~new_U176 | ~new_U202;
  assign new_U233 = ~new_U204;
  assign new_U234 = ~new_U223;
  assign new_U235 = ~new_U195;
  assign new_U236 = ~new_U205;
  assign new_U237 = ~STATO_REG_0_ | ~new_U205;
  assign new_U238 = ~new_U235 | ~STATO_REG_1_;
  assign new_U239 = ~new_U197;
  assign new_U240 = ~START | ~new_U197;
  assign new_U241 = ~new_U198;
  assign new_U242 = ~new_U239 | ~new_U190;
  assign new_U243 = ~MAR_REG_2_ | ~new_U242;
  assign new_U244 = ~new_U177 | ~new_U241;
  assign new_U245 = ~STATO_REG_1_ | ~new_U193;
  assign new_U246 = ~new_U239 | ~new_U245;
  assign new_U247 = MAR_REG_2_ | MAR_REG_0_ | MAR_REG_1_;
  assign new_U248 = ~MAR_REG_2_ | ~MAR_REG_0_ | ~new_U192;
  assign new_U249 = ~MAR_REG_0_ | ~new_U194 | ~new_U192;
  assign new_U250 = ~MAR_REG_2_ | ~new_U192 | ~new_U193;
  assign new_U251 = ~MAR_REG_1_ | ~new_U194 | ~new_U193;
  assign new_U252 = ~new_U199;
  assign new_U253 = ~new_U200;
  assign new_U254 = ~MAR_REG_2_ | ~MAR_REG_1_ | ~new_U193;
  assign new_U255 = ~new_U202;
  assign new_U256 = ~new_U253 | ~new_U247;
  assign new_U257 = ~new_U180 | ~new_U198;
  assign new_U258 = ~new_U254 | ~new_U314 | ~new_U313;
  assign new_U259 = ~new_U203;
  assign new_U260 = ~new_U182 | ~new_U181;
  assign new_U261 = ~new_U315 | ~new_U316 | ~new_U249 | ~new_U247;
  assign new_U262 = ~new_U201;
  assign new_U263 = ~new_U180 | ~new_U254;
  assign new_U264 = ~new_U247 | ~new_U312 | ~new_U311;
  assign new_U265 = ~new_U262 | ~new_U254;
  assign new_U266 = ~new_U247 | ~new_U308 | ~new_U307;
  assign new_U267 = ~new_U262 | ~new_U249;
  assign new_U268 = ~new_U182 | ~new_U198;
  assign new_U269 = ~new_U247 | ~new_U310 | ~new_U309;
  assign new_U270 = ~new_U227 | ~new_U198 | ~new_U179 | ~new_U248;
  assign new_U271 = ~new_U220 | ~new_U264 | ~new_U261 | ~new_U258;
  assign new_U272 = ~new_U223 | ~new_U271;
  assign new_U273 = ~new_U190 | ~new_U272;
  assign new_U274 = ~new_U176 | ~new_U256;
  assign new_U275 = ~OUT_R_REG_3_ | ~new_U273;
  assign new_U276 = ~new_U176 | ~new_U199;
  assign new_U277 = ~OUT_R_REG_2_ | ~new_U273;
  assign new_U278 = ~new_U198 | ~new_U247 | ~new_U250 | ~new_U249;
  assign new_U279 = ~new_U176 | ~new_U278;
  assign new_U280 = ~OUT_R_REG_1_ | ~new_U273;
  assign new_U281 = ~OUT_R_REG_0_ | ~new_U273;
  assign new_U282 = ~new_U231;
  assign new_U283 = ~MAR_REG_1_ | ~new_U246;
  assign new_U284 = ~new_U192 | ~new_U177 | ~MAR_REG_0_;
  assign new_U285 = ~new_U177 | ~new_U193;
  assign new_U286 = ~MAR_REG_0_ | ~new_U197;
  assign new_U287 = ~IN_R_REG_7_ | ~new_U223;
  assign new_U288 = ~I_7_ | ~new_U234;
  assign new_U289 = ~IN_R_REG_6_ | ~new_U223;
  assign new_U290 = ~I_6_ | ~new_U234;
  assign new_U291 = ~IN_R_REG_5_ | ~new_U223;
  assign new_U292 = ~I_5_ | ~new_U234;
  assign new_U293 = ~IN_R_REG_4_ | ~new_U223;
  assign new_U294 = ~I_4_ | ~new_U234;
  assign new_U295 = ~IN_R_REG_3_ | ~new_U223;
  assign new_U296 = ~I_3_ | ~new_U234;
  assign new_U297 = ~IN_R_REG_2_ | ~new_U223;
  assign new_U298 = ~I_2_ | ~new_U234;
  assign new_U299 = ~IN_R_REG_1_ | ~new_U223;
  assign new_U300 = ~I_1_ | ~new_U234;
  assign new_U301 = ~IN_R_REG_0_ | ~new_U223;
  assign new_U302 = ~I_0_ | ~new_U234;
  assign new_U303 = ~new_U222 | ~new_U180 | ~new_U248 | ~new_U247;
  assign new_U304 = ~IN_R_REG_7_ | ~new_U255 | ~new_U253;
  assign new_U305 = ~new_U225 | ~new_U182 | ~new_U253;
  assign new_U306 = ~IN_R_REG_5_ | ~new_U259 | ~new_U247;
  assign new_U307 = ~new_U203 | ~new_U229;
  assign new_U308 = ~IN_R_REG_1_ | ~new_U265;
  assign new_U309 = ~IN_R_REG_0_ | ~new_U267;
  assign new_U310 = ~new_U268 | ~new_U230;
  assign new_U311 = ~IN_R_REG_2_ | ~new_U201;
  assign new_U312 = ~new_U263 | ~new_U228;
  assign new_U313 = ~IN_R_REG_6_ | ~new_U256;
  assign new_U314 = ~new_U257 | ~new_U224;
  assign new_U315 = ~IN_R_REG_4_ | ~new_U200;
  assign new_U316 = ~new_U260 | ~new_U226;
  assign new_U317 = ~O_REG_3_ | ~new_U231;
  assign new_U318 = ~new_U282 | ~OUT_R_REG_3_;
  assign new_U319 = ~O_REG_2_ | ~new_U231;
  assign new_U320 = ~new_U282 | ~OUT_R_REG_2_;
  assign new_U321 = ~O_REG_1_ | ~new_U231;
  assign new_U322 = ~new_U282 | ~OUT_R_REG_1_;
  assign new_U323 = ~O_REG_0_ | ~new_U231;
  assign new_U324 = ~new_U282 | ~OUT_R_REG_0_;
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
  assign n483 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n480 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n477 = new_and_17 | new_and_19;
  assign n474 = ~Q_0;
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
  assign new_y_mux_key0_and_0 = n47 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key0_and_1 = new_U219 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n47 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_U219 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n47 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_U219 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n47 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3_and_1 = new_U219 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n47 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key4_and_1 = new_U219 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n47 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5_and_1 = new_U219 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n47 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key6_and_1 = new_U219 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n47 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key7_and_1 = new_U219 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n47 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8_and_1 = new_U219 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n47 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9_and_1 = new_U219 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n47 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key10_and_1 = new_U219 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n47 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key11_and_1 = new_U219 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n47 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key12_and_1 = new_U219 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n47 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key13_and_1 = new_U219 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n47 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key14_and_1 = new_U219 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n47 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key15_and_1 = new_U219 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n38 = new_and_mux__state_29 | new_and_mux__state_29_2;
  always @ (posedge clock) begin
    O_REG_0_ <= n38;
    STATO_REG_1_ <= n42;
    STATO_REG_0_ <= n47;
    MAR_REG_2_ <= n52;
    MAR_REG_1_ <= n57;
    MAR_REG_0_ <= n62;
    IN_R_REG_7_ <= n67;
    IN_R_REG_6_ <= n72;
    IN_R_REG_5_ <= n77;
    IN_R_REG_4_ <= n82;
    IN_R_REG_3_ <= n87;
    IN_R_REG_2_ <= n92;
    IN_R_REG_1_ <= n97;
    IN_R_REG_0_ <= n102;
    OUT_R_REG_3_ <= n107;
    OUT_R_REG_2_ <= n112;
    OUT_R_REG_1_ <= n117;
    OUT_R_REG_0_ <= n122;
    O_REG_3_ <= n127;
    O_REG_2_ <= n131;
    O_REG_1_ <= n135;
    Q_0 <= n474;
    Q_1 <= n477;
    Q_2 <= n480;
    Q_3 <= n483;
  end
endmodule
