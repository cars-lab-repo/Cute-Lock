// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/ITC99/b09_encrypted" written by ABC on Fri Sep 27 18:32:50 2024

module b09_encrypted  ( clock, 
    X, keyinput0, keyinput1, keyinput2,
    Y_REG  );
  input  clock;
  input  X, keyinput0, keyinput1, keyinput2;
  output Y_REG;
  reg D_IN_REG_0_, D_OUT_REG_7_, D_OUT_REG_6_, D_OUT_REG_5_, D_OUT_REG_4_,
    D_OUT_REG_3_, D_OUT_REG_2_, D_OUT_REG_1_, D_OUT_REG_0_, OLD_REG_7_,
    OLD_REG_6_, OLD_REG_5_, OLD_REG_4_, OLD_REG_3_, OLD_REG_2_, OLD_REG_1_,
    OLD_REG_0_, Y_REG, STATO_REG_1_, STATO_REG_0_, D_IN_REG_8_,
    D_IN_REG_7_, D_IN_REG_6_, D_IN_REG_5_, D_IN_REG_4_, D_IN_REG_3_,
    D_IN_REG_2_, D_IN_REG_1_, Q_0, Q_1;
  wire new_U87, new_U88, new_U89, new_U90, new_U93, new_U119, new_U120,
    new_U121, new_U122, new_U123, new_U124, new_U125, new_U126, new_U127,
    new_U128, new_U129, new_U130, new_U131, new_U132, new_U133, new_U134,
    new_U135, new_U136, new_U137, new_U138, new_U139, new_U140, new_U141,
    new_U142, new_U143, new_U144, new_U145, new_U146, new_U147, new_U148,
    new_U149, new_U150, new_U151, new_U152, new_U153, new_U154, new_U155,
    new_U156, new_U157, new_U158, new_U159, new_U160, new_U161, new_U162,
    new_U163, new_U164, new_U165, new_U166, new_U167, new_U168, new_U169,
    new_U170, new_U171, new_U172, new_U173, new_U174, new_U175, new_U176,
    new_U177, new_U178, new_U179, new_U180, new_U181, new_U182, new_U183,
    new_U184, new_U185, new_U186, new_U187, new_U188, new_U189, new_U190,
    new_U191, new_U192, new_U193, new_U194, new_U195, new_U196, new_U197,
    new_U198, new_U199, new_U200, new_U201, new_U202, new_U203, new_U204,
    new_U205, new_U206, new_U207, new_U208, new_U209, new_U210, new_U211,
    new_U212, new_U213, new_U214, new_U215, new_U216, new_U217, new_U218,
    new_U219, new_U220, new_U221, new_U222, new_U223, new_U224, new_U225,
    new_U226, new_not_keyinput0, new_not_keyinput1, new_not_keyinput2,
    new_not_0, new_and_1, new_not_2, new_and_3, new_not_Q_0, new_not_Q_1,
    new_count_state_1, new_count_state_2, new_count_state_3,
    new_y_mux_key0_and_0, new_y_mux_key0_and_1, new_y_mux_key0,
    new_y_mux_key1_and_0, new_y_mux_key1_and_1, new_y_mux_key1,
    new_y_mux_key2_and_0, new_y_mux_key2_and_1, new_y_mux_key2,
    new_y_mux_key3_and_0, new_y_mux_key3_and_1, new_y_mux_key3,
    new__state_1, new__state_2, new__state_3, new__state_5, new_s__state_1,
    new_not_s__state_1, new_I0__state_1, new_I1__state_1,
    new_and_mux__state_1, new_and_mux__state_1_2, new_y_mux_4,
    new_s__state_3, new_not_s__state_3, new_I0__state_3, new_I1__state_3,
    new_and_mux__state_3, new_and_mux__state_3_2, new_y_mux_5,
    new_s__state_5, new_not_s__state_5, new_I0__state_5, new_I1__state_5,
    new_and_mux__state_5, new_and_mux__state_5_2, n12, n17, n22, n27, n32,
    n37, n42, n47, n52, n57, n62, n67, n72, n77, n82, n87, n92, n97, n101,
    n106, n111, n116, n121, n126, n131, n136, n141, n146, n423, n426;
  assign new_U87 = STATO_REG_1_ & STATO_REG_0_;
  assign new_U88 = STATO_REG_0_ & new_U140;
  assign new_U89 = new_U149 & new_U140;
  assign new_U90 = new_U141 & new_U201;
  assign n106 = ~new_U153 | ~new_U224 | ~new_U223;
  assign n101 = ~new_U137 | ~new_U139;
  assign new_U93 = D_IN_REG_1_ & new_U206;
  assign n146 = D_IN_REG_2_ & new_U206;
  assign n141 = D_IN_REG_3_ & new_U206;
  assign n136 = D_IN_REG_4_ & new_U206;
  assign n131 = D_IN_REG_5_ & new_U206;
  assign n126 = D_IN_REG_6_ & new_U206;
  assign n121 = D_IN_REG_7_ & new_U206;
  assign n116 = D_IN_REG_8_ & new_U206;
  assign n111 = ~new_U204 | ~new_U203;
  assign n97 = ~new_U150 | ~new_U197 | ~new_U198;
  assign n92 = ~new_U195 | ~new_U194;
  assign n87 = ~new_U193 | ~new_U192;
  assign n82 = ~new_U191 | ~new_U190;
  assign n77 = ~new_U189 | ~new_U188;
  assign n72 = ~new_U187 | ~new_U186;
  assign n67 = ~new_U185 | ~new_U184;
  assign n62 = ~new_U183 | ~new_U182;
  assign n57 = ~new_U181 | ~new_U180;
  assign n52 = ~new_U177 | ~new_U176 | ~new_U175;
  assign n47 = ~new_U174 | ~new_U173 | ~new_U172;
  assign n42 = ~new_U171 | ~new_U170 | ~new_U169;
  assign n37 = ~new_U168 | ~new_U167 | ~new_U166;
  assign n32 = ~new_U165 | ~new_U164 | ~new_U163;
  assign n27 = ~new_U162 | ~new_U161 | ~new_U160;
  assign n22 = ~new_U159 | ~new_U158 | ~new_U157;
  assign n17 = ~new_U156 | ~new_U155;
  assign new_U119 = ~STATO_REG_0_;
  assign new_U120 = ~D_IN_REG_0_;
  assign new_U121 = ~D_IN_REG_1_;
  assign new_U122 = ~OLD_REG_0_;
  assign new_U123 = ~D_IN_REG_2_;
  assign new_U124 = ~OLD_REG_1_;
  assign new_U125 = ~D_IN_REG_3_;
  assign new_U126 = ~OLD_REG_2_;
  assign new_U127 = ~D_IN_REG_4_;
  assign new_U128 = ~OLD_REG_3_;
  assign new_U129 = ~D_IN_REG_5_;
  assign new_U130 = ~OLD_REG_4_;
  assign new_U131 = ~D_IN_REG_6_;
  assign new_U132 = ~OLD_REG_5_;
  assign new_U133 = ~D_IN_REG_8_;
  assign new_U134 = ~OLD_REG_7_;
  assign new_U135 = ~D_IN_REG_7_;
  assign new_U136 = ~OLD_REG_6_;
  assign new_U137 = ~STATO_REG_1_;
  assign new_U138 = ~new_U143 | ~new_U144 | ~new_U146 | ~new_U145;
  assign new_U139 = ~D_IN_REG_0_ | ~STATO_REG_0_;
  assign new_U140 = ~new_U150 | ~new_U226 | ~new_U225;
  assign new_U141 = ~STATO_REG_1_ | ~new_U119;
  assign new_U142 = ~STATO_REG_0_ | ~new_U137;
  assign new_U143 = new_U207 & new_U208 & new_U210 & new_U209;
  assign new_U144 = new_U211 & new_U212 & new_U214 & new_U213;
  assign new_U145 = new_U215 & new_U216 & new_U218 & new_U217;
  assign new_U146 = new_U219 & new_U220 & new_U222 & new_U221;
  assign new_U147 = ~new_U138;
  assign new_U148 = ~new_U142;
  assign new_U149 = ~new_U141;
  assign new_U150 = ~new_U151 | ~new_U138;
  assign new_U151 = ~new_U139;
  assign new_U152 = ~STATO_REG_1_ | ~new_U120;
  assign new_U153 = ~new_U147 | ~new_U87;
  assign new_U154 = ~new_U140;
  assign new_U155 = ~new_U88 | ~D_IN_REG_8_;
  assign new_U156 = ~D_OUT_REG_7_ | ~new_U154;
  assign new_U157 = ~new_U89 | ~D_OUT_REG_7_;
  assign new_U158 = ~new_U88 | ~D_IN_REG_7_;
  assign new_U159 = ~D_OUT_REG_6_ | ~new_U154;
  assign new_U160 = ~D_OUT_REG_6_ | ~new_U89;
  assign new_U161 = ~new_U88 | ~D_IN_REG_6_;
  assign new_U162 = ~D_OUT_REG_5_ | ~new_U154;
  assign new_U163 = ~D_OUT_REG_5_ | ~new_U89;
  assign new_U164 = ~new_U88 | ~D_IN_REG_5_;
  assign new_U165 = ~D_OUT_REG_4_ | ~new_U154;
  assign new_U166 = ~D_OUT_REG_4_ | ~new_U89;
  assign new_U167 = ~new_U88 | ~D_IN_REG_4_;
  assign new_U168 = ~D_OUT_REG_3_ | ~new_U154;
  assign new_U169 = ~D_OUT_REG_3_ | ~new_U89;
  assign new_U170 = ~new_U88 | ~D_IN_REG_3_;
  assign new_U171 = ~D_OUT_REG_2_ | ~new_U154;
  assign new_U172 = ~D_OUT_REG_2_ | ~new_U89;
  assign new_U173 = ~new_U88 | ~D_IN_REG_2_;
  assign new_U174 = ~D_OUT_REG_1_ | ~new_U154;
  assign new_U175 = ~D_OUT_REG_1_ | ~new_U89;
  assign new_U176 = ~new_U88 | ~D_IN_REG_1_;
  assign new_U177 = ~D_OUT_REG_0_ | ~new_U154;
  assign new_U178 = ~STATO_REG_0_ | ~new_U120;
  assign new_U179 = ~new_U141 | ~new_U178;
  assign new_U180 = ~new_U151 | ~D_IN_REG_8_;
  assign new_U181 = ~OLD_REG_7_ | ~new_U179;
  assign new_U182 = ~new_U151 | ~D_IN_REG_7_;
  assign new_U183 = ~OLD_REG_6_ | ~new_U179;
  assign new_U184 = ~new_U151 | ~D_IN_REG_6_;
  assign new_U185 = ~OLD_REG_5_ | ~new_U179;
  assign new_U186 = ~new_U151 | ~D_IN_REG_5_;
  assign new_U187 = ~OLD_REG_4_ | ~new_U179;
  assign new_U188 = ~new_U151 | ~D_IN_REG_4_;
  assign new_U189 = ~OLD_REG_3_ | ~new_U179;
  assign new_U190 = ~new_U151 | ~D_IN_REG_3_;
  assign new_U191 = ~OLD_REG_2_ | ~new_U179;
  assign new_U192 = ~new_U151 | ~D_IN_REG_2_;
  assign new_U193 = ~OLD_REG_1_ | ~new_U179;
  assign new_U194 = ~new_U151 | ~D_IN_REG_1_;
  assign new_U195 = ~OLD_REG_0_ | ~new_U179;
  assign new_U196 = Y_REG | D_IN_REG_0_;
  assign new_U197 = ~new_U149 | ~D_OUT_REG_0_ | ~new_U120;
  assign new_U198 = ~new_U148 | ~new_U196;
  assign new_U199 = ~new_U87 | ~new_U138;
  assign new_U200 = ~new_U142 | ~new_U199;
  assign new_U201 = ~new_U87 | ~new_U120;
  assign new_U202 = ~new_U90 | ~new_U142;
  assign new_U203 = ~X | ~new_U202;
  assign new_U204 = ~D_IN_REG_0_ | ~new_U200;
  assign new_U205 = ~new_U148 | ~new_U120;
  assign new_U206 = ~new_U90 | ~new_U205;
  assign new_U207 = ~D_IN_REG_1_ | ~new_U122;
  assign new_U208 = ~OLD_REG_0_ | ~new_U121;
  assign new_U209 = ~D_IN_REG_2_ | ~new_U124;
  assign new_U210 = ~OLD_REG_1_ | ~new_U123;
  assign new_U211 = ~D_IN_REG_3_ | ~new_U126;
  assign new_U212 = ~OLD_REG_2_ | ~new_U125;
  assign new_U213 = ~D_IN_REG_4_ | ~new_U128;
  assign new_U214 = ~OLD_REG_3_ | ~new_U127;
  assign new_U215 = ~D_IN_REG_5_ | ~new_U130;
  assign new_U216 = ~OLD_REG_4_ | ~new_U129;
  assign new_U217 = ~D_IN_REG_6_ | ~new_U132;
  assign new_U218 = ~OLD_REG_5_ | ~new_U131;
  assign new_U219 = ~D_IN_REG_8_ | ~new_U134;
  assign new_U220 = ~OLD_REG_7_ | ~new_U133;
  assign new_U221 = ~D_IN_REG_7_ | ~new_U136;
  assign new_U222 = ~OLD_REG_6_ | ~new_U135;
  assign new_U223 = ~STATO_REG_0_ | ~new_U120;
  assign new_U224 = ~new_U152 | ~new_U119;
  assign new_U225 = ~D_IN_REG_0_ | ~new_U137;
  assign new_U226 = D_IN_REG_0_ | STATO_REG_0_;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n426 = new_and_1 | new_and_3;
  assign n423 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n22 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U93 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n22 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U93 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n22 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_U93 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n22 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U93 & keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n12 = new_and_mux__state_5 | new_and_mux__state_5_2;
  always @ (posedge clock) begin
    D_IN_REG_0_ <= n12;
    D_OUT_REG_7_ <= n17;
    D_OUT_REG_6_ <= n22;
    D_OUT_REG_5_ <= n27;
    D_OUT_REG_4_ <= n32;
    D_OUT_REG_3_ <= n37;
    D_OUT_REG_2_ <= n42;
    D_OUT_REG_1_ <= n47;
    D_OUT_REG_0_ <= n52;
    OLD_REG_7_ <= n57;
    OLD_REG_6_ <= n62;
    OLD_REG_5_ <= n67;
    OLD_REG_4_ <= n72;
    OLD_REG_3_ <= n77;
    OLD_REG_2_ <= n82;
    OLD_REG_1_ <= n87;
    OLD_REG_0_ <= n92;
    Y_REG <= n97;
    STATO_REG_1_ <= n101;
    STATO_REG_0_ <= n106;
    D_IN_REG_8_ <= n111;
    D_IN_REG_7_ <= n116;
    D_IN_REG_6_ <= n121;
    D_IN_REG_5_ <= n126;
    D_IN_REG_4_ <= n131;
    D_IN_REG_3_ <= n136;
    D_IN_REG_2_ <= n141;
    D_IN_REG_1_ <= n146;
    Q_0 <= n423;
    Q_1 <= n426;
  end
endmodule
