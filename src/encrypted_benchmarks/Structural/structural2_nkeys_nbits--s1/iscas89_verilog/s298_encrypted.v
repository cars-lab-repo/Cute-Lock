// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/iscas89/s298_encrypted" written by ABC on Fri Sep 27 18:36:14 2024

module \./test_runs/structural2_nkeys_nbits--s-120240927_165956/iscas89/s298_encrypted  ( clock, 
    G0, G1, G2, keyinput0, keyinput1, keyinput2,
    G117, G132, G66, G118, G133, G67  );
  input  clock;
  input  G0, G1, G2, keyinput0, keyinput1, keyinput2;
  output G117, G132, G66, G118, G133, G67;
  reg G10, G11, G12, G13, G14, G15, G16, G17, G18, G19, G20, G21, G22, G23,
    Q_0, Q_1;
  wire new_G28, new_G38, new_G40, new_G45, new_G46, new_G50, new_G51,
    new_G54, new_G55, new_G59, new_G60, new_G64, new_I155, new_I158,
    new_G76, new_G82, new_G87, new_G91, new_G93, new_G96, new_G99,
    new_G103, new_G108, new_G114, new_I210, new_I213, new_G120, new_G121,
    new_I221, new_G124, new_G126, new_G127, new_I229, new_G130, new_I232,
    new_G131, new_I235, new_I238, new_G26, new_G27, new_G31, new_G32,
    new_G33, new_G35, new_G36, new_G37, new_G42, new_G48, new_G49, new_G57,
    new_G58, new_G62, new_G63, new_G74, new_G75, new_G88, new_G89, new_G90,
    new_G94, new_G95, new_G100, new_G105, new_G110, new_G111, new_G115,
    new_G122, new_G123, new_G128, new_G129, new_G24, new_G25, new_G68,
    new_G69, new_G70, new_G71, new_G72, new_G73, new_G77, new_G78, new_G79,
    new_G80, new_G81, new_G83, new_G84, new_G85, new_G41, new_G43, new_G52,
    new_G65, new_G97, new_G101, new_G106, new_G109, new_G116, new_G29,
    new_G47, new_G53, new_G61, new_G104, new_G112, new_not_keyinput0,
    new_not_keyinput1, new_not_keyinput2, new_not_0, new_and_1, new_not_2,
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
    n51, n56, n61, n66, n71, n76, n81, n86, n91, n334, n337;
  assign new_G28 = ~new_G130;
  assign new_G38 = ~G10;
  assign new_G40 = ~G13;
  assign new_G45 = ~G12;
  assign new_G46 = ~G11;
  assign new_G50 = ~G14;
  assign new_G51 = ~G23;
  assign new_G54 = ~G11;
  assign new_G55 = ~G13;
  assign new_G59 = ~G12;
  assign new_G60 = ~G22;
  assign new_G64 = ~G15;
  assign new_I155 = ~G16;
  assign G66 = ~new_I155;
  assign new_I158 = ~G17;
  assign G67 = ~new_I158;
  assign new_G76 = ~G10;
  assign new_G82 = ~G11;
  assign new_G87 = ~G16;
  assign new_G91 = ~G12;
  assign new_G93 = ~G17;
  assign new_G96 = ~G14;
  assign new_G99 = ~G18;
  assign new_G103 = ~G13;
  assign new_G108 = ~new_G112;
  assign new_G114 = ~G21;
  assign new_I210 = ~G18;
  assign G117 = ~new_I210;
  assign new_I213 = ~G19;
  assign G118 = ~new_I213;
  assign new_G120 = ~new_G124;
  assign new_G121 = ~G22;
  assign new_I221 = ~G2;
  assign new_G124 = ~new_I221;
  assign new_G126 = ~new_G131;
  assign new_G127 = ~G23;
  assign new_I229 = ~G0;
  assign new_G130 = ~new_I229;
  assign new_I232 = ~G1;
  assign new_G131 = ~new_I232;
  assign new_I235 = ~G20;
  assign G132 = ~new_I235;
  assign new_I238 = ~G21;
  assign G133 = ~new_I238;
  assign new_G26 = new_G28 & new_G50;
  assign new_G27 = new_G51 & new_G28;
  assign new_G31 = G13 & G10 & new_G45;
  assign new_G32 = G10 & G11;
  assign new_G33 = new_G38 & new_G46;
  assign new_G35 = G12 & G10 & G11;
  assign new_G36 = new_G38 & new_G45;
  assign new_G37 = new_G46 & new_G45;
  assign new_G42 = new_G40 & new_G41;
  assign new_G48 = new_G47 & G10 & new_G45 & new_G46;
  assign new_G49 = new_G52 & new_G50 & new_G51;
  assign new_G57 = new_G61 & new_G60 & new_G59 & G11;
  assign new_G58 = new_G64 & new_G65;
  assign new_G62 = new_G61 & new_G60 & new_G59 & G11;
  assign new_G63 = new_G64 & new_G65;
  assign new_G74 = G19 & G12 & G14;
  assign new_G75 = G14 & new_G82 & new_G91;
  assign new_G88 = G14 & new_G87;
  assign new_G89 = new_G103 & new_G96;
  assign new_G90 = new_G91 & new_G103;
  assign new_G94 = new_G93 & G13;
  assign new_G95 = new_G96 & G13;
  assign new_G100 = G12 & new_G99 & G14;
  assign new_G105 = new_G104 & new_G103 & new_G108;
  assign new_G110 = new_G108 & new_G109;
  assign new_G111 = G10 & new_G112;
  assign new_G115 = new_G114 & G14;
  assign new_G122 = new_G120 & new_G121;
  assign new_G123 = new_G124 & G22;
  assign new_G128 = new_G126 & new_G127;
  assign new_G129 = new_G131 & G23;
  assign new_G24 = new_G40 | new_G45 | new_G38 | new_G46;
  assign new_G25 = G12 | new_G38 | G11;
  assign new_G68 = new_G96 | G13 | G11 | G12;
  assign new_G69 = new_G103 | G18;
  assign new_G70 = new_G103 | G14;
  assign new_G71 = G13 | new_G82 | G12;
  assign new_G72 = new_G91 | G20;
  assign new_G73 = new_G103 | G20;
  assign new_G77 = G19 | new_G96 | new_G112 | new_G103;
  assign new_G78 = new_G108 | new_G76;
  assign new_G79 = new_G103 | G14;
  assign new_G80 = G11 | G14;
  assign new_G81 = G12 | G13;
  assign new_G83 = new_G96 | G13 | G11 | G12;
  assign new_G84 = G14 | new_G82 | new_G91;
  assign new_G85 = G17 | new_G91 | new_G96;
  assign new_G41 = ~G10 | ~G12 | ~G11;
  assign new_G43 = ~new_G28 | ~new_G24 | ~new_G25;
  assign new_G52 = ~G10 | ~new_G46 | ~G13 | ~new_G45;
  assign new_G65 = ~new_G61 | ~G22 | ~new_G59 | ~new_G54;
  assign new_G97 = ~new_G108 | ~new_G85 | ~new_G83 | ~new_G84;
  assign new_G101 = ~new_G108 | ~new_G70 | ~new_G68 | ~new_G69;
  assign new_G106 = ~new_G77 | ~new_G78;
  assign new_G109 = ~G14 | ~new_G73 | ~new_G71 | ~new_G72;
  assign new_G116 = ~new_G108 | ~new_G81 | ~new_G79 | ~new_G80;
  assign new_G29 = ~G10 & ~new_G130;
  assign n31 = ~new_G130 & ~new_G33 & ~new_G31 & ~new_G32;
  assign n36 = ~new_G130 & ~new_G37 & ~new_G35 & ~new_G36;
  assign n41 = ~new_G42 & ~new_G43;
  assign n46 = ~new_G53 & ~new_G48 & ~new_G49;
  assign new_G47 = ~new_G50 & ~new_G40;
  assign new_G53 = ~new_G26 & ~new_G27;
  assign n51 = ~new_G130 & ~new_G57 & ~new_G58;
  assign new_G61 = ~G14 & ~new_G55;
  assign n56 = ~new_G112 & ~new_G90 & ~new_G88 & ~new_G89;
  assign n61 = ~new_G97 & ~new_G94 & ~new_G95;
  assign n66 = ~new_G100 & ~new_G101;
  assign n71 = ~new_G105 & ~new_G106;
  assign new_G104 = ~new_G74 & ~new_G75;
  assign n76 = ~new_G110 & ~new_G111;
  assign new_G112 = ~new_G62 & ~new_G63;
  assign n81 = ~new_G115 & ~new_G116;
  assign n86 = ~new_G130 & ~new_G122 & ~new_G123;
  assign n91 = ~new_G130 & ~new_G128 & ~new_G129;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n337 = new_and_1 | new_and_3;
  assign n334 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n36 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_G29 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n36 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_G29 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n36 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_G29 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n36 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3_and_1 = new_G29 & new_not_keyinput2 & keyinput0 & keyinput1;
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
  always @ (posedge clock) begin
    G10 <= n26;
    G11 <= n31;
    G12 <= n36;
    G13 <= n41;
    G14 <= n46;
    G15 <= n51;
    G16 <= n56;
    G17 <= n61;
    G18 <= n66;
    G19 <= n71;
    G20 <= n76;
    G21 <= n81;
    G22 <= n86;
    G23 <= n91;
    Q_0 <= n334;
    Q_1 <= n337;
  end
endmodule


