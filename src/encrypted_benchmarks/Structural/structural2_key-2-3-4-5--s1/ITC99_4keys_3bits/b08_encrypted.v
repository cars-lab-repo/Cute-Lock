// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/ITC99/b08_encrypted" written by ABC on Fri Sep 27 18:32:50 2024

module b08_encrypted  ( clock, 
    START, I_7_, I_6_, I_5_, I_4_, I_3_, I_2_, I_1_, I_0_, keyinput0,
    keyinput1, keyinput2,
    O_REG_3_, O_REG_2_, O_REG_1_, O_REG_0_  );
  input  clock;
  input  START, I_7_, I_6_, I_5_, I_4_, I_3_, I_2_, I_1_, I_0_,
    keyinput0, keyinput1, keyinput2;
  output O_REG_3_, O_REG_2_, O_REG_1_, O_REG_0_;
  reg O_REG_0_, STATO_REG_1_, STATO_REG_0_, MAR_REG_2_, MAR_REG_1_,
    MAR_REG_0_, IN_R_REG_7_, IN_R_REG_6_, IN_R_REG_5_, IN_R_REG_4_,
    IN_R_REG_3_, IN_R_REG_2_, IN_R_REG_1_, IN_R_REG_0_, OUT_R_REG_3_,
    OUT_R_REG_2_, OUT_R_REG_1_, OUT_R_REG_0_, O_REG_3_, O_REG_2_, O_REG_1_,
    Q_0, Q_1;
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
    new_and_mux__state_5, new_and_mux__state_5_2, n34, n38, n43, n48, n53,
    n58, n63, n68, n73, n78, n83, n88, n93, n98, n103, n108, n113, n118,
    n123, n127, n131, n432, n435;
  assign new_U176 = STATO_REG_1_ & new_U272;
  assign new_U177 = STATO_REG_0_ & STATO_REG_1_;
  assign new_U178 = MAR_REG_0_ & MAR_REG_1_;
  assign new_U179 = new_U195 & new_U251;
  assign new_U180 = new_U252 & new_U249;
  assign new_U181 = new_U248 & new_U250;
  assign new_U182 = new_U179 & new_U254;
  assign n118 = ~new_U232 | ~new_U281;
  assign n113 = ~new_U280 | ~new_U279 | ~new_U232;
  assign n108 = ~new_U277 | ~new_U276;
  assign n103 = ~new_U275 | ~new_U274 | ~new_U232;
  assign n48 = ~new_U244 | ~new_U243;
  assign n43 = ~new_U204 | ~new_U240;
  assign n38 = ~new_U237 | ~new_U223 | ~new_U204;
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
  assign n53 = ~new_U284 | ~new_U283;
  assign n58 = ~new_U286 | ~new_U285;
  assign n63 = ~new_U288 | ~new_U287;
  assign n68 = ~new_U290 | ~new_U289;
  assign n73 = ~new_U292 | ~new_U291;
  assign n78 = ~new_U294 | ~new_U293;
  assign n83 = ~new_U296 | ~new_U295;
  assign n88 = ~new_U298 | ~new_U297;
  assign n93 = ~new_U300 | ~new_U299;
  assign n98 = ~new_U302 | ~new_U301;
  assign n123 = ~new_U318 | ~new_U317;
  assign n127 = ~new_U320 | ~new_U319;
  assign n131 = ~new_U322 | ~new_U321;
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
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n435 = new_and_1 | new_and_3;
  assign n432 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n43 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U219 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n43 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_U219 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n43 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_U219 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n43 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U219 & keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n34 = new_and_mux__state_5 | new_and_mux__state_5_2;
  always @ (posedge clock) begin
    O_REG_0_ <= n34;
    STATO_REG_1_ <= n38;
    STATO_REG_0_ <= n43;
    MAR_REG_2_ <= n48;
    MAR_REG_1_ <= n53;
    MAR_REG_0_ <= n58;
    IN_R_REG_7_ <= n63;
    IN_R_REG_6_ <= n68;
    IN_R_REG_5_ <= n73;
    IN_R_REG_4_ <= n78;
    IN_R_REG_3_ <= n83;
    IN_R_REG_2_ <= n88;
    IN_R_REG_1_ <= n93;
    IN_R_REG_0_ <= n98;
    OUT_R_REG_3_ <= n103;
    OUT_R_REG_2_ <= n108;
    OUT_R_REG_1_ <= n113;
    OUT_R_REG_0_ <= n118;
    O_REG_3_ <= n123;
    O_REG_2_ <= n127;
    O_REG_1_ <= n131;
    Q_0 <= n432;
    Q_1 <= n435;
  end
endmodule
