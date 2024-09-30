// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s349_encrypted" written by ABC on Fri Sep 27 18:22:52 2024

module \./test_runs/structural2_16keys_5bits--s-120240927_165426/iscas89/s349_encrypted  ( clock, 
    START, B0, B1, B2, B3, A0, A1, A2, A3, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4,
    CNTVCO2, CNTVCON2, READY, P0, P1, P2, P3, P4, P5, P6, P7  );
  input  clock;
  input  START, B0, B1, B2, B3, A0, A1, A2, A3, keyinput0, keyinput1,
    keyinput2, keyinput3, keyinput4;
  output CNTVCO2, CNTVCON2, READY, P0, P1, P2, P3, P4, P5, P6, P7;
  reg CT2, CT1, CT0, ACVQN3, ACVQN2, ACVQN1, ACVQN0, MRVQN3, MRVQN2, MRVQN1,
    MRVQN0, AX3, AX2, AX1, AX0, Q_0, Q_1, Q_2, Q_3;
  wire new_CT1N, new_CNTVG3VQN, new_CNTVG2VQN, new_CNTVCO0, new_CNTVCON0,
    new_CNTVG1VQN, new_CNTVG1VD1, new_S3, new_CO, new_S2, new_ADDVC3,
    new_S1, new_ADDVC2, new_ADDVC1, new_S0, new_AD0, new_AD1, new_AD2,
    new_AD3, new_ACVPCN, new_SMVG5VS0P, new_SM3, new_SMVG4VS0P, new_SM2,
    new_SMVG3VS0P, new_SM1, new_SMVG2VS0P, new_SM0, new_SMVS0N,
    new_MRVSHLDN, new_BMVG5VS0P, new_BM3, new_BMVG4VS0P, new_BM2,
    new_BMVG3VS0P, new_BM1, new_BMVG2VS0P, new_BM0, new_BMVS0N,
    new_AMVG5VS0P, new_AMVG4VS0P, new_AMVG3VS0P, new_AMVG2VS0P, new_AMVS0N,
    new_ADDVG4VCNVAD4NF, new_ADDVG4VCNVAD3NF, new_ADDVG4VCNVAD2NF,
    new_ADDVG4VCNVAD1NF, new_ADDVG3VCNVAD4NF, new_ADDVG3VCNVAD3NF,
    new_ADDVG3VCNVAD2NF, new_ADDVG3VCNVAD1NF, new_ADDVG2VCNVAD4NF,
    new_ADDVG2VCNVAD3NF, new_ADDVG2VCNVAD2NF, new_ADDVG2VCNVAD1NF,
    new_SMVG5VG1VAD2NF, new_SMVG5VG1VAD1NF, new_SMVG4VG1VAD2NF,
    new_SMVG4VG1VAD1NF, new_SMVG3VG1VAD2NF, new_SMVG3VG1VAD1NF,
    new_SMVG2VG1VAD2NF, new_SMVG2VG1VAD1NF, new_MRVG4VDVAD2NF,
    new_MRVG4VDVAD1NF, new_MRVG3VDVAD2NF, new_MRVG3VDVAD1NF,
    new_MRVG2VDVAD2NF, new_MRVG2VDVAD1NF, new_MRVG1VDVAD2NF,
    new_MRVG1VDVAD1NF, new_BMVG5VG1VAD2NF, new_BMVG5VG1VAD1NF,
    new_BMVG4VG1VAD2NF, new_BMVG4VG1VAD1NF, new_BMVG3VG1VAD2NF,
    new_BMVG3VG1VAD1NF, new_BMVG2VG1VAD2NF, new_BMVG2VG1VAD1NF,
    new_AMVG5VG1VAD2NF, new_AMVG5VG1VAD1NF, new_AMVG4VG1VAD2NF,
    new_AMVG4VG1VAD1NF, new_AMVG3VG1VAD2NF, new_AMVG3VG1VAD1NF,
    new_AMVG2VG1VAD2NF, new_AMVG2VG1VAD1NF, new_CNTVG3VG2VOR1NF,
    new_CNTVG2VG2VOR1NF, new_CNTVG1VG2VOR1NF, new_ADDVG4VCNVOR2NF,
    new_ADDVG4VCNVOR1NF, new_ADDVG3VCNVOR2NF, new_ADDVG3VCNVOR1NF,
    new_ADDVG2VCNVOR2NF, new_ADDVG2VCNVOR1NF, new_ADDVG1VPVOR1NF,
    new_READYN, new_CNTVG3VZ, new_CNTVG3VZ1, new_CNTVCON1, new_CNTVG2VZ,
    new_CNTVG2VZ1, new_CNTVG1VZ, new_CNTVG1VZ1, new_ADDVG1VP,
    new_ADDVG1VCN, new_AD0N, new_AD1N, new_AD2N, new_AD3N, new_ADSH,
    new_INIT, new_CNTVG3VD, new_CNTVG3VD1, new_CNTVCO1, new_CNTVG2VD1,
    new_ADDVG4VSN, new_ADDVG4VCN, new_ADDVG3VSN, new_ADDVG3VCN,
    new_ADDVG2VSN, new_ADDVG2VCN, new_SMVG5VX, new_SMVG4VX, new_SMVG3VX,
    new_SMVG2VX, new_BMVG5VX, new_BMVG4VX, new_BMVG3VX, new_BMVG2VX,
    new_AMVG5VX, new_AMVG4VX, new_AMVG3VX, new_AMVG2VX, new_not_keyinput0,
    new_not_keyinput1, new_not_keyinput2, new_not_keyinput3,
    new_not_keyinput4, new_not_0, new_and_1, new_not_2, new_and_3,
    new_not_4, new_and_5, new_not_6, new_and_7, new_not_9, new_and_10,
    new_not_11, new_and_12, new_not_13, new_and_14, new_not_16, new_and_17,
    new_not_18, new_and_19, new_not_Q_0, new_not_Q_1, new_not_Q_2,
    new_not_Q_3, new_count_state_1, new_count_state_2, new_count_state_3,
    new_count_state_4, new_count_state_5, new_count_state_6,
    new_count_state_7, new_count_state_8, new_count_state_9,
    new_count_state_10, new_count_state_11, new_count_state_12,
    new_count_state_13, new_count_state_14, new_count_state_15,
    new_y_mux_key0_and_0, new_y_mux_key0_and_1, new_y_mux_key0,
    new_y_mux_key1_and_0, new_y_mux_key1_and_1, new_y_mux_key1,
    new_y_mux_key2_and_0, new_y_mux_key2_and_1, new_y_mux_key2,
    new_y_mux_key3_and_0, new_y_mux_key3_and_1, new_y_mux_key3,
    new_y_mux_key4_and_0, new_y_mux_key4_and_1, new_y_mux_key4,
    new_y_mux_key5_and_0, new_y_mux_key5_and_1, new_y_mux_key5,
    new_y_mux_key6_and_0, new_y_mux_key6_and_1, new_y_mux_key6,
    new_y_mux_key7_and_0, new_y_mux_key7_and_1, new_y_mux_key7,
    new_y_mux_key8_and_0, new_y_mux_key8_and_1, new_y_mux_key8,
    new_y_mux_key9_and_0, new_y_mux_key9_and_1, new_y_mux_key9,
    new_y_mux_key10_and_0, new_y_mux_key10_and_1, new_y_mux_key10,
    new_y_mux_key11_and_0, new_y_mux_key11_and_1, new_y_mux_key11,
    new_y_mux_key12_and_0, new_y_mux_key12_and_1, new_y_mux_key12,
    new_y_mux_key13_and_0, new_y_mux_key13_and_1, new_y_mux_key13,
    new_y_mux_key14_and_0, new_y_mux_key14_and_1, new_y_mux_key14,
    new_y_mux_key15_and_0, new_y_mux_key15_and_1, new_y_mux_key15,
    new__state_1, new__state_2, new__state_3, new__state_4, new__state_5,
    new__state_6, new__state_7, new__state_8, new__state_9, new__state_10,
    new__state_11, new__state_12, new__state_13, new__state_14,
    new__state_15, new__state_17, new__state_18, new__state_19,
    new__state_20, new__state_21, new__state_22, new__state_23,
    new__state_25, new__state_26, new__state_27, new__state_29,
    new_s__state_1, new_not_s__state_1, new_I0__state_1, new_I1__state_1,
    new_and_mux__state_1, new_and_mux__state_1_2, new_y_mux_16,
    new_s__state_3, new_not_s__state_3, new_I0__state_3, new_I1__state_3,
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
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n52,
    n57, n62, n67, n72, n77, n82, n87, n92, n97, n102, n107, n112, n117,
    n122, n481, n484, n487, n490;
  assign READY = ~new_READYN;
  assign new_CT1N = ~CT1;
  assign new_CNTVG3VQN = ~CT2;
  assign new_CNTVG2VQN = ~CT1;
  assign new_CNTVCO0 = ~new_CNTVG1VQN;
  assign new_CNTVCON0 = ~CT0;
  assign new_CNTVG1VQN = ~CT0;
  assign new_CNTVG1VD1 = ~READY;
  assign new_S3 = ~new_ADDVG4VSN;
  assign new_CO = ~new_ADDVG4VCN;
  assign new_S2 = ~new_ADDVG3VSN;
  assign new_ADDVC3 = ~new_ADDVG3VCN;
  assign new_S1 = ~new_ADDVG2VSN;
  assign new_ADDVC2 = ~new_ADDVG2VCN;
  assign new_ADDVC1 = ~new_ADDVG1VCN;
  assign new_S0 = ~new_ADDVG1VP;
  assign new_AD0 = ~new_AD0N;
  assign new_AD1 = ~new_AD1N;
  assign new_AD2 = ~new_AD2N;
  assign new_AD3 = ~new_AD3N;
  assign new_ACVPCN = ~START;
  assign P7 = ~ACVQN3;
  assign P6 = ~ACVQN2;
  assign P5 = ~ACVQN1;
  assign P4 = ~ACVQN0;
  assign new_SMVG5VS0P = ~new_SMVS0N;
  assign new_SM3 = ~new_SMVG5VX;
  assign new_SMVG4VS0P = ~new_SMVS0N;
  assign new_SM2 = ~new_SMVG4VX;
  assign new_SMVG3VS0P = ~new_SMVS0N;
  assign new_SM1 = ~new_SMVG3VX;
  assign new_SMVG2VS0P = ~new_SMVS0N;
  assign new_SM0 = ~new_SMVG2VX;
  assign new_SMVS0N = ~new_ADSH;
  assign new_MRVSHLDN = ~new_ADSH;
  assign P3 = ~MRVQN3;
  assign P2 = ~MRVQN2;
  assign P1 = ~MRVQN1;
  assign P0 = ~MRVQN0;
  assign new_BMVG5VS0P = ~new_BMVS0N;
  assign new_BM3 = ~new_BMVG5VX;
  assign new_BMVG4VS0P = ~new_BMVS0N;
  assign new_BM2 = ~new_BMVG4VX;
  assign new_BMVG3VS0P = ~new_BMVS0N;
  assign new_BM1 = ~new_BMVG3VX;
  assign new_BMVG2VS0P = ~new_BMVS0N;
  assign new_BM0 = ~new_BMVG2VX;
  assign new_BMVS0N = ~new_READYN;
  assign new_AMVG5VS0P = ~new_AMVS0N;
  assign n107 = ~new_AMVG5VX;
  assign new_AMVG4VS0P = ~new_AMVS0N;
  assign n112 = ~new_AMVG4VX;
  assign new_AMVG3VS0P = ~new_AMVS0N;
  assign n117 = ~new_AMVG3VX;
  assign new_AMVG2VS0P = ~new_AMVS0N;
  assign n122 = ~new_AMVG2VX;
  assign new_AMVS0N = ~new_INIT;
  assign new_ADDVG4VCNVAD4NF = P7 & new_ADDVC3 & new_AD3;
  assign new_ADDVG4VCNVAD3NF = new_ADDVG4VCNVOR2NF & new_ADDVG4VCN;
  assign new_ADDVG4VCNVAD2NF = new_ADDVC3 & new_ADDVG4VCNVOR1NF;
  assign new_ADDVG4VCNVAD1NF = new_AD3 & P7;
  assign new_ADDVG3VCNVAD4NF = P6 & new_ADDVC2 & new_AD2;
  assign new_ADDVG3VCNVAD3NF = new_ADDVG3VCNVOR2NF & new_ADDVG3VCN;
  assign new_ADDVG3VCNVAD2NF = new_ADDVC2 & new_ADDVG3VCNVOR1NF;
  assign new_ADDVG3VCNVAD1NF = new_AD2 & P6;
  assign new_ADDVG2VCNVAD4NF = P5 & new_ADDVC1 & new_AD1;
  assign new_ADDVG2VCNVAD3NF = new_ADDVG2VCNVOR2NF & new_ADDVG2VCN;
  assign new_ADDVG2VCNVAD2NF = new_ADDVC1 & new_ADDVG2VCNVOR1NF;
  assign new_ADDVG2VCNVAD1NF = new_AD1 & P5;
  assign new_SMVG5VG1VAD2NF = new_SMVG5VS0P & new_CO;
  assign new_SMVG5VG1VAD1NF = new_SMVS0N & P7;
  assign new_SMVG4VG1VAD2NF = new_SMVG4VS0P & new_S3;
  assign new_SMVG4VG1VAD1NF = new_SMVS0N & P6;
  assign new_SMVG3VG1VAD2NF = new_SMVG3VS0P & new_S2;
  assign new_SMVG3VG1VAD1NF = new_SMVS0N & P5;
  assign new_SMVG2VG1VAD2NF = new_SMVG2VS0P & new_S1;
  assign new_SMVG2VG1VAD1NF = new_SMVS0N & P4;
  assign new_MRVG4VDVAD2NF = new_MRVSHLDN & new_BM3;
  assign new_MRVG4VDVAD1NF = new_ADSH & new_S0;
  assign new_MRVG3VDVAD2NF = new_MRVSHLDN & new_BM2;
  assign new_MRVG3VDVAD1NF = new_ADSH & P3;
  assign new_MRVG2VDVAD2NF = new_MRVSHLDN & new_BM1;
  assign new_MRVG2VDVAD1NF = new_ADSH & P2;
  assign new_MRVG1VDVAD2NF = new_MRVSHLDN & new_BM0;
  assign new_MRVG1VDVAD1NF = new_ADSH & P1;
  assign new_BMVG5VG1VAD2NF = new_BMVG5VS0P & B3;
  assign new_BMVG5VG1VAD1NF = new_BMVS0N & P3;
  assign new_BMVG4VG1VAD2NF = new_BMVG4VS0P & B2;
  assign new_BMVG4VG1VAD1NF = new_BMVS0N & P2;
  assign new_BMVG3VG1VAD2NF = new_BMVG3VS0P & B1;
  assign new_BMVG3VG1VAD1NF = new_BMVS0N & P1;
  assign new_BMVG2VG1VAD2NF = new_BMVG2VS0P & B0;
  assign new_BMVG2VG1VAD1NF = new_BMVS0N & P0;
  assign new_AMVG5VG1VAD2NF = new_AMVG5VS0P & A3;
  assign new_AMVG5VG1VAD1NF = new_AMVS0N & AX3;
  assign new_AMVG4VG1VAD2NF = new_AMVG4VS0P & A2;
  assign new_AMVG4VG1VAD1NF = new_AMVS0N & AX2;
  assign new_AMVG3VG1VAD2NF = new_AMVG3VS0P & A1;
  assign new_AMVG3VG1VAD1NF = new_AMVS0N & AX1;
  assign new_AMVG2VG1VAD2NF = new_AMVG2VS0P & A0;
  assign new_AMVG2VG1VAD1NF = new_AMVS0N & AX0;
  assign new_CNTVG3VG2VOR1NF = CT2 | new_CNTVG3VD1;
  assign new_CNTVG2VG2VOR1NF = CT1 | new_CNTVG2VD1;
  assign new_CNTVG1VG2VOR1NF = CT0 | new_CNTVG1VD1;
  assign new_ADDVG4VCNVOR2NF = P7 | new_ADDVC3 | new_AD3;
  assign new_ADDVG4VCNVOR1NF = new_AD3 | P7;
  assign new_ADDVG3VCNVOR2NF = P6 | new_ADDVC2 | new_AD2;
  assign new_ADDVG3VCNVOR1NF = new_AD2 | P6;
  assign new_ADDVG2VCNVOR2NF = P5 | new_ADDVC1 | new_AD1;
  assign new_ADDVG2VCNVOR1NF = new_AD1 | P5;
  assign new_ADDVG1VPVOR1NF = new_AD0 | P4;
  assign new_READYN = ~CT2 | ~CT0 | ~new_CT1N;
  assign CNTVCON2 = ~CT2 | ~new_CNTVCO1;
  assign new_CNTVG3VZ = ~new_CNTVG3VG2VOR1NF | ~new_CNTVG3VZ1;
  assign new_CNTVG3VZ1 = ~CT2 | ~new_CNTVG3VD1;
  assign new_CNTVCON1 = ~CT1 | ~new_CNTVCO0;
  assign new_CNTVG2VZ = ~new_CNTVG2VG2VOR1NF | ~new_CNTVG2VZ1;
  assign new_CNTVG2VZ1 = ~CT1 | ~new_CNTVG2VD1;
  assign new_CNTVG1VZ = ~new_CNTVG1VG2VOR1NF | ~new_CNTVG1VZ1;
  assign new_CNTVG1VZ1 = ~CT0 | ~new_CNTVG1VD1;
  assign new_ADDVG1VP = ~new_ADDVG1VPVOR1NF | ~new_ADDVG1VCN;
  assign new_ADDVG1VCN = ~new_AD0 | ~P4;
  assign new_AD0N = ~P0 | ~AX0;
  assign new_AD1N = ~P0 | ~AX1;
  assign new_AD2N = ~P0 | ~AX2;
  assign new_AD3N = ~P0 | ~AX3;
  assign n67 = ~new_ACVPCN | ~new_SM3;
  assign n72 = ~new_ACVPCN | ~new_SM2;
  assign n77 = ~new_ACVPCN | ~new_SM1;
  assign n82 = ~new_ACVPCN | ~new_SM0;
  assign new_ADSH = ~READY & ~new_INIT;
  assign new_INIT = ~CT2 & ~CT0 & ~CT1;
  assign CNTVCO2 = ~new_CNTVG3VQN & ~new_CNTVCON1;
  assign new_CNTVG3VD = ~new_CNTVG3VZ & ~START;
  assign new_CNTVG3VD1 = ~READY & ~new_CNTVCON1;
  assign new_CNTVCO1 = ~new_CNTVG2VQN & ~new_CNTVCON0;
  assign n57 = ~new_CNTVG2VZ & ~START;
  assign new_CNTVG2VD1 = ~READY & ~new_CNTVCON0;
  assign n62 = ~new_CNTVG1VZ & ~START;
  assign new_ADDVG4VSN = ~new_ADDVG4VCNVAD4NF & ~new_ADDVG4VCNVAD3NF;
  assign new_ADDVG4VCN = ~new_ADDVG4VCNVAD2NF & ~new_ADDVG4VCNVAD1NF;
  assign new_ADDVG3VSN = ~new_ADDVG3VCNVAD4NF & ~new_ADDVG3VCNVAD3NF;
  assign new_ADDVG3VCN = ~new_ADDVG3VCNVAD2NF & ~new_ADDVG3VCNVAD1NF;
  assign new_ADDVG2VSN = ~new_ADDVG2VCNVAD4NF & ~new_ADDVG2VCNVAD3NF;
  assign new_ADDVG2VCN = ~new_ADDVG2VCNVAD2NF & ~new_ADDVG2VCNVAD1NF;
  assign new_SMVG5VX = ~new_SMVG5VG1VAD2NF & ~new_SMVG5VG1VAD1NF;
  assign new_SMVG4VX = ~new_SMVG4VG1VAD2NF & ~new_SMVG4VG1VAD1NF;
  assign new_SMVG3VX = ~new_SMVG3VG1VAD2NF & ~new_SMVG3VG1VAD1NF;
  assign new_SMVG2VX = ~new_SMVG2VG1VAD2NF & ~new_SMVG2VG1VAD1NF;
  assign n87 = ~new_MRVG4VDVAD2NF & ~new_MRVG4VDVAD1NF;
  assign n92 = ~new_MRVG3VDVAD2NF & ~new_MRVG3VDVAD1NF;
  assign n97 = ~new_MRVG2VDVAD2NF & ~new_MRVG2VDVAD1NF;
  assign n102 = ~new_MRVG1VDVAD2NF & ~new_MRVG1VDVAD1NF;
  assign new_BMVG5VX = ~new_BMVG5VG1VAD2NF & ~new_BMVG5VG1VAD1NF;
  assign new_BMVG4VX = ~new_BMVG4VG1VAD2NF & ~new_BMVG4VG1VAD1NF;
  assign new_BMVG3VX = ~new_BMVG3VG1VAD2NF & ~new_BMVG3VG1VAD1NF;
  assign new_BMVG2VX = ~new_BMVG2VG1VAD2NF & ~new_BMVG2VG1VAD1NF;
  assign new_AMVG5VX = ~new_AMVG5VG1VAD2NF & ~new_AMVG5VG1VAD1NF;
  assign new_AMVG4VX = ~new_AMVG4VG1VAD2NF & ~new_AMVG4VG1VAD1NF;
  assign new_AMVG3VX = ~new_AMVG3VG1VAD2NF & ~new_AMVG3VG1VAD1NF;
  assign new_AMVG2VX = ~new_AMVG2VG1VAD2NF & ~new_AMVG2VG1VAD1NF;
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
  assign n490 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n487 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n484 = new_and_17 | new_and_19;
  assign n481 = ~Q_0;
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
  assign new_y_mux_key0_and_0 = n62 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_CNTVG3VD & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n62 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_CNTVG3VD & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n62 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_CNTVG3VD & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n62 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_CNTVG3VD & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n62 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4_and_1 = new_CNTVG3VD & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n62 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key5_and_1 = new_CNTVG3VD & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n62 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key6_and_1 = new_CNTVG3VD & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n62 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key7_and_1 = new_CNTVG3VD & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n62 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key8_and_1 = new_CNTVG3VD & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n62 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key9_and_1 = new_CNTVG3VD & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n62 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key10_and_1 = new_CNTVG3VD & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n62 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11_and_1 = new_CNTVG3VD & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n62 & keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key12_and_1 = new_CNTVG3VD & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n62 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key13_and_1 = new_CNTVG3VD & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n62 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14_and_1 = new_CNTVG3VD & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n62 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key15_and_1 = new_CNTVG3VD & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n52 = new_and_mux__state_29 | new_and_mux__state_29_2;
  always @ (posedge clock) begin
    CT2 <= n52;
    CT1 <= n57;
    CT0 <= n62;
    ACVQN3 <= n67;
    ACVQN2 <= n72;
    ACVQN1 <= n77;
    ACVQN0 <= n82;
    MRVQN3 <= n87;
    MRVQN2 <= n92;
    MRVQN1 <= n97;
    MRVQN0 <= n102;
    AX3 <= n107;
    AX2 <= n112;
    AX1 <= n117;
    AX0 <= n122;
    Q_0 <= n481;
    Q_1 <= n484;
    Q_2 <= n487;
    Q_3 <= n490;
  end
endmodule


