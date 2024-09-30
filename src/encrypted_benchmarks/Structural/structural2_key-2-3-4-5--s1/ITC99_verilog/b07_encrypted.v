// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/ITC99/b07_encrypted" written by ABC on Fri Sep 27 18:32:49 2024

module b07_encrypted  ( clock, 
    START, keyinput0, keyinput1, keyinput2,
    PUNTI_RETTA_REG_7_, PUNTI_RETTA_REG_6_, PUNTI_RETTA_REG_5_,
    PUNTI_RETTA_REG_4_, PUNTI_RETTA_REG_3_, PUNTI_RETTA_REG_2_,
    PUNTI_RETTA_REG_1_, PUNTI_RETTA_REG_0_  );
  input  clock;
  input  START, keyinput0, keyinput1, keyinput2;
  output PUNTI_RETTA_REG_7_, PUNTI_RETTA_REG_6_, PUNTI_RETTA_REG_5_,
    PUNTI_RETTA_REG_4_, PUNTI_RETTA_REG_3_, PUNTI_RETTA_REG_2_,
    PUNTI_RETTA_REG_1_, PUNTI_RETTA_REG_0_;
  reg PUNTI_RETTA_REG_7_, PUNTI_RETTA_REG_6_, PUNTI_RETTA_REG_5_,
    PUNTI_RETTA_REG_4_, PUNTI_RETTA_REG_3_, PUNTI_RETTA_REG_2_,
    PUNTI_RETTA_REG_1_, PUNTI_RETTA_REG_0_, CONT_REG_7_, CONT_REG_6_,
    CONT_REG_5_, CONT_REG_4_, CONT_REG_3_, CONT_REG_2_, CONT_REG_1_,
    CONT_REG_0_, MAR_REG_7_, MAR_REG_6_, MAR_REG_5_, MAR_REG_4_,
    MAR_REG_3_, MAR_REG_2_, MAR_REG_1_, MAR_REG_0_, X_REG_7_, X_REG_6_,
    X_REG_5_, X_REG_4_, X_REG_3_, X_REG_2_, X_REG_1_, X_REG_0_, Y_REG_3_,
    Y_REG_1_, Y_REG_5_, T_REG_3_, T_REG_5_, T_REG_1_, T_REG_0_, T_REG_4_,
    T_REG_6_, T_REG_2_, Y_REG_4_, Y_REG_0_, Y_REG_2_, Y_REG_6_,
    STATO_REG_2_, STATO_REG_1_, STATO_REG_0_, Q_0, Q_1;
  wire new_R182_U98, new_U300, new_U301, new_U302, new_U303, new_U304,
    new_U305, new_U306, new_U307, new_U308, new_U309, new_U310, new_U311,
    new_U312, new_U313, new_U314, new_U315, new_U316, new_U317, new_U318,
    new_U319, new_U320, new_U321, new_U322, new_U323, new_U358, new_U359,
    new_U360, new_U361, new_U362, new_U363, new_U364, new_U365, new_U366,
    new_U367, new_U368, new_U369, new_U370, new_U371, new_U372, new_U373,
    new_U374, new_U375, new_U376, new_U377, new_U378, new_U379, new_U380,
    new_U381, new_U382, new_U383, new_U384, new_U385, new_U386, new_U387,
    new_U392, new_U393, new_U404, new_U405, new_U406, new_U407, new_U408,
    new_U409, new_U410, new_U411, new_U412, new_U413, new_U414, new_U415,
    new_U416, new_U417, new_U418, new_U419, new_U420, new_U421, new_U422,
    new_U423, new_U424, new_U425, new_U426, new_U427, new_U428, new_U429,
    new_U430, new_U431, new_U432, new_U433, new_U434, new_U435, new_U436,
    new_U437, new_U438, new_U439, new_U440, new_U441, new_U442, new_U443,
    new_U444, new_U445, new_U446, new_U447, new_U448, new_U449, new_U450,
    new_U451, new_U452, new_U453, new_U454, new_U455, new_U456, new_U457,
    new_U458, new_U459, new_U460, new_U461, new_U462, new_U463, new_U464,
    new_U465, new_U466, new_U467, new_U468, new_U469, new_U470, new_U471,
    new_U472, new_U473, new_U474, new_U475, new_U476, new_U477, new_U478,
    new_U479, new_U480, new_U481, new_U482, new_U483, new_U484, new_U485,
    new_U486, new_U487, new_U488, new_U489, new_U490, new_U491, new_U492,
    new_U493, new_U494, new_U495, new_U496, new_U497, new_U498, new_U499,
    new_U500, new_U501, new_U502, new_U503, new_U504, new_U505, new_U506,
    new_U507, new_U508, new_U509, new_U510, new_U511, new_U512, new_U513,
    new_U514, new_U515, new_U516, new_U517, new_U518, new_U519, new_U520,
    new_U521, new_U522, new_U523, new_U524, new_U525, new_U526, new_U527,
    new_U528, new_U529, new_U530, new_U531, new_U532, new_U533, new_U534,
    new_U535, new_U536, new_U537, new_U538, new_U539, new_U540, new_U541,
    new_U542, new_U543, new_U544, new_U545, new_U546, new_U547, new_U548,
    new_U549, new_U550, new_U551, new_U552, new_U553, new_U554, new_U555,
    new_U556, new_U557, new_U558, new_U559, new_U560, new_U561, new_U562,
    new_U563, new_U564, new_U565, new_U566, new_U567, new_U568, new_U569,
    new_U570, new_U571, new_U572, new_U573, new_U574, new_U575, new_U576,
    new_U577, new_U578, new_U579, new_U580, new_U581, new_U582, new_U583,
    new_U584, new_U585, new_U586, new_U587, new_R182_U97, new_R182_U4,
    new_R182_U5, new_R182_U6, new_R182_U7, new_R182_U8, new_R182_U9,
    new_R182_U10, new_R182_U11, new_R182_U12, new_R182_U13, new_R182_U14,
    new_R182_U15, new_R182_U16, new_R182_U17, new_R182_U18, new_R182_U19,
    new_R182_U20, new_R182_U21, new_R182_U22, new_R182_U23, new_R182_U24,
    new_R182_U25, new_R182_U26, new_R182_U27, new_R182_U28, new_R182_U29,
    new_R182_U30, new_R182_U31, new_R182_U32, new_R182_U33, new_R182_U34,
    new_R182_U35, new_R182_U36, new_R182_U37, new_R182_U38, new_R182_U39,
    new_R182_U40, new_R182_U41, new_R182_U42, new_R182_U43, new_R182_U44,
    new_R182_U45, new_R182_U46, new_R182_U47, new_R182_U48, new_R182_U49,
    new_R182_U50, new_R182_U51, new_R182_U52, new_R182_U53, new_R182_U54,
    new_R182_U55, new_R182_U56, new_R182_U57, new_R182_U58, new_R182_U59,
    new_R182_U60, new_R182_U61, new_R182_U62, new_R182_U63, new_R182_U64,
    new_R182_U65, new_R182_U66, new_R182_U67, new_R182_U68, new_R182_U69,
    new_R182_U70, new_R182_U71, new_R182_U72, new_R182_U73, new_R182_U74,
    new_R182_U75, new_R182_U76, new_R182_U77, new_R182_U78, new_R182_U79,
    new_R182_U80, new_R182_U81, new_R182_U82, new_R182_U83, new_R182_U84,
    new_R182_U85, new_R182_U86, new_R182_U87, new_R182_U88, new_R182_U89,
    new_R182_U90, new_R182_U91, new_R182_U92, new_R182_U93, new_R182_U94,
    new_R182_U95, new_R182_U96, new_not_keyinput0, new_not_keyinput1,
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
    new_and_mux__state_5, new_and_mux__state_5_2, n26, n30, n34, n38, n42,
    n46, n50, n54, n58, n63, n68, n73, n78, n83, n88, n93, n98, n103, n108,
    n113, n118, n123, n128, n133, n138, n143, n148, n153, n158, n163, n168,
    n173, n178, n183, n188, n193, n198, n203, n208, n213, n218, n223, n228,
    n233, n238, n243, n248, n253, n258, n1000, n1003;
  assign new_R182_U98 = ~new_U316 | ~new_R182_U5;
  assign new_U300 = new_U412 & STATO_REG_2_;
  assign new_U301 = STATO_REG_2_ & new_U375;
  assign new_U302 = new_U300 & new_U373;
  assign new_U303 = new_U300 & new_U432;
  assign new_U304 = new_U393 & new_U406;
  assign new_U305 = new_U393 & new_U368;
  assign new_U306 = new_U376 & new_U371;
  assign new_U307 = STATO_REG_0_ & START;
  assign new_U308 = MAR_REG_3_ & new_U362;
  assign new_U309 = CONT_REG_7_ & new_U536;
  assign new_U310 = ~new_U539 | ~new_U538;
  assign new_U311 = ~new_U541 | ~new_U540;
  assign new_U312 = ~new_U543 | ~new_U542;
  assign new_U313 = ~new_U545 | ~new_U544;
  assign new_U314 = ~new_U547 | ~new_U546;
  assign new_U315 = ~new_U549 | ~new_U548;
  assign new_U316 = ~new_U551 | ~new_U550;
  assign new_U317 = ~new_U515 | ~new_U516 | ~new_U517;
  assign new_U318 = ~new_U518 | ~new_U519 | ~new_U520;
  assign new_U319 = ~new_U521 | ~new_U522 | ~new_U523;
  assign new_U320 = ~new_U524 | ~new_U525 | ~new_U526;
  assign new_U321 = ~new_U527 | ~new_U528 | ~new_U529;
  assign new_U322 = ~new_U530 | ~new_U531 | ~new_U532;
  assign new_U323 = ~new_U370 | ~new_U533 | ~new_U535 | ~new_U534;
  assign n248 = ~new_U407 | ~new_U422;
  assign n253 = ~new_U387 | ~new_U553 | ~new_U552;
  assign n258 = ~new_U429 | ~new_U406 | ~new_U385;
  assign n243 = ~new_U414 | ~new_U514;
  assign n228 = ~new_U414 | ~new_U513;
  assign n188 = ~new_U414 | ~new_U512;
  assign n178 = ~new_U414 | ~new_U511;
  assign n173 = ~new_U508 | ~new_U509 | ~new_U507;
  assign n168 = ~new_U503 | ~new_U504 | ~new_U502;
  assign n163 = ~new_U497 | ~new_U498 | ~new_U496;
  assign n158 = ~new_U492 | ~new_U493 | ~new_U413;
  assign n153 = ~new_U490 | ~new_U491 | ~new_U413;
  assign n148 = ~new_U488 | ~new_U489 | ~new_U413;
  assign n143 = ~new_U486 | ~new_U487 | ~new_U413;
  assign n138 = ~new_U484 | ~new_U485 | ~new_U413;
  assign n113 = MAR_REG_4_ & new_U477;
  assign n108 = MAR_REG_5_ & new_U477;
  assign n103 = MAR_REG_6_ & new_U477;
  assign n98 = MAR_REG_7_ & new_U477;
  assign n93 = ~new_U475 | ~new_U474;
  assign n88 = ~new_U473 | ~new_U472;
  assign n83 = ~new_U471 | ~new_U470;
  assign n78 = ~new_U469 | ~new_U468;
  assign n73 = ~new_U467 | ~new_U466;
  assign n68 = ~new_U465 | ~new_U464;
  assign n63 = ~new_U463 | ~new_U462;
  assign n58 = ~new_U461 | ~new_U460;
  assign n54 = ~new_U456 | ~new_U455 | ~new_U454;
  assign n50 = ~new_U451 | ~new_U452 | ~new_U453;
  assign n46 = ~new_U448 | ~new_U449 | ~new_U450;
  assign n42 = ~new_U445 | ~new_U446 | ~new_U447;
  assign n38 = ~new_U442 | ~new_U443 | ~new_U444;
  assign n34 = ~new_U439 | ~new_U440 | ~new_U441;
  assign n30 = ~new_U436 | ~new_U437 | ~new_U438;
  assign new_U358 = ~new_U433 | ~new_U434 | ~new_U435;
  assign new_U359 = ~MAR_REG_1_;
  assign new_U360 = ~MAR_REG_0_;
  assign new_U361 = ~MAR_REG_0_ | ~MAR_REG_1_;
  assign new_U362 = ~MAR_REG_2_;
  assign new_U363 = ~MAR_REG_2_ | ~new_U417;
  assign new_U364 = ~MAR_REG_3_;
  assign new_U365 = ~new_U404 | ~new_U418;
  assign new_U366 = ~START;
  assign new_U367 = ~STATO_REG_1_;
  assign new_U368 = ~STATO_REG_2_;
  assign new_U369 = ~STATO_REG_0_;
  assign new_U370 = ~STATO_REG_2_ | ~STATO_REG_1_;
  assign new_U371 = STATO_REG_1_ | STATO_REG_2_;
  assign new_U372 = ~new_U431 | ~new_U366;
  assign new_U373 = ~new_U405 | ~new_U381 | ~new_U382 | ~X_REG_1_ | ~new_U384;
  assign new_U374 = ~new_U415 | ~new_U365;
  assign new_U375 = ~new_U458 | ~new_U457;
  assign new_U376 = ~new_U374 | ~new_U407 | ~new_U476;
  assign new_U377 = ~MAR_REG_7_;
  assign new_U378 = ~MAR_REG_6_;
  assign new_U379 = ~MAR_REG_5_;
  assign new_U380 = ~MAR_REG_4_;
  assign new_U381 = ~X_REG_3_;
  assign new_U382 = ~X_REG_2_;
  assign new_U383 = ~new_U567 | ~new_U494;
  assign new_U384 = ~X_REG_0_;
  assign new_U385 = STATO_REG_1_ | STATO_REG_0_;
  assign new_U386 = ~new_U408 | ~STATO_REG_2_;
  assign new_U387 = ~STATO_REG_0_ | ~STATO_REG_2_;
  assign n118 = ~new_U555 | ~new_U554;
  assign n123 = ~new_U557 | ~new_U556;
  assign n128 = ~new_U559 | ~new_U558;
  assign n133 = ~new_U561 | ~new_U560;
  assign new_U392 = ~new_U566 | ~new_U565;
  assign new_U393 = ~new_U563 | ~new_U562;
  assign n183 = ~new_U569 | ~new_U568;
  assign n193 = ~new_U571 | ~new_U570;
  assign n198 = ~new_U573 | ~new_U572;
  assign n203 = ~new_U575 | ~new_U574;
  assign n208 = ~new_U577 | ~new_U576;
  assign n213 = ~new_U579 | ~new_U578;
  assign n218 = ~new_U581 | ~new_U580;
  assign n223 = ~new_U583 | ~new_U582;
  assign n233 = ~new_U585 | ~new_U584;
  assign n238 = ~new_U587 | ~new_U586;
  assign new_U404 = new_U380 & MAR_REG_3_ & new_U379 & new_U378 & new_U377;
  assign new_U405 = ~X_REG_4_ & ~X_REG_5_ & ~X_REG_7_ & ~X_REG_6_;
  assign new_U406 = STATO_REG_0_ | STATO_REG_2_;
  assign new_U407 = ~STATO_REG_0_ | ~STATO_REG_1_;
  assign new_U408 = ~new_U385;
  assign new_U409 = ~new_U387;
  assign new_U410 = ~new_U374;
  assign new_U411 = ~new_U415 | ~new_U419;
  assign new_U412 = ~new_U372;
  assign new_U413 = ~new_U305 | ~new_U392;
  assign new_U414 = ~new_U510 | ~new_U392;
  assign new_U415 = ~new_U370;
  assign new_U416 = ~new_U407;
  assign new_U417 = ~new_U361;
  assign new_U418 = ~new_U363;
  assign new_U419 = ~new_U365;
  assign new_U420 = ~START | ~new_U419;
  assign new_U421 = ~STATO_REG_1_ | ~new_U420;
  assign new_U422 = ~STATO_REG_2_ | ~new_U421;
  assign new_U423 = ~new_U406;
  assign new_U424 = ~new_U419 | ~new_U366;
  assign new_U425 = ~new_U424 | ~new_U369;
  assign new_U426 = ~new_U406 | ~new_U425;
  assign new_U427 = ~new_U371;
  assign new_U428 = ~new_U411 | ~new_U371;
  assign new_U429 = ~new_U428 | ~new_U366;
  assign new_U430 = ~new_U427 | ~STATO_REG_0_;
  assign new_U431 = ~new_U411 | ~new_U430;
  assign new_U432 = ~new_U373;
  assign new_U433 = ~new_R182_U30 | ~new_U303;
  assign new_U434 = ~CONT_REG_7_ | ~new_U302;
  assign new_U435 = ~PUNTI_RETTA_REG_7_ | ~new_U372;
  assign new_U436 = ~new_R182_U31 | ~new_U303;
  assign new_U437 = ~CONT_REG_6_ | ~new_U302;
  assign new_U438 = ~PUNTI_RETTA_REG_6_ | ~new_U372;
  assign new_U439 = ~new_R182_U33 | ~new_U303;
  assign new_U440 = ~CONT_REG_5_ | ~new_U302;
  assign new_U441 = ~PUNTI_RETTA_REG_5_ | ~new_U372;
  assign new_U442 = ~new_R182_U35 | ~new_U303;
  assign new_U443 = ~CONT_REG_4_ | ~new_U302;
  assign new_U444 = ~PUNTI_RETTA_REG_4_ | ~new_U372;
  assign new_U445 = ~new_R182_U37 | ~new_U303;
  assign new_U446 = ~CONT_REG_3_ | ~new_U302;
  assign new_U447 = ~PUNTI_RETTA_REG_3_ | ~new_U372;
  assign new_U448 = ~new_R182_U39 | ~new_U303;
  assign new_U449 = ~CONT_REG_2_ | ~new_U302;
  assign new_U450 = ~PUNTI_RETTA_REG_2_ | ~new_U372;
  assign new_U451 = ~new_R182_U20 | ~new_U303;
  assign new_U452 = ~CONT_REG_1_ | ~new_U302;
  assign new_U453 = ~PUNTI_RETTA_REG_1_ | ~new_U372;
  assign new_U454 = ~new_R182_U21 | ~new_U303;
  assign new_U455 = ~CONT_REG_0_ | ~new_U302;
  assign new_U456 = ~PUNTI_RETTA_REG_0_ | ~new_U372;
  assign new_U457 = ~new_U427 | ~new_U307;
  assign new_U458 = ~new_U410 | ~new_U432;
  assign new_U459 = ~new_U375;
  assign new_U460 = ~new_U301 | ~new_R182_U30;
  assign new_U461 = ~new_U459 | ~CONT_REG_7_;
  assign new_U462 = ~new_U301 | ~new_R182_U31;
  assign new_U463 = ~new_U459 | ~CONT_REG_6_;
  assign new_U464 = ~new_U301 | ~new_R182_U33;
  assign new_U465 = ~new_U459 | ~CONT_REG_5_;
  assign new_U466 = ~new_U301 | ~new_R182_U35;
  assign new_U467 = ~new_U459 | ~CONT_REG_4_;
  assign new_U468 = ~new_U301 | ~new_R182_U37;
  assign new_U469 = ~new_U459 | ~CONT_REG_3_;
  assign new_U470 = ~new_U301 | ~new_R182_U39;
  assign new_U471 = ~new_U459 | ~CONT_REG_2_;
  assign new_U472 = ~new_U301 | ~new_R182_U20;
  assign new_U473 = ~new_U459 | ~CONT_REG_1_;
  assign new_U474 = ~new_U301 | ~new_R182_U21;
  assign new_U475 = ~new_U459 | ~CONT_REG_0_;
  assign new_U476 = ~new_U307 | ~new_U368;
  assign new_U477 = ~new_U376;
  assign new_U478 = ~new_U371 | ~new_U363;
  assign new_U479 = ~new_U376 | ~new_U478;
  assign new_U480 = ~new_U371 | ~new_U361;
  assign new_U481 = ~new_U376 | ~new_U480;
  assign new_U482 = ~new_U371 | ~new_U360;
  assign new_U483 = ~new_U376 | ~new_U482;
  assign new_U484 = ~new_U304 | ~new_R182_U30;
  assign new_U485 = ~X_REG_7_ | ~new_U564;
  assign new_U486 = ~new_U304 | ~new_R182_U31;
  assign new_U487 = ~X_REG_6_ | ~new_U564;
  assign new_U488 = ~new_U304 | ~new_R182_U33;
  assign new_U489 = ~X_REG_5_ | ~new_U564;
  assign new_U490 = ~new_U304 | ~new_R182_U35;
  assign new_U491 = ~X_REG_4_ | ~new_U564;
  assign new_U492 = ~new_U304 | ~new_R182_U37;
  assign new_U493 = ~X_REG_3_ | ~new_U564;
  assign new_U494 = ~new_U308 | ~new_U417;
  assign new_U495 = ~new_U383;
  assign new_U496 = ~new_U305 | ~new_U383;
  assign new_U497 = ~new_U304 | ~new_R182_U39;
  assign new_U498 = ~X_REG_2_ | ~new_U564;
  assign new_U499 = ~MAR_REG_0_ | ~new_U359;
  assign new_U500 = ~MAR_REG_3_ | ~new_U418;
  assign new_U501 = ~new_U500 | ~new_U567 | ~new_U499;
  assign new_U502 = ~new_U305 | ~new_U501;
  assign new_U503 = ~new_U304 | ~new_R182_U20;
  assign new_U504 = ~new_U564 | ~X_REG_1_;
  assign new_U505 = MAR_REG_3_ | MAR_REG_1_ | MAR_REG_2_;
  assign new_U506 = ~new_U495 | ~new_U505;
  assign new_U507 = ~new_U305 | ~new_U506;
  assign new_U508 = ~new_U304 | ~new_R182_U21;
  assign new_U509 = ~X_REG_0_ | ~new_U564;
  assign new_U510 = ~new_U386;
  assign new_U511 = ~Y_REG_3_ | ~new_U386;
  assign new_U512 = ~Y_REG_5_ | ~new_U386;
  assign new_U513 = ~Y_REG_4_ | ~new_U386;
  assign new_U514 = ~Y_REG_6_ | ~new_U386;
  assign new_U515 = ~new_U409 | ~Y_REG_6_;
  assign new_U516 = ~T_REG_6_ | ~new_U408;
  assign new_U517 = ~X_REG_6_ | ~new_U368;
  assign new_U518 = ~new_U409 | ~Y_REG_5_;
  assign new_U519 = ~T_REG_5_ | ~new_U408;
  assign new_U520 = ~X_REG_5_ | ~new_U368;
  assign new_U521 = ~new_U409 | ~Y_REG_4_;
  assign new_U522 = ~T_REG_4_ | ~new_U408;
  assign new_U523 = ~X_REG_4_ | ~new_U368;
  assign new_U524 = ~new_U409 | ~Y_REG_3_;
  assign new_U525 = ~T_REG_3_ | ~new_U408;
  assign new_U526 = ~X_REG_3_ | ~new_U368;
  assign new_U527 = ~new_U409 | ~Y_REG_2_;
  assign new_U528 = ~T_REG_2_ | ~new_U408;
  assign new_U529 = ~X_REG_2_ | ~new_U368;
  assign new_U530 = ~new_U409 | ~Y_REG_1_;
  assign new_U531 = ~T_REG_1_ | ~new_U408;
  assign new_U532 = ~X_REG_1_ | ~new_U368;
  assign new_U533 = ~new_U409 | ~Y_REG_0_;
  assign new_U534 = ~T_REG_0_ | ~new_U408;
  assign new_U535 = ~X_REG_0_ | ~new_U368;
  assign new_U536 = ~new_U374 | ~new_U411;
  assign new_U537 = ~new_U387 | ~STATO_REG_2_ | ~new_U385;
  assign new_U538 = ~CONT_REG_6_ | ~new_U536;
  assign new_U539 = ~X_REG_6_ | ~new_U537;
  assign new_U540 = ~CONT_REG_5_ | ~new_U536;
  assign new_U541 = ~X_REG_5_ | ~new_U537;
  assign new_U542 = ~CONT_REG_4_ | ~new_U536;
  assign new_U543 = ~X_REG_4_ | ~new_U537;
  assign new_U544 = ~CONT_REG_3_ | ~new_U536;
  assign new_U545 = ~X_REG_3_ | ~new_U537;
  assign new_U546 = ~CONT_REG_2_ | ~new_U536;
  assign new_U547 = ~X_REG_2_ | ~new_U537;
  assign new_U548 = ~CONT_REG_1_ | ~new_U536;
  assign new_U549 = ~X_REG_1_ | ~new_U537;
  assign new_U550 = ~CONT_REG_0_ | ~new_U536;
  assign new_U551 = ~X_REG_0_ | ~new_U537;
  assign new_U552 = ~new_U307 | ~new_U367;
  assign new_U553 = ~STATO_REG_1_ | ~new_U426;
  assign new_U554 = ~MAR_REG_3_ | ~new_U479;
  assign new_U555 = ~new_U364 | ~new_U306 | ~new_U418;
  assign new_U556 = ~MAR_REG_2_ | ~new_U481;
  assign new_U557 = ~new_U362 | ~new_U306 | ~new_U417;
  assign new_U558 = ~MAR_REG_1_ | ~new_U483;
  assign new_U559 = ~new_U359 | ~new_U306 | ~MAR_REG_0_;
  assign new_U560 = ~new_U306 | ~new_U360;
  assign new_U561 = ~new_U477 | ~MAR_REG_0_;
  assign new_U562 = ~STATO_REG_2_ | ~new_U367;
  assign new_U563 = ~new_U423 | ~STATO_REG_1_;
  assign new_U564 = ~new_U393;
  assign new_U565 = ~new_U359 | ~MAR_REG_0_ | ~new_U364 | ~new_U362;
  assign new_U566 = ~MAR_REG_1_ | ~new_U308 | ~new_U360;
  assign new_U567 = ~new_U392;
  assign new_U568 = ~new_U510 | ~new_U501;
  assign new_U569 = ~Y_REG_1_ | ~new_U386;
  assign new_U570 = ~T_REG_3_ | ~new_U407;
  assign new_U571 = ~new_U416 | ~new_R182_U37;
  assign new_U572 = ~T_REG_5_ | ~new_U407;
  assign new_U573 = ~new_U416 | ~new_R182_U33;
  assign new_U574 = ~T_REG_1_ | ~new_U407;
  assign new_U575 = ~new_U416 | ~new_R182_U20;
  assign new_U576 = ~T_REG_0_ | ~new_U407;
  assign new_U577 = ~new_U416 | ~new_R182_U21;
  assign new_U578 = ~T_REG_4_ | ~new_U407;
  assign new_U579 = ~new_U416 | ~new_R182_U35;
  assign new_U580 = ~T_REG_6_ | ~new_U407;
  assign new_U581 = ~new_U416 | ~new_R182_U31;
  assign new_U582 = ~T_REG_2_ | ~new_U407;
  assign new_U583 = ~new_U416 | ~new_R182_U39;
  assign new_U584 = ~new_U510 | ~new_U506;
  assign new_U585 = ~Y_REG_0_ | ~new_U386;
  assign new_U586 = ~new_U510 | ~new_U383;
  assign new_U587 = ~Y_REG_2_ | ~new_U386;
  assign new_R182_U97 = ~new_U323 | ~new_R182_U4;
  assign new_R182_U4 = ~new_U316;
  assign new_R182_U5 = ~new_U323;
  assign new_R182_U6 = ~new_U323 | ~new_U316;
  assign new_R182_U7 = ~new_U315;
  assign new_R182_U8 = ~new_U322;
  assign new_R182_U9 = ~new_U314;
  assign new_R182_U10 = ~new_U321;
  assign new_R182_U11 = ~new_U313;
  assign new_R182_U12 = ~new_U320;
  assign new_R182_U13 = ~new_U312;
  assign new_R182_U14 = ~new_U319;
  assign new_R182_U15 = ~new_U311;
  assign new_R182_U16 = ~new_U318;
  assign new_R182_U17 = ~new_R182_U59 | ~new_R182_U58;
  assign new_R182_U18 = ~new_U317;
  assign new_R182_U19 = ~new_U310;
  assign new_R182_U20 = ~new_R182_U96 | ~new_R182_U95;
  assign new_R182_U21 = ~new_R182_U98 | ~new_R182_U97;
  assign new_R182_U22 = ~new_R182_U68 | ~new_R182_U67;
  assign new_R182_U23 = ~new_R182_U73 | ~new_R182_U72;
  assign new_R182_U24 = ~new_R182_U78 | ~new_R182_U77;
  assign new_R182_U25 = ~new_R182_U83 | ~new_R182_U82;
  assign new_R182_U26 = ~new_R182_U88 | ~new_R182_U87;
  assign new_R182_U27 = ~new_R182_U93 | ~new_R182_U92;
  assign new_R182_U28 = ~new_U309;
  assign new_R182_U29 = ~new_R182_U63 | ~new_R182_U62;
  assign new_R182_U30 = new_R182_U66 & new_R182_U65;
  assign new_R182_U31 = new_R182_U71 & new_R182_U70;
  assign new_R182_U32 = ~new_R182_U55 | ~new_R182_U54;
  assign new_R182_U33 = new_R182_U76 & new_R182_U75;
  assign new_R182_U34 = ~new_R182_U51 | ~new_R182_U50;
  assign new_R182_U35 = new_R182_U81 & new_R182_U80;
  assign new_R182_U36 = ~new_R182_U47 | ~new_R182_U46;
  assign new_R182_U37 = new_R182_U86 & new_R182_U85;
  assign new_R182_U38 = ~new_R182_U43 | ~new_R182_U42;
  assign new_R182_U39 = new_R182_U91 & new_R182_U90;
  assign new_R182_U40 = ~new_R182_U6;
  assign new_R182_U41 = new_U315 | new_U322;
  assign new_R182_U42 = ~new_R182_U40 | ~new_R182_U41;
  assign new_R182_U43 = ~new_U322 | ~new_U315;
  assign new_R182_U44 = ~new_R182_U38;
  assign new_R182_U45 = new_U314 | new_U321;
  assign new_R182_U46 = ~new_R182_U45 | ~new_R182_U38;
  assign new_R182_U47 = ~new_U321 | ~new_U314;
  assign new_R182_U48 = ~new_R182_U36;
  assign new_R182_U49 = new_U313 | new_U320;
  assign new_R182_U50 = ~new_R182_U49 | ~new_R182_U36;
  assign new_R182_U51 = ~new_U320 | ~new_U313;
  assign new_R182_U52 = ~new_R182_U34;
  assign new_R182_U53 = new_U312 | new_U319;
  assign new_R182_U54 = ~new_R182_U53 | ~new_R182_U34;
  assign new_R182_U55 = ~new_U319 | ~new_U312;
  assign new_R182_U56 = ~new_R182_U32;
  assign new_R182_U57 = new_U311 | new_U318;
  assign new_R182_U58 = ~new_R182_U57 | ~new_R182_U32;
  assign new_R182_U59 = ~new_U318 | ~new_U311;
  assign new_R182_U60 = ~new_R182_U17;
  assign new_R182_U61 = ~new_R182_U60 | ~new_R182_U19;
  assign new_R182_U62 = ~new_U317 | ~new_R182_U61;
  assign new_R182_U63 = ~new_U310 | ~new_R182_U17;
  assign new_R182_U64 = ~new_R182_U29;
  assign new_R182_U65 = ~new_U309 | ~new_R182_U29;
  assign new_R182_U66 = ~new_R182_U64 | ~new_R182_U28;
  assign new_R182_U67 = ~new_U317 | ~new_R182_U19;
  assign new_R182_U68 = ~new_U310 | ~new_R182_U18;
  assign new_R182_U69 = ~new_R182_U22;
  assign new_R182_U70 = ~new_R182_U69 | ~new_R182_U60;
  assign new_R182_U71 = ~new_R182_U22 | ~new_R182_U17;
  assign new_R182_U72 = ~new_U318 | ~new_R182_U15;
  assign new_R182_U73 = ~new_U311 | ~new_R182_U16;
  assign new_R182_U74 = ~new_R182_U23;
  assign new_R182_U75 = ~new_R182_U56 | ~new_R182_U74;
  assign new_R182_U76 = ~new_R182_U23 | ~new_R182_U32;
  assign new_R182_U77 = ~new_U319 | ~new_R182_U13;
  assign new_R182_U78 = ~new_U312 | ~new_R182_U14;
  assign new_R182_U79 = ~new_R182_U24;
  assign new_R182_U80 = ~new_R182_U52 | ~new_R182_U79;
  assign new_R182_U81 = ~new_R182_U24 | ~new_R182_U34;
  assign new_R182_U82 = ~new_U320 | ~new_R182_U11;
  assign new_R182_U83 = ~new_U313 | ~new_R182_U12;
  assign new_R182_U84 = ~new_R182_U25;
  assign new_R182_U85 = ~new_R182_U48 | ~new_R182_U84;
  assign new_R182_U86 = ~new_R182_U25 | ~new_R182_U36;
  assign new_R182_U87 = ~new_U321 | ~new_R182_U9;
  assign new_R182_U88 = ~new_U314 | ~new_R182_U10;
  assign new_R182_U89 = ~new_R182_U26;
  assign new_R182_U90 = ~new_R182_U44 | ~new_R182_U89;
  assign new_R182_U91 = ~new_R182_U26 | ~new_R182_U38;
  assign new_R182_U92 = ~new_U315 | ~new_R182_U8;
  assign new_R182_U93 = ~new_U322 | ~new_R182_U7;
  assign new_R182_U94 = ~new_R182_U27;
  assign new_R182_U95 = ~new_R182_U94 | ~new_R182_U40;
  assign new_R182_U96 = ~new_R182_U27 | ~new_R182_U6;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n1003 = new_and_1 | new_and_3;
  assign n1000 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n34 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U358 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n34 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U358 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n34 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_U358 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n34 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3_and_1 = new_U358 & keyinput2 & keyinput0 & new_not_keyinput1;
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
    PUNTI_RETTA_REG_7_ <= n26;
    PUNTI_RETTA_REG_6_ <= n30;
    PUNTI_RETTA_REG_5_ <= n34;
    PUNTI_RETTA_REG_4_ <= n38;
    PUNTI_RETTA_REG_3_ <= n42;
    PUNTI_RETTA_REG_2_ <= n46;
    PUNTI_RETTA_REG_1_ <= n50;
    PUNTI_RETTA_REG_0_ <= n54;
    CONT_REG_7_ <= n58;
    CONT_REG_6_ <= n63;
    CONT_REG_5_ <= n68;
    CONT_REG_4_ <= n73;
    CONT_REG_3_ <= n78;
    CONT_REG_2_ <= n83;
    CONT_REG_1_ <= n88;
    CONT_REG_0_ <= n93;
    MAR_REG_7_ <= n98;
    MAR_REG_6_ <= n103;
    MAR_REG_5_ <= n108;
    MAR_REG_4_ <= n113;
    MAR_REG_3_ <= n118;
    MAR_REG_2_ <= n123;
    MAR_REG_1_ <= n128;
    MAR_REG_0_ <= n133;
    X_REG_7_ <= n138;
    X_REG_6_ <= n143;
    X_REG_5_ <= n148;
    X_REG_4_ <= n153;
    X_REG_3_ <= n158;
    X_REG_2_ <= n163;
    X_REG_1_ <= n168;
    X_REG_0_ <= n173;
    Y_REG_3_ <= n178;
    Y_REG_1_ <= n183;
    Y_REG_5_ <= n188;
    T_REG_3_ <= n193;
    T_REG_5_ <= n198;
    T_REG_1_ <= n203;
    T_REG_0_ <= n208;
    T_REG_4_ <= n213;
    T_REG_6_ <= n218;
    T_REG_2_ <= n223;
    Y_REG_4_ <= n228;
    Y_REG_0_ <= n233;
    Y_REG_2_ <= n238;
    Y_REG_6_ <= n243;
    STATO_REG_2_ <= n248;
    STATO_REG_1_ <= n253;
    STATO_REG_0_ <= n258;
    Q_0 <= n1000;
    Q_1 <= n1003;
  end
endmodule
