// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/ITC99/b02_encrypted" written by ABC on Fri Sep 27 18:32:47 2024

module b02_encrypted  ( clock, 
    LINEA, keyinput0, keyinput1, keyinput2,
    U_REG  );
  input  clock;
  input  LINEA, keyinput0, keyinput1, keyinput2;
  output U_REG;
  reg U_REG, STATO_REG_2_, STATO_REG_1_, STATO_REG_0_, Q_0, Q_1;
  wire new_U31, new_U34, new_U35, new_U36, new_U37, new_U39, new_U40,
    new_U41, new_U42, new_U43, new_U44, new_U45, new_U46, new_U47, new_U48,
    new_U49, new_U50, new_U51, new_U52, new_not_keyinput0,
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
    new_and_mux__state_5, new_and_mux__state_5_2, n12, n16, n21, n26, n91,
    n94;
  assign new_U31 = STATO_REG_2_ & new_U35 & new_U37;
  assign n26 = ~new_U48 | ~new_U47;
  assign n16 = ~new_U42 | ~new_U41;
  assign new_U34 = ~STATO_REG_2_;
  assign new_U35 = ~STATO_REG_0_;
  assign new_U36 = ~LINEA;
  assign new_U37 = ~STATO_REG_1_;
  assign n21 = ~new_U52 | ~new_U51;
  assign new_U39 = ~new_U35 | ~new_U50 | ~new_U49;
  assign new_U40 = STATO_REG_2_ | LINEA;
  assign new_U41 = ~STATO_REG_0_ | ~new_U40;
  assign new_U42 = ~STATO_REG_1_ | ~new_U39;
  assign new_U43 = LINEA | STATO_REG_1_;
  assign new_U44 = ~new_U34 | ~new_U43;
  assign new_U45 = ~LINEA | ~new_U34;
  assign new_U46 = ~STATO_REG_0_ | ~new_U45;
  assign new_U47 = STATO_REG_2_ | LINEA | STATO_REG_0_;
  assign new_U48 = ~new_U46 | ~new_U37;
  assign new_U49 = ~LINEA | ~new_U34;
  assign new_U50 = ~STATO_REG_2_ | ~new_U36;
  assign new_U51 = ~STATO_REG_0_ | ~new_U44;
  assign new_U52 = ~new_U35 | ~STATO_REG_1_ | ~new_U34;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n94 = new_and_1 | new_and_3;
  assign n91 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n21 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U31 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n21 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U31 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n21 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_U31 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n21 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U31 & keyinput2 & keyinput0 & new_not_keyinput1;
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
    U_REG <= n12;
    STATO_REG_2_ <= n16;
    STATO_REG_1_ <= n21;
    STATO_REG_0_ <= n26;
    Q_0 <= n91;
    Q_1 <= n94;
  end
endmodule
