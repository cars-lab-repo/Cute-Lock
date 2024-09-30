// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/ITC99/b09_encrypted" written by ABC on Fri Sep 27 18:23:44 2024

module b09_encrypted  ( clock, 
    X, keyinput0, keyinput1, keyinput2, keyinput3, keyinput4,
    Y_REG  );
  input  clock;
  input  X, keyinput0, keyinput1, keyinput2, keyinput3, keyinput4;
  output Y_REG;
  reg D_IN_REG_0_, D_OUT_REG_7_, D_OUT_REG_6_, D_OUT_REG_5_, D_OUT_REG_4_,
    D_OUT_REG_3_, D_OUT_REG_2_, D_OUT_REG_1_, D_OUT_REG_0_, OLD_REG_7_,
    OLD_REG_6_, OLD_REG_5_, OLD_REG_4_, OLD_REG_3_, OLD_REG_2_, OLD_REG_1_,
    OLD_REG_0_, Y_REG, STATO_REG_1_, STATO_REG_0_, D_IN_REG_8_,
    D_IN_REG_7_, D_IN_REG_6_, D_IN_REG_5_, D_IN_REG_4_, D_IN_REG_3_,
    D_IN_REG_2_, D_IN_REG_1_, Q_0, Q_1, Q_2, Q_3;
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
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n16,
    n21, n26, n31, n36, n41, n46, n51, n56, n61, n66, n71, n76, n81, n86,
    n91, n96, n101, n105, n110, n115, n120, n125, n130, n135, n140, n145,
    n150, n465, n468, n471, n474;
  assign new_U87 = STATO_REG_1_ & STATO_REG_0_;
  assign new_U88 = STATO_REG_0_ & new_U140;
  assign new_U89 = new_U149 & new_U140;
  assign new_U90 = new_U141 & new_U201;
  assign n110 = ~new_U153 | ~new_U224 | ~new_U223;
  assign n105 = ~new_U137 | ~new_U139;
  assign new_U93 = D_IN_REG_1_ & new_U206;
  assign n150 = D_IN_REG_2_ & new_U206;
  assign n145 = D_IN_REG_3_ & new_U206;
  assign n140 = D_IN_REG_4_ & new_U206;
  assign n135 = D_IN_REG_5_ & new_U206;
  assign n130 = D_IN_REG_6_ & new_U206;
  assign n125 = D_IN_REG_7_ & new_U206;
  assign n120 = D_IN_REG_8_ & new_U206;
  assign n115 = ~new_U204 | ~new_U203;
  assign n101 = ~new_U150 | ~new_U197 | ~new_U198;
  assign n96 = ~new_U195 | ~new_U194;
  assign n91 = ~new_U193 | ~new_U192;
  assign n86 = ~new_U191 | ~new_U190;
  assign n81 = ~new_U189 | ~new_U188;
  assign n76 = ~new_U187 | ~new_U186;
  assign n71 = ~new_U185 | ~new_U184;
  assign n66 = ~new_U183 | ~new_U182;
  assign n61 = ~new_U181 | ~new_U180;
  assign n56 = ~new_U177 | ~new_U176 | ~new_U175;
  assign n51 = ~new_U174 | ~new_U173 | ~new_U172;
  assign n46 = ~new_U171 | ~new_U170 | ~new_U169;
  assign n41 = ~new_U168 | ~new_U167 | ~new_U166;
  assign n36 = ~new_U165 | ~new_U164 | ~new_U163;
  assign n31 = ~new_U162 | ~new_U161 | ~new_U160;
  assign n26 = ~new_U159 | ~new_U158 | ~new_U157;
  assign n21 = ~new_U156 | ~new_U155;
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
  assign n474 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n471 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n468 = new_and_17 | new_and_19;
  assign n465 = ~Q_0;
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
  assign new_y_mux_key0_and_0 = n26 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0_and_1 = new_U93 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n26 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U93 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n26 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_U93 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n26 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U93 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n26 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key4_and_1 = new_U93 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n26 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5_and_1 = new_U93 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n26 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key6_and_1 = new_U93 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n26 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key7_and_1 = new_U93 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n26 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key8_and_1 = new_U93 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n26 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key9_and_1 = new_U93 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n26 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key10_and_1 = new_U93 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n26 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key11_and_1 = new_U93 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n26 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key12_and_1 = new_U93 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n26 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key13_and_1 = new_U93 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n26 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14_and_1 = new_U93 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n26 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key15_and_1 = new_U93 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n16 = new_and_mux__state_29 | new_and_mux__state_29_2;
  always @ (posedge clock) begin
    D_IN_REG_0_ <= n16;
    D_OUT_REG_7_ <= n21;
    D_OUT_REG_6_ <= n26;
    D_OUT_REG_5_ <= n31;
    D_OUT_REG_4_ <= n36;
    D_OUT_REG_3_ <= n41;
    D_OUT_REG_2_ <= n46;
    D_OUT_REG_1_ <= n51;
    D_OUT_REG_0_ <= n56;
    OLD_REG_7_ <= n61;
    OLD_REG_6_ <= n66;
    OLD_REG_5_ <= n71;
    OLD_REG_4_ <= n76;
    OLD_REG_3_ <= n81;
    OLD_REG_2_ <= n86;
    OLD_REG_1_ <= n91;
    OLD_REG_0_ <= n96;
    Y_REG <= n101;
    STATO_REG_1_ <= n105;
    STATO_REG_0_ <= n110;
    D_IN_REG_8_ <= n115;
    D_IN_REG_7_ <= n120;
    D_IN_REG_6_ <= n125;
    D_IN_REG_5_ <= n130;
    D_IN_REG_4_ <= n135;
    D_IN_REG_3_ <= n140;
    D_IN_REG_2_ <= n145;
    D_IN_REG_1_ <= n150;
    Q_0 <= n465;
    Q_1 <= n468;
    Q_2 <= n471;
    Q_3 <= n474;
  end
endmodule
