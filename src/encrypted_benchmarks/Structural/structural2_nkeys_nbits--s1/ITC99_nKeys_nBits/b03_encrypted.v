// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/ITC99/b03_encrypted" written by ABC on Fri Sep 27 18:34:17 2024

module b03_encrypted  ( clock, 
    REQUEST1, REQUEST2, REQUEST3, REQUEST4, keyinput0, keyinput1,
    keyinput2, keyinput3,
    GRANT_O_REG_3_, GRANT_O_REG_2_, GRANT_O_REG_1_, GRANT_O_REG_0_  );
  input  clock;
  input  REQUEST1, REQUEST2, REQUEST3, REQUEST4, keyinput0, keyinput1,
    keyinput2, keyinput3;
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
    new_not_keyinput2, new_not_keyinput3, new_not_0, new_and_1, new_not_2,
    new_and_3, new_not_Q_0, new_not_Q_1, new_count_state_1,
    new_count_state_2, new_count_state_3, new_y_mux_key0_and_0,
    new_y_mux_key0_and_1, new_y_mux_key0, new_y_mux_key1_and_0,
    new_y_mux_key1_and_1, new_y_mux_key1, new_y_mux_key2_and_0,
    new_y_mux_key2_and_1, new_y_mux_key2, new_y_mux_key3_and_0,
    new_y_mux_key3_and_1, new_y_mux_key3, new__state_1, new__state_2,
    new__state_3, new__state_5, new_s__state_1, new_not_s__state_1,
    new_I0__state_1, new_I1__state_1, new_and_mux__state_1,
    new_and_mux__state_1_2, new_y_mux_4, new_s__state_3,
    new_not_s__state_3, new_I0__state_3, new_I1__state_3,
    new_and_mux__state_3, new_and_mux__state_3_2, new_y_mux_5,
    new_s__state_5, new_not_s__state_5, new_I0__state_5, new_I1__state_5,
    new_and_mux__state_5, new_and_mux__state_5_2, n26, n31, n36, n41, n46,
    n51, n56, n61, n66, n71, n76, n81, n86, n91, n96, n101, n106, n111,
    n115, n119, n123, n127, n132, n137, n142, n147, n152, n157, n162, n166,
    n408, n411;
  assign new_U201 = new_U223 & new_U218;
  assign new_U202 = STATO_REG_1_ & new_U223;
  assign new_U203 = ~STATO_REG_0_;
  assign n142 = ~new_U222 | ~new_U292;
  assign n132 = ~new_U222 | ~new_U291;
  assign n86 = ~new_U290 | ~new_U289;
  assign n81 = ~new_U288 | ~new_U287;
  assign n76 = ~new_U286 | ~new_U285;
  assign n71 = ~new_U284 | ~new_U283 | ~new_U282;
  assign n66 = ~new_U281 | ~new_U280 | ~new_U279;
  assign n61 = ~new_U278 | ~new_U277 | ~new_U276;
  assign n56 = ~new_U275 | ~new_U274 | ~new_U273;
  assign n51 = ~new_U272 | ~new_U271 | ~new_U270;
  assign n46 = ~new_U269 | ~new_U268 | ~new_U267;
  assign n41 = ~new_U266 | ~new_U265 | ~new_U264;
  assign n36 = ~new_U263 | ~new_U262 | ~new_U261;
  assign n31 = ~new_U260 | ~new_U259 | ~new_U258;
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
  assign n91 = ~new_U296 | ~new_U295;
  assign n96 = ~new_U298 | ~new_U297;
  assign n101 = ~new_U300 | ~new_U299;
  assign n106 = ~new_U302 | ~new_U301;
  assign n111 = ~new_U304 | ~new_U303;
  assign n115 = ~new_U306 | ~new_U305;
  assign n119 = ~new_U308 | ~new_U307;
  assign n123 = ~new_U310 | ~new_U309;
  assign n127 = ~new_U312 | ~new_U311;
  assign n137 = ~new_U314 | ~new_U313;
  assign n147 = ~new_U316 | ~new_U315;
  assign n152 = ~new_U318 | ~new_U317;
  assign n157 = ~new_U320 | ~new_U319;
  assign n162 = ~new_U322 | ~new_U321;
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
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n411 = new_and_1 | new_and_3;
  assign n408 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n36 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U203 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n36 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_U203 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n36 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_U203 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n36 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U203 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
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
  assign n26 = new_and_mux__state_5 | new_and_mux__state_5_2;
  assign n166 = STATO_REG_0_;
  always @ (posedge clock) begin
    STATO_REG_0_ <= n26;
    CODA0_REG_2_ <= n31;
    CODA0_REG_1_ <= n36;
    CODA0_REG_0_ <= n41;
    CODA1_REG_2_ <= n46;
    CODA1_REG_1_ <= n51;
    CODA1_REG_0_ <= n56;
    CODA2_REG_2_ <= n61;
    CODA2_REG_1_ <= n66;
    CODA2_REG_0_ <= n71;
    CODA3_REG_2_ <= n76;
    CODA3_REG_1_ <= n81;
    CODA3_REG_0_ <= n86;
    GRANT_REG_3_ <= n91;
    GRANT_REG_2_ <= n96;
    GRANT_REG_1_ <= n101;
    GRANT_REG_0_ <= n106;
    GRANT_O_REG_3_ <= n111;
    GRANT_O_REG_2_ <= n115;
    GRANT_O_REG_1_ <= n119;
    GRANT_O_REG_0_ <= n123;
    RU3_REG <= n127;
    FU1_REG <= n132;
    FU3_REG <= n137;
    RU1_REG <= n142;
    RU4_REG <= n147;
    FU2_REG <= n152;
    FU4_REG <= n157;
    RU2_REG <= n162;
    STATO_REG_1_ <= n166;
    Q_0 <= n408;
    Q_1 <= n411;
  end
endmodule
