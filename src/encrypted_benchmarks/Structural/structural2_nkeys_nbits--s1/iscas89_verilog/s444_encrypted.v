// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/iscas89/s444_encrypted" written by ABC on Fri Sep 27 18:36:16 2024

module \./test_runs/structural2_nkeys_nbits--s-120240927_165956/iscas89/s444_encrypted  ( clock, 
    G0, G1, G2, keyinput0,
    G118, G167, G107, G119, G168, G108  );
  input  clock;
  input  G0, G1, G2, keyinput0;
  output G118, G167, G107, G119, G168, G108;
  reg G11, G12, G13, G14, G15, G16, G17, G18, G19, G20, G21, G22, G23, G24,
    G25, G26, G27, G28, G29, G30, G31, Q_0, Q_1;
  wire new_I372, new_I382, new_I318, new_G34, new_I180, new_G35, new_G77,
    new_G135, new_G36, new_G78, new_G144, new_G32, new_G74, new_G142,
    new_I392, new_G55, new_G102, new_G136, new_G156, new_G56, new_G143,
    new_G161, new_I321, new_G53, new_I324, new_G76, new_G150, new_I336,
    new_G152, new_G160, new_G106, new_G43, new_I182, new_G99, new_G139,
    new_G153, new_G157, new_G103, new_G38, new_G60, new_G79, new_G42,
    new_G46, new_I105, new_G166, new_G50, new_G82, new_G59, new_G63,
    new_G67, new_G71, new_G81, new_G85, new_G89, new_G94, new_G122,
    new_G124, new_G125, new_G126, new_G127, new_G154, new_G100, new_G115,
    new_G163, new_G116, new_G164, new_G141, new_G137, new_G138, new_G140,
    new_G133, new_G134, new_G145, new_G146, new_G147, new_G158, new_G104,
    new_G131, new_G159, new_G105, new_I181, new_G129, new_G121, new_I190,
    new_G40, new_I200, new_I210, new_G120, new_G132, new_G123, new_G151,
    new_G117, new_I191, new_I192, new_I201, new_I202, new_G149, new_I211,
    new_I212, new_G148, new_G44, new_G48, new_G162, new_G52, new_I225,
    new_I235, new_I245, new_I255, new_G165, new_I226, new_I227, new_I236,
    new_I237, new_I246, new_I247, new_I256, new_I257, new_G61, new_G65,
    new_G69, new_G73, new_I271, new_I281, new_I291, new_I302, new_I272,
    new_I273, new_I282, new_I283, new_I292, new_I293, new_I303, new_I304,
    new_G83, new_G87, new_G91, new_G96, new_G33, new_G54, new_G75, new_G47,
    new_G51, new_G98, new_G128, new_G130, new_G57, new_G64, new_G68,
    new_G72, new_G97, new_G37, new_G86, new_G90, new_G93, new_G95,
    new_not_keyinput0, new_not_0, new_and_1, new_not_2, new_and_3,
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
    new_and_mux__state_5, new_and_mux__state_5_2, n22, n27, n32, n37, n42,
    n47, n52, n57, n62, n67, n72, n77, n82, n87, n92, n97, n102, n107,
    n112, n117, n122, n478, n481;
  assign new_I372 = ~G0;
  assign new_I382 = ~G1;
  assign new_I318 = ~G2;
  assign new_G34 = ~G11;
  assign new_I180 = ~G11;
  assign new_G35 = ~G12;
  assign new_G77 = ~G20;
  assign new_G135 = ~G20;
  assign new_G36 = ~G13;
  assign new_G78 = ~G21;
  assign new_G144 = ~G21;
  assign new_G32 = ~G14;
  assign new_G74 = ~G22;
  assign new_G142 = ~G22;
  assign new_I392 = ~G30;
  assign new_G55 = ~G15;
  assign new_G102 = ~G23;
  assign new_G136 = ~G23;
  assign new_G156 = ~G31;
  assign new_G56 = ~G16;
  assign new_G143 = ~G24;
  assign new_G161 = ~G17;
  assign new_I321 = ~G25;
  assign new_G53 = ~G18;
  assign new_I324 = ~G26;
  assign new_G76 = ~G19;
  assign new_G150 = ~G19;
  assign new_I336 = ~G27;
  assign G119 = ~G28;
  assign G167 = ~G29;
  assign new_G152 = ~new_I372;
  assign new_G160 = ~new_I382;
  assign new_G106 = ~new_I318;
  assign new_G43 = ~new_G34;
  assign new_I182 = ~new_I180;
  assign G168 = ~new_I392;
  assign G107 = ~new_I321;
  assign G108 = ~new_I324;
  assign G118 = ~new_I336;
  assign new_G99 = ~new_G152;
  assign new_G139 = ~new_G152;
  assign new_G153 = ~new_G152;
  assign new_G157 = ~new_G160;
  assign new_G103 = ~new_G106;
  assign new_G38 = ~new_G40;
  assign new_G60 = ~new_G57;
  assign new_G79 = ~new_G97;
  assign new_G42 = ~new_G44;
  assign new_G46 = ~new_G48;
  assign new_I105 = ~new_G162;
  assign new_G166 = ~new_G162;
  assign new_G50 = ~new_G52;
  assign new_G82 = ~new_G79;
  assign n87 = ~new_I105;
  assign new_G59 = ~new_G61;
  assign new_G63 = ~new_G65;
  assign new_G67 = ~new_G69;
  assign new_G71 = ~new_G73;
  assign new_G81 = ~new_G83;
  assign new_G85 = ~new_G87;
  assign new_G89 = ~new_G91;
  assign new_G94 = ~new_G96;
  assign new_G122 = G24 & new_G121;
  assign new_G124 = new_G150 & new_G139 & G22;
  assign new_G125 = G19 & new_G139 & G20;
  assign new_G126 = new_G139 & G21;
  assign new_G127 = new_G139 & G24;
  assign new_G154 = new_G158 & new_G159;
  assign new_G100 = new_G104 & new_G105;
  assign n122 = new_G154 & new_G153;
  assign n82 = new_G100 & new_G99;
  assign new_G115 = new_G162 & new_G161 & new_G117;
  assign new_G163 = new_G162 & new_G161 & new_G165;
  assign new_G116 = new_G117 & new_G166;
  assign new_G164 = new_G165 & new_G166;
  assign new_G141 = G21 | G24 | G22;
  assign new_G137 = G19 | new_G136 | G20;
  assign new_G138 = new_G136 | new_G142;
  assign new_G140 = new_G150 | G20 | G24 | G21;
  assign new_G133 = new_G144 | G22 | new_G152 | new_G136;
  assign new_G134 = G21 | new_G152 | new_G142;
  assign new_G145 = G19 | G20 | new_G152 | new_G142;
  assign new_G146 = new_G152 | new_G143;
  assign new_G147 = new_G152 | new_G144;
  assign new_G158 = G31 | new_G160;
  assign new_G104 = G23 | new_G106;
  assign new_G131 = new_G129 | G23 | new_G144 | G22;
  assign new_G159 = new_G156 | new_G157;
  assign new_G105 = new_G102 | new_G103;
  assign new_I181 = ~G11 | ~new_I180;
  assign new_G129 = ~G19 | ~new_G135;
  assign new_G121 = ~new_G136 | ~new_G142 | ~G19 | ~new_G135;
  assign new_I190 = ~G12 | ~new_G43;
  assign new_G40 = ~new_I181 | ~new_I182;
  assign new_I200 = ~G13 | ~new_G47;
  assign new_I210 = ~G14 | ~new_G51;
  assign new_G120 = ~new_G150 | ~new_G128;
  assign new_G132 = ~new_G133 | ~new_G134;
  assign n102 = ~new_G139 | ~new_G140 | ~new_G141;
  assign new_G123 = ~new_G139 | ~G21 | ~new_G137 | ~new_G138;
  assign new_G151 = ~new_G139 | ~new_G143 | ~G20 | ~new_G144;
  assign new_G117 = ~new_G147 | ~new_G145 | ~new_G146;
  assign new_I191 = ~G12 | ~new_I190;
  assign new_I192 = ~new_G43 | ~new_I190;
  assign new_I201 = ~G13 | ~new_I200;
  assign new_I202 = ~new_G47 | ~new_I200;
  assign new_G149 = ~new_G131 | ~new_G130;
  assign new_I211 = ~G14 | ~new_I210;
  assign new_I212 = ~new_G51 | ~new_I210;
  assign new_G148 = ~new_G132 | ~new_G150 | ~new_G135;
  assign new_G44 = ~new_I191 | ~new_I192;
  assign new_G48 = ~new_I201 | ~new_I202;
  assign new_G162 = ~new_G120 | ~new_G149;
  assign new_G52 = ~new_I211 | ~new_I212;
  assign new_I225 = ~G15 | ~new_G60;
  assign new_I235 = ~G16 | ~new_G64;
  assign new_I245 = ~G17 | ~new_G68;
  assign new_I255 = ~G18 | ~new_G72;
  assign new_G165 = ~new_G148 | ~new_G149;
  assign new_I226 = ~G15 | ~new_I225;
  assign new_I227 = ~new_G60 | ~new_I225;
  assign new_I236 = ~G16 | ~new_I235;
  assign new_I237 = ~new_G64 | ~new_I235;
  assign new_I246 = ~G17 | ~new_I245;
  assign new_I247 = ~new_G68 | ~new_I245;
  assign new_I256 = ~G18 | ~new_I255;
  assign new_I257 = ~new_G72 | ~new_I255;
  assign new_G61 = ~new_I226 | ~new_I227;
  assign new_G65 = ~new_I236 | ~new_I237;
  assign new_G69 = ~new_I246 | ~new_I247;
  assign new_G73 = ~new_I256 | ~new_I257;
  assign new_I271 = ~G19 | ~new_G82;
  assign new_I281 = ~G20 | ~new_G86;
  assign new_I291 = ~G21 | ~new_G90;
  assign new_I302 = ~G22 | ~new_G95;
  assign new_I272 = ~G19 | ~new_I271;
  assign new_I273 = ~new_G82 | ~new_I271;
  assign new_I282 = ~G20 | ~new_I281;
  assign new_I283 = ~new_G86 | ~new_I281;
  assign new_I292 = ~G21 | ~new_I291;
  assign new_I293 = ~new_G90 | ~new_I291;
  assign new_I303 = ~G22 | ~new_I302;
  assign new_I304 = ~new_G95 | ~new_I302;
  assign new_G83 = ~new_I272 | ~new_I273;
  assign new_G87 = ~new_I282 | ~new_I283;
  assign new_G91 = ~new_I292 | ~new_I293;
  assign new_G96 = ~new_I303 | ~new_I304;
  assign new_G33 = ~G13 & ~G11 & ~G12;
  assign new_G54 = ~G17 & ~G15 & ~G16;
  assign new_G75 = ~G21 & ~G19 & ~G20;
  assign new_G47 = ~new_G34 & ~new_G35;
  assign new_G51 = ~new_G36 & ~new_G34 & ~new_G35;
  assign new_G98 = ~new_G32 & ~new_G33;
  assign new_G128 = ~new_G152 & ~new_G136 & ~G20 & ~new_G144;
  assign new_G130 = ~new_G143 & ~new_G152;
  assign new_G57 = ~G31 & ~new_G98;
  assign new_G64 = ~new_G55 & ~new_G57;
  assign new_G68 = ~new_G57 & ~new_G55 & ~new_G56;
  assign new_G72 = ~new_G57 & ~new_G161 & ~new_G55 & ~new_G56;
  assign new_G97 = ~new_G54 & ~new_G53 & ~new_G57;
  assign n92 = ~new_G122 & ~new_G123;
  assign n97 = ~new_G127 & ~new_G126 & ~new_G124 & ~new_G125;
  assign n117 = ~new_G150 & ~new_G151;
  assign new_G37 = ~new_G152 & ~new_G98 & ~new_G38;
  assign new_G86 = ~new_G76 & ~new_G79;
  assign new_G90 = ~new_G79 & ~new_G76 & ~new_G77;
  assign new_G93 = ~new_G75 & ~new_G74 & ~new_G79;
  assign new_G95 = ~new_G79 & ~new_G78 & ~new_G76 & ~new_G77;
  assign n27 = ~new_G152 & ~new_G98 & ~new_G42;
  assign n32 = ~new_G152 & ~new_G98 & ~new_G46;
  assign n37 = ~new_G152 & ~new_G98 & ~new_G50;
  assign n107 = ~new_G115 & ~new_G116;
  assign n112 = ~new_G163 & ~new_G164;
  assign n42 = ~new_G152 & ~new_G97 & ~new_G59;
  assign n47 = ~new_G152 & ~new_G97 & ~new_G63;
  assign n52 = ~new_G152 & ~new_G97 & ~new_G67;
  assign n57 = ~new_G152 & ~new_G97 & ~new_G71;
  assign n62 = ~new_G152 & ~new_G93 & ~new_G81;
  assign n67 = ~new_G152 & ~new_G93 & ~new_G85;
  assign n72 = ~new_G152 & ~new_G93 & ~new_G89;
  assign n77 = ~new_G152 & ~new_G93 & ~new_G94;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n481 = new_and_1 | new_and_3;
  assign n478 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = keyinput0 & n32;
  assign new_y_mux_key0_and_1 = new_not_keyinput0 & new_G37;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = keyinput0 & n32;
  assign new_y_mux_key1_and_1 = new_not_keyinput0 & new_G37;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = keyinput0 & n32;
  assign new_y_mux_key2_and_1 = new_not_keyinput0 & new_G37;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = new_not_keyinput0 & n32;
  assign new_y_mux_key3_and_1 = keyinput0 & new_G37;
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
  assign n22 = new_and_mux__state_5 | new_and_mux__state_5_2;
  always @ (posedge clock) begin
    G11 <= n22;
    G12 <= n27;
    G13 <= n32;
    G14 <= n37;
    G15 <= n42;
    G16 <= n47;
    G17 <= n52;
    G18 <= n57;
    G19 <= n62;
    G20 <= n67;
    G21 <= n72;
    G22 <= n77;
    G23 <= n82;
    G24 <= n87;
    G25 <= n92;
    G26 <= n97;
    G27 <= n102;
    G28 <= n107;
    G29 <= n112;
    G30 <= n117;
    G31 <= n122;
    Q_0 <= n478;
    Q_1 <= n481;
  end
endmodule


