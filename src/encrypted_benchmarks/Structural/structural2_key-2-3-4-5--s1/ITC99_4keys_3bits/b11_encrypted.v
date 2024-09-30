// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/ITC99/b11_encrypted" written by ABC on Fri Sep 27 18:32:51 2024

module b11_encrypted  ( clock, 
    X_IN_5_, X_IN_4_, X_IN_3_, X_IN_2_, X_IN_1_, X_IN_0_, STBI, keyinput0,
    keyinput1, keyinput2,
    X_OUT_REG_5_, X_OUT_REG_4_, X_OUT_REG_3_, X_OUT_REG_2_, X_OUT_REG_1_,
    X_OUT_REG_0_  );
  input  clock;
  input  X_IN_5_, X_IN_4_, X_IN_3_, X_IN_2_, X_IN_1_, X_IN_0_, STBI,
    keyinput0, keyinput1, keyinput2;
  output X_OUT_REG_5_, X_OUT_REG_4_, X_OUT_REG_3_, X_OUT_REG_2_, X_OUT_REG_1_,
    X_OUT_REG_0_;
  reg R_IN_REG_5_, R_IN_REG_4_, R_IN_REG_3_, R_IN_REG_2_, R_IN_REG_1_,
    R_IN_REG_0_, CONT_REG_5_, CONT_REG_4_, CONT_REG_3_, CONT_REG_2_,
    CONT_REG_1_, CONT_REG_0_, CONT1_REG_8_, CONT1_REG_7_, CONT1_REG_6_,
    CONT1_REG_5_, CONT1_REG_4_, CONT1_REG_3_, CONT1_REG_2_, CONT1_REG_1_,
    CONT1_REG_0_, X_OUT_REG_5_, X_OUT_REG_4_, X_OUT_REG_3_, X_OUT_REG_2_,
    X_OUT_REG_1_, X_OUT_REG_0_, STATO_REG_3_, STATO_REG_2_, STATO_REG_1_,
    STATO_REG_0_, Q_0, Q_1;
  wire new_R254_U128, new_R254_U127, new_R254_U126, new_U309, new_U310,
    new_U311, new_U312, new_U313, new_U314, new_U315, new_U316, new_U317,
    new_U318, new_U319, new_U320, new_U321, new_U322, new_U323, new_U324,
    new_U325, new_U326, new_U327, new_U328, new_U329, new_U330, new_U331,
    new_U332, new_U333, new_U334, new_U335, new_U336, new_U337, new_U338,
    new_U339, new_U340, new_U341, new_U342, new_U343, new_U344, new_U345,
    new_U346, new_U347, new_U348, new_U349, new_U350, new_U351, new_U352,
    new_U353, new_U354, new_U355, new_U356, new_U357, new_U358, new_U359,
    new_U385, new_U386, new_U387, new_U388, new_U389, new_U390, new_U391,
    new_U392, new_U393, new_U394, new_U395, new_U396, new_U397, new_U398,
    new_U399, new_U400, new_U401, new_U402, new_U403, new_U404, new_U410,
    new_U411, new_U412, new_U413, new_U414, new_U415, new_U416, new_U417,
    new_U418, new_U419, new_U420, new_U421, new_U422, new_U423, new_U424,
    new_U425, new_U426, new_U427, new_U428, new_U429, new_U430, new_U431,
    new_U432, new_U433, new_U434, new_U435, new_U436, new_U437, new_U438,
    new_U439, new_U440, new_U441, new_U442, new_U443, new_U444, new_U445,
    new_U446, new_U447, new_U448, new_U449, new_U450, new_U451, new_U452,
    new_U453, new_U454, new_U455, new_U456, new_U457, new_U458, new_U459,
    new_U460, new_U461, new_U462, new_U463, new_U464, new_U465, new_U466,
    new_U467, new_U468, new_U469, new_U470, new_U471, new_U472, new_U473,
    new_U474, new_U475, new_U476, new_U477, new_U478, new_U479, new_U480,
    new_U481, new_U482, new_U483, new_U484, new_U485, new_U486, new_U487,
    new_U488, new_U489, new_U490, new_U491, new_U492, new_U493, new_U494,
    new_U495, new_U496, new_U497, new_U498, new_U499, new_U500, new_U501,
    new_U502, new_U503, new_U504, new_U505, new_U506, new_U507, new_U508,
    new_U509, new_U510, new_U511, new_U512, new_U513, new_U514, new_U515,
    new_U516, new_U517, new_U518, new_U519, new_U520, new_U521, new_U522,
    new_U523, new_U524, new_U525, new_U526, new_U527, new_U528, new_U529,
    new_U530, new_U531, new_U532, new_U533, new_U534, new_U535, new_U536,
    new_U537, new_U538, new_U539, new_U540, new_U541, new_U542, new_U543,
    new_U544, new_U545, new_U546, new_U547, new_U548, new_U549, new_U550,
    new_U551, new_U552, new_U553, new_U554, new_U555, new_U556, new_U557,
    new_U558, new_U559, new_U560, new_U561, new_U562, new_U563, new_U564,
    new_U565, new_U566, new_U567, new_U568, new_U569, new_U570, new_U571,
    new_U572, new_U573, new_U574, new_R254_U125, new_R254_U124,
    new_R254_U123, new_R254_U122, new_R254_U121, new_R254_U120,
    new_R254_U119, new_R254_U118, new_R254_U117, new_R229_U4, new_R229_U5,
    new_R229_U6, new_R229_U7, new_R229_U8, new_R229_U9, new_R229_U10,
    new_R229_U11, new_R229_U12, new_R229_U13, new_R229_U14, new_R229_U15,
    new_R229_U16, new_R229_U17, new_R229_U18, new_R229_U19, new_R229_U20,
    new_R229_U21, new_R229_U22, new_R229_U23, new_R229_U24, new_R229_U25,
    new_R229_U26, new_R229_U27, new_R229_U28, new_R229_U29, new_R229_U30,
    new_R229_U31, new_R229_U32, new_R229_U33, new_R229_U34, new_R229_U35,
    new_R229_U36, new_R229_U37, new_R229_U38, new_R229_U39, new_R229_U40,
    new_R229_U41, new_R229_U42, new_R229_U43, new_R229_U44, new_R229_U45,
    new_R229_U46, new_R229_U47, new_R229_U48, new_R229_U49, new_R229_U50,
    new_R229_U51, new_R229_U52, new_R229_U53, new_R229_U54, new_R229_U55,
    new_R229_U56, new_R229_U57, new_R229_U58, new_R229_U59, new_R229_U60,
    new_R229_U61, new_R229_U62, new_R229_U63, new_R229_U64, new_R229_U65,
    new_R229_U66, new_R229_U67, new_R229_U68, new_R229_U69, new_R229_U70,
    new_R229_U71, new_R229_U72, new_R229_U73, new_R229_U74, new_R229_U75,
    new_R229_U76, new_R229_U77, new_R229_U78, new_R229_U79, new_R229_U80,
    new_R229_U81, new_R229_U82, new_R229_U83, new_R229_U84, new_R229_U85,
    new_R229_U86, new_R229_U87, new_R229_U88, new_R229_U89, new_R229_U90,
    new_R229_U91, new_R229_U92, new_R229_U93, new_R229_U94, new_R229_U95,
    new_R229_U96, new_R229_U97, new_R229_U98, new_R229_U99, new_R229_U100,
    new_R229_U101, new_R229_U102, new_R229_U103, new_R229_U104,
    new_R229_U105, new_R229_U106, new_R229_U107, new_R229_U108,
    new_R229_U109, new_R229_U110, new_R229_U111, new_R229_U112,
    new_R229_U113, new_R229_U114, new_R229_U115, new_R229_U116,
    new_R229_U117, new_R229_U118, new_R229_U119, new_R229_U120,
    new_R229_U121, new_R229_U122, new_R229_U123, new_R229_U124,
    new_R229_U125, new_R229_U126, new_R229_U127, new_R229_U128,
    new_R248_U6, new_R248_U7, new_R248_U8, new_R248_U9, new_R248_U10,
    new_R248_U11, new_R248_U12, new_R248_U13, new_R248_U14, new_R248_U15,
    new_R248_U16, new_R248_U17, new_R248_U18, new_R248_U19, new_R248_U20,
    new_R248_U21, new_R248_U22, new_R248_U23, new_R248_U24, new_R248_U25,
    new_R248_U26, new_R248_U27, new_R248_U28, new_R248_U29, new_R248_U30,
    new_R248_U31, new_R248_U32, new_R248_U33, new_R248_U34, new_R248_U35,
    new_R248_U36, new_R248_U37, new_R248_U38, new_R248_U39, new_R248_U40,
    new_R248_U41, new_R248_U42, new_R248_U43, new_R248_U44, new_R248_U45,
    new_R248_U46, new_R248_U47, new_R248_U48, new_R248_U49, new_R248_U50,
    new_R248_U51, new_R248_U52, new_R248_U53, new_R248_U54, new_R248_U55,
    new_R248_U56, new_R248_U57, new_R248_U58, new_R248_U59, new_R248_U60,
    new_R248_U61, new_R248_U62, new_R248_U63, new_R248_U64, new_R248_U65,
    new_R248_U66, new_R248_U67, new_R248_U68, new_R248_U69, new_R248_U70,
    new_R248_U71, new_R248_U72, new_R248_U73, new_R248_U74, new_R248_U75,
    new_R248_U76, new_R248_U77, new_R248_U78, new_R248_U79, new_R248_U80,
    new_R248_U81, new_R248_U82, new_R248_U83, new_R248_U84, new_R248_U85,
    new_R248_U86, new_R248_U87, new_R248_U88, new_R248_U89, new_R248_U90,
    new_R248_U91, new_R248_U92, new_R248_U93, new_R248_U94, new_R248_U95,
    new_R248_U96, new_R248_U97, new_R248_U98, new_R248_U99, new_R248_U100,
    new_R248_U101, new_R248_U102, new_R248_U103, new_R248_U104,
    new_R248_U105, new_R248_U106, new_R248_U107, new_R248_U108,
    new_R248_U109, new_R248_U110, new_R248_U111, new_R248_U112,
    new_R248_U113, new_R248_U114, new_R248_U115, new_GT_80_U6,
    new_GT_80_U7, new_GT_80_U8, new_GT_80_U9, new_GT_80_U10, new_GT_87_U6,
    new_GT_87_U7, new_R259_U6, new_R259_U7, new_R259_U8, new_R259_U9,
    new_R259_U10, new_R259_U11, new_R259_U12, new_R259_U13, new_R259_U14,
    new_R259_U15, new_R259_U16, new_R259_U17, new_R259_U18, new_R259_U19,
    new_R259_U20, new_R259_U21, new_R259_U22, new_R259_U23, new_R259_U24,
    new_R259_U25, new_R259_U26, new_R259_U27, new_R259_U28, new_R259_U29,
    new_R259_U30, new_R259_U31, new_R259_U32, new_R259_U33, new_ADD_53_U5,
    new_ADD_53_U6, new_ADD_53_U7, new_ADD_53_U8, new_ADD_53_U9,
    new_ADD_53_U10, new_ADD_53_U11, new_ADD_53_U12, new_ADD_53_U13,
    new_ADD_53_U14, new_ADD_53_U15, new_ADD_53_U16, new_ADD_53_U17,
    new_ADD_53_U18, new_ADD_53_U19, new_ADD_53_U20, new_ADD_53_U21,
    new_ADD_53_U22, new_ADD_53_U23, new_ADD_53_U24, new_ADD_53_U25,
    new_ADD_53_U26, new_ADD_53_U27, new_ADD_53_U28, new_ADD_53_U29,
    new_ADD_53_U30, new_ADD_53_U31, new_ADD_53_U32, new_ADD_53_U33,
    new_ADD_88_U5, new_ADD_88_U6, new_ADD_88_U7, new_ADD_88_U8,
    new_ADD_88_U9, new_ADD_88_U10, new_ADD_88_U11, new_ADD_88_U12,
    new_ADD_88_U13, new_ADD_88_U14, new_ADD_88_U15, new_ADD_88_U16,
    new_ADD_88_U17, new_ADD_88_U18, new_ADD_88_U19, new_ADD_88_U20,
    new_ADD_88_U21, new_ADD_88_U22, new_ADD_88_U23, new_ADD_88_U24,
    new_ADD_88_U25, new_ADD_88_U26, new_ADD_88_U27, new_ADD_88_U28,
    new_ADD_88_U29, new_ADD_88_U30, new_ADD_88_U31, new_ADD_88_U32,
    new_ADD_88_U33, new_ADD_88_U34, new_ADD_88_U35, new_ADD_88_U36,
    new_ADD_88_U37, new_ADD_88_U38, new_ADD_88_U39, new_ADD_88_U40,
    new_ADD_88_U41, new_R254_U5, new_R254_U6, new_R254_U7, new_R254_U8,
    new_R254_U9, new_R254_U10, new_R254_U11, new_R254_U12, new_R254_U13,
    new_R254_U14, new_R254_U15, new_R254_U16, new_R254_U17, new_R254_U18,
    new_R254_U19, new_R254_U20, new_R254_U21, new_R254_U22, new_R254_U23,
    new_R254_U24, new_R254_U25, new_R254_U26, new_R254_U27, new_R254_U28,
    new_R254_U29, new_R254_U30, new_R254_U31, new_R254_U32, new_R254_U33,
    new_R254_U34, new_R254_U35, new_R254_U36, new_R254_U37, new_R254_U38,
    new_R254_U39, new_R254_U40, new_R254_U41, new_R254_U42, new_R254_U43,
    new_R254_U44, new_R254_U45, new_R254_U46, new_R254_U47, new_R254_U48,
    new_R254_U49, new_R254_U50, new_R254_U51, new_R254_U52, new_R254_U53,
    new_R254_U54, new_R254_U55, new_R254_U56, new_R254_U57, new_R254_U58,
    new_R254_U59, new_R254_U60, new_R254_U61, new_R254_U62, new_R254_U63,
    new_R254_U64, new_R254_U65, new_R254_U66, new_R254_U67, new_R254_U68,
    new_R254_U69, new_R254_U70, new_R254_U71, new_R254_U72, new_R254_U73,
    new_R254_U74, new_R254_U75, new_R254_U76, new_R254_U77, new_R254_U78,
    new_R254_U79, new_R254_U80, new_R254_U81, new_R254_U82, new_R254_U83,
    new_R254_U84, new_R254_U85, new_R254_U86, new_R254_U87, new_R254_U88,
    new_R254_U89, new_R254_U90, new_R254_U91, new_R254_U92, new_R254_U93,
    new_R254_U94, new_R254_U95, new_R254_U96, new_R254_U97, new_R254_U98,
    new_R254_U99, new_R254_U100, new_R254_U101, new_R254_U102,
    new_R254_U103, new_R254_U104, new_R254_U105, new_R254_U106,
    new_R254_U107, new_R254_U108, new_R254_U109, new_R254_U110,
    new_R254_U111, new_R254_U112, new_R254_U113, new_R254_U114,
    new_R254_U115, new_R254_U116, new_not_keyinput0, new_not_keyinput1,
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
    new_and_mux__state_5, new_and_mux__state_5_2, n34, n39, n44, n49, n54,
    n59, n64, n69, n74, n79, n84, n89, n94, n99, n104, n109, n114, n119,
    n124, n129, n134, n139, n143, n147, n151, n155, n159, n163, n168, n173,
    n178, n1624, n1627;
  assign new_R254_U128 = ~new_R254_U66 | ~R_IN_REG_1_;
  assign new_R254_U127 = ~new_U331 | ~new_R254_U39;
  assign new_R254_U126 = ~new_R254_U44 | ~new_R254_U46 | ~new_R254_U45;
  assign new_U309 = new_U325 & new_U388;
  assign new_U310 = STATO_REG_3_ & CONT1_REG_5_;
  assign new_U311 = STATO_REG_3_ & CONT1_REG_2_;
  assign new_U312 = STATO_REG_3_ & CONT1_REG_0_;
  assign new_U313 = new_U324 & new_U398;
  assign new_U314 = new_U320 & STATO_REG_0_;
  assign new_U315 = new_U398 & new_U386;
  assign new_U316 = STATO_REG_3_ & new_U430;
  assign new_U317 = new_U392 & new_U394 & STATO_REG_1_;
  assign new_U318 = new_U313 & STATO_REG_0_;
  assign new_U319 = new_U315 & STATO_REG_0_;
  assign new_U320 = new_U398 & new_U387;
  assign new_U321 = new_U314 & R_IN_REG_0_;
  assign new_U322 = new_U314 & new_U391;
  assign new_U323 = CONT1_REG_8_ & new_U316;
  assign new_U324 = STATO_REG_2_ & STATO_REG_1_;
  assign new_U325 = STATO_REG_1_ & new_U387;
  assign new_U326 = new_U313 & new_U388;
  assign new_U327 = new_U315 & new_U388;
  assign new_U328 = new_U316 & new_U403;
  assign new_U329 = new_U430 & new_U403;
  assign new_U330 = ~STATO_REG_1_ & ~STATO_REG_2_;
  assign new_U331 = ~R_IN_REG_1_;
  assign new_U332 = R_IN_REG_5_ & new_U385;
  assign new_U333 = ~new_U385 | ~new_U390;
  assign new_U334 = ~new_U385 | ~new_U359;
  assign new_U335 = new_U385 & R_IN_REG_2_;
  assign new_U336 = new_U385 & R_IN_REG_1_;
  assign new_U337 = ~new_U385 | ~new_U391;
  assign new_U338 = CONT_REG_5_ & new_U421;
  assign new_U339 = ~new_U395 | ~new_U421;
  assign new_U340 = ~new_U396 | ~new_U421;
  assign new_U341 = CONT_REG_2_ & new_U421;
  assign new_U342 = ~new_U397 | ~new_U421;
  assign new_U343 = CONT_REG_0_ & new_U421;
  assign new_U344 = CONT1_REG_8_ & new_U402;
  assign new_U345 = CONT1_REG_7_ & new_U402;
  assign new_U346 = CONT1_REG_6_ & new_U402;
  assign new_U347 = CONT1_REG_5_ & new_U402;
  assign new_U348 = CONT1_REG_4_ & new_U402;
  assign new_U349 = CONT1_REG_3_ & new_U402;
  assign new_U350 = CONT1_REG_2_ & new_U402;
  assign new_U351 = CONT1_REG_1_ & new_U402;
  assign new_U352 = CONT1_REG_0_ & new_U402;
  assign new_U353 = ~STATO_REG_3_ | ~new_U399;
  assign new_U354 = ~STATO_REG_3_ | ~new_U400;
  assign new_U355 = ~STATO_REG_3_ | ~new_U401;
  assign new_U356 = ~R_IN_REG_2_ | ~new_U359;
  assign new_U357 = ~new_U356 | ~new_U548;
  assign new_U358 = ~R_IN_REG_2_;
  assign new_U359 = ~R_IN_REG_3_;
  assign n163 = ~new_U423 | ~new_U422;
  assign n168 = ~new_U426 | ~new_U425;
  assign n173 = ~new_U429 | ~new_U428 | ~new_U427;
  assign n178 = ~new_U393 | ~new_U431 | ~new_U433 | ~new_U432;
  assign n159 = ~new_U545 | ~new_U546 | ~new_U544;
  assign n155 = ~new_U542 | ~new_U543 | ~new_U541;
  assign n151 = ~new_U539 | ~new_U540 | ~new_U538;
  assign n147 = ~new_U536 | ~new_U537 | ~new_U535;
  assign n143 = ~new_U533 | ~new_U534 | ~new_U532;
  assign n139 = ~new_U530 | ~new_U531 | ~new_U529;
  assign n134 = ~new_U527 | ~new_U528 | ~new_U524 | ~new_U525 | ~new_U526;
  assign n129 = ~new_U518 | ~new_U416 | ~new_U516 | ~new_U515 | ~new_U514;
  assign n124 = ~new_U508 | ~new_U415 | ~new_U506 | ~new_U505 | ~new_U504;
  assign n119 = ~new_U498 | ~new_U414 | ~new_U496 | ~new_U495 | ~new_U494;
  assign n114 = ~new_U488 | ~new_U413 | ~new_U486 | ~new_U485 | ~new_U484;
  assign n109 = ~new_U478 | ~new_U412 | ~new_U476 | ~new_U475 | ~new_U474;
  assign n104 = ~new_U411 | ~new_U464 | ~new_U465 | ~new_U466;
  assign n99 = ~new_U462 | ~new_U459 | ~new_U463 | ~new_U460 | ~new_U461;
  assign n94 = ~new_U457 | ~new_U454 | ~new_U458 | ~new_U455 | ~new_U456;
  assign n89 = ~new_U449 | ~new_U448;
  assign n84 = ~new_U447 | ~new_U446;
  assign n79 = ~new_U445 | ~new_U444;
  assign n74 = ~new_U443 | ~new_U442;
  assign n69 = ~new_U441 | ~new_U440;
  assign n64 = ~new_U439 | ~new_U438;
  assign new_U385 = ~new_U410 | ~new_U556 | ~new_U555;
  assign new_U386 = ~STATO_REG_1_;
  assign new_U387 = ~STATO_REG_2_;
  assign new_U388 = ~STATO_REG_0_;
  assign new_U389 = ~R_IN_REG_5_;
  assign new_U390 = ~R_IN_REG_4_;
  assign new_U391 = ~R_IN_REG_0_;
  assign new_U392 = ~new_R259_U6;
  assign new_U393 = ~new_U330 | ~new_U388;
  assign new_U394 = ~new_U436 | ~new_U435;
  assign new_U395 = ~CONT_REG_4_;
  assign new_U396 = ~CONT_REG_3_;
  assign new_U397 = ~CONT_REG_1_;
  assign new_U398 = ~new_U451 | ~new_U452 | ~new_U450;
  assign new_U399 = ~CONT1_REG_4_;
  assign new_U400 = ~CONT1_REG_3_;
  assign new_U401 = ~CONT1_REG_1_;
  assign new_U402 = ~STATO_REG_3_;
  assign new_U403 = ~CONT1_REG_8_;
  assign new_U404 = ~new_U564 | ~new_U563;
  assign n39 = ~new_U566 | ~new_U565;
  assign n44 = ~new_U568 | ~new_U567;
  assign n49 = ~new_U570 | ~new_U569;
  assign n54 = ~new_U572 | ~new_U571;
  assign n59 = ~new_U574 | ~new_U573;
  assign new_U410 = new_U557 & new_U558 & new_U560 & new_U559;
  assign new_U411 = new_U468 & new_U469 & new_U467;
  assign new_U412 = new_U479 & new_U477;
  assign new_U413 = new_U489 & new_U487;
  assign new_U414 = new_U499 & new_U497;
  assign new_U415 = new_U509 & new_U507;
  assign new_U416 = new_U519 & new_U517;
  assign new_U417 = ~new_U330 | ~new_U402;
  assign new_U418 = ~STBI;
  assign new_U419 = ~new_GT_87_U6;
  assign new_U420 = ~new_GT_80_U6;
  assign new_U421 = ~new_U385;
  assign new_U422 = ~STATO_REG_0_ | ~new_U324;
  assign new_U423 = ~new_U309 | ~new_U421;
  assign new_U424 = ~STATO_REG_0_ | ~STATO_REG_1_;
  assign new_U425 = ~STATO_REG_2_ | ~new_U424;
  assign new_U426 = ~new_U325 | ~STATO_REG_0_;
  assign new_U427 = ~new_U330 | ~STATO_REG_0_ | ~new_U418;
  assign new_U428 = ~STATO_REG_2_ | ~new_U562 | ~new_U561;
  assign new_U429 = ~new_R259_U6 | ~new_U309 | ~new_U385;
  assign new_U430 = ~new_U393;
  assign new_U431 = ~new_U419 | ~new_U388 | ~new_U324;
  assign new_U432 = ~new_U309 | ~new_U385;
  assign new_U433 = ~new_U552 | ~new_U551 | ~new_U386;
  assign new_U434 = ~new_U417;
  assign new_U435 = ~new_U430 | ~new_U402;
  assign new_U436 = ~new_U309 | ~new_U421;
  assign new_U437 = ~new_U394;
  assign new_U438 = ~new_ADD_53_U13 | ~new_U317;
  assign new_U439 = ~CONT_REG_5_ | ~new_U437;
  assign new_U440 = ~new_ADD_53_U14 | ~new_U317;
  assign new_U441 = ~CONT_REG_4_ | ~new_U437;
  assign new_U442 = ~new_ADD_53_U15 | ~new_U317;
  assign new_U443 = ~CONT_REG_3_ | ~new_U437;
  assign new_U444 = ~new_ADD_53_U16 | ~new_U317;
  assign new_U445 = ~CONT_REG_2_ | ~new_U437;
  assign new_U446 = ~new_ADD_53_U17 | ~new_U317;
  assign new_U447 = ~CONT_REG_1_ | ~new_U437;
  assign new_U448 = ~new_ADD_53_U5 | ~new_U317;
  assign new_U449 = ~CONT_REG_0_ | ~new_U437;
  assign new_U450 = ~new_U325 | ~new_U421;
  assign new_U451 = ~new_U554 | ~STATO_REG_2_ | ~new_U553;
  assign new_U452 = ~STATO_REG_0_ | ~STATO_REG_1_;
  assign new_U453 = ~new_U398;
  assign new_U454 = ~new_R254_U13 | ~new_U327;
  assign new_U455 = ~new_ADD_88_U16 | ~new_U326;
  assign new_U456 = ~new_R248_U24 | ~new_U319;
  assign new_U457 = ~new_R229_U33 | ~new_U318;
  assign new_U458 = ~CONT1_REG_8_ | ~new_U453;
  assign new_U459 = ~new_R254_U14 | ~new_U327;
  assign new_U460 = ~new_ADD_88_U17 | ~new_U326;
  assign new_U461 = ~new_R248_U25 | ~new_U319;
  assign new_U462 = ~new_R229_U34 | ~new_U318;
  assign new_U463 = ~CONT1_REG_7_ | ~new_U453;
  assign new_U464 = ~new_R254_U33 | ~new_U327;
  assign new_U465 = ~new_ADD_88_U18 | ~new_U326;
  assign new_U466 = ~new_U321 | ~CONT_REG_5_;
  assign new_U467 = ~new_R248_U26 | ~new_U319;
  assign new_U468 = ~new_R229_U35 | ~new_U318;
  assign new_U469 = ~CONT1_REG_6_ | ~new_U453;
  assign new_U470 = ~new_U320 | ~R_IN_REG_5_;
  assign new_U471 = ~new_R254_U16 | ~new_U315;
  assign new_U472 = ~new_ADD_88_U6 | ~new_U313;
  assign new_U473 = ~new_U471 | ~new_U472 | ~new_U470;
  assign new_U474 = ~new_U322 | ~CONT_REG_5_;
  assign new_U475 = ~new_U321 | ~CONT_REG_4_;
  assign new_U476 = ~new_R248_U27 | ~new_U319;
  assign new_U477 = ~new_R229_U36 | ~new_U318;
  assign new_U478 = ~new_U473 | ~new_U388;
  assign new_U479 = ~CONT1_REG_5_ | ~new_U453;
  assign new_U480 = ~new_U320 | ~R_IN_REG_4_;
  assign new_U481 = ~new_R254_U17 | ~new_U315;
  assign new_U482 = ~new_ADD_88_U19 | ~new_U313;
  assign new_U483 = ~new_U481 | ~new_U482 | ~new_U480;
  assign new_U484 = ~new_U322 | ~CONT_REG_4_;
  assign new_U485 = ~new_U321 | ~CONT_REG_3_;
  assign new_U486 = ~new_R248_U28 | ~new_U319;
  assign new_U487 = ~new_R229_U20 | ~new_U318;
  assign new_U488 = ~new_U483 | ~new_U388;
  assign new_U489 = ~CONT1_REG_4_ | ~new_U453;
  assign new_U490 = ~new_U320 | ~R_IN_REG_3_;
  assign new_U491 = ~new_R254_U18 | ~new_U315;
  assign new_U492 = ~new_ADD_88_U7 | ~new_U313;
  assign new_U493 = ~new_U491 | ~new_U492 | ~new_U490;
  assign new_U494 = ~new_U322 | ~CONT_REG_3_;
  assign new_U495 = ~new_U321 | ~CONT_REG_2_;
  assign new_U496 = ~new_R248_U29 | ~new_U319;
  assign new_U497 = ~new_R229_U39 | ~new_U318;
  assign new_U498 = ~new_U493 | ~new_U388;
  assign new_U499 = ~CONT1_REG_3_ | ~new_U453;
  assign new_U500 = ~new_U320 | ~R_IN_REG_2_;
  assign new_U501 = ~new_R254_U19 | ~new_U315;
  assign new_U502 = ~new_ADD_88_U20 | ~new_U313;
  assign new_U503 = ~new_U501 | ~new_U502 | ~new_U500;
  assign new_U504 = ~new_U322 | ~CONT_REG_2_;
  assign new_U505 = ~new_U321 | ~CONT_REG_1_;
  assign new_U506 = ~new_R248_U30 | ~new_U319;
  assign new_U507 = ~new_R229_U21 | ~new_U318;
  assign new_U508 = ~new_U503 | ~new_U388;
  assign new_U509 = ~CONT1_REG_2_ | ~new_U453;
  assign new_U510 = ~new_U320 | ~R_IN_REG_1_;
  assign new_U511 = ~new_R254_U20 | ~new_U315;
  assign new_U512 = ~new_ADD_88_U5 | ~new_U313;
  assign new_U513 = ~new_U512 | ~new_U511 | ~new_U510;
  assign new_U514 = ~new_U322 | ~CONT_REG_1_;
  assign new_U515 = ~new_U321 | ~CONT_REG_0_;
  assign new_U516 = ~new_R248_U31 | ~new_U319;
  assign new_U517 = ~new_R229_U41 | ~new_U318;
  assign new_U518 = ~new_U513 | ~new_U388;
  assign new_U519 = ~CONT1_REG_1_ | ~new_U453;
  assign new_U520 = ~new_U320 | ~R_IN_REG_0_;
  assign new_U521 = ~new_R254_U15 | ~new_U315;
  assign new_U522 = ~CONT1_REG_0_ | ~new_U313;
  assign new_U523 = ~new_U522 | ~new_U521 | ~new_U520;
  assign new_U524 = ~new_U322 | ~CONT_REG_0_;
  assign new_U525 = ~new_R248_U6 | ~new_U319;
  assign new_U526 = ~new_R229_U42 | ~new_U318;
  assign new_U527 = ~new_U523 | ~new_U388;
  assign new_U528 = ~CONT1_REG_0_ | ~new_U453;
  assign new_U529 = ~new_U310 | ~new_U329;
  assign new_U530 = ~new_U323 | ~new_R248_U27;
  assign new_U531 = ~X_OUT_REG_5_ | ~new_U393;
  assign new_U532 = ~new_U328 | ~CONT1_REG_4_;
  assign new_U533 = ~new_U323 | ~new_R248_U28;
  assign new_U534 = ~X_OUT_REG_4_ | ~new_U393;
  assign new_U535 = ~new_U328 | ~CONT1_REG_3_;
  assign new_U536 = ~new_U323 | ~new_R248_U29;
  assign new_U537 = ~X_OUT_REG_3_ | ~new_U393;
  assign new_U538 = ~new_U311 | ~new_U329;
  assign new_U539 = ~new_U323 | ~new_R248_U30;
  assign new_U540 = ~X_OUT_REG_2_ | ~new_U393;
  assign new_U541 = ~new_U328 | ~CONT1_REG_1_;
  assign new_U542 = ~new_U323 | ~new_R248_U31;
  assign new_U543 = ~X_OUT_REG_1_ | ~new_U393;
  assign new_U544 = ~new_U312 | ~new_U329;
  assign new_U545 = ~new_U323 | ~new_R248_U6;
  assign new_U546 = ~X_OUT_REG_0_ | ~new_U393;
  assign new_U547 = ~new_U356;
  assign new_U548 = ~R_IN_REG_3_ | ~new_U358;
  assign new_U549 = ~new_U357;
  assign new_U550 = new_GT_80_U6 | STATO_REG_1_;
  assign new_U551 = STBI | STATO_REG_2_;
  assign new_U552 = R_IN_REG_1_ | STATO_REG_0_;
  assign new_U553 = ~STATO_REG_1_ | ~new_U419;
  assign new_U554 = ~STATO_REG_0_ | ~new_U420;
  assign new_U555 = ~R_IN_REG_3_ | ~new_U331;
  assign new_U556 = ~R_IN_REG_1_ | ~new_U358;
  assign new_U557 = ~R_IN_REG_4_ | ~new_U389;
  assign new_U558 = ~R_IN_REG_5_ | ~new_U359;
  assign new_U559 = ~R_IN_REG_0_ | ~new_U390;
  assign new_U560 = ~R_IN_REG_2_ | ~new_U391;
  assign new_U561 = ~STATO_REG_0_ | ~new_U550;
  assign new_U562 = ~new_U388 | ~R_IN_REG_1_ | ~new_U386;
  assign new_U563 = ~R_IN_REG_5_ | ~new_U417;
  assign new_U564 = ~X_IN_5_ | ~new_U434;
  assign new_U565 = ~R_IN_REG_4_ | ~new_U417;
  assign new_U566 = ~X_IN_4_ | ~new_U434;
  assign new_U567 = ~new_U417 | ~R_IN_REG_3_;
  assign new_U568 = ~X_IN_3_ | ~new_U434;
  assign new_U569 = ~new_U417 | ~R_IN_REG_2_;
  assign new_U570 = ~X_IN_2_ | ~new_U434;
  assign new_U571 = ~new_U417 | ~R_IN_REG_1_;
  assign new_U572 = ~X_IN_1_ | ~new_U434;
  assign new_U573 = ~R_IN_REG_0_ | ~new_U417;
  assign new_U574 = ~X_IN_0_ | ~new_U434;
  assign new_R254_U125 = ~new_R254_U71 | ~new_R254_U38;
  assign new_R254_U124 = ~new_R254_U48 | ~new_R254_U50 | ~new_R254_U49;
  assign new_R254_U123 = ~new_R254_U70 | ~new_R254_U37;
  assign new_R254_U122 = ~new_R254_U52 | ~new_R254_U54 | ~new_R254_U53;
  assign new_R254_U121 = ~new_R254_U69 | ~new_R254_U36;
  assign new_R254_U120 = ~new_R254_U56 | ~new_R254_U58 | ~new_R254_U57;
  assign new_R254_U119 = ~new_R254_U68 | ~new_R254_U35;
  assign new_R254_U118 = ~new_R254_U60 | ~new_R254_U62 | ~new_R254_U61;
  assign new_R254_U117 = ~new_R254_U67 | ~new_R254_U34;
  assign new_R229_U4 = ~new_U359;
  assign new_R229_U5 = ~CONT1_REG_0_;
  assign new_R229_U6 = ~new_R229_U45 | ~new_R229_U44;
  assign new_R229_U7 = ~CONT1_REG_1_;
  assign new_R229_U8 = ~CONT1_REG_2_;
  assign new_R229_U9 = ~CONT1_REG_3_;
  assign new_R229_U10 = ~CONT1_REG_4_;
  assign new_R229_U11 = ~new_R229_U61 | ~new_R229_U60;
  assign new_R229_U12 = ~CONT1_REG_5_;
  assign new_R229_U13 = ~new_R229_U65 | ~new_R229_U64;
  assign new_R229_U14 = ~CONT1_REG_6_;
  assign new_R229_U15 = ~new_R229_U69 | ~new_R229_U68;
  assign new_R229_U16 = ~CONT1_REG_7_;
  assign new_R229_U17 = ~new_R229_U76 | ~new_R229_U75;
  assign new_R229_U18 = ~new_R229_U79 | ~new_R229_U78;
  assign new_R229_U19 = ~new_R229_U82 | ~new_R229_U81;
  assign new_R229_U20 = ~new_R229_U108 | ~new_R229_U107;
  assign new_R229_U21 = ~new_R229_U118 | ~new_R229_U117;
  assign new_R229_U22 = ~new_R229_U85 | ~new_R229_U84;
  assign new_R229_U23 = ~new_R229_U90 | ~new_R229_U89;
  assign new_R229_U24 = ~new_R229_U95 | ~new_R229_U94;
  assign new_R229_U25 = ~new_R229_U100 | ~new_R229_U99;
  assign new_R229_U26 = ~new_R229_U105 | ~new_R229_U104;
  assign new_R229_U27 = ~new_R229_U110 | ~new_R229_U109;
  assign new_R229_U28 = ~new_R229_U115 | ~new_R229_U114;
  assign new_R229_U29 = ~new_R229_U120 | ~new_R229_U119;
  assign new_R229_U30 = ~new_R229_U125 | ~new_R229_U124;
  assign new_R229_U31 = ~CONT1_REG_8_;
  assign new_R229_U32 = ~new_R229_U73 | ~new_R229_U72;
  assign new_R229_U33 = new_R229_U88 & new_R229_U87;
  assign new_R229_U34 = new_R229_U93 & new_R229_U92;
  assign new_R229_U35 = new_R229_U98 & new_R229_U97;
  assign new_R229_U36 = new_R229_U103 & new_R229_U102;
  assign new_R229_U37 = ~new_R229_U57 | ~new_R229_U56;
  assign new_R229_U38 = ~new_R229_U53 | ~new_R229_U52;
  assign new_R229_U39 = new_R229_U113 & new_R229_U112;
  assign new_R229_U40 = ~new_R229_U49 | ~new_R229_U48;
  assign new_R229_U41 = new_R229_U123 & new_R229_U122;
  assign new_R229_U42 = new_R229_U128 & new_R229_U127;
  assign new_R229_U43 = ~new_R229_U18 | ~new_R229_U5;
  assign new_R229_U44 = ~new_U359 | ~new_R229_U43;
  assign new_R229_U45 = ~CONT1_REG_0_ | ~new_R229_U80;
  assign new_R229_U46 = ~new_R229_U6;
  assign new_R229_U47 = ~new_R229_U46 | ~new_R229_U77;
  assign new_R229_U48 = ~CONT1_REG_1_ | ~new_R229_U47;
  assign new_R229_U49 = ~new_R229_U17 | ~new_R229_U6;
  assign new_R229_U50 = ~new_R229_U40;
  assign new_R229_U51 = ~new_R229_U19 | ~new_R229_U8;
  assign new_R229_U52 = ~new_R229_U51 | ~new_R229_U40;
  assign new_R229_U53 = ~CONT1_REG_2_ | ~new_R229_U83;
  assign new_R229_U54 = ~new_R229_U38;
  assign new_R229_U55 = ~new_R229_U80 | ~new_R229_U9;
  assign new_R229_U56 = ~new_R229_U55 | ~new_R229_U38;
  assign new_R229_U57 = ~CONT1_REG_3_ | ~new_R229_U18;
  assign new_R229_U58 = ~new_R229_U37;
  assign new_R229_U59 = ~new_R229_U17 | ~new_R229_U10;
  assign new_R229_U60 = ~new_R229_U59 | ~new_R229_U37;
  assign new_R229_U61 = ~CONT1_REG_4_ | ~new_R229_U77;
  assign new_R229_U62 = ~new_R229_U11;
  assign new_R229_U63 = ~new_R229_U62 | ~new_R229_U12;
  assign new_R229_U64 = ~new_R229_U19 | ~new_R229_U63;
  assign new_R229_U65 = ~CONT1_REG_5_ | ~new_R229_U11;
  assign new_R229_U66 = ~new_R229_U13;
  assign new_R229_U67 = ~new_R229_U66 | ~new_R229_U14;
  assign new_R229_U68 = ~new_U359 | ~new_R229_U67;
  assign new_R229_U69 = ~CONT1_REG_6_ | ~new_R229_U13;
  assign new_R229_U70 = ~new_R229_U15;
  assign new_R229_U71 = ~new_R229_U70 | ~new_R229_U16;
  assign new_R229_U72 = ~new_U359 | ~new_R229_U71;
  assign new_R229_U73 = ~CONT1_REG_7_ | ~new_R229_U15;
  assign new_R229_U74 = ~new_R229_U32;
  assign new_R229_U75 = ~new_U359 | ~new_U549;
  assign new_R229_U76 = ~new_U357 | ~new_R229_U4;
  assign new_R229_U77 = ~new_R229_U17;
  assign new_R229_U78 = ~new_U359 | ~new_U358;
  assign new_R229_U79 = ~R_IN_REG_2_ | ~new_R229_U4;
  assign new_R229_U80 = ~new_R229_U18;
  assign new_R229_U81 = ~new_U359 | ~new_U356;
  assign new_R229_U82 = ~new_U547 | ~new_R229_U4;
  assign new_R229_U83 = ~new_R229_U19;
  assign new_R229_U84 = ~new_U359 | ~new_R229_U31;
  assign new_R229_U85 = ~CONT1_REG_8_ | ~new_R229_U4;
  assign new_R229_U86 = ~new_R229_U22;
  assign new_R229_U87 = ~new_R229_U74 | ~new_R229_U86;
  assign new_R229_U88 = ~new_R229_U22 | ~new_R229_U32;
  assign new_R229_U89 = ~new_U359 | ~new_R229_U16;
  assign new_R229_U90 = ~CONT1_REG_7_ | ~new_R229_U4;
  assign new_R229_U91 = ~new_R229_U23;
  assign new_R229_U92 = ~new_R229_U91 | ~new_R229_U70;
  assign new_R229_U93 = ~new_R229_U23 | ~new_R229_U15;
  assign new_R229_U94 = ~new_U359 | ~new_R229_U14;
  assign new_R229_U95 = ~CONT1_REG_6_ | ~new_R229_U4;
  assign new_R229_U96 = ~new_R229_U24;
  assign new_R229_U97 = ~new_R229_U96 | ~new_R229_U66;
  assign new_R229_U98 = ~new_R229_U24 | ~new_R229_U13;
  assign new_R229_U99 = ~new_R229_U83 | ~CONT1_REG_5_;
  assign new_R229_U100 = ~new_R229_U19 | ~new_R229_U12;
  assign new_R229_U101 = ~new_R229_U25;
  assign new_R229_U102 = ~new_R229_U101 | ~new_R229_U62;
  assign new_R229_U103 = ~new_R229_U25 | ~new_R229_U11;
  assign new_R229_U104 = ~new_R229_U77 | ~CONT1_REG_4_;
  assign new_R229_U105 = ~new_R229_U17 | ~new_R229_U10;
  assign new_R229_U106 = ~new_R229_U26;
  assign new_R229_U107 = ~new_R229_U58 | ~new_R229_U106;
  assign new_R229_U108 = ~new_R229_U26 | ~new_R229_U37;
  assign new_R229_U109 = ~new_R229_U80 | ~CONT1_REG_3_;
  assign new_R229_U110 = ~new_R229_U18 | ~new_R229_U9;
  assign new_R229_U111 = ~new_R229_U27;
  assign new_R229_U112 = ~new_R229_U54 | ~new_R229_U111;
  assign new_R229_U113 = ~new_R229_U27 | ~new_R229_U38;
  assign new_R229_U114 = ~new_R229_U83 | ~CONT1_REG_2_;
  assign new_R229_U115 = ~new_R229_U19 | ~new_R229_U8;
  assign new_R229_U116 = ~new_R229_U28;
  assign new_R229_U117 = ~new_R229_U50 | ~new_R229_U116;
  assign new_R229_U118 = ~new_R229_U28 | ~new_R229_U40;
  assign new_R229_U119 = ~new_R229_U77 | ~CONT1_REG_1_;
  assign new_R229_U120 = ~new_R229_U17 | ~new_R229_U7;
  assign new_R229_U121 = ~new_R229_U29;
  assign new_R229_U122 = ~new_R229_U121 | ~new_R229_U46;
  assign new_R229_U123 = ~new_R229_U29 | ~new_R229_U6;
  assign new_R229_U124 = ~new_U359 | ~new_R229_U5;
  assign new_R229_U125 = ~CONT1_REG_0_ | ~new_R229_U4;
  assign new_R229_U126 = ~new_R229_U30;
  assign new_R229_U127 = ~new_R229_U18 | ~new_R229_U126;
  assign new_R229_U128 = ~new_R229_U30 | ~new_R229_U80;
  assign new_R248_U6 = ~new_R248_U45 | ~new_R248_U75;
  assign new_R248_U7 = ~new_U312;
  assign new_R248_U8 = ~new_U355;
  assign new_R248_U9 = ~new_U351;
  assign new_R248_U10 = ~new_R248_U49 | ~new_R248_U48;
  assign new_R248_U11 = ~new_U311;
  assign new_R248_U12 = ~new_U350;
  assign new_R248_U13 = ~new_U354;
  assign new_R248_U14 = ~new_U349;
  assign new_R248_U15 = ~new_R248_U57 | ~new_R248_U56;
  assign new_R248_U16 = ~new_U353;
  assign new_R248_U17 = ~new_U348;
  assign new_R248_U18 = ~new_U310;
  assign new_R248_U19 = ~new_U347;
  assign new_R248_U20 = ~new_U346;
  assign new_R248_U21 = ~new_R248_U69 | ~new_R248_U68;
  assign new_R248_U22 = ~new_U345;
  assign new_R248_U23 = ~new_U352;
  assign new_R248_U24 = ~new_R248_U80 | ~new_R248_U79;
  assign new_R248_U25 = ~new_R248_U85 | ~new_R248_U84;
  assign new_R248_U26 = ~new_R248_U90 | ~new_R248_U89;
  assign new_R248_U27 = ~new_R248_U95 | ~new_R248_U94;
  assign new_R248_U28 = ~new_R248_U100 | ~new_R248_U99;
  assign new_R248_U29 = ~new_R248_U105 | ~new_R248_U104;
  assign new_R248_U30 = ~new_R248_U110 | ~new_R248_U109;
  assign new_R248_U31 = ~new_R248_U115 | ~new_R248_U114;
  assign new_R248_U32 = ~new_R248_U77 | ~new_R248_U76;
  assign new_R248_U33 = ~new_R248_U82 | ~new_R248_U81;
  assign new_R248_U34 = ~new_R248_U87 | ~new_R248_U86;
  assign new_R248_U35 = ~new_R248_U92 | ~new_R248_U91;
  assign new_R248_U36 = ~new_R248_U97 | ~new_R248_U96;
  assign new_R248_U37 = ~new_R248_U102 | ~new_R248_U101;
  assign new_R248_U38 = ~new_R248_U107 | ~new_R248_U106;
  assign new_R248_U39 = ~new_R248_U112 | ~new_R248_U111;
  assign new_R248_U40 = ~new_U344;
  assign new_R248_U41 = ~new_R248_U73 | ~new_R248_U72;
  assign new_R248_U42 = ~new_R248_U65 | ~new_R248_U64;
  assign new_R248_U43 = ~new_R248_U61 | ~new_R248_U60;
  assign new_R248_U44 = ~new_R248_U53 | ~new_R248_U52;
  assign new_R248_U45 = ~new_U312 | ~new_R248_U23;
  assign new_R248_U46 = ~new_R248_U45;
  assign new_R248_U47 = ~new_U355 | ~new_R248_U9;
  assign new_R248_U48 = ~new_R248_U47 | ~new_R248_U45;
  assign new_R248_U49 = ~new_U351 | ~new_R248_U8;
  assign new_R248_U50 = ~new_R248_U10;
  assign new_R248_U51 = ~new_U311 | ~new_R248_U50;
  assign new_R248_U52 = ~new_U350 | ~new_R248_U51;
  assign new_R248_U53 = ~new_R248_U10 | ~new_R248_U11;
  assign new_R248_U54 = ~new_R248_U44;
  assign new_R248_U55 = ~new_U354 | ~new_R248_U14;
  assign new_R248_U56 = ~new_R248_U55 | ~new_R248_U44;
  assign new_R248_U57 = ~new_U349 | ~new_R248_U13;
  assign new_R248_U58 = ~new_R248_U15;
  assign new_R248_U59 = ~new_U353 | ~new_R248_U58;
  assign new_R248_U60 = ~new_U348 | ~new_R248_U59;
  assign new_R248_U61 = ~new_R248_U15 | ~new_R248_U16;
  assign new_R248_U62 = ~new_R248_U43;
  assign new_R248_U63 = ~new_U310 | ~new_R248_U19;
  assign new_R248_U64 = ~new_R248_U63 | ~new_R248_U43;
  assign new_R248_U65 = ~new_U347 | ~new_R248_U18;
  assign new_R248_U66 = ~new_R248_U42;
  assign new_R248_U67 = ~new_U310 | ~new_R248_U20;
  assign new_R248_U68 = ~new_R248_U67 | ~new_R248_U42;
  assign new_R248_U69 = ~new_U346 | ~new_R248_U18;
  assign new_R248_U70 = ~new_R248_U21;
  assign new_R248_U71 = ~new_R248_U70 | ~new_U310;
  assign new_R248_U72 = ~new_U345 | ~new_R248_U71;
  assign new_R248_U73 = ~new_R248_U21 | ~new_R248_U18;
  assign new_R248_U74 = ~new_R248_U41;
  assign new_R248_U75 = ~new_U352 | ~new_R248_U7;
  assign new_R248_U76 = ~new_U344 | ~new_R248_U18;
  assign new_R248_U77 = ~new_U310 | ~new_R248_U40;
  assign new_R248_U78 = ~new_R248_U32;
  assign new_R248_U79 = ~new_R248_U74 | ~new_R248_U78;
  assign new_R248_U80 = ~new_R248_U32 | ~new_R248_U41;
  assign new_R248_U81 = ~new_U345 | ~new_R248_U18;
  assign new_R248_U82 = ~new_U310 | ~new_R248_U22;
  assign new_R248_U83 = ~new_R248_U33;
  assign new_R248_U84 = ~new_R248_U83 | ~new_R248_U70;
  assign new_R248_U85 = ~new_R248_U33 | ~new_R248_U21;
  assign new_R248_U86 = ~new_U346 | ~new_R248_U18;
  assign new_R248_U87 = ~new_U310 | ~new_R248_U20;
  assign new_R248_U88 = ~new_R248_U34;
  assign new_R248_U89 = ~new_R248_U66 | ~new_R248_U88;
  assign new_R248_U90 = ~new_R248_U34 | ~new_R248_U42;
  assign new_R248_U91 = ~new_U347 | ~new_R248_U18;
  assign new_R248_U92 = ~new_U310 | ~new_R248_U19;
  assign new_R248_U93 = ~new_R248_U35;
  assign new_R248_U94 = ~new_R248_U62 | ~new_R248_U93;
  assign new_R248_U95 = ~new_R248_U35 | ~new_R248_U43;
  assign new_R248_U96 = ~new_U348 | ~new_R248_U16;
  assign new_R248_U97 = ~new_U353 | ~new_R248_U17;
  assign new_R248_U98 = ~new_R248_U36;
  assign new_R248_U99 = ~new_R248_U98 | ~new_R248_U58;
  assign new_R248_U100 = ~new_R248_U36 | ~new_R248_U15;
  assign new_R248_U101 = ~new_U349 | ~new_R248_U13;
  assign new_R248_U102 = ~new_U354 | ~new_R248_U14;
  assign new_R248_U103 = ~new_R248_U37;
  assign new_R248_U104 = ~new_R248_U54 | ~new_R248_U103;
  assign new_R248_U105 = ~new_R248_U37 | ~new_R248_U44;
  assign new_R248_U106 = ~new_U350 | ~new_R248_U11;
  assign new_R248_U107 = ~new_U311 | ~new_R248_U12;
  assign new_R248_U108 = ~new_R248_U38;
  assign new_R248_U109 = ~new_R248_U108 | ~new_R248_U50;
  assign new_R248_U110 = ~new_R248_U38 | ~new_R248_U10;
  assign new_R248_U111 = ~new_U351 | ~new_R248_U8;
  assign new_R248_U112 = ~new_U355 | ~new_R248_U9;
  assign new_R248_U113 = ~new_R248_U39;
  assign new_R248_U114 = ~new_R248_U46 | ~new_R248_U113;
  assign new_R248_U115 = ~new_R248_U39 | ~new_R248_U45;
  assign new_GT_80_U6 = ~CONT1_REG_8_ & ~new_GT_80_U9;
  assign new_GT_80_U7 = CONT1_REG_0_ & CONT1_REG_1_;
  assign new_GT_80_U8 = new_GT_80_U10 & CONT1_REG_3_ & CONT1_REG_4_;
  assign new_GT_80_U9 = ~CONT1_REG_5_ & ~CONT1_REG_7_ & ~new_GT_80_U8 & ~CONT1_REG_6_;
  assign new_GT_80_U10 = new_GT_80_U7 | CONT1_REG_2_;
  assign new_GT_87_U6 = ~CONT1_REG_8_ & ~new_GT_87_U7;
  assign new_GT_87_U7 = ~CONT1_REG_6_ & ~CONT1_REG_7_;
  assign new_R259_U6 = ~new_R259_U33 | ~new_R259_U32;
  assign new_R259_U7 = ~new_U332;
  assign new_R259_U8 = ~new_U339;
  assign new_R259_U9 = ~new_U342;
  assign new_R259_U10 = ~new_U336;
  assign new_R259_U11 = ~new_U335;
  assign new_R259_U12 = ~new_U341;
  assign new_R259_U13 = ~new_U340;
  assign new_R259_U14 = ~new_U334;
  assign new_R259_U15 = ~new_U333;
  assign new_R259_U16 = ~new_U338;
  assign new_R259_U17 = ~new_U343;
  assign new_R259_U18 = ~new_U332 | ~new_R259_U16;
  assign new_R259_U19 = ~new_U342 | ~new_R259_U10;
  assign new_R259_U20 = ~new_R259_U19 | ~new_U337 | ~new_R259_U17;
  assign new_R259_U21 = ~new_U336 | ~new_R259_U9;
  assign new_R259_U22 = ~new_U335 | ~new_R259_U12;
  assign new_R259_U23 = ~new_R259_U20 | ~new_R259_U21 | ~new_R259_U22;
  assign new_R259_U24 = ~new_U341 | ~new_R259_U11;
  assign new_R259_U25 = ~new_U340 | ~new_R259_U14;
  assign new_R259_U26 = ~new_R259_U23 | ~new_R259_U24 | ~new_R259_U25;
  assign new_R259_U27 = ~new_U334 | ~new_R259_U13;
  assign new_R259_U28 = ~new_U333 | ~new_R259_U8;
  assign new_R259_U29 = ~new_R259_U26 | ~new_R259_U27 | ~new_R259_U28;
  assign new_R259_U30 = ~new_U339 | ~new_R259_U15;
  assign new_R259_U31 = ~new_R259_U29 | ~new_R259_U30;
  assign new_R259_U32 = ~new_R259_U31 | ~new_R259_U18;
  assign new_R259_U33 = ~new_U338 | ~new_R259_U7;
  assign new_ADD_53_U5 = ~CONT_REG_0_;
  assign new_ADD_53_U6 = ~CONT_REG_1_;
  assign new_ADD_53_U7 = ~CONT_REG_1_ | ~CONT_REG_0_;
  assign new_ADD_53_U8 = ~CONT_REG_2_;
  assign new_ADD_53_U9 = ~CONT_REG_2_ | ~new_ADD_53_U20;
  assign new_ADD_53_U10 = ~CONT_REG_3_;
  assign new_ADD_53_U11 = ~CONT_REG_3_ | ~new_ADD_53_U21;
  assign new_ADD_53_U12 = ~CONT_REG_4_;
  assign new_ADD_53_U13 = ~new_ADD_53_U25 | ~new_ADD_53_U24;
  assign new_ADD_53_U14 = ~new_ADD_53_U27 | ~new_ADD_53_U26;
  assign new_ADD_53_U15 = ~new_ADD_53_U29 | ~new_ADD_53_U28;
  assign new_ADD_53_U16 = ~new_ADD_53_U31 | ~new_ADD_53_U30;
  assign new_ADD_53_U17 = ~new_ADD_53_U33 | ~new_ADD_53_U32;
  assign new_ADD_53_U18 = ~CONT_REG_5_;
  assign new_ADD_53_U19 = ~CONT_REG_4_ | ~new_ADD_53_U22;
  assign new_ADD_53_U20 = ~new_ADD_53_U7;
  assign new_ADD_53_U21 = ~new_ADD_53_U9;
  assign new_ADD_53_U22 = ~new_ADD_53_U11;
  assign new_ADD_53_U23 = ~new_ADD_53_U19;
  assign new_ADD_53_U24 = ~CONT_REG_5_ | ~new_ADD_53_U19;
  assign new_ADD_53_U25 = ~new_ADD_53_U23 | ~new_ADD_53_U18;
  assign new_ADD_53_U26 = ~CONT_REG_4_ | ~new_ADD_53_U11;
  assign new_ADD_53_U27 = ~new_ADD_53_U22 | ~new_ADD_53_U12;
  assign new_ADD_53_U28 = ~CONT_REG_3_ | ~new_ADD_53_U9;
  assign new_ADD_53_U29 = ~new_ADD_53_U21 | ~new_ADD_53_U10;
  assign new_ADD_53_U30 = ~CONT_REG_2_ | ~new_ADD_53_U7;
  assign new_ADD_53_U31 = ~new_ADD_53_U20 | ~new_ADD_53_U8;
  assign new_ADD_53_U32 = ~CONT_REG_1_ | ~new_ADD_53_U5;
  assign new_ADD_53_U33 = ~CONT_REG_0_ | ~new_ADD_53_U6;
  assign new_ADD_88_U5 = ~CONT1_REG_1_;
  assign new_ADD_88_U6 = new_ADD_88_U30 & new_ADD_88_U11;
  assign new_ADD_88_U7 = ~new_ADD_88_U9 | ~new_ADD_88_U31;
  assign new_ADD_88_U8 = ~CONT1_REG_2_;
  assign new_ADD_88_U9 = ~new_ADD_88_U15 | ~new_ADD_88_U24;
  assign new_ADD_88_U10 = ~CONT1_REG_5_;
  assign new_ADD_88_U11 = ~CONT1_REG_5_ | ~new_ADD_88_U26;
  assign new_ADD_88_U12 = ~CONT1_REG_6_;
  assign new_ADD_88_U13 = ~CONT1_REG_6_ | ~new_ADD_88_U27;
  assign new_ADD_88_U14 = ~CONT1_REG_7_;
  assign new_ADD_88_U15 = ~CONT1_REG_3_;
  assign new_ADD_88_U16 = ~new_ADD_88_U33 | ~new_ADD_88_U32;
  assign new_ADD_88_U17 = ~new_ADD_88_U35 | ~new_ADD_88_U34;
  assign new_ADD_88_U18 = ~new_ADD_88_U37 | ~new_ADD_88_U36;
  assign new_ADD_88_U19 = ~new_ADD_88_U39 | ~new_ADD_88_U38;
  assign new_ADD_88_U20 = ~new_ADD_88_U41 | ~new_ADD_88_U40;
  assign new_ADD_88_U21 = ~CONT1_REG_8_;
  assign new_ADD_88_U22 = ~CONT1_REG_7_ | ~new_ADD_88_U28;
  assign new_ADD_88_U23 = ~CONT1_REG_4_;
  assign new_ADD_88_U24 = ~CONT1_REG_2_ | ~CONT1_REG_1_;
  assign new_ADD_88_U25 = ~new_ADD_88_U9;
  assign new_ADD_88_U26 = ~new_ADD_88_U25 | ~new_ADD_88_U23;
  assign new_ADD_88_U27 = ~new_ADD_88_U11;
  assign new_ADD_88_U28 = ~new_ADD_88_U13;
  assign new_ADD_88_U29 = ~new_ADD_88_U22;
  assign new_ADD_88_U30 = ~new_ADD_88_U25 | ~new_ADD_88_U23 | ~new_ADD_88_U10;
  assign new_ADD_88_U31 = ~CONT1_REG_3_ | ~CONT1_REG_2_ | ~CONT1_REG_1_;
  assign new_ADD_88_U32 = ~CONT1_REG_8_ | ~new_ADD_88_U22;
  assign new_ADD_88_U33 = ~new_ADD_88_U29 | ~new_ADD_88_U21;
  assign new_ADD_88_U34 = ~CONT1_REG_7_ | ~new_ADD_88_U13;
  assign new_ADD_88_U35 = ~new_ADD_88_U28 | ~new_ADD_88_U14;
  assign new_ADD_88_U36 = ~CONT1_REG_6_ | ~new_ADD_88_U11;
  assign new_ADD_88_U37 = ~new_ADD_88_U27 | ~new_ADD_88_U12;
  assign new_ADD_88_U38 = ~CONT1_REG_4_ | ~new_ADD_88_U9;
  assign new_ADD_88_U39 = ~new_ADD_88_U25 | ~new_ADD_88_U23;
  assign new_ADD_88_U40 = ~CONT1_REG_1_ | ~new_ADD_88_U8;
  assign new_ADD_88_U41 = ~CONT1_REG_2_ | ~new_ADD_88_U5;
  assign new_R254_U5 = ~R_IN_REG_0_;
  assign new_R254_U6 = ~R_IN_REG_2_;
  assign new_R254_U7 = ~R_IN_REG_3_;
  assign new_R254_U8 = ~R_IN_REG_4_;
  assign new_R254_U9 = ~R_IN_REG_5_;
  assign new_R254_U10 = ~new_R254_U12 | ~new_R254_U32;
  assign new_R254_U11 = ~new_R254_U73 | ~new_R254_U72;
  assign new_R254_U12 = ~new_R254_U106 | ~new_R254_U105;
  assign new_R254_U13 = ~new_R254_U112 | ~new_R254_U111;
  assign new_R254_U14 = ~new_R254_U114 | ~new_R254_U113;
  assign new_R254_U15 = ~new_R254_U128 | ~new_R254_U127;
  assign new_R254_U16 = ~new_R254_U118 | ~new_R254_U117;
  assign new_R254_U17 = ~new_R254_U120 | ~new_R254_U119;
  assign new_R254_U18 = ~new_R254_U122 | ~new_R254_U121;
  assign new_R254_U19 = ~new_R254_U124 | ~new_R254_U123;
  assign new_R254_U20 = ~new_R254_U126 | ~new_R254_U125;
  assign new_R254_U21 = ~new_R254_U109 | ~new_R254_U108;
  assign new_R254_U22 = ~CONT1_REG_7_;
  assign new_R254_U23 = ~CONT1_REG_0_;
  assign new_R254_U24 = ~CONT1_REG_1_;
  assign new_R254_U25 = ~CONT1_REG_2_;
  assign new_R254_U26 = ~CONT1_REG_3_;
  assign new_R254_U27 = ~CONT1_REG_4_;
  assign new_R254_U28 = ~CONT1_REG_5_;
  assign new_R254_U29 = ~CONT1_REG_6_;
  assign new_R254_U30 = ~CONT1_REG_8_;
  assign new_R254_U31 = ~new_R254_U40 | ~new_R254_U11;
  assign new_R254_U32 = ~new_R254_U62 | ~new_R254_U63;
  assign new_R254_U33 = new_R254_U116 & new_R254_U115;
  assign new_R254_U34 = ~new_R254_U58 | ~new_R254_U59;
  assign new_R254_U35 = ~new_R254_U54 | ~new_R254_U55;
  assign new_R254_U36 = ~new_R254_U50 | ~new_R254_U51;
  assign new_R254_U37 = ~new_R254_U46 | ~new_R254_U47;
  assign new_R254_U38 = ~new_R254_U42 | ~new_R254_U43;
  assign new_R254_U39 = ~new_R254_U41 | ~new_R254_U42;
  assign new_R254_U40 = ~new_R254_U10;
  assign new_R254_U41 = ~new_R254_U5 | ~new_R254_U76 | ~new_R254_U75;
  assign new_R254_U42 = ~R_IN_REG_0_ | ~new_R254_U79;
  assign new_R254_U43 = ~new_U331 | ~new_R254_U41;
  assign new_R254_U44 = ~new_R254_U38;
  assign new_R254_U45 = ~new_U331 | ~new_R254_U81 | ~new_R254_U80;
  assign new_R254_U46 = ~R_IN_REG_1_ | ~new_R254_U84;
  assign new_R254_U47 = ~new_R254_U45 | ~new_R254_U38;
  assign new_R254_U48 = ~new_R254_U37;
  assign new_R254_U49 = ~new_R254_U6 | ~new_R254_U86 | ~new_R254_U85;
  assign new_R254_U50 = ~R_IN_REG_2_ | ~new_R254_U89;
  assign new_R254_U51 = ~new_R254_U49 | ~new_R254_U37;
  assign new_R254_U52 = ~new_R254_U36;
  assign new_R254_U53 = ~new_R254_U7 | ~new_R254_U91 | ~new_R254_U90;
  assign new_R254_U54 = ~R_IN_REG_3_ | ~new_R254_U94;
  assign new_R254_U55 = ~new_R254_U53 | ~new_R254_U36;
  assign new_R254_U56 = ~new_R254_U35;
  assign new_R254_U57 = ~new_R254_U8 | ~new_R254_U96 | ~new_R254_U95;
  assign new_R254_U58 = ~R_IN_REG_4_ | ~new_R254_U99;
  assign new_R254_U59 = ~new_R254_U57 | ~new_R254_U35;
  assign new_R254_U60 = ~new_R254_U34;
  assign new_R254_U61 = ~new_R254_U9 | ~new_R254_U101 | ~new_R254_U100;
  assign new_R254_U62 = ~R_IN_REG_5_ | ~new_R254_U104;
  assign new_R254_U63 = ~new_R254_U61 | ~new_R254_U34;
  assign new_R254_U64 = ~new_R254_U32;
  assign new_R254_U65 = ~new_R254_U31;
  assign new_R254_U66 = ~new_R254_U39;
  assign new_R254_U67 = ~new_R254_U62 | ~new_R254_U61;
  assign new_R254_U68 = ~new_R254_U58 | ~new_R254_U57;
  assign new_R254_U69 = ~new_R254_U54 | ~new_R254_U53;
  assign new_R254_U70 = ~new_R254_U50 | ~new_R254_U49;
  assign new_R254_U71 = ~new_R254_U46 | ~new_R254_U45;
  assign new_R254_U72 = ~new_U331 | ~new_R254_U22;
  assign new_R254_U73 = ~CONT1_REG_7_ | ~R_IN_REG_1_;
  assign new_R254_U74 = ~new_R254_U11;
  assign new_R254_U75 = ~new_U331 | ~new_R254_U23;
  assign new_R254_U76 = ~CONT1_REG_0_ | ~R_IN_REG_1_;
  assign new_R254_U77 = ~new_U331 | ~new_R254_U23;
  assign new_R254_U78 = ~CONT1_REG_0_ | ~R_IN_REG_1_;
  assign new_R254_U79 = ~new_R254_U78 | ~new_R254_U77;
  assign new_R254_U80 = ~new_U331 | ~new_R254_U24;
  assign new_R254_U81 = ~CONT1_REG_1_ | ~R_IN_REG_1_;
  assign new_R254_U82 = ~new_U331 | ~new_R254_U24;
  assign new_R254_U83 = ~CONT1_REG_1_ | ~R_IN_REG_1_;
  assign new_R254_U84 = ~new_R254_U83 | ~new_R254_U82;
  assign new_R254_U85 = ~new_U331 | ~new_R254_U25;
  assign new_R254_U86 = ~CONT1_REG_2_ | ~R_IN_REG_1_;
  assign new_R254_U87 = ~new_U331 | ~new_R254_U25;
  assign new_R254_U88 = ~CONT1_REG_2_ | ~R_IN_REG_1_;
  assign new_R254_U89 = ~new_R254_U88 | ~new_R254_U87;
  assign new_R254_U90 = ~new_U331 | ~new_R254_U26;
  assign new_R254_U91 = ~CONT1_REG_3_ | ~R_IN_REG_1_;
  assign new_R254_U92 = ~new_U331 | ~new_R254_U26;
  assign new_R254_U93 = ~CONT1_REG_3_ | ~R_IN_REG_1_;
  assign new_R254_U94 = ~new_R254_U93 | ~new_R254_U92;
  assign new_R254_U95 = ~new_U331 | ~new_R254_U27;
  assign new_R254_U96 = ~CONT1_REG_4_ | ~R_IN_REG_1_;
  assign new_R254_U97 = ~new_U331 | ~new_R254_U27;
  assign new_R254_U98 = ~CONT1_REG_4_ | ~R_IN_REG_1_;
  assign new_R254_U99 = ~new_R254_U98 | ~new_R254_U97;
  assign new_R254_U100 = ~new_U331 | ~new_R254_U28;
  assign new_R254_U101 = ~CONT1_REG_5_ | ~R_IN_REG_1_;
  assign new_R254_U102 = ~new_U331 | ~new_R254_U28;
  assign new_R254_U103 = ~CONT1_REG_5_ | ~R_IN_REG_1_;
  assign new_R254_U104 = ~new_R254_U103 | ~new_R254_U102;
  assign new_R254_U105 = ~new_U331 | ~new_R254_U29;
  assign new_R254_U106 = ~CONT1_REG_6_ | ~R_IN_REG_1_;
  assign new_R254_U107 = ~new_R254_U12;
  assign new_R254_U108 = ~new_U331 | ~new_R254_U30;
  assign new_R254_U109 = ~CONT1_REG_8_ | ~R_IN_REG_1_;
  assign new_R254_U110 = ~new_R254_U21;
  assign new_R254_U111 = ~new_R254_U65 | ~new_R254_U110;
  assign new_R254_U112 = ~new_R254_U21 | ~new_R254_U31;
  assign new_R254_U113 = ~new_R254_U74 | ~new_R254_U40;
  assign new_R254_U114 = ~new_R254_U11 | ~new_R254_U10;
  assign new_R254_U115 = ~new_R254_U64 | ~new_R254_U107;
  assign new_R254_U116 = ~new_R254_U12 | ~new_R254_U32;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n1627 = new_and_1 | new_and_3;
  assign n1624 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n44 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U404 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n44 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_U404 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n44 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_U404 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n44 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U404 & keyinput2 & keyinput0 & new_not_keyinput1;
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
    R_IN_REG_5_ <= n34;
    R_IN_REG_4_ <= n39;
    R_IN_REG_3_ <= n44;
    R_IN_REG_2_ <= n49;
    R_IN_REG_1_ <= n54;
    R_IN_REG_0_ <= n59;
    CONT_REG_5_ <= n64;
    CONT_REG_4_ <= n69;
    CONT_REG_3_ <= n74;
    CONT_REG_2_ <= n79;
    CONT_REG_1_ <= n84;
    CONT_REG_0_ <= n89;
    CONT1_REG_8_ <= n94;
    CONT1_REG_7_ <= n99;
    CONT1_REG_6_ <= n104;
    CONT1_REG_5_ <= n109;
    CONT1_REG_4_ <= n114;
    CONT1_REG_3_ <= n119;
    CONT1_REG_2_ <= n124;
    CONT1_REG_1_ <= n129;
    CONT1_REG_0_ <= n134;
    X_OUT_REG_5_ <= n139;
    X_OUT_REG_4_ <= n143;
    X_OUT_REG_3_ <= n147;
    X_OUT_REG_2_ <= n151;
    X_OUT_REG_1_ <= n155;
    X_OUT_REG_0_ <= n159;
    STATO_REG_3_ <= n163;
    STATO_REG_2_ <= n168;
    STATO_REG_1_ <= n173;
    STATO_REG_0_ <= n178;
    Q_0 <= n1624;
    Q_1 <= n1627;
  end
endmodule
