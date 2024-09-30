// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/ITC99/b01_encrypted" written by ABC on Fri Sep 27 18:34:16 2024

module b01_encrypted  ( clock, 
    LINE1, LINE2, keyinput0, keyinput1,
    OUTP_REG, OVERFLW_REG  );
  input  clock;
  input  LINE1, LINE2, keyinput0, keyinput1;
  output OUTP_REG, OVERFLW_REG;
  reg OVERFLW_REG, STATO_REG_2_, STATO_REG_1_, STATO_REG_0_, OUTP_REG, Q_0;
  wire new_U34, new_U37, new_U38, new_U39, new_U40, new_U41, new_U42,
    new_U43, new_U46, new_U47, new_U48, new_U49, new_U50, new_U51, new_U52,
    new_U53, new_U54, new_U55, new_U56, new_U57, new_U58, new_U59, new_U60,
    new_U61, new_U62, new_U63, new_U64, new_U65, new_U66, new_U67, new_U68,
    new_U69, new_U70, new_U71, new_U72, new_U73, new_not_keyinput0,
    new_not_keyinput1, new_count_state_1, new_y_mux_key0_and_0,
    new_y_mux_key0_and_1, new_y_mux_key0, new_y_mux_key1_and_0,
    new_y_mux_key1_and_1, new_y_mux_key1, new__state_1, new_s__state_1,
    new_not_s__state_1, new_I0__state_1, new_I1__state_1,
    new_and_mux__state_1, new_and_mux__state_1_2, n14, n18, n23, n28, n33,
    n119;
  assign new_U34 = STATO_REG_0_ & STATO_REG_1_ & new_U38;
  assign n28 = ~new_U65 | ~new_U66 | ~new_U68 | ~new_U67;
  assign n23 = ~new_U56 | ~new_U57 | ~new_U55;
  assign new_U37 = LINE2 | LINE1;
  assign new_U38 = ~STATO_REG_2_;
  assign new_U39 = ~STATO_REG_1_;
  assign new_U40 = ~LINE2;
  assign new_U41 = ~LINE1;
  assign new_U42 = ~STATO_REG_0_;
  assign new_U43 = ~STATO_REG_1_ | ~new_U42;
  assign n33 = ~new_U73 | ~new_U72;
  assign n18 = ~new_U60 | ~new_U59;
  assign new_U46 = ~new_U70 | ~new_U69;
  assign new_U47 = ~LINE1 | ~LINE2;
  assign new_U48 = ~STATO_REG_2_ | ~new_U43;
  assign new_U49 = ~new_U37;
  assign new_U50 = ~new_U49 | ~new_U42;
  assign new_U51 = ~new_U47;
  assign new_U52 = ~new_U43;
  assign new_U53 = ~new_U47 | ~new_U43;
  assign new_U54 = ~STATO_REG_2_ | ~new_U47;
  assign new_U55 = ~new_U47 | ~STATO_REG_0_ | ~new_U39;
  assign new_U56 = ~new_U52 | ~new_U54;
  assign new_U57 = ~STATO_REG_2_ | ~new_U62 | ~new_U61;
  assign new_U58 = ~new_U48;
  assign new_U59 = ~new_U53 | ~new_U38;
  assign new_U60 = ~STATO_REG_2_ | ~new_U50 | ~new_U39;
  assign new_U61 = ~STATO_REG_1_ | ~new_U49;
  assign new_U62 = ~new_U37 | ~new_U42;
  assign new_U63 = ~STATO_REG_0_ | ~new_U47;
  assign new_U64 = ~new_U51 | ~new_U42;
  assign new_U65 = ~new_U38 | ~new_U39 | ~new_U64 | ~new_U63;
  assign new_U66 = ~STATO_REG_2_ | ~new_U43 | ~new_U37;
  assign new_U67 = ~new_U34 | ~new_U47;
  assign new_U68 = ~new_U51 | ~new_U52;
  assign new_U69 = ~LINE1 | ~new_U40;
  assign new_U70 = ~LINE2 | ~new_U41;
  assign new_U71 = ~new_U46;
  assign new_U72 = ~new_U58 | ~new_U71;
  assign new_U73 = ~new_U46 | ~new_U48;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign n119 = ~Q_0;
  assign new_count_state_1 = Q_0;
  assign new_y_mux_key0_and_0 = n23 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0_and_1 = new_U34 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n23 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U34 & keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new__state_1 = new_count_state_1;
  assign new_s__state_1 = new__state_1;
  assign new_not_s__state_1 = ~new_s__state_1;
  assign new_I0__state_1 = new_y_mux_key0;
  assign new_I1__state_1 = new_y_mux_key1;
  assign new_and_mux__state_1 = new_not_s__state_1 & new_I0__state_1;
  assign new_and_mux__state_1_2 = new_s__state_1 & new_I1__state_1;
  assign n14 = new_and_mux__state_1 | new_and_mux__state_1_2;
  always @ (posedge clock) begin
    OVERFLW_REG <= n14;
    STATO_REG_2_ <= n18;
    STATO_REG_1_ <= n23;
    STATO_REG_0_ <= n28;
    OUTP_REG <= n33;
    Q_0 <= n119;
  end
endmodule
