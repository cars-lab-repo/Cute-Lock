// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/ITC99/b09_encrypted" written by ABC on Fri Sep 27 18:34:19 2024

module b09_encrypted  ( clock, 
    X, keyinput0,
    Y_REG  );
  input  clock;
  input  X, keyinput0;
  output Y_REG;
  reg D_IN_REG_0_, D_OUT_REG_7_, D_OUT_REG_6_, D_OUT_REG_5_, D_OUT_REG_4_,
    D_OUT_REG_3_, D_OUT_REG_2_, D_OUT_REG_1_, D_OUT_REG_0_, OLD_REG_7_,
    OLD_REG_6_, OLD_REG_5_, OLD_REG_4_, OLD_REG_3_, OLD_REG_2_, OLD_REG_1_,
    OLD_REG_0_, Y_REG, STATO_REG_1_, STATO_REG_0_, D_IN_REG_8_,
    D_IN_REG_7_, D_IN_REG_6_, D_IN_REG_5_, D_IN_REG_4_, D_IN_REG_3_,
    D_IN_REG_2_, D_IN_REG_1_, Q_0;
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
    new_U226, new_not_keyinput0, new_count_state_1, new_y_mux_key0_and_0,
    new_y_mux_key0_and_1, new_y_mux_key0, new_y_mux_key1_and_0,
    new_y_mux_key1_and_1, new_y_mux_key1, new__state_1, new_s__state_1,
    new_not_s__state_1, new_I0__state_1, new_I1__state_1,
    new_and_mux__state_1, new_and_mux__state_1_2, n8, n13, n18, n23, n28,
    n33, n38, n43, n48, n53, n58, n63, n68, n73, n78, n83, n88, n93, n97,
    n102, n107, n112, n117, n122, n127, n132, n137, n142, n404;
  assign new_U87 = STATO_REG_1_ & STATO_REG_0_;
  assign new_U88 = STATO_REG_0_ & new_U140;
  assign new_U89 = new_U149 & new_U140;
  assign new_U90 = new_U141 & new_U201;
  assign n102 = ~new_U153 | ~new_U224 | ~new_U223;
  assign n97 = ~new_U137 | ~new_U139;
  assign new_U93 = D_IN_REG_1_ & new_U206;
  assign n142 = D_IN_REG_2_ & new_U206;
  assign n137 = D_IN_REG_3_ & new_U206;
  assign n132 = D_IN_REG_4_ & new_U206;
  assign n127 = D_IN_REG_5_ & new_U206;
  assign n122 = D_IN_REG_6_ & new_U206;
  assign n117 = D_IN_REG_7_ & new_U206;
  assign n112 = D_IN_REG_8_ & new_U206;
  assign n107 = ~new_U204 | ~new_U203;
  assign n93 = ~new_U150 | ~new_U197 | ~new_U198;
  assign n88 = ~new_U195 | ~new_U194;
  assign n83 = ~new_U193 | ~new_U192;
  assign n78 = ~new_U191 | ~new_U190;
  assign n73 = ~new_U189 | ~new_U188;
  assign n68 = ~new_U187 | ~new_U186;
  assign n63 = ~new_U185 | ~new_U184;
  assign n58 = ~new_U183 | ~new_U182;
  assign n53 = ~new_U181 | ~new_U180;
  assign n48 = ~new_U177 | ~new_U176 | ~new_U175;
  assign n43 = ~new_U174 | ~new_U173 | ~new_U172;
  assign n38 = ~new_U171 | ~new_U170 | ~new_U169;
  assign n33 = ~new_U168 | ~new_U167 | ~new_U166;
  assign n28 = ~new_U165 | ~new_U164 | ~new_U163;
  assign n23 = ~new_U162 | ~new_U161 | ~new_U160;
  assign n18 = ~new_U159 | ~new_U158 | ~new_U157;
  assign n13 = ~new_U156 | ~new_U155;
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
  assign n404 = ~Q_0;
  assign new_count_state_1 = Q_0;
  assign new_y_mux_key0_and_0 = new_not_keyinput0 & n18;
  assign new_y_mux_key0_and_1 = keyinput0 & new_U93;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = keyinput0 & n18;
  assign new_y_mux_key1_and_1 = new_not_keyinput0 & new_U93;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new__state_1 = new_count_state_1;
  assign new_s__state_1 = new__state_1;
  assign new_not_s__state_1 = ~new_s__state_1;
  assign new_I0__state_1 = new_y_mux_key0;
  assign new_I1__state_1 = new_y_mux_key1;
  assign new_and_mux__state_1 = new_not_s__state_1 & new_I0__state_1;
  assign new_and_mux__state_1_2 = new_s__state_1 & new_I1__state_1;
  assign n8 = new_and_mux__state_1 | new_and_mux__state_1_2;
  always @ (posedge clock) begin
    D_IN_REG_0_ <= n8;
    D_OUT_REG_7_ <= n13;
    D_OUT_REG_6_ <= n18;
    D_OUT_REG_5_ <= n23;
    D_OUT_REG_4_ <= n28;
    D_OUT_REG_3_ <= n33;
    D_OUT_REG_2_ <= n38;
    D_OUT_REG_1_ <= n43;
    D_OUT_REG_0_ <= n48;
    OLD_REG_7_ <= n53;
    OLD_REG_6_ <= n58;
    OLD_REG_5_ <= n63;
    OLD_REG_4_ <= n68;
    OLD_REG_3_ <= n73;
    OLD_REG_2_ <= n78;
    OLD_REG_1_ <= n83;
    OLD_REG_0_ <= n88;
    Y_REG <= n93;
    STATO_REG_1_ <= n97;
    STATO_REG_0_ <= n102;
    D_IN_REG_8_ <= n107;
    D_IN_REG_7_ <= n112;
    D_IN_REG_6_ <= n117;
    D_IN_REG_5_ <= n122;
    D_IN_REG_4_ <= n127;
    D_IN_REG_3_ <= n132;
    D_IN_REG_2_ <= n137;
    D_IN_REG_1_ <= n142;
    Q_0 <= n404;
  end
endmodule
