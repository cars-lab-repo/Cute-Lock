// Benchmark "./test_runs/structural2_nkeys_nbits--s-120240927_165956/ITC99/b06_encrypted" written by ABC on Fri Sep 27 18:34:18 2024

module b06_encrypted  ( clock, 
    EQL, CONT_EQL, keyinput0, keyinput1,
    CC_MUX_REG_2_, CC_MUX_REG_1_, USCITE_REG_2_, USCITE_REG_1_,
    ENABLE_COUNT_REG, ACKOUT_REG  );
  input  clock;
  input  EQL, CONT_EQL, keyinput0, keyinput1;
  output CC_MUX_REG_2_, CC_MUX_REG_1_, USCITE_REG_2_, USCITE_REG_1_,
    ENABLE_COUNT_REG, ACKOUT_REG;
  reg ACKOUT_REG, STATE_REG_2_, STATE_REG_1_, STATE_REG_0_, CC_MUX_REG_2_,
    CC_MUX_REG_1_, USCITE_REG_2_, USCITE_REG_1_, ENABLE_COUNT_REG, Q_0;
  wire new_U54, new_U63, new_U64, new_U65, new_U66, new_U67, new_U68,
    new_U69, new_U70, new_U71, new_U72, new_U73, new_U74, new_U75, new_U76,
    new_U77, new_U78, new_U79, new_U80, new_U81, new_U82, new_U83, new_U84,
    new_U85, new_U86, new_U87, new_U88, new_U89, new_U90, new_U91, new_U92,
    new_not_keyinput0, new_not_keyinput1, new_count_state_1,
    new_y_mux_key0_and_0, new_y_mux_key0_and_1, new_y_mux_key0,
    new_y_mux_key1_and_0, new_y_mux_key1_and_1, new_y_mux_key1,
    new__state_1, new_s__state_1, new_not_s__state_1, new_I0__state_1,
    new_I1__state_1, new_and_mux__state_1, new_and_mux__state_1_2, n22,
    n26, n31, n36, n41, n45, n49, n53, n57, n137;
  assign new_U54 = new_U90 & new_U89;
  assign n36 = ~new_U54 | ~new_U78;
  assign n31 = ~new_U66 | ~new_U72 | ~new_U82 | ~new_U81;
  assign n26 = ~new_U80 | ~new_U79;
  assign n45 = ~new_U91 | ~new_U92 | ~new_U88 | ~new_U69;
  assign n41 = ~new_U85 | ~new_U86 | ~new_U70;
  assign n53 = ~new_U54 | ~EQL | ~new_U76;
  assign n49 = ~new_U72 | ~new_U75;
  assign n57 = ~new_U84 | ~new_U83;
  assign new_U63 = STATE_REG_0_ & STATE_REG_2_ & STATE_REG_1_;
  assign new_U64 = ~STATE_REG_1_;
  assign new_U65 = ~EQL;
  assign new_U66 = ~EQL | ~STATE_REG_1_;
  assign new_U67 = ~STATE_REG_2_;
  assign new_U68 = ~STATE_REG_0_;
  assign new_U69 = STATE_REG_2_ | STATE_REG_0_;
  assign new_U70 = ~STATE_REG_0_ | ~new_U64 | ~new_U67;
  assign new_U71 = ~new_U66;
  assign new_U72 = ~new_U65 | ~new_U64 | ~STATE_REG_2_ | ~new_U68;
  assign new_U73 = ~new_U69;
  assign new_U74 = ~new_U70;
  assign new_U75 = ~STATE_REG_2_ | ~new_U71;
  assign new_U76 = ~STATE_REG_2_ | ~STATE_REG_1_;
  assign new_U77 = STATE_REG_1_ | STATE_REG_0_;
  assign new_U78 = ~new_U65 | ~new_U77;
  assign new_U79 = ~new_U74 | ~new_U65;
  assign new_U80 = ~STATE_REG_2_ | ~new_U78;
  assign new_U81 = ~STATE_REG_0_ | ~EQL | ~new_U67;
  assign new_U82 = ~new_U73 | ~STATE_REG_1_;
  assign new_U83 = ~new_U73 | ~STATE_REG_1_ | ~new_U65;
  assign new_U84 = CONT_EQL | new_U63;
  assign new_U85 = ~new_U71 | ~new_U68;
  assign new_U86 = ~STATE_REG_2_ | ~new_U78;
  assign new_U87 = ~EQL | ~new_U68;
  assign new_U88 = ~STATE_REG_0_ | ~STATE_REG_2_;
  assign new_U89 = ~new_U73 | ~new_U64;
  assign new_U90 = ~STATE_REG_0_ | ~STATE_REG_1_;
  assign new_U91 = ~EQL | ~new_U64;
  assign new_U92 = ~STATE_REG_1_ | ~new_U87;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign n137 = ~Q_0;
  assign new_count_state_1 = Q_0;
  assign new_y_mux_key0_and_0 = n31 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0_and_1 = n57 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n31 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = n57 & keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new__state_1 = new_count_state_1;
  assign new_s__state_1 = new__state_1;
  assign new_not_s__state_1 = ~new_s__state_1;
  assign new_I0__state_1 = new_y_mux_key0;
  assign new_I1__state_1 = new_y_mux_key1;
  assign new_and_mux__state_1 = new_not_s__state_1 & new_I0__state_1;
  assign new_and_mux__state_1_2 = new_s__state_1 & new_I1__state_1;
  assign n22 = new_and_mux__state_1 | new_and_mux__state_1_2;
  always @ (posedge clock) begin
    ACKOUT_REG <= n22;
    STATE_REG_2_ <= n26;
    STATE_REG_1_ <= n31;
    STATE_REG_0_ <= n36;
    CC_MUX_REG_2_ <= n41;
    CC_MUX_REG_1_ <= n45;
    USCITE_REG_2_ <= n49;
    USCITE_REG_1_ <= n53;
    ENABLE_COUNT_REG <= n57;
    Q_0 <= n137;
  end
endmodule
