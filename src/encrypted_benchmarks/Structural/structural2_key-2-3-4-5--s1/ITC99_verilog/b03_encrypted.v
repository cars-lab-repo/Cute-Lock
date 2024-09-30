// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/ITC99/b03_encrypted" written by ABC on Fri Sep 27 18:32:47 2024

module b03_encrypted  ( clock, 
    REQUEST1, REQUEST2, REQUEST3, REQUEST4, keyinput0, keyinput1,
    keyinput2,
    GRANT_O_REG_3_, GRANT_O_REG_2_, GRANT_O_REG_1_, GRANT_O_REG_0_  );
  input  clock;
  input  REQUEST1, REQUEST2, REQUEST3, REQUEST4, keyinput0, keyinput1,
    keyinput2;
  output GRANT_O_REG_3_, GRANT_O_REG_2_, GRANT_O_REG_1_, GRANT_O_REG_0_;
  reg STATO_REG_0_, CODA0_REG_2_, CODA0_REG_1_, CODA0_REG_0_, CODA1_REG_2_,
    CODA1_REG_1_, CODA1_REG_0_, CODA2_REG_2_, CODA2_REG_1_, CODA2_REG_0_,
    CODA3_REG_2_, CODA3_REG_1_, CODA3_REG_0_, GRANT_REG_3_, GRANT_REG_2_,
    GRANT_REG_1_, GRANT_REG_0_, GRANT_O_REG_3_, GRANT_O_REG_2_,
    GRANT_O_REG_1_, GRANT_O_REG_0_, RU3_REG, FU1_REG, FU3_REG, RU1_REG,
    RU4_REG, FU2_REG, FU4_REG, RU2_REG, STATO_REG_1_, Q_0, Q_1;
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
    new_not_keyinput2, new_not_0, new_and_1, new_not_2, new_and_3,
    new_not_Q_0, new_not_Q_1, new_count_state_1, new_count_state_2,
    new_count_state_3, new_y_mux_key0_and_0, new_y_mux_key0_and_1,
    new_y_mux_key0, new_y_mux_key1_and_0, new_y_mux_key1_and_1,
    new_y_mux_key1, new_y_mux_key2_and_0, new_y_mux_key2_and_1,
    new_y_mux_key2, new_y_mux_key3_and_0, new_y_mux_key3_and_1,
    new_y_mux_key3, new__state_1, new__state_2, new__state_3, new__state_5,
    new_s__state_1, new_not_s__state_1, new_I0__state_1, new_I1__state_1,
    new_and_mux__state_1, new_and_mux__state_1_2, new_y_mux_4,
    new_s__state_3, new_not_s__state_3, new_I0__state_3, new_I1__state_3,
    new_and_mux__state_3, new_and_mux__state_3_2, new_y_mux_5,
    new_s__state_5, new_not_s__state_5, new_I0__state_5, new_I1__state_5,
    new_and_mux__state_5, new_and_mux__state_5_2, n24, n29, n34, n39, n44,
    n49, n54, n59, n64, n69, n74, n79, n84, n89, n94, n99, n104, n109,
    n113, n117, n121, n125, n130, n135, n140, n145, n150, n155, n160, n164,
    n404, n407;
  assign new_U201 = new_U223 & new_U218;
  assign new_U202 = STATO_REG_1_ & new_U223;
  assign new_U203 = ~STATO_REG_0_;
  assign n140 = ~new_U222 | ~new_U292;
  assign n130 = ~new_U222 | ~new_U291;
  assign n84 = ~new_U290 | ~new_U289;
  assign n79 = ~new_U288 | ~new_U287;
  assign n74 = ~new_U286 | ~new_U285;
  assign n69 = ~new_U284 | ~new_U283 | ~new_U282;
  assign n64 = ~new_U281 | ~new_U280 | ~new_U279;
  assign n59 = ~new_U278 | ~new_U277 | ~new_U276;
  assign n54 = ~new_U275 | ~new_U274 | ~new_U273;
  assign n49 = ~new_U272 | ~new_U271 | ~new_U270;
  assign n44 = ~new_U269 | ~new_U268 | ~new_U267;
  assign n39 = ~new_U266 | ~new_U265 | ~new_U264;
  assign n34 = ~new_U263 | ~new_U262 | ~new_U261;
  assign n29 = ~new_U260 | ~new_U259 | ~new_U258;
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
  assign n89 = ~new_U296 | ~new_U295;
  assign n94 = ~new_U298 | ~new_U297;
  assign n99 = ~new_U300 | ~new_U299;
  assign n104 = ~new_U302 | ~new_U301;
  assign n109 = ~new_U304 | ~new_U303;
  assign n113 = ~new_U306 | ~new_U305;
  assign n117 = ~new_U308 | ~new_U307;
  assign n121 = ~new_U310 | ~new_U309;
  assign n125 = ~new_U312 | ~new_U311;
  assign n135 = ~new_U314 | ~new_U313;
  assign n145 = ~new_U316 | ~new_U315;
  assign n150 = ~new_U318 | ~new_U317;
  assign n155 = ~new_U320 | ~new_U319;
  assign n160 = ~new_U322 | ~new_U321;
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
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n407 = new_and_1 | new_and_3;
  assign n404 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n34 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U203 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n34 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U203 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n34 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_U203 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n34 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3_and_1 = new_U203 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new__state_1 = new_count_state_1;
  assign new__state_2 = new_count_state_2;
  assign new__state_3 = new_count_state_3;
  assign new__state_5 = new__state_2 | new__state_3;
  assign new_s__state_1 = new__state_1;
  assign new_not_s__state_1 = ~new_s__state_1;
  assign new_I0__state_1 = new_y_mux_key0;
  assign new_I1__state_1 = new_y_mux_key1;
  assign new_and_mux__state_1 = new_not_s__state_1 & new_I0__state_1;
  assign new_and_mux__state_1_2 = new_s__state_1 & new_I1__state_1;
  assign new_y_mux_4 = new_and_mux__state_1 | new_and_mux__state_1_2;
  assign new_s__state_3 = new__state_3;
  assign new_not_s__state_3 = ~new_s__state_3;
  assign new_I0__state_3 = new_y_mux_key2;
  assign new_I1__state_3 = new_y_mux_key3;
  assign new_and_mux__state_3 = new_not_s__state_3 & new_I0__state_3;
  assign new_and_mux__state_3_2 = new_s__state_3 & new_I1__state_3;
  assign new_y_mux_5 = new_and_mux__state_3 | new_and_mux__state_3_2;
  assign new_s__state_5 = new__state_5;
  assign new_not_s__state_5 = ~new_s__state_5;
  assign new_I0__state_5 = new_y_mux_4;
  assign new_I1__state_5 = new_y_mux_5;
  assign new_and_mux__state_5 = new_not_s__state_5 & new_I0__state_5;
  assign new_and_mux__state_5_2 = new_s__state_5 & new_I1__state_5;
  assign n24 = new_and_mux__state_5 | new_and_mux__state_5_2;
  assign n164 = STATO_REG_0_;
  always @ (posedge clock) begin
    STATO_REG_0_ <= n24;
    CODA0_REG_2_ <= n29;
    CODA0_REG_1_ <= n34;
    CODA0_REG_0_ <= n39;
    CODA1_REG_2_ <= n44;
    CODA1_REG_1_ <= n49;
    CODA1_REG_0_ <= n54;
    CODA2_REG_2_ <= n59;
    CODA2_REG_1_ <= n64;
    CODA2_REG_0_ <= n69;
    CODA3_REG_2_ <= n74;
    CODA3_REG_1_ <= n79;
    CODA3_REG_0_ <= n84;
    GRANT_REG_3_ <= n89;
    GRANT_REG_2_ <= n94;
    GRANT_REG_1_ <= n99;
    GRANT_REG_0_ <= n104;
    GRANT_O_REG_3_ <= n109;
    GRANT_O_REG_2_ <= n113;
    GRANT_O_REG_1_ <= n117;
    GRANT_O_REG_0_ <= n121;
    RU3_REG <= n125;
    FU1_REG <= n130;
    FU3_REG <= n135;
    RU1_REG <= n140;
    RU4_REG <= n145;
    FU2_REG <= n150;
    FU4_REG <= n155;
    RU2_REG <= n160;
    STATO_REG_1_ <= n164;
    Q_0 <= n404;
    Q_1 <= n407;
  end
endmodule
