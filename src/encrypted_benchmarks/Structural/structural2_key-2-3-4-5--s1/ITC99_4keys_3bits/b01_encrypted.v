// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/ITC99/b01_encrypted" written by ABC on Fri Sep 27 18:32:46 2024

module b01_encrypted  ( clock, 
    LINE1, LINE2, keyinput0, keyinput1, keyinput2,
    OUTP_REG, OVERFLW_REG  );
  input  clock;
  input  LINE1, LINE2, keyinput0, keyinput1, keyinput2;
  output OUTP_REG, OVERFLW_REG;
  reg OVERFLW_REG, STATO_REG_2_, STATO_REG_1_, STATO_REG_0_, OUTP_REG, Q_0,
    Q_1;
  wire new_U34, new_U37, new_U38, new_U39, new_U40, new_U41, new_U42,
    new_U43, new_U46, new_U47, new_U48, new_U49, new_U50, new_U51, new_U52,
    new_U53, new_U54, new_U55, new_U56, new_U57, new_U58, new_U59, new_U60,
    new_U61, new_U62, new_U63, new_U64, new_U65, new_U66, new_U67, new_U68,
    new_U69, new_U70, new_U71, new_U72, new_U73, new_not_keyinput0,
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
    new_and_mux__state_5, new_and_mux__state_5_2, n16, n20, n25, n30, n35,
    n134, n137;
  assign new_U34 = STATO_REG_0_ & STATO_REG_1_ & new_U38;
  assign n30 = ~new_U65 | ~new_U66 | ~new_U68 | ~new_U67;
  assign n25 = ~new_U56 | ~new_U57 | ~new_U55;
  assign new_U37 = LINE2 | LINE1;
  assign new_U38 = ~STATO_REG_2_;
  assign new_U39 = ~STATO_REG_1_;
  assign new_U40 = ~LINE2;
  assign new_U41 = ~LINE1;
  assign new_U42 = ~STATO_REG_0_;
  assign new_U43 = ~STATO_REG_1_ | ~new_U42;
  assign n35 = ~new_U73 | ~new_U72;
  assign n20 = ~new_U60 | ~new_U59;
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
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n137 = new_and_1 | new_and_3;
  assign n134 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n25 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key0_and_1 = new_U34 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n25 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U34 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n25 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_U34 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n25 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U34 & keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n16 = new_and_mux__state_5 | new_and_mux__state_5_2;
  always @ (posedge clock) begin
    OVERFLW_REG <= n16;
    STATO_REG_2_ <= n20;
    STATO_REG_1_ <= n25;
    STATO_REG_0_ <= n30;
    OUTP_REG <= n35;
    Q_0 <= n134;
    Q_1 <= n137;
  end
endmodule
