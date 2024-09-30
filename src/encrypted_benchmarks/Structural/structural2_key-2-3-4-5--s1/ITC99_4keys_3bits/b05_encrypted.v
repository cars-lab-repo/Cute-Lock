// Benchmark "./test_runs/structural2_key-2-3-4-5--s-120240927_164306/ITC99/b05_encrypted" written by ABC on Fri Sep 27 18:32:48 2024

module b05_encrypted  ( clock, 
    START, keyinput0, keyinput1, keyinput2,
    U646, U792, U590, U589, U589, U590, U590, U590, U661, U662, U663, U664,
    U665, U666, U667, U647, U648, U649, U650, U651, U652, U653, U792, U591,
    U589, U589, U591, U591, U591, U654, U655, U656, U657, U658, U659, U660  );
  input  clock;
  input  START, keyinput0, keyinput1, keyinput2;
  output U646, U792, U590, U589, U589, U590, U590, U590, U661, U662, U663,
    U664, U665, U666, U667, U647, U648, U649, U650, U651, U652, U653, U792,
    U591, U589, U589, U591, U591, U591, U654, U655, U656, U657, U658, U659,
    U660;
  reg NUM_REG_4_, NUM_REG_3_, NUM_REG_2_, NUM_REG_1_, NUM_REG_0_,
    MAR_REG_4_, MAR_REG_3_, MAR_REG_2_, MAR_REG_1_, MAR_REG_0_,
    TEMP_REG_8_, TEMP_REG_7_, TEMP_REG_6_, TEMP_REG_5_, TEMP_REG_4_,
    TEMP_REG_3_, TEMP_REG_2_, TEMP_REG_1_, TEMP_REG_0_, MAX_REG_8_,
    MAX_REG_7_, MAX_REG_6_, MAX_REG_5_, MAX_REG_4_, MAX_REG_3_, MAX_REG_2_,
    MAX_REG_1_, MAX_REG_0_, EN_DISP_REG, RES_DISP_REG, FLAG_REG,
    STATO_REG_0_, STATO_REG_1_, STATO_REG_2_, Q_0, Q_1;
  wire new_GT_138_U8, new_GT_138_U7, new_GT_138_U6, new_U587, new_U588,
    new_U592, new_U593, new_U594, new_U595, new_U596, new_U597, new_U598,
    new_U599, new_U600, new_U601, new_U602, new_U603, new_U604, new_U605,
    new_U606, new_U607, new_U608, new_U609, new_U610, new_U611, new_U612,
    new_U613, new_U614, new_U615, new_U616, new_U617, new_U618, new_U619,
    new_U620, new_U621, new_U622, new_U623, new_U624, new_U625, new_U626,
    new_U627, new_U628, new_U629, new_U630, new_U631, new_U632, new_U633,
    new_U634, new_U635, new_U636, new_U637, new_U638, new_U639, new_U640,
    new_U641, new_U642, new_U680, new_U681, new_U682, new_U683, new_U684,
    new_U685, new_U686, new_U687, new_U688, new_U689, new_U690, new_U691,
    new_U692, new_U693, new_U694, new_U695, new_U696, new_U697, new_U698,
    new_U699, new_U700, new_U701, new_U702, new_U703, new_U704, new_U705,
    new_U706, new_U707, new_U708, new_U709, new_U710, new_U711, new_U712,
    new_U713, new_U714, new_U715, new_U716, new_U717, new_U718, new_U719,
    new_U720, new_U721, new_U722, new_U723, new_U724, new_U725, new_U726,
    new_U745, new_U746, new_U747, new_U748, new_U749, new_U750, new_U751,
    new_U752, new_U753, new_U754, new_U755, new_U756, new_U757, new_U758,
    new_U759, new_U760, new_U761, new_U762, new_U763, new_U764, new_U765,
    new_U766, new_U767, new_U768, new_U769, new_U770, new_U771, new_U772,
    new_U773, new_U774, new_U775, new_U776, new_U777, new_U778, new_U779,
    new_U780, new_U781, new_U782, new_U783, new_U784, new_U785, new_U786,
    new_U787, new_U788, new_U789, new_U790, new_U791, new_U793, new_U794,
    new_U795, new_U796, new_U797, new_U798, new_U799, new_U800, new_U801,
    new_U802, new_U803, new_U804, new_U805, new_U806, new_U807, new_U808,
    new_U809, new_U810, new_U811, new_U812, new_U813, new_U814, new_U815,
    new_U816, new_U817, new_U818, new_U819, new_U820, new_U821, new_U822,
    new_U823, new_U824, new_U825, new_U826, new_U827, new_U828, new_U829,
    new_U830, new_U831, new_U832, new_U833, new_U834, new_U835, new_U836,
    new_U837, new_U838, new_U839, new_U840, new_U841, new_U842, new_U843,
    new_U844, new_U845, new_U846, new_U847, new_U848, new_U849, new_U850,
    new_U851, new_U852, new_U853, new_U854, new_U855, new_U856, new_U857,
    new_U858, new_U859, new_U860, new_U861, new_U862, new_U863, new_U864,
    new_U865, new_U866, new_U867, new_U868, new_U869, new_U870, new_U871,
    new_U872, new_U873, new_U874, new_U875, new_U876, new_U877, new_U878,
    new_U879, new_U880, new_U881, new_U882, new_U883, new_U884, new_U885,
    new_U886, new_U887, new_U888, new_U889, new_U890, new_U891, new_U892,
    new_U893, new_U894, new_U895, new_U896, new_U897, new_U898, new_U899,
    new_U900, new_U901, new_U902, new_U903, new_U904, new_U905, new_U906,
    new_U907, new_U908, new_U909, new_U910, new_U911, new_U912, new_U913,
    new_U914, new_U915, new_U916, new_U917, new_U918, new_U919, new_U920,
    new_U921, new_U922, new_U923, new_U924, new_U925, new_U926, new_U927,
    new_U928, new_U929, new_U930, new_U931, new_U932, new_U933, new_U934,
    new_U935, new_U936, new_U937, new_U938, new_U939, new_U940, new_U941,
    new_U942, new_U943, new_U944, new_U945, new_U946, new_U947, new_U948,
    new_U949, new_U950, new_U951, new_U952, new_U953, new_U954, new_U955,
    new_U956, new_U957, new_U958, new_U959, new_U960, new_U961, new_U962,
    new_U963, new_U964, new_U965, new_U966, new_U967, new_U968, new_U969,
    new_U970, new_U971, new_U972, new_U973, new_U974, new_U975, new_U976,
    new_U977, new_U978, new_U979, new_U980, new_U981, new_U982, new_U983,
    new_U984, new_U985, new_U986, new_U987, new_U988, new_U989, new_U990,
    new_U991, new_U992, new_U993, new_U994, new_U995, new_U996, new_U997,
    new_U998, new_U999, new_U1000, new_U1001, new_U1002, new_U1003,
    new_U1004, new_U1005, new_U1006, new_U1007, new_U1008, new_U1009,
    new_U1010, new_U1011, new_U1012, new_U1013, new_U1014, new_U1015,
    new_U1016, new_U1017, new_U1018, new_U1019, new_U1020, new_U1021,
    new_U1022, new_U1023, new_U1024, new_U1025, new_U1026, new_U1027,
    new_U1028, new_U1029, new_U1030, new_U1031, new_U1032, new_U1033,
    new_U1034, new_U1035, new_U1036, new_U1037, new_U1038, new_U1039,
    new_U1040, new_U1041, new_GT_118_U9, new_GT_118_U8, new_GT_118_U7,
    new_GT_118_U6, new_GT_166_U9, new_GT_166_U8, new_GT_166_U7,
    new_GT_166_U6, new_GT_215_U10, new_GT_215_U9, new_GT_215_U8,
    new_GT_215_U7, new_GT_215_U6, new_GT_209_U9, new_GT_209_U8,
    new_GT_209_U7, new_GT_209_U6, new_SUB_199_U20, new_SUB_199_U19,
    new_SUB_199_U18, new_SUB_199_U17, new_SUB_199_U16, new_SUB_199_U15,
    new_SUB_199_U14, new_SUB_199_U13, new_SUB_199_U12, new_SUB_199_U11,
    new_SUB_199_U10, new_SUB_199_U9, new_SUB_199_U8, new_SUB_199_U7,
    new_SUB_199_U6, new_GT_178_U9, new_GT_178_U8, new_GT_178_U7,
    new_GT_178_U6, new_GT_169_U9, new_GT_169_U8, new_GT_169_U7,
    new_SUB_103_U6, new_SUB_103_U7, new_SUB_103_U8, new_SUB_103_U9,
    new_SUB_103_U10, new_SUB_103_U11, new_SUB_103_U12, new_SUB_103_U13,
    new_SUB_103_U14, new_SUB_103_U15, new_SUB_103_U16, new_SUB_103_U17,
    new_SUB_103_U18, new_SUB_103_U19, new_SUB_103_U20, new_SUB_103_U21,
    new_SUB_103_U22, new_SUB_103_U23, new_SUB_103_U24, new_SUB_103_U25,
    new_GT_218_U6, new_GT_218_U7, new_GT_218_U8, new_GT_160_U6,
    new_GT_160_U7, new_GT_160_U8, new_GT_160_U9, new_GT_206_U6,
    new_GT_206_U7, new_SUB_110_U6, new_SUB_110_U7, new_SUB_110_U8,
    new_SUB_110_U9, new_SUB_110_U10, new_SUB_110_U11, new_SUB_110_U12,
    new_SUB_110_U13, new_SUB_110_U14, new_SUB_110_U15, new_SUB_110_U16,
    new_SUB_110_U17, new_SUB_110_U18, new_SUB_110_U19, new_SUB_110_U20,
    new_SUB_110_U21, new_SUB_110_U22, new_SUB_110_U23, new_SUB_110_U24,
    new_SUB_110_U25, new_SUB_110_U26, new_SUB_110_U27, new_SUB_110_U28,
    new_SUB_110_U29, new_SUB_110_U30, new_SUB_110_U31, new_SUB_110_U32,
    new_SUB_110_U33, new_SUB_110_U34, new_GT_146_U6, new_GT_146_U7,
    new_GT_146_U8, new_GT_146_U9, new_GT_126_U6, new_GT_126_U7,
    new_GT_126_U8, new_GT_163_U6, new_GT_163_U7, new_GT_184_U6,
    new_GT_184_U7, new_GT_184_U8, new_GT_221_U6, new_GT_221_U7,
    new_GT_221_U8, new_GT_221_U9, new_GT_227_U6, new_GT_227_U7,
    new_GT_227_U8, new_ADD_283_U5, new_ADD_283_U6, new_ADD_283_U7,
    new_ADD_283_U8, new_ADD_283_U9, new_ADD_283_U10, new_ADD_283_U11,
    new_ADD_283_U12, new_ADD_283_U13, new_ADD_283_U14, new_ADD_283_U15,
    new_ADD_283_U16, new_ADD_283_U17, new_ADD_283_U18, new_ADD_283_U19,
    new_ADD_283_U20, new_ADD_283_U21, new_ADD_283_U22, new_ADD_283_U23,
    new_ADD_283_U24, new_ADD_283_U25, new_ADD_283_U26, new_ADD_283_U27,
    new_GT_197_U6, new_GT_197_U7, new_GT_197_U8, new_GT_114_U6,
    new_GT_114_U7, new_GT_114_U8, new_GT_114_U9, new_GT_114_U10,
    new_GT_114_U11, new_GT_224_U6, new_GT_224_U7, new_GT_224_U8,
    new_ADD_304_U5, new_ADD_304_U6, new_ADD_304_U7, new_ADD_304_U8,
    new_ADD_304_U9, new_ADD_304_U10, new_ADD_304_U11, new_ADD_304_U12,
    new_ADD_304_U13, new_ADD_304_U14, new_ADD_304_U15, new_ADD_304_U16,
    new_ADD_304_U17, new_ADD_304_U18, new_ADD_304_U19, new_ADD_304_U20,
    new_ADD_304_U21, new_ADD_304_U22, new_ADD_304_U23, new_ADD_304_U24,
    new_ADD_304_U25, new_ADD_304_U26, new_ADD_304_U27, new_R794_U6,
    new_R794_U7, new_R794_U8, new_R794_U9, new_R794_U10, new_R794_U11,
    new_R794_U12, new_R794_U13, new_R794_U14, new_R794_U15, new_R794_U16,
    new_R794_U17, new_R794_U18, new_R794_U19, new_R794_U20, new_R794_U21,
    new_R794_U22, new_R794_U23, new_R794_U24, new_R794_U25, new_R794_U26,
    new_R794_U27, new_R794_U28, new_R794_U29, new_R794_U30, new_R794_U31,
    new_R794_U32, new_R794_U33, new_R794_U34, new_R794_U35, new_R794_U36,
    new_R794_U37, new_R794_U38, new_R794_U39, new_R794_U40, new_R794_U41,
    new_R794_U42, new_R794_U43, new_R794_U44, new_R794_U45, new_R794_U46,
    new_R794_U47, new_R794_U48, new_R794_U49, new_R794_U50, new_R794_U51,
    new_R794_U52, new_R794_U53, new_R794_U54, new_R794_U55, new_R794_U56,
    new_R794_U57, new_R794_U58, new_R794_U59, new_R794_U60, new_R794_U61,
    new_R794_U62, new_R794_U63, new_R794_U64, new_R794_U65, new_R794_U66,
    new_R794_U67, new_R794_U68, new_R794_U69, new_R794_U70, new_R794_U71,
    new_R794_U72, new_R794_U73, new_R794_U74, new_R794_U75, new_R794_U76,
    new_R794_U77, new_R794_U78, new_R794_U79, new_R794_U80, new_R794_U81,
    new_R794_U82, new_R794_U83, new_R794_U84, new_R794_U85, new_R794_U86,
    new_R794_U87, new_R794_U88, new_R794_U89, new_R794_U90, new_R794_U91,
    new_GT_130_U6, new_GT_130_U7, new_GT_130_U8, new_GT_130_U9,
    new_GT_175_U6, new_GT_175_U7, new_GT_175_U8, new_GT_142_U6,
    new_GT_142_U7, new_GT_142_U8, new_GT_142_U9, new_GT_172_U6,
    new_GT_172_U7, new_GT_172_U8, new_GT_172_U9, new_GT_172_U10,
    new_GT_203_U6, new_GT_203_U7, new_GT_203_U8, new_GT_203_U9,
    new_GT_134_U6, new_GT_134_U7, new_GT_134_U8, new_GT_134_U9,
    new_SUB_60_U6, new_SUB_60_U7, new_SUB_60_U8, new_SUB_60_U9,
    new_SUB_60_U10, new_SUB_60_U11, new_SUB_60_U12, new_SUB_60_U13,
    new_SUB_60_U14, new_SUB_60_U15, new_SUB_60_U16, new_SUB_60_U17,
    new_SUB_60_U18, new_SUB_60_U19, new_SUB_60_U20, new_SUB_60_U21,
    new_SUB_60_U22, new_SUB_60_U23, new_SUB_60_U24, new_SUB_60_U25,
    new_SUB_60_U26, new_SUB_60_U27, new_SUB_60_U28, new_SUB_60_U29,
    new_SUB_60_U30, new_SUB_60_U31, new_SUB_60_U32, new_SUB_60_U33,
    new_SUB_60_U34, new_SUB_60_U35, new_SUB_60_U36, new_SUB_60_U37,
    new_SUB_60_U38, new_SUB_60_U39, new_SUB_60_U40, new_SUB_60_U41,
    new_SUB_60_U42, new_SUB_60_U43, new_SUB_60_U44, new_SUB_60_U45,
    new_SUB_60_U46, new_SUB_60_U47, new_SUB_60_U48, new_SUB_60_U49,
    new_SUB_60_U50, new_SUB_60_U51, new_SUB_60_U52, new_SUB_60_U53,
    new_SUB_60_U54, new_SUB_60_U55, new_SUB_60_U56, new_SUB_60_U57,
    new_SUB_60_U58, new_SUB_60_U59, new_SUB_60_U60, new_SUB_60_U61,
    new_SUB_60_U62, new_SUB_60_U63, new_SUB_60_U64, new_SUB_60_U65,
    new_SUB_60_U66, new_SUB_60_U67, new_SUB_60_U68, new_SUB_60_U69,
    new_SUB_60_U70, new_SUB_60_U71, new_SUB_60_U72, new_SUB_60_U73,
    new_SUB_60_U74, new_SUB_60_U75, new_SUB_60_U76, new_SUB_60_U77,
    new_SUB_60_U78, new_SUB_60_U79, new_SUB_60_U80, new_SUB_60_U81,
    new_SUB_60_U82, new_SUB_60_U83, new_SUB_60_U84, new_SUB_60_U85,
    new_SUB_60_U86, new_SUB_60_U87, new_SUB_60_U88, new_SUB_60_U89,
    new_SUB_60_U90, new_SUB_60_U91, new_SUB_60_U92, new_SUB_60_U93,
    new_SUB_60_U94, new_SUB_60_U95, new_SUB_60_U96, new_SUB_60_U97,
    new_SUB_60_U98, new_SUB_60_U99, new_SUB_60_U100, new_SUB_60_U101,
    new_SUB_60_U102, new_SUB_60_U103, new_SUB_60_U104, new_SUB_60_U105,
    new_SUB_60_U106, new_SUB_60_U107, new_SUB_60_U108, new_SUB_60_U109,
    new_SUB_60_U110, new_SUB_60_U111, new_SUB_60_U112, new_SUB_60_U113,
    new_SUB_60_U114, new_SUB_60_U115, new_SUB_60_U116, new_SUB_60_U117,
    new_SUB_60_U118, new_SUB_60_U119, new_SUB_60_U120, new_GT_181_U6,
    new_GT_181_U7, new_GT_181_U8, new_SUB_73_U6, new_SUB_73_U7,
    new_SUB_73_U8, new_SUB_73_U9, new_SUB_73_U10, new_SUB_73_U11,
    new_SUB_73_U12, new_SUB_73_U13, new_SUB_73_U14, new_SUB_73_U15,
    new_SUB_73_U16, new_SUB_73_U17, new_SUB_73_U18, new_SUB_73_U19,
    new_SUB_73_U20, new_SUB_73_U21, new_SUB_73_U22, new_SUB_73_U23,
    new_SUB_73_U24, new_SUB_73_U25, new_SUB_73_U26, new_SUB_73_U27,
    new_SUB_73_U28, new_SUB_73_U29, new_SUB_73_U30, new_SUB_73_U31,
    new_SUB_73_U32, new_SUB_73_U33, new_SUB_73_U34, new_SUB_73_U35,
    new_SUB_73_U36, new_SUB_73_U37, new_SUB_73_U38, new_SUB_73_U39,
    new_SUB_73_U40, new_SUB_73_U41, new_SUB_73_U42, new_SUB_73_U43,
    new_SUB_73_U44, new_SUB_73_U45, new_SUB_73_U46, new_SUB_73_U47,
    new_SUB_73_U48, new_SUB_73_U49, new_SUB_73_U50, new_SUB_73_U51,
    new_SUB_73_U52, new_SUB_73_U53, new_SUB_73_U54, new_SUB_73_U55,
    new_SUB_73_U56, new_SUB_73_U57, new_SUB_73_U58, new_GT_212_U6,
    new_GT_212_U7, new_GT_212_U8, new_GT_212_U9, new_GT_108_U6,
    new_GT_108_U7, new_GT_108_U8, new_GT_108_U9, new_GT_122_U6,
    new_GT_122_U7, new_GT_122_U8, new_GT_122_U9, new_GT_122_U10,
    new_GT_169_U6, new_not_keyinput0, new_not_keyinput1, new_not_keyinput2,
    new_not_0, new_and_1, new_not_2, new_and_3, new_not_Q_0, new_not_Q_1,
    new_count_state_1, new_count_state_2, new_count_state_3,
    new_y_mux_key0_and_0, new_y_mux_key0_and_1, new_y_mux_key0,
    new_y_mux_key1_and_0, new_y_mux_key1_and_1, new_y_mux_key1,
    new_y_mux_key2_and_0, new_y_mux_key2_and_1, new_y_mux_key2,
    new_y_mux_key3_and_0, new_y_mux_key3_and_1, new_y_mux_key3,
    new__state_1, new__state_2, new__state_3, new__state_5, new_s__state_1,
    new_not_s__state_1, new_I0__state_1, new_I1__state_1,
    new_and_mux__state_1, new_and_mux__state_1_2, new_y_mux_4,
    new_s__state_3, new_not_s__state_3, new_I0__state_3, new_I1__state_3,
    new_and_mux__state_3, new_and_mux__state_3_2, new_y_mux_5,
    new_s__state_5, new_not_s__state_5, new_I0__state_5, new_I1__state_5,
    new_and_mux__state_5, new_and_mux__state_5_2, n72, n77, n82, n87, n92,
    n97, n102, n107, n112, n117, n122, n127, n132, n137, n142, n147, n152,
    n157, n162, n167, n172, n177, n182, n187, n192, n197, n202, n207, n212,
    n217, n222, n227, n232, n237, n2056, n2059;
  assign new_GT_138_U8 = ~new_GT_138_U7 & ~new_U635 & ~new_U634 & ~new_U636;
  assign new_GT_138_U7 = new_U757 & new_U751 & new_U755 & new_U753;
  assign new_GT_138_U6 = ~new_U633 & ~new_GT_138_U8;
  assign new_U587 = MAX_REG_8_ & new_SUB_103_U8;
  assign new_U588 = new_GT_197_U6 & new_SUB_199_U14;
  assign U589 = RES_DISP_REG & new_U705;
  assign U590 = U589 & new_U707;
  assign U591 = U589 & new_U706;
  assign new_U592 = new_SUB_60_U6 & FLAG_REG & STATO_REG_0_ & STATO_REG_1_;
  assign new_U593 = new_U880 & new_U878;
  assign new_U594 = new_U793 & new_U796;
  assign new_U595 = ~MAR_REG_3_ & ~MAR_REG_1_;
  assign new_U596 = ~MAR_REG_0_ & ~MAR_REG_4_;
  assign new_U597 = MAR_REG_4_ & new_U688;
  assign new_U598 = new_U832 & new_U834 & new_U838 & new_U836;
  assign new_U599 = MAR_REG_1_ & new_U690;
  assign new_U600 = new_U844 & new_U845 & new_U843;
  assign new_U601 = new_U596 & new_U687;
  assign new_U602 = new_U851 & new_U850;
  assign new_U603 = new_U600 & new_U852;
  assign new_U604 = new_U832 & new_U836 & new_U853 & new_U849;
  assign new_U605 = new_U604 & new_U855;
  assign new_U606 = new_U857 & new_U858 & new_U703 & new_U830 & new_U795;
  assign new_U607 = new_U603 & new_U606 & new_U847 & new_U838 & new_U828;
  assign new_U608 = new_U828 & new_U846 & new_U849 & new_U847;
  assign new_U609 = new_U795 & new_U834 & new_U602 & new_U860;
  assign new_U610 = new_U604 & new_U873;
  assign new_U611 = ~new_GT_114_U6 & ~new_GT_118_U6;
  assign new_U612 = new_U879 & new_U880 & new_U719;
  assign new_U613 = ~new_GT_206_U6 & ~new_GT_203_U6;
  assign new_U614 = new_U613 & new_U888;
  assign new_U615 = new_U614 & new_U889;
  assign new_U616 = new_U887 & new_U613 & new_U782;
  assign new_U617 = new_U910 & new_U775 & new_U773;
  assign new_U618 = new_U617 & new_U911;
  assign new_U619 = ~new_GT_166_U6 & ~new_GT_160_U6 & ~new_GT_163_U6;
  assign new_U620 = new_U909 & new_U619;
  assign new_U621 = new_U611 & new_U931;
  assign new_U622 = new_U787 & new_U786 & new_U785;
  assign new_U623 = new_U952 & new_U787 & new_U778;
  assign new_U624 = ~new_U598 | ~new_U830 | ~new_U828;
  assign new_U625 = ~new_U838 | ~new_U600 | ~new_U608 | ~new_U602;
  assign new_U626 = ~new_U602 | ~new_U606 | ~new_U598 | ~new_U860 | ~new_U846;
  assign new_U627 = ~new_U603 | ~new_U608 | ~new_U836 | ~new_U834 | ~new_U830;
  assign new_U628 = ~new_U610 | ~new_U609;
  assign new_U629 = ~new_U608 | ~new_U606;
  assign new_U630 = ~new_U610 | ~new_U607;
  assign new_U631 = ~new_U839 | ~new_U849 | ~new_U602 | ~new_U603;
  assign new_U632 = ~new_U847 | ~new_U600 | ~new_U839 | ~new_U795 | ~new_U846;
  assign new_U633 = ~new_U794 | ~new_U874;
  assign new_U634 = ~new_U794 | ~new_U875;
  assign new_U635 = ~new_U794 | ~new_U876;
  assign new_U636 = ~new_U794 | ~new_U877;
  assign new_U637 = ~new_U611 | ~new_U726;
  assign new_U638 = ~new_U951 | ~new_U786 | ~new_U784;
  assign new_U639 = ~new_U622 | ~new_U611 | ~new_U784;
  assign new_U640 = ~new_U623 | ~new_U953 | ~new_U786;
  assign new_U641 = ~new_U622 | ~new_U954;
  assign new_U642 = ~new_U623 | ~new_U955 | ~new_U784;
  assign n237 = ~new_U882 | ~new_U881;
  assign n232 = ~new_U594 | ~new_U799;
  assign n227 = ~new_U884 | ~new_U796 | ~new_U799 | ~new_U885;
  assign U646 = ~new_U791 | ~new_U886;
  assign U647 = new_U914 & new_U705;
  assign U648 = U589 & new_U918;
  assign U649 = U589 & new_U919;
  assign U650 = U589 & new_U920;
  assign U651 = U589 & new_U922;
  assign U652 = U589 & new_U924;
  assign U653 = new_U930 & U589 & new_U773;
  assign U654 = new_U892 & new_U705;
  assign U655 = U589 & new_U896;
  assign U656 = U589 & new_U897;
  assign U657 = U589 & new_U898;
  assign U658 = U589 & new_U900;
  assign U659 = U589 & new_U902;
  assign U660 = new_U908 & U589 & new_U776;
  assign U661 = new_U933 & new_U705;
  assign U662 = U589 & new_U937;
  assign U663 = U589 & new_U785;
  assign U664 = U589 & new_U938;
  assign U665 = U589 & new_U940;
  assign U666 = U589 & new_U944;
  assign U667 = new_U950 & U589 & new_U778;
  assign n222 = ~new_U872 | ~new_U871;
  assign n217 = ~new_U793 | ~new_U870;
  assign n212 = ~new_U867 | ~new_U868 | ~new_U793;
  assign n117 = ~new_U826 | ~new_U825;
  assign n112 = ~new_U824 | ~new_U823;
  assign n107 = ~new_U822 | ~new_U821;
  assign n102 = ~new_U820 | ~new_U819;
  assign n97 = ~new_U818 | ~new_U817;
  assign n92 = ~new_U813 | ~new_U812;
  assign n87 = ~new_U811 | ~new_U810;
  assign n82 = ~new_U809 | ~new_U808;
  assign n77 = ~new_U807 | ~new_U806;
  assign new_U680 = ~new_U805 | ~new_U804;
  assign new_U681 = ~STATO_REG_1_;
  assign new_U682 = ~STATO_REG_0_;
  assign new_U683 = ~new_SUB_60_U6;
  assign new_U684 = ~FLAG_REG;
  assign new_U685 = ~new_U702 | ~new_U800 | ~STATO_REG_0_;
  assign new_U686 = ~STATO_REG_2_;
  assign new_U687 = ~MAR_REG_2_;
  assign new_U688 = ~MAR_REG_0_;
  assign new_U689 = ~MAR_REG_4_;
  assign new_U690 = ~MAR_REG_3_;
  assign new_U691 = ~MAR_REG_1_;
  assign new_U692 = ~MAR_REG_1_ | ~MAR_REG_3_;
  assign new_U693 = ~MAR_REG_4_ | ~MAR_REG_0_ | ~MAR_REG_2_;
  assign new_U694 = ~START;
  assign new_U695 = ~MAR_REG_0_ | ~new_U687 | ~new_U689;
  assign new_U696 = ~new_U596 | ~MAR_REG_2_;
  assign new_U697 = ~MAR_REG_4_ | ~MAR_REG_0_ | ~new_U687;
  assign new_U698 = ~MAR_REG_3_ | ~new_U691;
  assign new_U699 = ~new_U597 | ~new_U687;
  assign new_U700 = ~MAR_REG_0_ | ~MAR_REG_2_ | ~new_U689;
  assign new_U701 = ~new_U597 | ~MAR_REG_2_;
  assign new_U702 = ~STATO_REG_1_ | ~new_U683;
  assign new_U703 = ~new_U814 | ~new_U815;
  assign new_U704 = ~new_U816 | ~STATO_REG_2_;
  assign new_U705 = ~EN_DISP_REG;
  assign new_U706 = ~new_GT_197_U6;
  assign new_U707 = ~new_GT_108_U6;
  assign new_U708 = ~MAX_REG_8_;
  assign new_U709 = new_GT_130_U6 | new_GT_126_U6;
  assign new_U710 = new_GT_134_U6 | new_GT_138_U6 | new_GT_142_U6;
  assign new_U711 = ~new_GT_218_U6;
  assign new_U712 = ~new_GT_227_U7 | ~new_U714;
  assign new_U713 = new_GT_212_U6 | new_GT_215_U6;
  assign new_U714 = ~new_GT_224_U6;
  assign new_U715 = ~new_GT_175_U6;
  assign new_U716 = ~new_GT_184_U7 | ~new_U718;
  assign new_U717 = new_GT_169_U6 | new_GT_172_U6;
  assign new_U718 = ~new_GT_181_U6;
  assign new_U719 = ~new_GT_146_U6;
  assign new_U720 = ~new_GT_146_U6 | ~new_U721;
  assign new_U721 = ~new_GT_142_U6;
  assign new_U722 = ~new_GT_130_U6;
  assign new_U723 = ~new_GT_126_U6;
  assign new_U724 = ~new_GT_134_U6;
  assign new_U725 = ~new_GT_138_U6;
  assign new_U726 = ~new_GT_122_U6;
  assign n122 = ~new_U959 | ~new_U958;
  assign n127 = ~new_U961 | ~new_U960;
  assign n132 = ~new_U963 | ~new_U962;
  assign n137 = ~new_U965 | ~new_U964;
  assign n142 = ~new_U967 | ~new_U966;
  assign n147 = ~new_U969 | ~new_U968;
  assign n152 = ~new_U971 | ~new_U970;
  assign n157 = ~new_U973 | ~new_U972;
  assign n162 = ~new_U975 | ~new_U974;
  assign n167 = ~new_U977 | ~new_U976;
  assign n172 = ~new_U979 | ~new_U978;
  assign n177 = ~new_U981 | ~new_U980;
  assign n182 = ~new_U983 | ~new_U982;
  assign n187 = ~new_U985 | ~new_U984;
  assign n192 = ~new_U987 | ~new_U986;
  assign n197 = ~new_U989 | ~new_U988;
  assign n202 = ~new_U991 | ~new_U990;
  assign n207 = ~new_U993 | ~new_U992;
  assign new_U745 = ~new_U995 | ~new_U994;
  assign new_U746 = ~new_U997 | ~new_U996;
  assign new_U747 = ~new_U999 | ~new_U998;
  assign new_U748 = ~new_U1001 | ~new_U1000;
  assign new_U749 = ~new_U1003 | ~new_U1002;
  assign new_U750 = ~new_U1005 | ~new_U1004;
  assign new_U751 = ~new_U1007 | ~new_U1006;
  assign new_U752 = ~new_U1009 | ~new_U1008;
  assign new_U753 = ~new_U1011 | ~new_U1010;
  assign new_U754 = ~new_U1013 | ~new_U1012;
  assign new_U755 = ~new_U1015 | ~new_U1014;
  assign new_U756 = ~new_U1017 | ~new_U1016;
  assign new_U757 = ~new_U1019 | ~new_U1018;
  assign new_U758 = ~new_U1021 | ~new_U1020;
  assign new_U759 = ~new_U1023 | ~new_U1022;
  assign new_U760 = ~new_U1025 | ~new_U1024;
  assign new_U761 = ~new_U1027 | ~new_U1026;
  assign new_U762 = ~new_U1029 | ~new_U1028;
  assign new_U763 = ~new_U1031 | ~new_U1030;
  assign new_U764 = ~new_U1033 | ~new_U1032;
  assign new_U765 = ~new_U1035 | ~new_U1034;
  assign new_U766 = ~new_U1037 | ~new_U1036;
  assign new_U767 = ~new_U1039 | ~new_U1038;
  assign new_U768 = ~new_U1041 | ~new_U1040;
  assign new_U769 = new_SUB_60_U26 | new_SUB_60_U29 | new_SUB_60_U30 | new_SUB_60_U31 | new_SUB_60_U7;
  assign new_U770 = ~new_U799 | ~new_U863;
  assign new_U771 = ~new_U612 | ~new_U878;
  assign new_U772 = ~new_U612 | ~new_U611 | ~new_U726;
  assign new_U773 = ~new_GT_160_U6;
  assign new_U774 = ~new_GT_118_U6;
  assign new_U775 = ~new_GT_163_U6;
  assign new_U776 = ~new_GT_203_U6;
  assign new_U777 = ~new_GT_178_U6;
  assign new_U778 = ~new_GT_114_U6;
  assign new_U779 = ~new_GT_166_U6;
  assign new_U780 = ~new_GT_215_U6;
  assign new_U781 = ~new_GT_172_U6;
  assign new_U782 = ~new_GT_209_U6;
  assign new_U783 = ~new_GT_212_U6;
  assign new_U784 = ~new_U878 | ~new_GT_130_U6 | ~new_U723;
  assign new_U785 = ~new_U593 | ~new_GT_142_U6 | ~new_U724 | ~new_U725;
  assign new_U786 = ~new_GT_126_U6 | ~new_U878;
  assign new_U787 = ~new_U593 | ~new_GT_138_U6 | ~new_U724;
  assign new_U788 = ~new_GT_169_U6;
  assign new_U789 = ~new_GT_206_U6;
  assign new_U790 = ~new_GT_221_U6;
  assign new_U791 = RES_DISP_REG | EN_DISP_REG;
  assign U792 = ~new_U791;
  assign new_U793 = ~START | ~STATO_REG_0_ | ~new_U681;
  assign new_U794 = ~new_U587 | ~new_U707;
  assign new_U795 = ~new_U601 | ~new_U848;
  assign new_U796 = ~STATO_REG_2_ | ~new_U703;
  assign new_U797 = ~new_U704;
  assign new_U798 = ~new_U702;
  assign new_U799 = ~STATO_REG_1_ | ~new_U682;
  assign new_U800 = STATO_REG_1_ | START;
  assign new_U801 = ~new_U685;
  assign new_U802 = ~STATO_REG_1_ | ~new_U684;
  assign new_U803 = ~new_U801 | ~new_U802;
  assign new_U804 = ~new_ADD_283_U11 | ~new_U592;
  assign new_U805 = ~NUM_REG_4_ | ~new_U803;
  assign new_U806 = ~new_ADD_283_U12 | ~new_U592;
  assign new_U807 = ~NUM_REG_3_ | ~new_U803;
  assign new_U808 = ~new_ADD_283_U13 | ~new_U592;
  assign new_U809 = ~NUM_REG_2_ | ~new_U803;
  assign new_U810 = ~new_ADD_283_U14 | ~new_U592;
  assign new_U811 = ~NUM_REG_1_ | ~new_U803;
  assign new_U812 = ~new_ADD_283_U5 | ~new_U592;
  assign new_U813 = ~NUM_REG_0_ | ~new_U803;
  assign new_U814 = ~new_U693;
  assign new_U815 = ~new_U692;
  assign new_U816 = ~new_U703;
  assign new_U817 = ~new_ADD_304_U11 | ~STATO_REG_2_;
  assign new_U818 = ~new_U594 | ~MAR_REG_4_;
  assign new_U819 = ~new_ADD_304_U12 | ~STATO_REG_2_;
  assign new_U820 = ~new_U594 | ~MAR_REG_3_;
  assign new_U821 = ~new_ADD_304_U13 | ~STATO_REG_2_;
  assign new_U822 = ~new_U594 | ~MAR_REG_2_;
  assign new_U823 = ~new_ADD_304_U14 | ~STATO_REG_2_;
  assign new_U824 = ~new_U594 | ~MAR_REG_1_;
  assign new_U825 = ~new_ADD_304_U5 | ~STATO_REG_2_;
  assign new_U826 = ~new_U594 | ~MAR_REG_0_;
  assign new_U827 = ~new_U695;
  assign new_U828 = ~new_U827 | ~new_U815;
  assign new_U829 = ~new_U696;
  assign new_U830 = ~new_U595 | ~new_U829;
  assign new_U831 = ~new_U697;
  assign new_U832 = ~new_U831 | ~new_U815;
  assign new_U833 = ~new_U698;
  assign new_U834 = ~new_U833 | ~new_U831;
  assign new_U835 = ~new_U699;
  assign new_U836 = ~new_U835 | ~new_U595;
  assign new_U837 = ~new_U700;
  assign new_U838 = ~new_U837 | ~new_U815;
  assign new_U839 = ~new_U624;
  assign new_U840 = ~new_U699 | ~new_U696 | ~new_U695;
  assign new_U841 = ~new_U701;
  assign new_U842 = ~new_U697 | ~new_U701;
  assign new_U843 = ~new_U595 | ~new_U842;
  assign new_U844 = ~new_U599 | ~new_U840;
  assign new_U845 = ~new_U833 | ~new_U827;
  assign new_U846 = ~new_U599 | ~new_U831;
  assign new_U847 = ~new_U599 | ~new_U837;
  assign new_U848 = ~new_U692 | ~new_U698;
  assign new_U849 = ~new_U841 | ~new_U599;
  assign new_U850 = ~new_U835 | ~new_U833;
  assign new_U851 = ~new_U837 | ~new_U595;
  assign new_U852 = ~new_U595 | ~new_U814;
  assign new_U853 = ~new_U595 | ~new_U827;
  assign new_U854 = ~new_U700 | ~new_U693;
  assign new_U855 = ~new_U833 | ~new_U854;
  assign new_U856 = ~new_U701 | ~new_U696;
  assign new_U857 = ~new_U815 | ~new_U856;
  assign new_U858 = ~new_U601 | ~new_U595;
  assign new_U859 = ~new_U605 | ~new_U607;
  assign new_U860 = ~new_U599 | ~new_U814;
  assign new_U861 = ~new_U609 | ~new_U605;
  assign new_U862 = new_U769 | new_SUB_60_U25 | new_SUB_60_U6 | new_SUB_60_U27 | new_SUB_60_U28;
  assign new_U863 = ~new_U862 | ~new_U798 | ~new_SUB_73_U6;
  assign new_U864 = ~new_U770;
  assign new_U865 = ~STATO_REG_1_ | ~new_U686;
  assign new_U866 = ~new_U796 | ~new_U865 | ~new_U682;
  assign new_U867 = ~new_U797 | ~STATO_REG_0_;
  assign new_U868 = ~EN_DISP_REG | ~new_U866;
  assign new_U869 = STATO_REG_0_ | STATO_REG_2_ | STATO_REG_1_;
  assign new_U870 = ~RES_DISP_REG | ~new_U869;
  assign new_U871 = ~new_U862 | ~STATO_REG_0_ | ~new_U798;
  assign new_U872 = ~FLAG_REG | ~new_U685;
  assign new_U873 = ~new_U833 | ~MAR_REG_0_ | ~MAR_REG_2_;
  assign new_U874 = ~new_GT_108_U6 | ~new_SUB_110_U13;
  assign new_U875 = ~new_SUB_110_U17 | ~new_GT_108_U6;
  assign new_U876 = ~new_SUB_110_U14 | ~new_GT_108_U6;
  assign new_U877 = ~new_SUB_110_U19 | ~new_GT_108_U6;
  assign new_U878 = ~new_U637;
  assign new_U879 = ~new_U710;
  assign new_U880 = ~new_U709;
  assign new_U881 = ~new_U797 | ~START;
  assign new_U882 = ~STATO_REG_0_ | ~STATO_REG_1_;
  assign new_U883 = ~new_U704 | ~STATO_REG_1_;
  assign new_U884 = ~new_U883 | ~new_U694;
  assign new_U885 = STATO_REG_2_ | STATO_REG_0_;
  assign new_U886 = ~MAX_REG_8_ | ~new_U705;
  assign new_U887 = ~new_U713;
  assign new_U888 = ~new_U713 | ~new_U782;
  assign new_U889 = ~new_GT_218_U6 | ~new_U782;
  assign new_U890 = new_GT_221_U6 | new_GT_224_U6;
  assign new_U891 = ~new_U890 | ~new_U782;
  assign new_U892 = ~new_U615 | ~RES_DISP_REG | ~new_U891;
  assign new_U893 = ~new_U712;
  assign new_U894 = ~new_U893 | ~new_U790;
  assign new_U895 = ~new_U894 | ~new_U782 | ~new_U711;
  assign new_U896 = ~new_U614 | ~new_U895;
  assign new_U897 = ~new_U616 | ~new_U790 | ~new_GT_224_U6 | ~new_U711;
  assign new_U898 = ~new_U713 | ~new_U613 | ~new_U782;
  assign new_U899 = ~new_U712 | ~new_U790 | ~new_U711;
  assign new_U900 = ~new_U616 | ~new_U899;
  assign new_U901 = new_GT_209_U6 | new_GT_224_U6 | new_GT_221_U6 | new_GT_227_U7;
  assign new_U902 = ~new_U615 | ~new_U901;
  assign new_U903 = new_GT_224_U6 | new_GT_227_U7;
  assign new_U904 = ~new_U790 | ~new_U903;
  assign new_U905 = ~new_U904 | ~new_U780 | ~new_U711;
  assign new_U906 = ~new_U783 | ~new_U905;
  assign new_U907 = ~new_U906 | ~new_U782;
  assign new_U908 = ~new_U789 | ~new_U907;
  assign new_U909 = ~new_U717;
  assign new_U910 = ~new_U717 | ~new_U779;
  assign new_U911 = ~new_GT_175_U6 | ~new_U779;
  assign new_U912 = new_GT_178_U6 | new_GT_181_U6;
  assign new_U913 = ~new_U912 | ~new_U779;
  assign new_U914 = ~new_U618 | ~RES_DISP_REG | ~new_U913;
  assign new_U915 = ~new_U716;
  assign new_U916 = ~new_U915 | ~new_U777;
  assign new_U917 = ~new_U916 | ~new_U715 | ~new_U779;
  assign new_U918 = ~new_U617 | ~new_U917;
  assign new_U919 = ~new_U620 | ~new_GT_181_U6 | ~new_U715 | ~new_U777;
  assign new_U920 = ~new_U619 | ~new_U717;
  assign new_U921 = ~new_U716 | ~new_U715 | ~new_U777;
  assign new_U922 = ~new_U620 | ~new_U921;
  assign new_U923 = new_GT_178_U6 | new_GT_181_U6 | new_GT_166_U6 | new_GT_184_U7;
  assign new_U924 = ~new_U618 | ~new_U923;
  assign new_U925 = new_GT_181_U6 | new_GT_184_U7;
  assign new_U926 = ~new_U777 | ~new_U925;
  assign new_U927 = ~new_U926 | ~new_U715 | ~new_U781;
  assign new_U928 = ~new_U788 | ~new_U927;
  assign new_U929 = ~new_U928 | ~new_U779;
  assign new_U930 = ~new_U775 | ~new_U929;
  assign new_U931 = ~new_U709 | ~new_U726;
  assign new_U932 = ~new_U710 | ~new_U726;
  assign new_U933 = ~new_U932 | ~RES_DISP_REG | ~new_U621;
  assign new_U934 = ~new_U720;
  assign new_U935 = ~new_U934 | ~new_U725;
  assign new_U936 = ~new_U935 | ~new_U724 | ~new_U726;
  assign new_U937 = ~new_U621 | ~new_U936;
  assign new_U938 = ~new_U709 | ~new_U878;
  assign new_U939 = ~new_U720 | ~new_U724 | ~new_U725;
  assign new_U940 = ~new_U593 | ~new_U939;
  assign new_U941 = new_GT_146_U6 | new_GT_138_U6 | new_GT_142_U6;
  assign new_U942 = ~new_U724 | ~new_U941;
  assign new_U943 = ~new_U942 | ~new_U726;
  assign new_U944 = ~new_U621 | ~new_U943;
  assign new_U945 = new_GT_146_U6 | new_GT_142_U6;
  assign new_U946 = ~new_U725 | ~new_U945;
  assign new_U947 = ~new_U946 | ~new_U724 | ~new_U722;
  assign new_U948 = ~new_U723 | ~new_U947;
  assign new_U949 = ~new_U948 | ~new_U726;
  assign new_U950 = ~new_U774 | ~new_U949;
  assign new_U951 = ~new_GT_134_U6 | ~new_U593;
  assign new_U952 = ~new_U593 | ~new_U879;
  assign new_U953 = ~new_U880 | ~new_GT_134_U6 | ~new_U726 | ~new_U774;
  assign new_U954 = ~new_GT_122_U6 | ~new_U611;
  assign new_U955 = ~new_GT_122_U6 | ~new_U774;
  assign new_U956 = ~new_U772;
  assign new_U957 = ~new_U771;
  assign new_U958 = ~TEMP_REG_8_ | ~new_U681;
  assign new_U959 = ~STATO_REG_1_ | ~new_U624;
  assign new_U960 = ~TEMP_REG_7_ | ~new_U681;
  assign new_U961 = ~STATO_REG_1_ | ~new_U632;
  assign new_U962 = ~TEMP_REG_6_ | ~new_U681;
  assign new_U963 = ~STATO_REG_1_ | ~new_U631;
  assign new_U964 = ~TEMP_REG_5_ | ~new_U681;
  assign new_U965 = ~STATO_REG_1_ | ~new_U859;
  assign new_U966 = ~TEMP_REG_4_ | ~new_U681;
  assign new_U967 = ~STATO_REG_1_ | ~new_U629;
  assign new_U968 = ~TEMP_REG_3_ | ~new_U681;
  assign new_U969 = ~STATO_REG_1_ | ~new_U861;
  assign new_U970 = ~TEMP_REG_2_ | ~new_U681;
  assign new_U971 = ~STATO_REG_1_ | ~new_U627;
  assign new_U972 = ~TEMP_REG_1_ | ~new_U681;
  assign new_U973 = ~STATO_REG_1_ | ~new_U626;
  assign new_U974 = ~TEMP_REG_0_ | ~new_U681;
  assign new_U975 = ~STATO_REG_1_ | ~new_U625;
  assign new_U976 = ~MAX_REG_8_ | ~new_U864;
  assign new_U977 = ~new_U770 | ~new_U624;
  assign new_U978 = ~MAX_REG_7_ | ~new_U864;
  assign new_U979 = ~new_U770 | ~new_U632;
  assign new_U980 = ~MAX_REG_6_ | ~new_U864;
  assign new_U981 = ~new_U770 | ~new_U631;
  assign new_U982 = ~MAX_REG_5_ | ~new_U864;
  assign new_U983 = ~new_U770 | ~new_U859;
  assign new_U984 = ~MAX_REG_4_ | ~new_U864;
  assign new_U985 = ~new_U770 | ~new_U629;
  assign new_U986 = ~MAX_REG_3_ | ~new_U864;
  assign new_U987 = ~new_U770 | ~new_U861;
  assign new_U988 = ~MAX_REG_2_ | ~new_U864;
  assign new_U989 = ~new_U770 | ~new_U627;
  assign new_U990 = ~MAX_REG_1_ | ~new_U864;
  assign new_U991 = ~new_U770 | ~new_U626;
  assign new_U992 = ~MAX_REG_0_ | ~new_U864;
  assign new_U993 = ~new_U770 | ~new_U625;
  assign new_U994 = ~NUM_REG_4_ | ~new_U706;
  assign new_U995 = ~new_SUB_199_U8 | ~new_GT_197_U6;
  assign new_U996 = ~NUM_REG_3_ | ~new_U706;
  assign new_U997 = ~new_SUB_199_U6 | ~new_GT_197_U6;
  assign new_U998 = ~NUM_REG_2_ | ~new_U706;
  assign new_U999 = ~new_SUB_199_U12 | ~new_GT_197_U6;
  assign new_U1000 = ~NUM_REG_1_ | ~new_U706;
  assign new_U1001 = ~new_SUB_199_U7 | ~new_GT_197_U6;
  assign new_U1002 = ~NUM_REG_0_ | ~new_U706;
  assign new_U1003 = ~NUM_REG_0_ | ~new_GT_197_U6;
  assign new_U1004 = ~MAX_REG_4_ | ~new_U708;
  assign new_U1005 = ~new_SUB_103_U14 | ~MAX_REG_8_;
  assign new_U1006 = ~new_U750 | ~new_U707;
  assign new_U1007 = ~new_SUB_110_U8 | ~new_GT_108_U6;
  assign new_U1008 = ~MAX_REG_3_ | ~new_U708;
  assign new_U1009 = ~new_SUB_103_U7 | ~MAX_REG_8_;
  assign new_U1010 = ~new_U752 | ~new_U707;
  assign new_U1011 = ~new_SUB_110_U6 | ~new_GT_108_U6;
  assign new_U1012 = ~MAX_REG_2_ | ~new_U708;
  assign new_U1013 = ~new_SUB_103_U6 | ~MAX_REG_8_;
  assign new_U1014 = ~new_U754 | ~new_U707;
  assign new_U1015 = ~new_SUB_110_U7 | ~new_GT_108_U6;
  assign new_U1016 = ~MAX_REG_1_ | ~new_U708;
  assign new_U1017 = ~new_SUB_103_U12 | ~MAX_REG_8_;
  assign new_U1018 = ~new_U756 | ~new_U707;
  assign new_U1019 = ~new_U756 | ~new_GT_108_U6;
  assign new_U1020 = ~MAX_REG_0_ | ~new_U708;
  assign new_U1021 = ~MAX_REG_0_ | ~MAX_REG_8_;
  assign new_U1022 = ~new_U758 | ~new_U707;
  assign new_U1023 = ~new_U758 | ~new_GT_108_U6;
  assign new_U1024 = ~new_U957 | ~new_U633;
  assign new_U1025 = ~new_R794_U20 | ~new_U771;
  assign new_U1026 = ~new_U957 | ~new_U634;
  assign new_U1027 = ~new_R794_U21 | ~new_U771;
  assign new_U1028 = ~new_U957 | ~new_U635;
  assign new_U1029 = ~new_R794_U22 | ~new_U771;
  assign new_U1030 = ~new_U957 | ~new_U636;
  assign new_U1031 = ~new_R794_U23 | ~new_U771;
  assign new_U1032 = ~new_R794_U24 | ~new_U772;
  assign new_U1033 = ~new_U956 | ~new_U751;
  assign new_U1034 = ~new_R794_U25 | ~new_U772;
  assign new_U1035 = ~new_U956 | ~new_U753;
  assign new_U1036 = ~new_R794_U26 | ~new_U772;
  assign new_U1037 = ~new_U956 | ~new_U755;
  assign new_U1038 = ~new_R794_U6 | ~new_U772;
  assign new_U1039 = ~new_U956 | ~new_U757;
  assign new_U1040 = ~new_U759 | ~new_U772;
  assign new_U1041 = ~new_U956 | ~new_U759;
  assign new_GT_118_U9 = new_U636 | new_U751;
  assign new_GT_118_U8 = ~new_GT_118_U7 & ~new_U634;
  assign new_GT_118_U7 = new_U635 & new_GT_118_U9;
  assign new_GT_118_U6 = ~new_U633 & ~new_GT_118_U8;
  assign new_GT_166_U9 = new_U763 | new_U764 | new_U765;
  assign new_GT_166_U8 = ~new_GT_166_U9 & ~new_GT_166_U7 & ~new_U761 & ~new_U762;
  assign new_GT_166_U7 = new_U766 & new_U767 & new_U768;
  assign new_GT_166_U6 = ~new_U760 & ~new_GT_166_U8;
  assign new_GT_215_U10 = new_U749 | new_U748;
  assign new_GT_215_U9 = new_U745 | new_U588 | new_U746;
  assign new_GT_215_U8 = ~new_U588 & ~new_U588 & ~new_GT_215_U9 & ~new_GT_215_U7;
  assign new_GT_215_U7 = new_U747 & new_GT_215_U10;
  assign new_GT_215_U6 = ~new_U588 & ~new_GT_215_U8;
  assign new_GT_209_U9 = new_U745 | new_U588 | new_U746;
  assign new_GT_209_U8 = ~new_U588 & ~new_U588 & ~new_GT_209_U9 & ~new_GT_209_U7;
  assign new_GT_209_U7 = new_U749 & new_U748 & new_U747;
  assign new_GT_209_U6 = ~new_U588 & ~new_GT_209_U8;
  assign new_SUB_199_U20 = ~NUM_REG_1_ | ~new_SUB_199_U11;
  assign new_SUB_199_U19 = ~NUM_REG_2_ | ~new_SUB_199_U7;
  assign new_SUB_199_U18 = NUM_REG_1_ | NUM_REG_3_ | NUM_REG_2_;
  assign new_SUB_199_U17 = ~NUM_REG_4_ | ~new_SUB_199_U16;
  assign new_SUB_199_U16 = ~new_SUB_199_U9;
  assign new_SUB_199_U15 = NUM_REG_2_ | NUM_REG_1_;
  assign new_SUB_199_U14 = ~new_SUB_199_U13;
  assign new_SUB_199_U13 = ~new_SUB_199_U9 | ~new_SUB_199_U10;
  assign new_SUB_199_U12 = new_SUB_199_U20 & new_SUB_199_U19;
  assign new_SUB_199_U11 = ~NUM_REG_2_;
  assign new_SUB_199_U10 = ~NUM_REG_4_;
  assign new_SUB_199_U9 = ~NUM_REG_3_ | ~new_SUB_199_U15;
  assign new_SUB_199_U8 = ~new_SUB_199_U13 | ~new_SUB_199_U17;
  assign new_SUB_199_U7 = ~NUM_REG_1_;
  assign new_SUB_199_U6 = new_SUB_199_U18 & new_SUB_199_U9;
  assign new_GT_178_U9 = new_U763 | new_U764 | new_U765 | new_U766;
  assign new_GT_178_U8 = ~new_GT_178_U9 & ~new_GT_178_U7 & ~new_U761 & ~new_U762;
  assign new_GT_178_U7 = new_U768 & new_U767;
  assign new_GT_178_U6 = ~new_U760 & ~new_GT_178_U8;
  assign new_GT_169_U9 = new_U763 | new_U764 | new_U765;
  assign new_GT_169_U8 = ~new_GT_169_U9 & ~new_GT_169_U7 & ~new_U761 & ~new_U762;
  assign new_GT_169_U7 = new_U766 & new_U767;
  assign new_SUB_103_U6 = new_SUB_103_U21 & new_SUB_103_U9;
  assign new_SUB_103_U7 = new_SUB_103_U19 & new_SUB_103_U10;
  assign new_SUB_103_U8 = ~new_SUB_103_U18 | ~new_SUB_103_U13;
  assign new_SUB_103_U9 = MAX_REG_2_ | MAX_REG_1_ | MAX_REG_0_;
  assign new_SUB_103_U10 = ~new_SUB_103_U17 | ~new_SUB_103_U11;
  assign new_SUB_103_U11 = ~MAX_REG_3_;
  assign new_SUB_103_U12 = ~new_SUB_103_U25 | ~new_SUB_103_U24;
  assign new_SUB_103_U13 = ~MAX_REG_4_;
  assign new_SUB_103_U14 = new_SUB_103_U23 & new_SUB_103_U22;
  assign new_SUB_103_U15 = ~MAX_REG_1_;
  assign new_SUB_103_U16 = ~MAX_REG_0_;
  assign new_SUB_103_U17 = ~new_SUB_103_U9;
  assign new_SUB_103_U18 = ~new_SUB_103_U10;
  assign new_SUB_103_U19 = ~MAX_REG_3_ | ~new_SUB_103_U9;
  assign new_SUB_103_U20 = MAX_REG_1_ | MAX_REG_0_;
  assign new_SUB_103_U21 = ~MAX_REG_2_ | ~new_SUB_103_U20;
  assign new_SUB_103_U22 = ~MAX_REG_4_ | ~new_SUB_103_U10;
  assign new_SUB_103_U23 = ~new_SUB_103_U18 | ~new_SUB_103_U13;
  assign new_SUB_103_U24 = ~MAX_REG_1_ | ~new_SUB_103_U16;
  assign new_SUB_103_U25 = ~MAX_REG_0_ | ~new_SUB_103_U15;
  assign new_GT_218_U6 = ~new_U588 & ~new_GT_218_U7;
  assign new_GT_218_U7 = ~new_U588 & ~new_U746 & ~new_GT_218_U8 & ~new_U747;
  assign new_GT_218_U8 = new_U745 | new_U588 | new_U588;
  assign new_GT_160_U6 = ~new_U760 & ~new_GT_160_U8;
  assign new_GT_160_U7 = new_U765 & new_GT_160_U9;
  assign new_GT_160_U8 = ~new_U764 & ~new_U763 & ~new_GT_160_U7 & ~new_U761 & ~new_U762;
  assign new_GT_160_U9 = new_U766 | new_U767 | new_U768;
  assign new_GT_206_U6 = ~new_U588 & ~new_GT_206_U7;
  assign new_GT_206_U7 = ~new_U588 & ~new_U588 & ~new_U745 & ~new_U588 & ~new_U746;
  assign new_SUB_110_U6 = ~new_SUB_110_U9 | ~new_SUB_110_U26;
  assign new_SUB_110_U7 = ~new_U754;
  assign new_SUB_110_U8 = ~new_SUB_110_U18 | ~new_SUB_110_U25;
  assign new_SUB_110_U9 = new_U754 | new_U752;
  assign new_SUB_110_U10 = ~new_U587;
  assign new_SUB_110_U11 = ~new_U587 | ~new_SUB_110_U18;
  assign new_SUB_110_U12 = ~new_U750;
  assign new_SUB_110_U13 = ~new_SUB_110_U28 | ~new_SUB_110_U27;
  assign new_SUB_110_U14 = ~new_SUB_110_U32 | ~new_SUB_110_U31;
  assign new_SUB_110_U15 = ~new_SUB_110_U10 | ~new_SUB_110_U16;
  assign new_SUB_110_U16 = ~new_U587 | ~new_SUB_110_U22;
  assign new_SUB_110_U17 = new_SUB_110_U30 & new_SUB_110_U29;
  assign new_SUB_110_U18 = ~new_SUB_110_U20 | ~new_SUB_110_U12;
  assign new_SUB_110_U19 = new_SUB_110_U34 & new_SUB_110_U33;
  assign new_SUB_110_U20 = ~new_SUB_110_U9;
  assign new_SUB_110_U21 = ~new_SUB_110_U18;
  assign new_SUB_110_U22 = ~new_SUB_110_U11;
  assign new_SUB_110_U23 = ~new_SUB_110_U16;
  assign new_SUB_110_U24 = ~new_SUB_110_U15;
  assign new_SUB_110_U25 = ~new_U750 | ~new_SUB_110_U9;
  assign new_SUB_110_U26 = ~new_U752 | ~new_U754;
  assign new_SUB_110_U27 = ~new_U587 | ~new_SUB_110_U15;
  assign new_SUB_110_U28 = ~new_SUB_110_U24 | ~new_SUB_110_U10;
  assign new_SUB_110_U29 = ~new_U587 | ~new_SUB_110_U16;
  assign new_SUB_110_U30 = ~new_SUB_110_U23 | ~new_SUB_110_U10;
  assign new_SUB_110_U31 = ~new_U587 | ~new_SUB_110_U11;
  assign new_SUB_110_U32 = ~new_SUB_110_U22 | ~new_SUB_110_U10;
  assign new_SUB_110_U33 = ~new_U587 | ~new_SUB_110_U18;
  assign new_SUB_110_U34 = ~new_SUB_110_U21 | ~new_SUB_110_U10;
  assign new_GT_146_U6 = ~new_U633 & ~new_GT_146_U8;
  assign new_GT_146_U7 = new_U753 & new_GT_146_U9;
  assign new_GT_146_U8 = ~new_U751 & ~new_U636 & ~new_GT_146_U7 & ~new_U634 & ~new_U635;
  assign new_GT_146_U9 = new_U755 | new_U757;
  assign new_GT_126_U6 = ~new_U633 & ~new_GT_126_U8;
  assign new_GT_126_U7 = new_U751 & new_U753 & new_U636 & new_U755;
  assign new_GT_126_U8 = ~new_U635 & ~new_U634 & ~new_GT_126_U7;
  assign new_GT_163_U6 = ~new_U760 & ~new_GT_163_U7;
  assign new_GT_163_U7 = ~new_U765 & ~new_U764 & ~new_U763 & ~new_U761 & ~new_U762;
  assign new_GT_184_U6 = ~new_U763 & ~new_U764 & ~new_GT_184_U8 & ~new_U761 & ~new_U762;
  assign new_GT_184_U7 = ~new_GT_184_U6 & ~new_U760;
  assign new_GT_184_U8 = new_U765 | new_U766 | new_U767 | new_U768;
  assign new_GT_221_U6 = ~new_U588 & ~new_GT_221_U8;
  assign new_GT_221_U7 = new_U749 & new_U748;
  assign new_GT_221_U8 = ~new_U747 & ~new_U588 & ~new_GT_221_U9 & ~new_GT_221_U7;
  assign new_GT_221_U9 = new_U588 | new_U588 | new_U746 | new_U745;
  assign new_GT_227_U6 = ~new_U745 & ~new_U746 & ~new_U747 & ~new_GT_227_U8 & ~new_U588;
  assign new_GT_227_U7 = ~new_GT_227_U6 & ~new_U588;
  assign new_GT_227_U8 = new_U749 | new_U588 | new_U748 | new_U588;
  assign new_ADD_283_U5 = ~NUM_REG_0_;
  assign new_ADD_283_U6 = ~NUM_REG_1_;
  assign new_ADD_283_U7 = ~NUM_REG_1_ | ~NUM_REG_0_;
  assign new_ADD_283_U8 = ~NUM_REG_2_;
  assign new_ADD_283_U9 = ~NUM_REG_2_ | ~new_ADD_283_U17;
  assign new_ADD_283_U10 = ~NUM_REG_3_;
  assign new_ADD_283_U11 = ~new_ADD_283_U21 | ~new_ADD_283_U20;
  assign new_ADD_283_U12 = ~new_ADD_283_U23 | ~new_ADD_283_U22;
  assign new_ADD_283_U13 = ~new_ADD_283_U25 | ~new_ADD_283_U24;
  assign new_ADD_283_U14 = ~new_ADD_283_U27 | ~new_ADD_283_U26;
  assign new_ADD_283_U15 = ~NUM_REG_4_;
  assign new_ADD_283_U16 = ~NUM_REG_3_ | ~new_ADD_283_U18;
  assign new_ADD_283_U17 = ~new_ADD_283_U7;
  assign new_ADD_283_U18 = ~new_ADD_283_U9;
  assign new_ADD_283_U19 = ~new_ADD_283_U16;
  assign new_ADD_283_U20 = ~NUM_REG_4_ | ~new_ADD_283_U16;
  assign new_ADD_283_U21 = ~new_ADD_283_U19 | ~new_ADD_283_U15;
  assign new_ADD_283_U22 = ~NUM_REG_3_ | ~new_ADD_283_U9;
  assign new_ADD_283_U23 = ~new_ADD_283_U18 | ~new_ADD_283_U10;
  assign new_ADD_283_U24 = ~NUM_REG_2_ | ~new_ADD_283_U7;
  assign new_ADD_283_U25 = ~new_ADD_283_U17 | ~new_ADD_283_U8;
  assign new_ADD_283_U26 = ~NUM_REG_1_ | ~new_ADD_283_U5;
  assign new_ADD_283_U27 = ~NUM_REG_0_ | ~new_ADD_283_U6;
  assign new_GT_197_U6 = new_GT_197_U7 | NUM_REG_4_;
  assign new_GT_197_U7 = NUM_REG_3_ & new_GT_197_U8;
  assign new_GT_197_U8 = NUM_REG_2_ | NUM_REG_1_;
  assign new_GT_114_U6 = ~new_U633 & ~new_GT_114_U9;
  assign new_GT_114_U7 = new_GT_114_U10 & new_U753 & new_U751;
  assign new_GT_114_U8 = new_U635 & new_GT_114_U11;
  assign new_GT_114_U9 = ~new_GT_114_U8 & ~new_U634;
  assign new_GT_114_U10 = new_U755 | new_U757;
  assign new_GT_114_U11 = new_GT_114_U7 | new_U636;
  assign new_GT_224_U6 = ~new_U588 & ~new_GT_224_U7;
  assign new_GT_224_U7 = ~new_U746 & ~new_U747 & ~new_GT_224_U8 & ~new_U745;
  assign new_GT_224_U8 = new_U588 | new_U588 | new_U748 | new_U588;
  assign new_ADD_304_U5 = ~MAR_REG_0_;
  assign new_ADD_304_U6 = ~MAR_REG_1_;
  assign new_ADD_304_U7 = ~MAR_REG_1_ | ~MAR_REG_0_;
  assign new_ADD_304_U8 = ~MAR_REG_2_;
  assign new_ADD_304_U9 = ~MAR_REG_2_ | ~new_ADD_304_U17;
  assign new_ADD_304_U10 = ~MAR_REG_3_;
  assign new_ADD_304_U11 = ~new_ADD_304_U21 | ~new_ADD_304_U20;
  assign new_ADD_304_U12 = ~new_ADD_304_U23 | ~new_ADD_304_U22;
  assign new_ADD_304_U13 = ~new_ADD_304_U25 | ~new_ADD_304_U24;
  assign new_ADD_304_U14 = ~new_ADD_304_U27 | ~new_ADD_304_U26;
  assign new_ADD_304_U15 = ~MAR_REG_4_;
  assign new_ADD_304_U16 = ~MAR_REG_3_ | ~new_ADD_304_U18;
  assign new_ADD_304_U17 = ~new_ADD_304_U7;
  assign new_ADD_304_U18 = ~new_ADD_304_U9;
  assign new_ADD_304_U19 = ~new_ADD_304_U16;
  assign new_ADD_304_U20 = ~MAR_REG_4_ | ~new_ADD_304_U16;
  assign new_ADD_304_U21 = ~new_ADD_304_U19 | ~new_ADD_304_U15;
  assign new_ADD_304_U22 = ~MAR_REG_3_ | ~new_ADD_304_U9;
  assign new_ADD_304_U23 = ~new_ADD_304_U18 | ~new_ADD_304_U10;
  assign new_ADD_304_U24 = ~MAR_REG_2_ | ~new_ADD_304_U7;
  assign new_ADD_304_U25 = ~new_ADD_304_U17 | ~new_ADD_304_U8;
  assign new_ADD_304_U26 = ~MAR_REG_1_ | ~new_ADD_304_U5;
  assign new_ADD_304_U27 = ~MAR_REG_0_ | ~new_ADD_304_U6;
  assign new_R794_U6 = ~new_R794_U39 | ~new_R794_U62;
  assign new_R794_U7 = ~new_U642;
  assign new_R794_U8 = ~new_U641;
  assign new_R794_U9 = ~new_U755;
  assign new_R794_U10 = ~new_U640;
  assign new_R794_U11 = ~new_U753;
  assign new_R794_U12 = ~new_U639;
  assign new_R794_U13 = ~new_U751;
  assign new_R794_U14 = ~new_U638;
  assign new_R794_U15 = ~new_U636;
  assign new_R794_U16 = ~new_U637;
  assign new_R794_U17 = ~new_U635;
  assign new_R794_U18 = ~new_R794_U59 | ~new_R794_U58;
  assign new_R794_U19 = ~new_U757;
  assign new_R794_U20 = ~new_R794_U64 | ~new_R794_U63;
  assign new_R794_U21 = ~new_R794_U66 | ~new_R794_U65;
  assign new_R794_U22 = ~new_R794_U71 | ~new_R794_U70;
  assign new_R794_U23 = ~new_R794_U76 | ~new_R794_U75;
  assign new_R794_U24 = ~new_R794_U81 | ~new_R794_U80;
  assign new_R794_U25 = ~new_R794_U86 | ~new_R794_U85;
  assign new_R794_U26 = ~new_R794_U91 | ~new_R794_U90;
  assign new_R794_U27 = ~new_R794_U68 | ~new_R794_U67;
  assign new_R794_U28 = ~new_R794_U73 | ~new_R794_U72;
  assign new_R794_U29 = ~new_R794_U78 | ~new_R794_U77;
  assign new_R794_U30 = ~new_R794_U83 | ~new_R794_U82;
  assign new_R794_U31 = ~new_R794_U88 | ~new_R794_U87;
  assign new_R794_U32 = ~new_U633;
  assign new_R794_U33 = ~new_R794_U60 | ~new_R794_U34;
  assign new_R794_U34 = ~new_U634;
  assign new_R794_U35 = ~new_R794_U55 | ~new_R794_U54;
  assign new_R794_U36 = ~new_R794_U51 | ~new_R794_U50;
  assign new_R794_U37 = ~new_R794_U47 | ~new_R794_U46;
  assign new_R794_U38 = ~new_R794_U43 | ~new_R794_U42;
  assign new_R794_U39 = ~new_U642 | ~new_R794_U19;
  assign new_R794_U40 = ~new_R794_U39;
  assign new_R794_U41 = ~new_U641 | ~new_R794_U9;
  assign new_R794_U42 = ~new_R794_U41 | ~new_R794_U39;
  assign new_R794_U43 = ~new_U755 | ~new_R794_U8;
  assign new_R794_U44 = ~new_R794_U38;
  assign new_R794_U45 = ~new_U640 | ~new_R794_U11;
  assign new_R794_U46 = ~new_R794_U45 | ~new_R794_U38;
  assign new_R794_U47 = ~new_U753 | ~new_R794_U10;
  assign new_R794_U48 = ~new_R794_U37;
  assign new_R794_U49 = ~new_U639 | ~new_R794_U13;
  assign new_R794_U50 = ~new_R794_U49 | ~new_R794_U37;
  assign new_R794_U51 = ~new_U751 | ~new_R794_U12;
  assign new_R794_U52 = ~new_R794_U36;
  assign new_R794_U53 = ~new_U638 | ~new_R794_U15;
  assign new_R794_U54 = ~new_R794_U53 | ~new_R794_U36;
  assign new_R794_U55 = ~new_U636 | ~new_R794_U14;
  assign new_R794_U56 = ~new_R794_U35;
  assign new_R794_U57 = ~new_U637 | ~new_R794_U17;
  assign new_R794_U58 = ~new_R794_U57 | ~new_R794_U35;
  assign new_R794_U59 = ~new_U635 | ~new_R794_U16;
  assign new_R794_U60 = ~new_R794_U18;
  assign new_R794_U61 = ~new_R794_U33;
  assign new_R794_U62 = ~new_U757 | ~new_R794_U7;
  assign new_R794_U63 = ~new_U633 | ~new_R794_U33;
  assign new_R794_U64 = ~new_R794_U61 | ~new_R794_U32;
  assign new_R794_U65 = ~new_U634 | ~new_R794_U18;
  assign new_R794_U66 = ~new_R794_U60 | ~new_R794_U34;
  assign new_R794_U67 = ~new_U637 | ~new_R794_U17;
  assign new_R794_U68 = ~new_U635 | ~new_R794_U16;
  assign new_R794_U69 = ~new_R794_U27;
  assign new_R794_U70 = ~new_R794_U56 | ~new_R794_U69;
  assign new_R794_U71 = ~new_R794_U27 | ~new_R794_U35;
  assign new_R794_U72 = ~new_U638 | ~new_R794_U15;
  assign new_R794_U73 = ~new_U636 | ~new_R794_U14;
  assign new_R794_U74 = ~new_R794_U28;
  assign new_R794_U75 = ~new_R794_U52 | ~new_R794_U74;
  assign new_R794_U76 = ~new_R794_U28 | ~new_R794_U36;
  assign new_R794_U77 = ~new_U639 | ~new_R794_U13;
  assign new_R794_U78 = ~new_U751 | ~new_R794_U12;
  assign new_R794_U79 = ~new_R794_U29;
  assign new_R794_U80 = ~new_R794_U48 | ~new_R794_U79;
  assign new_R794_U81 = ~new_R794_U29 | ~new_R794_U37;
  assign new_R794_U82 = ~new_U640 | ~new_R794_U11;
  assign new_R794_U83 = ~new_U753 | ~new_R794_U10;
  assign new_R794_U84 = ~new_R794_U30;
  assign new_R794_U85 = ~new_R794_U44 | ~new_R794_U84;
  assign new_R794_U86 = ~new_R794_U30 | ~new_R794_U38;
  assign new_R794_U87 = ~new_U641 | ~new_R794_U9;
  assign new_R794_U88 = ~new_U755 | ~new_R794_U8;
  assign new_R794_U89 = ~new_R794_U31;
  assign new_R794_U90 = ~new_R794_U40 | ~new_R794_U89;
  assign new_R794_U91 = ~new_R794_U31 | ~new_R794_U39;
  assign new_GT_130_U6 = ~new_U633 & ~new_GT_130_U8;
  assign new_GT_130_U7 = new_GT_130_U9 & new_U636 & new_U751;
  assign new_GT_130_U8 = ~new_U635 & ~new_U634 & ~new_GT_130_U7;
  assign new_GT_130_U9 = new_U757 | new_U755 | new_U753;
  assign new_GT_175_U6 = ~new_U760 & ~new_GT_175_U7;
  assign new_GT_175_U7 = ~new_U761 & ~new_GT_175_U8;
  assign new_GT_175_U8 = new_U762 | new_U763 | new_U766 | new_U764 | new_U765;
  assign new_GT_142_U6 = ~new_U633 & ~new_GT_142_U8;
  assign new_GT_142_U7 = new_U751 & new_GT_142_U9;
  assign new_GT_142_U8 = ~new_GT_142_U7 & ~new_U636 & ~new_U634 & ~new_U635;
  assign new_GT_142_U9 = new_U755 | new_U753;
  assign new_GT_172_U6 = ~new_U760 & ~new_GT_172_U8;
  assign new_GT_172_U7 = new_U766 & new_GT_172_U10;
  assign new_GT_172_U8 = ~new_GT_172_U9 & ~new_GT_172_U7 & ~new_U761 & ~new_U762;
  assign new_GT_172_U9 = new_U763 | new_U764 | new_U765;
  assign new_GT_172_U10 = new_U768 | new_U767;
  assign new_GT_203_U6 = ~new_U588 & ~new_GT_203_U8;
  assign new_GT_203_U7 = new_U746 & new_GT_203_U9;
  assign new_GT_203_U8 = ~new_U588 & ~new_U588 & ~new_U745 & ~new_U588 & ~new_GT_203_U7;
  assign new_GT_203_U9 = new_U748 | new_U747 | new_U749;
  assign new_GT_134_U6 = ~new_U633 & ~new_GT_134_U8;
  assign new_GT_134_U7 = new_U636 & new_GT_134_U9;
  assign new_GT_134_U8 = ~new_U635 & ~new_U634 & ~new_GT_134_U7;
  assign new_GT_134_U9 = new_U753 | new_U751;
  assign new_SUB_60_U6 = ~new_SUB_60_U75 | ~new_SUB_60_U79;
  assign new_SUB_60_U7 = ~new_SUB_60_U9 | ~new_SUB_60_U80;
  assign new_SUB_60_U8 = ~TEMP_REG_0_;
  assign new_SUB_60_U9 = ~TEMP_REG_0_ | ~new_SUB_60_U24;
  assign new_SUB_60_U10 = ~new_U626;
  assign new_SUB_60_U11 = ~TEMP_REG_2_;
  assign new_SUB_60_U12 = ~new_U627;
  assign new_SUB_60_U13 = ~TEMP_REG_3_;
  assign new_SUB_60_U14 = ~new_U628;
  assign new_SUB_60_U15 = ~TEMP_REG_4_;
  assign new_SUB_60_U16 = ~new_U629;
  assign new_SUB_60_U17 = ~TEMP_REG_5_;
  assign new_SUB_60_U18 = ~new_U630;
  assign new_SUB_60_U19 = ~TEMP_REG_6_;
  assign new_SUB_60_U20 = ~new_U631;
  assign new_SUB_60_U21 = ~TEMP_REG_7_;
  assign new_SUB_60_U22 = ~new_U632;
  assign new_SUB_60_U23 = ~new_SUB_60_U70 | ~new_SUB_60_U69;
  assign new_SUB_60_U24 = ~new_U625;
  assign new_SUB_60_U25 = ~new_SUB_60_U90 | ~new_SUB_60_U89;
  assign new_SUB_60_U26 = ~new_SUB_60_U95 | ~new_SUB_60_U94;
  assign new_SUB_60_U27 = ~new_SUB_60_U100 | ~new_SUB_60_U99;
  assign new_SUB_60_U28 = ~new_SUB_60_U105 | ~new_SUB_60_U104;
  assign new_SUB_60_U29 = ~new_SUB_60_U110 | ~new_SUB_60_U109;
  assign new_SUB_60_U30 = ~new_SUB_60_U115 | ~new_SUB_60_U114;
  assign new_SUB_60_U31 = ~new_SUB_60_U120 | ~new_SUB_60_U119;
  assign new_SUB_60_U32 = ~new_SUB_60_U87 | ~new_SUB_60_U86;
  assign new_SUB_60_U33 = ~new_SUB_60_U92 | ~new_SUB_60_U91;
  assign new_SUB_60_U34 = ~new_SUB_60_U97 | ~new_SUB_60_U96;
  assign new_SUB_60_U35 = ~new_SUB_60_U102 | ~new_SUB_60_U101;
  assign new_SUB_60_U36 = ~new_SUB_60_U107 | ~new_SUB_60_U106;
  assign new_SUB_60_U37 = ~new_SUB_60_U112 | ~new_SUB_60_U111;
  assign new_SUB_60_U38 = ~new_SUB_60_U117 | ~new_SUB_60_U116;
  assign new_SUB_60_U39 = ~TEMP_REG_8_;
  assign new_SUB_60_U40 = ~new_U624;
  assign new_SUB_60_U41 = ~new_SUB_60_U66 | ~new_SUB_60_U65;
  assign new_SUB_60_U42 = ~new_SUB_60_U62 | ~new_SUB_60_U61;
  assign new_SUB_60_U43 = ~new_SUB_60_U58 | ~new_SUB_60_U57;
  assign new_SUB_60_U44 = ~new_SUB_60_U54 | ~new_SUB_60_U53;
  assign new_SUB_60_U45 = ~new_SUB_60_U50 | ~new_SUB_60_U49;
  assign new_SUB_60_U46 = ~TEMP_REG_1_;
  assign new_SUB_60_U47 = ~new_SUB_60_U9;
  assign new_SUB_60_U48 = ~new_SUB_60_U47 | ~new_SUB_60_U10;
  assign new_SUB_60_U49 = ~new_SUB_60_U48 | ~new_SUB_60_U46;
  assign new_SUB_60_U50 = ~new_U626 | ~new_SUB_60_U9;
  assign new_SUB_60_U51 = ~new_SUB_60_U45;
  assign new_SUB_60_U52 = ~TEMP_REG_2_ | ~new_SUB_60_U12;
  assign new_SUB_60_U53 = ~new_SUB_60_U52 | ~new_SUB_60_U45;
  assign new_SUB_60_U54 = ~new_U627 | ~new_SUB_60_U11;
  assign new_SUB_60_U55 = ~new_SUB_60_U44;
  assign new_SUB_60_U56 = ~TEMP_REG_3_ | ~new_SUB_60_U14;
  assign new_SUB_60_U57 = ~new_SUB_60_U56 | ~new_SUB_60_U44;
  assign new_SUB_60_U58 = ~new_U628 | ~new_SUB_60_U13;
  assign new_SUB_60_U59 = ~new_SUB_60_U43;
  assign new_SUB_60_U60 = ~TEMP_REG_4_ | ~new_SUB_60_U16;
  assign new_SUB_60_U61 = ~new_SUB_60_U60 | ~new_SUB_60_U43;
  assign new_SUB_60_U62 = ~new_U629 | ~new_SUB_60_U15;
  assign new_SUB_60_U63 = ~new_SUB_60_U42;
  assign new_SUB_60_U64 = ~TEMP_REG_5_ | ~new_SUB_60_U18;
  assign new_SUB_60_U65 = ~new_SUB_60_U64 | ~new_SUB_60_U42;
  assign new_SUB_60_U66 = ~new_U630 | ~new_SUB_60_U17;
  assign new_SUB_60_U67 = ~new_SUB_60_U41;
  assign new_SUB_60_U68 = ~TEMP_REG_6_ | ~new_SUB_60_U20;
  assign new_SUB_60_U69 = ~new_SUB_60_U68 | ~new_SUB_60_U41;
  assign new_SUB_60_U70 = ~new_U631 | ~new_SUB_60_U19;
  assign new_SUB_60_U71 = ~new_SUB_60_U23;
  assign new_SUB_60_U72 = ~new_U632 | ~new_SUB_60_U21;
  assign new_SUB_60_U73 = ~new_SUB_60_U71 | ~new_SUB_60_U72;
  assign new_SUB_60_U74 = ~TEMP_REG_7_ | ~new_SUB_60_U22;
  assign new_SUB_60_U75 = ~new_SUB_60_U73 | ~new_SUB_60_U74 | ~new_SUB_60_U85;
  assign new_SUB_60_U76 = ~TEMP_REG_7_ | ~new_SUB_60_U22;
  assign new_SUB_60_U77 = ~new_SUB_60_U76 | ~new_SUB_60_U23;
  assign new_SUB_60_U78 = ~new_U632 | ~new_SUB_60_U21;
  assign new_SUB_60_U79 = ~new_SUB_60_U77 | ~new_SUB_60_U78 | ~new_SUB_60_U82 | ~new_SUB_60_U81;
  assign new_SUB_60_U80 = ~new_U625 | ~new_SUB_60_U8;
  assign new_SUB_60_U81 = ~TEMP_REG_8_ | ~new_SUB_60_U40;
  assign new_SUB_60_U82 = ~new_U624 | ~new_SUB_60_U39;
  assign new_SUB_60_U83 = ~TEMP_REG_8_ | ~new_SUB_60_U40;
  assign new_SUB_60_U84 = ~new_U624 | ~new_SUB_60_U39;
  assign new_SUB_60_U85 = ~new_SUB_60_U84 | ~new_SUB_60_U83;
  assign new_SUB_60_U86 = ~TEMP_REG_7_ | ~new_SUB_60_U22;
  assign new_SUB_60_U87 = ~new_U632 | ~new_SUB_60_U21;
  assign new_SUB_60_U88 = ~new_SUB_60_U32;
  assign new_SUB_60_U89 = ~new_SUB_60_U88 | ~new_SUB_60_U71;
  assign new_SUB_60_U90 = ~new_SUB_60_U32 | ~new_SUB_60_U23;
  assign new_SUB_60_U91 = ~TEMP_REG_6_ | ~new_SUB_60_U20;
  assign new_SUB_60_U92 = ~new_U631 | ~new_SUB_60_U19;
  assign new_SUB_60_U93 = ~new_SUB_60_U33;
  assign new_SUB_60_U94 = ~new_SUB_60_U67 | ~new_SUB_60_U93;
  assign new_SUB_60_U95 = ~new_SUB_60_U33 | ~new_SUB_60_U41;
  assign new_SUB_60_U96 = ~TEMP_REG_5_ | ~new_SUB_60_U18;
  assign new_SUB_60_U97 = ~new_U630 | ~new_SUB_60_U17;
  assign new_SUB_60_U98 = ~new_SUB_60_U34;
  assign new_SUB_60_U99 = ~new_SUB_60_U63 | ~new_SUB_60_U98;
  assign new_SUB_60_U100 = ~new_SUB_60_U34 | ~new_SUB_60_U42;
  assign new_SUB_60_U101 = ~TEMP_REG_4_ | ~new_SUB_60_U16;
  assign new_SUB_60_U102 = ~new_U629 | ~new_SUB_60_U15;
  assign new_SUB_60_U103 = ~new_SUB_60_U35;
  assign new_SUB_60_U104 = ~new_SUB_60_U59 | ~new_SUB_60_U103;
  assign new_SUB_60_U105 = ~new_SUB_60_U35 | ~new_SUB_60_U43;
  assign new_SUB_60_U106 = ~TEMP_REG_3_ | ~new_SUB_60_U14;
  assign new_SUB_60_U107 = ~new_U628 | ~new_SUB_60_U13;
  assign new_SUB_60_U108 = ~new_SUB_60_U36;
  assign new_SUB_60_U109 = ~new_SUB_60_U55 | ~new_SUB_60_U108;
  assign new_SUB_60_U110 = ~new_SUB_60_U36 | ~new_SUB_60_U44;
  assign new_SUB_60_U111 = ~TEMP_REG_2_ | ~new_SUB_60_U12;
  assign new_SUB_60_U112 = ~new_U627 | ~new_SUB_60_U11;
  assign new_SUB_60_U113 = ~new_SUB_60_U37;
  assign new_SUB_60_U114 = ~new_SUB_60_U51 | ~new_SUB_60_U113;
  assign new_SUB_60_U115 = ~new_SUB_60_U37 | ~new_SUB_60_U45;
  assign new_SUB_60_U116 = ~TEMP_REG_1_ | ~new_SUB_60_U10;
  assign new_SUB_60_U117 = ~new_U626 | ~new_SUB_60_U46;
  assign new_SUB_60_U118 = ~new_SUB_60_U38;
  assign new_SUB_60_U119 = ~new_SUB_60_U118 | ~new_SUB_60_U47;
  assign new_SUB_60_U120 = ~new_SUB_60_U38 | ~new_SUB_60_U9;
  assign new_GT_181_U6 = ~new_U760 & ~new_GT_181_U7;
  assign new_GT_181_U7 = ~new_U762 & ~new_U761 & ~new_GT_181_U8;
  assign new_GT_181_U8 = new_U763 | new_U766 | new_U764 | new_U765 | new_U767;
  assign new_SUB_73_U6 = ~new_SUB_73_U49 | ~new_SUB_73_U53;
  assign new_SUB_73_U7 = ~MAX_REG_6_;
  assign new_SUB_73_U8 = ~new_U630;
  assign new_SUB_73_U9 = ~MAX_REG_1_;
  assign new_SUB_73_U10 = ~new_U626;
  assign new_SUB_73_U11 = ~new_U627;
  assign new_SUB_73_U12 = ~MAX_REG_2_;
  assign new_SUB_73_U13 = ~MAX_REG_3_;
  assign new_SUB_73_U14 = ~new_U629;
  assign new_SUB_73_U15 = ~new_U628;
  assign new_SUB_73_U16 = ~MAX_REG_4_;
  assign new_SUB_73_U17 = ~MAX_REG_5_;
  assign new_SUB_73_U18 = ~new_U631;
  assign new_SUB_73_U19 = ~MAX_REG_7_;
  assign new_SUB_73_U20 = ~new_U632;
  assign new_SUB_73_U21 = ~new_SUB_73_U44 | ~new_SUB_73_U43;
  assign new_SUB_73_U22 = ~MAX_REG_8_;
  assign new_SUB_73_U23 = ~new_U624;
  assign new_SUB_73_U24 = ~new_U625;
  assign new_SUB_73_U25 = ~MAX_REG_6_ | ~new_SUB_73_U18;
  assign new_SUB_73_U26 = ~MAX_REG_1_ | ~new_SUB_73_U10;
  assign new_SUB_73_U27 = ~MAX_REG_0_ | ~new_SUB_73_U24;
  assign new_SUB_73_U28 = ~new_SUB_73_U27 | ~new_SUB_73_U26;
  assign new_SUB_73_U29 = ~new_U626 | ~new_SUB_73_U9;
  assign new_SUB_73_U30 = ~new_U627 | ~new_SUB_73_U12;
  assign new_SUB_73_U31 = ~new_SUB_73_U30 | ~new_SUB_73_U29 | ~new_SUB_73_U28;
  assign new_SUB_73_U32 = ~MAX_REG_2_ | ~new_SUB_73_U11;
  assign new_SUB_73_U33 = ~MAX_REG_3_ | ~new_SUB_73_U15;
  assign new_SUB_73_U34 = ~new_SUB_73_U31 | ~new_SUB_73_U32 | ~new_SUB_73_U33;
  assign new_SUB_73_U35 = ~new_U629 | ~new_SUB_73_U16;
  assign new_SUB_73_U36 = ~new_U628 | ~new_SUB_73_U13;
  assign new_SUB_73_U37 = ~new_SUB_73_U34 | ~new_SUB_73_U35 | ~new_SUB_73_U36;
  assign new_SUB_73_U38 = ~MAX_REG_4_ | ~new_SUB_73_U14;
  assign new_SUB_73_U39 = ~MAX_REG_5_ | ~new_SUB_73_U8;
  assign new_SUB_73_U40 = ~new_SUB_73_U37 | ~new_SUB_73_U38 | ~new_SUB_73_U39;
  assign new_SUB_73_U41 = ~new_U630 | ~new_SUB_73_U17;
  assign new_SUB_73_U42 = ~new_SUB_73_U40 | ~new_SUB_73_U41;
  assign new_SUB_73_U43 = ~new_SUB_73_U42 | ~new_SUB_73_U25;
  assign new_SUB_73_U44 = ~new_U631 | ~new_SUB_73_U7;
  assign new_SUB_73_U45 = ~new_SUB_73_U21;
  assign new_SUB_73_U46 = ~new_U632 | ~new_SUB_73_U19;
  assign new_SUB_73_U47 = ~new_SUB_73_U45 | ~new_SUB_73_U46;
  assign new_SUB_73_U48 = ~MAX_REG_7_ | ~new_SUB_73_U20;
  assign new_SUB_73_U49 = ~new_SUB_73_U47 | ~new_SUB_73_U48 | ~new_SUB_73_U58;
  assign new_SUB_73_U50 = ~MAX_REG_7_ | ~new_SUB_73_U20;
  assign new_SUB_73_U51 = ~new_SUB_73_U50 | ~new_SUB_73_U21;
  assign new_SUB_73_U52 = ~new_U632 | ~new_SUB_73_U19;
  assign new_SUB_73_U53 = ~new_SUB_73_U51 | ~new_SUB_73_U52 | ~new_SUB_73_U55 | ~new_SUB_73_U54;
  assign new_SUB_73_U54 = ~MAX_REG_8_ | ~new_SUB_73_U23;
  assign new_SUB_73_U55 = ~new_U624 | ~new_SUB_73_U22;
  assign new_SUB_73_U56 = ~MAX_REG_8_ | ~new_SUB_73_U23;
  assign new_SUB_73_U57 = ~new_U624 | ~new_SUB_73_U22;
  assign new_SUB_73_U58 = ~new_SUB_73_U57 | ~new_SUB_73_U56;
  assign new_GT_212_U6 = ~new_U588 & ~new_GT_212_U8;
  assign new_GT_212_U7 = new_U747 & new_U748;
  assign new_GT_212_U8 = ~new_U746 & ~new_U588 & ~new_GT_212_U9 & ~new_GT_212_U7;
  assign new_GT_212_U9 = new_U745 | new_U588 | new_U588;
  assign new_GT_108_U6 = ~new_U587 & ~new_GT_108_U8;
  assign new_GT_108_U7 = new_GT_108_U9 & new_U587 & new_U587;
  assign new_GT_108_U8 = ~new_GT_108_U7 & ~new_U587;
  assign new_GT_108_U9 = new_U750 | new_U754 | new_U752;
  assign new_GT_122_U6 = ~new_U633 & ~new_GT_122_U9;
  assign new_GT_122_U7 = new_U755 & new_U757;
  assign new_GT_122_U8 = new_U635 & new_GT_122_U10;
  assign new_GT_122_U9 = ~new_GT_122_U8 & ~new_U634;
  assign new_GT_122_U10 = new_U636 | new_U751 | new_U753 | new_GT_122_U7;
  assign new_GT_169_U6 = ~new_U760 & ~new_GT_169_U8;
  assign new_not_keyinput0 = ~keyinput0;
  assign new_not_keyinput1 = ~keyinput1;
  assign new_not_keyinput2 = ~keyinput2;
  assign new_not_0 = ~Q_0;
  assign new_and_1 = new_not_0 & Q_1;
  assign new_not_2 = ~Q_1;
  assign new_and_3 = Q_0 & new_not_2;
  assign n2059 = new_and_1 | new_and_3;
  assign n2056 = ~Q_0;
  assign new_not_Q_0 = ~Q_0;
  assign new_not_Q_1 = ~Q_1;
  assign new_count_state_1 = new_not_Q_1 & Q_0;
  assign new_count_state_2 = Q_1 & new_not_Q_0;
  assign new_count_state_3 = Q_1 & Q_0;
  assign new_y_mux_key0_and_0 = n82 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U680 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n82 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U680 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n82 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key2_and_1 = new_U680 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n82 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3_and_1 = new_U680 & keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n72 = new_and_mux__state_5 | new_and_mux__state_5_2;
  always @ (posedge clock) begin
    NUM_REG_4_ <= n72;
    NUM_REG_3_ <= n77;
    NUM_REG_2_ <= n82;
    NUM_REG_1_ <= n87;
    NUM_REG_0_ <= n92;
    MAR_REG_4_ <= n97;
    MAR_REG_3_ <= n102;
    MAR_REG_2_ <= n107;
    MAR_REG_1_ <= n112;
    MAR_REG_0_ <= n117;
    TEMP_REG_8_ <= n122;
    TEMP_REG_7_ <= n127;
    TEMP_REG_6_ <= n132;
    TEMP_REG_5_ <= n137;
    TEMP_REG_4_ <= n142;
    TEMP_REG_3_ <= n147;
    TEMP_REG_2_ <= n152;
    TEMP_REG_1_ <= n157;
    TEMP_REG_0_ <= n162;
    MAX_REG_8_ <= n167;
    MAX_REG_7_ <= n172;
    MAX_REG_6_ <= n177;
    MAX_REG_5_ <= n182;
    MAX_REG_4_ <= n187;
    MAX_REG_3_ <= n192;
    MAX_REG_2_ <= n197;
    MAX_REG_1_ <= n202;
    MAX_REG_0_ <= n207;
    EN_DISP_REG <= n212;
    RES_DISP_REG <= n217;
    FLAG_REG <= n222;
    STATO_REG_0_ <= n227;
    STATO_REG_1_ <= n232;
    STATO_REG_2_ <= n237;
    Q_0 <= n2056;
    Q_1 <= n2059;
  end
endmodule
