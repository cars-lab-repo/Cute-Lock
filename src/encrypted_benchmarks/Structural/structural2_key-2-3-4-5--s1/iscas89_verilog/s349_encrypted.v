// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/iscas89/s349_encrypted" written by ABC on Fri Sep 27 18:27:21 2024

module \./test_runs/structural2_key-2-3-4-5--s-120240927_164306/iscas89/s349_encrypted  ( clock, 
    START, B0, B1, B2, B3, A0, A1, A2, A3, keyinput0, keyinput1, keyinput2,
    CNTVCO2, CNTVCON2, READY, P0, P1, P2, P3, P4, P5, P6, P7  );
  input  clock;
  input  START, B0, B1, B2, B3, A0, A1, A2, A3, keyinput0, keyinput1,
    keyinput2;
  output CNTVCO2, CNTVCON2, READY, P0, P1, P2, P3, P4, P5, P6, P7;
  reg CT2, CT1, CT0, ACVQN3, ACVQN2, ACVQN1, ACVQN0, MRVQN3, MRVQN2, MRVQN1,
    MRVQN0, AX3, AX2, AX1, AX0, Q_0, Q_1;
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
    new_and_mux__state_5, new_and_mux__state_5_2, n48, n53, n58, n63, n68,
    n73, n78, n83, n88, n93, n98, n103, n108, n113, n118, n439, n442;
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
  assign n103 = ~new_AMVG5VX;
  assign new_AMVG4VS0P = ~new_AMVS0N;
  assign n108 = ~new_AMVG4VX;
  assign new_AMVG3VS0P = ~new_AMVS0N;
  assign n113 = ~new_AMVG3VX;
  assign new_AMVG2VS0P = ~new_AMVS0N;
  assign n118 = ~new_AMVG2VX;
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
  assign n63 = ~new_ACVPCN | ~new_SM3;
  assign n68 = ~new_ACVPCN | ~new_SM2;
  assign n73 = ~new_ACVPCN | ~new_SM1;
  assign n78 = ~new_ACVPCN | ~new_SM0;
  assign new_ADSH = ~READY & ~new_INIT;
  assign new_INIT = ~CT2 & ~CT0 & ~CT1;
  assign CNTVCO2 = ~new_CNTVG3VQN & ~new_CNTVCON1;
  assign new_CNTVG3VD = ~new_CNTVG3VZ & ~START;
  assign new_CNTVG3VD1 = ~READY & ~new_CNTVCON1;
  assign new_CNTVCO1 = ~new_CNTVG2VQN & ~new_CNTVCON0;
  assign n53 = ~new_CNTVG2VZ & ~START;
  assign new_CNTVG2VD1 = ~READY & ~new_CNTVCON0;
  assign n58 = ~new_CNTVG1VZ & ~START;
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
  assign n83 = ~new_MRVG4VDVAD2NF & ~new_MRVG4VDVAD1NF;
  assign n88 = ~new_MRVG3VDVAD2NF & ~new_MRVG3VDVAD1NF;
  assign n93 = ~new_MRVG2VDVAD2NF & ~new_MRVG2VDVAD1NF;
  assign n98 = ~new_MRVG1VDVAD2NF & ~new_MRVG1VDVAD1NF;
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
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n442 = new_and_1 | new_and_3;
  assign n439 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n58 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_CNTVG3VD & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n58 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1_and_1 = new_CNTVG3VD & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n58 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_CNTVG3VD & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n58 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_CNTVG3VD & keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n48 = new_and_mux__state_5 | new_and_mux__state_5_2;
  always @ (posedge clock) begin
    CT2 <= n48;
    CT1 <= n53;
    CT0 <= n58;
    ACVQN3 <= n63;
    ACVQN2 <= n68;
    ACVQN1 <= n73;
    ACVQN0 <= n78;
    MRVQN3 <= n83;
    MRVQN2 <= n88;
    MRVQN1 <= n93;
    MRVQN0 <= n98;
    AX3 <= n103;
    AX2 <= n108;
    AX1 <= n113;
    AX0 <= n118;
    Q_0 <= n439;
    Q_1 <= n442;
  end
endmodule


