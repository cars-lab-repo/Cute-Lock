// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/ITC99/b02_encrypted" written by ABC on Fri Sep 27 18:34:16 2024

module b02_encrypted  ( clock, 
    LINEA, keyinput0,
    U_REG  );
  input  clock;
  input  LINEA, keyinput0;
  output U_REG;
  reg U_REG, STATO_REG_2_, STATO_REG_1_, STATO_REG_0_, Q_0;
  wire new_U31, new_U34, new_U35, new_U36, new_U37, new_U39, new_U40,
    new_U41, new_U42, new_U43, new_U44, new_U45, new_U46, new_U47, new_U48,
    new_U49, new_U50, new_U51, new_U52, new_not_keyinput0,
    new_count_state_1, new_y_mux_key0_and_0, new_y_mux_key0_and_1,
    new_y_mux_key0, new_y_mux_key1_and_0, new_y_mux_key1_and_1,
    new_y_mux_key1, new__state_1, new_s__state_1, new_not_s__state_1,
    new_I0__state_1, new_I1__state_1, new_and_mux__state_1,
    new_and_mux__state_1_2, n8, n12, n17, n22, n72;
  assign new_U31 = STATO_REG_2_ & new_U35 & new_U37;
  assign n22 = ~new_U48 | ~new_U47;
  assign n12 = ~new_U42 | ~new_U41;
  assign new_U34 = ~STATO_REG_2_;
  assign new_U35 = ~STATO_REG_0_;
  assign new_U36 = ~LINEA;
  assign new_U37 = ~STATO_REG_1_;
  assign n17 = ~new_U52 | ~new_U51;
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
  assign n72 = ~Q_0;
  assign new_count_state_1 = Q_0;
  assign new_y_mux_key0_and_0 = keyinput0 & n17;
  assign new_y_mux_key0_and_1 = new_not_keyinput0 & new_U31;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = new_not_keyinput0 & n17;
  assign new_y_mux_key1_and_1 = keyinput0 & new_U31;
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
    U_REG <= n8;
    STATO_REG_2_ <= n12;
    STATO_REG_1_ <= n17;
    STATO_REG_0_ <= n22;
    Q_0 <= n72;
  end
endmodule
