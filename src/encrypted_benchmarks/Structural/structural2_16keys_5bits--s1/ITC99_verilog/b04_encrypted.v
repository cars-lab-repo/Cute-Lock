// Benchmark "./test_runs/structural2_16keys_5bits--s-120240927_165426/ITC99/b04_encrypted" written by ABC on Fri Sep 27 18:23:41 2024

module b04_encrypted  ( clock, 
    RESTART, AVERAGE, ENABLE, DATA_IN_7_, DATA_IN_6_, DATA_IN_5_,
    DATA_IN_4_, DATA_IN_3_, DATA_IN_2_, DATA_IN_1_, DATA_IN_0_, keyinput0,
    keyinput1, keyinput2, keyinput3, keyinput4,
    DATA_OUT_REG_7_, DATA_OUT_REG_6_, DATA_OUT_REG_5_, DATA_OUT_REG_4_,
    DATA_OUT_REG_3_, DATA_OUT_REG_2_, DATA_OUT_REG_1_, DATA_OUT_REG_0_  );
  input  clock;
  input  RESTART, AVERAGE, ENABLE, DATA_IN_7_, DATA_IN_6_, DATA_IN_5_,
    DATA_IN_4_, DATA_IN_3_, DATA_IN_2_, DATA_IN_1_, DATA_IN_0_, keyinput0,
    keyinput1, keyinput2, keyinput3, keyinput4;
  output DATA_OUT_REG_7_, DATA_OUT_REG_6_, DATA_OUT_REG_5_, DATA_OUT_REG_4_,
    DATA_OUT_REG_3_, DATA_OUT_REG_2_, DATA_OUT_REG_1_, DATA_OUT_REG_0_;
  reg RMAX_REG_7_, RMAX_REG_6_, RMAX_REG_5_, RMAX_REG_4_, RMAX_REG_3_,
    RMAX_REG_2_, RMAX_REG_1_, RMAX_REG_0_, RMIN_REG_7_, RMIN_REG_6_,
    RMIN_REG_5_, RMIN_REG_4_, RMIN_REG_3_, RMIN_REG_2_, RMIN_REG_1_,
    RMIN_REG_0_, RLAST_REG_7_, RLAST_REG_6_, RLAST_REG_5_, RLAST_REG_4_,
    RLAST_REG_3_, RLAST_REG_2_, RLAST_REG_1_, RLAST_REG_0_, REG1_REG_7_,
    REG1_REG_6_, REG1_REG_5_, REG1_REG_4_, REG1_REG_3_, REG1_REG_2_,
    REG1_REG_1_, REG1_REG_0_, REG2_REG_7_, REG2_REG_6_, REG2_REG_5_,
    REG2_REG_4_, REG2_REG_3_, REG2_REG_2_, REG2_REG_1_, REG2_REG_0_,
    REG3_REG_7_, REG3_REG_6_, REG3_REG_5_, REG3_REG_4_, REG3_REG_3_,
    REG3_REG_2_, REG3_REG_1_, REG3_REG_0_, REG4_REG_7_, REG4_REG_6_,
    REG4_REG_5_, REG4_REG_4_, REG4_REG_3_, REG4_REG_2_, REG4_REG_1_,
    REG4_REG_0_, DATA_OUT_REG_7_, DATA_OUT_REG_6_, DATA_OUT_REG_5_,
    DATA_OUT_REG_4_, DATA_OUT_REG_3_, DATA_OUT_REG_2_, DATA_OUT_REG_1_,
    DATA_OUT_REG_0_, STATO_REG_1_, STATO_REG_0_, Q_0, Q_1, Q_2, Q_3;
  wire new_SUB_70_U35, new_SUB_70_U34, new_U272, new_U273, new_U274,
    new_U275, new_U276, new_U277, new_U278, new_U279, new_U344, new_U345,
    new_U346, new_U347, new_U348, new_U349, new_U350, new_U351, new_U352,
    new_U353, new_U354, new_U355, new_U356, new_U357, new_U358, new_U359,
    new_U360, new_U361, new_U362, new_U363, new_U364, new_U365, new_U366,
    new_U367, new_U368, new_U369, new_U370, new_U371, new_U372, new_U373,
    new_U374, new_U376, new_U377, new_U378, new_U379, new_U380, new_U381,
    new_U382, new_U383, new_U384, new_U385, new_U386, new_U387, new_U388,
    new_U389, new_U390, new_U391, new_U392, new_U393, new_U394, new_U395,
    new_U396, new_U397, new_U398, new_U399, new_U400, new_U401, new_U402,
    new_U403, new_U404, new_U405, new_U406, new_U407, new_U408, new_U409,
    new_U410, new_U411, new_U412, new_U413, new_U414, new_U415, new_U416,
    new_U417, new_U418, new_U419, new_U420, new_U421, new_U422, new_U423,
    new_U424, new_U425, new_U426, new_U427, new_U428, new_U429, new_U430,
    new_U431, new_U432, new_U433, new_U434, new_U435, new_U436, new_U437,
    new_U438, new_U439, new_U440, new_U441, new_U442, new_U443, new_U444,
    new_U445, new_U446, new_U447, new_U448, new_U449, new_U450, new_U451,
    new_U452, new_U453, new_U454, new_U455, new_U456, new_U457, new_U458,
    new_U459, new_U460, new_U461, new_U462, new_U463, new_U464, new_U465,
    new_U466, new_U467, new_U468, new_U469, new_U470, new_U471, new_U472,
    new_U473, new_U474, new_U475, new_U476, new_U477, new_U478, new_U479,
    new_U480, new_U481, new_U482, new_U483, new_U484, new_U485, new_U486,
    new_U487, new_U488, new_U489, new_U490, new_U491, new_U492, new_U493,
    new_U494, new_U495, new_U496, new_U497, new_U498, new_U499, new_U500,
    new_U501, new_U502, new_U503, new_U504, new_U505, new_U506, new_U507,
    new_U508, new_U509, new_U510, new_U511, new_U512, new_U513, new_U514,
    new_U515, new_U516, new_U517, new_U518, new_U519, new_U520, new_U521,
    new_U522, new_U523, new_U524, new_U525, new_U526, new_U527, new_U528,
    new_U529, new_U530, new_U531, new_U532, new_U533, new_U534, new_U535,
    new_U536, new_U537, new_U538, new_U539, new_U540, new_U541, new_U542,
    new_U543, new_U544, new_U545, new_U546, new_U547, new_U548, new_U549,
    new_U550, new_U551, new_U552, new_U553, new_U554, new_U555, new_U556,
    new_U557, new_U558, new_U559, new_U560, new_U561, new_U562, new_U563,
    new_U564, new_U565, new_U566, new_U567, new_U568, new_U569, new_U570,
    new_U571, new_U572, new_U573, new_U574, new_U575, new_U576, new_U577,
    new_U578, new_SUB_70_U33, new_SUB_70_U32, new_SUB_70_U31,
    new_SUB_70_U30, new_SUB_70_U29, new_SUB_70_U28, new_SUB_70_U27,
    new_SUB_70_U26, new_SUB_70_U25, new_SUB_70_U24, new_SUB_70_U23,
    new_GTE_67_U6, new_SUB_82_U6, new_SUB_82_U7, new_SUB_82_U8,
    new_SUB_82_U9, new_SUB_82_U10, new_SUB_82_U11, new_SUB_82_U12,
    new_SUB_82_U13, new_SUB_82_U14, new_SUB_82_U15, new_SUB_82_U16,
    new_SUB_82_U17, new_SUB_82_U18, new_SUB_82_U19, new_SUB_82_U20,
    new_SUB_82_U21, new_SUB_82_U22, new_SUB_82_U23, new_SUB_82_U24,
    new_SUB_82_U25, new_SUB_82_U26, new_SUB_82_U27, new_SUB_82_U28,
    new_SUB_82_U29, new_SUB_82_U30, new_SUB_82_U31, new_SUB_82_U32,
    new_SUB_82_U33, new_SUB_82_U34, new_SUB_82_U35, new_ADD_65_U4,
    new_ADD_65_U5, new_ADD_65_U6, new_ADD_65_U7, new_ADD_65_U8,
    new_ADD_65_U9, new_ADD_65_U10, new_ADD_65_U11, new_ADD_65_U12,
    new_ADD_65_U13, new_ADD_65_U14, new_ADD_65_U15, new_ADD_65_U16,
    new_ADD_65_U17, new_ADD_65_U18, new_ADD_65_U19, new_ADD_65_U20,
    new_ADD_65_U21, new_ADD_65_U22, new_ADD_65_U23, new_ADD_65_U24,
    new_ADD_65_U25, new_ADD_65_U26, new_ADD_65_U27, new_ADD_65_U28,
    new_ADD_65_U29, new_ADD_65_U30, new_ADD_65_U31, new_ADD_77_U4,
    new_ADD_77_U5, new_ADD_77_U6, new_ADD_77_U7, new_ADD_77_U8,
    new_ADD_77_U9, new_ADD_77_U10, new_ADD_77_U11, new_ADD_77_U12,
    new_ADD_77_U13, new_ADD_77_U14, new_ADD_77_U15, new_ADD_77_U16,
    new_ADD_77_U17, new_ADD_77_U18, new_ADD_77_U19, new_ADD_77_U20,
    new_ADD_77_U21, new_ADD_77_U22, new_ADD_77_U23, new_ADD_77_U24,
    new_ADD_77_U25, new_ADD_77_U26, new_ADD_77_U27, new_ADD_77_U28,
    new_ADD_77_U29, new_ADD_77_U30, new_ADD_77_U31, new_SUB_70_166_U6,
    new_SUB_70_166_U7, new_SUB_70_166_U8, new_SUB_70_166_U9,
    new_SUB_70_166_U10, new_SUB_70_166_U11, new_SUB_70_166_U12,
    new_SUB_70_166_U13, new_SUB_70_166_U14, new_SUB_70_166_U15,
    new_SUB_70_166_U16, new_SUB_70_166_U17, new_SUB_70_166_U18,
    new_SUB_70_166_U19, new_SUB_70_166_U20, new_SUB_70_166_U21,
    new_SUB_70_166_U22, new_SUB_70_166_U23, new_SUB_70_166_U24,
    new_SUB_70_166_U25, new_SUB_70_166_U26, new_SUB_70_166_U27,
    new_SUB_70_166_U28, new_SUB_70_166_U29, new_SUB_70_166_U30,
    new_SUB_70_166_U31, new_SUB_70_166_U32, new_SUB_70_166_U33,
    new_SUB_70_166_U34, new_SUB_70_166_U35, new_LT_90_U6, new_LT_90_U7,
    new_LT_90_U8, new_LT_90_U9, new_LT_90_U10, new_LT_90_U11,
    new_LT_90_U12, new_LT_90_U13, new_LT_90_U14, new_LT_90_U15,
    new_LT_90_U16, new_LT_90_U17, new_LT_90_U18, new_LT_90_U19,
    new_LT_90_U20, new_LT_90_U21, new_LT_90_U22, new_LT_90_U23,
    new_LT_90_U24, new_LT_90_U25, new_LT_90_U26, new_LT_90_U27,
    new_LT_90_U28, new_LT_90_U29, new_LT_90_U30, new_LT_90_U31,
    new_LT_90_U32, new_LT_90_U33, new_LT_90_U34, new_LT_90_U35,
    new_LT_90_U36, new_LT_90_U37, new_LT_90_U38, new_LT_90_U39,
    new_LT_90_U40, new_LT_90_U41, new_LT_90_U42, new_GT_88_U6,
    new_GT_88_U7, new_GT_88_U8, new_GT_88_U9, new_GT_88_U10, new_GT_88_U11,
    new_GT_88_U12, new_GT_88_U13, new_GT_88_U14, new_GT_88_U15,
    new_GT_88_U16, new_GT_88_U17, new_GT_88_U18, new_GT_88_U19,
    new_GT_88_U20, new_GT_88_U21, new_GT_88_U22, new_GT_88_U23,
    new_GT_88_U24, new_GT_88_U25, new_GT_88_U26, new_GT_88_U27,
    new_GT_88_U28, new_GT_88_U29, new_GT_88_U30, new_GT_88_U31,
    new_GT_88_U32, new_GT_88_U33, new_GT_88_U34, new_GT_88_U35,
    new_GT_88_U36, new_GT_88_U37, new_GT_88_U38, new_GT_88_U39,
    new_GT_88_U40, new_GT_88_U41, new_GT_88_U42, new_SUB_82_165_U6,
    new_SUB_82_165_U7, new_SUB_82_165_U8, new_SUB_82_165_U9,
    new_SUB_82_165_U10, new_SUB_82_165_U11, new_SUB_82_165_U12,
    new_SUB_82_165_U13, new_SUB_82_165_U14, new_SUB_82_165_U15,
    new_SUB_82_165_U16, new_SUB_82_165_U17, new_SUB_82_165_U18,
    new_SUB_82_165_U19, new_SUB_82_165_U20, new_SUB_82_165_U21,
    new_SUB_82_165_U22, new_SUB_82_165_U23, new_SUB_82_165_U24,
    new_SUB_82_165_U25, new_SUB_82_165_U26, new_SUB_82_165_U27,
    new_SUB_82_165_U28, new_SUB_82_165_U29, new_SUB_82_165_U30,
    new_SUB_82_165_U31, new_SUB_82_165_U32, new_SUB_82_165_U33,
    new_SUB_82_165_U34, new_SUB_82_165_U35, new_GTE_79_U6, new_R179_U4,
    new_R179_U5, new_R179_U6, new_R179_U7, new_R179_U8, new_R179_U9,
    new_R179_U10, new_R179_U11, new_R179_U12, new_R179_U13, new_R179_U14,
    new_R179_U15, new_R179_U16, new_R179_U17, new_R179_U18, new_R179_U19,
    new_R179_U20, new_R179_U21, new_R179_U22, new_R179_U23, new_R179_U24,
    new_R179_U25, new_R179_U26, new_R179_U27, new_R179_U28, new_R179_U29,
    new_R179_U30, new_R179_U31, new_R179_U32, new_R179_U33, new_R179_U34,
    new_R179_U35, new_R179_U36, new_R179_U37, new_R179_U38, new_R179_U39,
    new_R179_U40, new_R179_U41, new_R179_U42, new_R179_U43, new_R179_U44,
    new_R179_U45, new_R179_U46, new_R179_U47, new_R179_U48, new_R179_U49,
    new_R179_U50, new_R179_U51, new_R179_U52, new_R179_U53, new_R179_U54,
    new_R179_U55, new_R179_U56, new_R179_U57, new_R179_U58, new_R179_U59,
    new_R179_U60, new_R179_U61, new_R179_U62, new_R179_U63, new_R179_U64,
    new_R179_U65, new_R179_U66, new_R179_U67, new_R179_U68, new_R179_U69,
    new_R179_U70, new_R179_U71, new_R179_U72, new_R179_U73, new_R179_U74,
    new_R179_U75, new_R179_U76, new_R179_U77, new_R179_U78, new_R179_U79,
    new_R179_U80, new_R179_U81, new_R179_U82, new_R179_U83, new_R179_U84,
    new_R179_U85, new_R179_U86, new_R179_U87, new_R179_U88, new_R179_U89,
    new_R179_U90, new_R179_U91, new_R179_U92, new_R179_U93, new_R179_U94,
    new_R179_U95, new_R179_U96, new_SUB_70_U6, new_SUB_70_U7,
    new_SUB_70_U8, new_SUB_70_U9, new_SUB_70_U10, new_SUB_70_U11,
    new_SUB_70_U12, new_SUB_70_U13, new_SUB_70_U14, new_SUB_70_U15,
    new_SUB_70_U16, new_SUB_70_U17, new_SUB_70_U18, new_SUB_70_U19,
    new_SUB_70_U20, new_SUB_70_U21, new_SUB_70_U22, new_not_keyinput0,
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
    new_I1__state_29, new_and_mux__state_29, new_and_mux__state_29_2, n50,
    n55, n60, n65, n70, n75, n80, n85, n90, n95, n100, n105, n110, n115,
    n120, n125, n130, n135, n140, n145, n150, n155, n160, n165, n170, n175,
    n180, n185, n190, n195, n200, n205, n210, n215, n220, n225, n230, n235,
    n240, n245, n250, n255, n260, n265, n270, n275, n280, n285, n290, n295,
    n300, n305, n310, n315, n320, n325, n330, n334, n338, n342, n346, n350,
    n354, n358, n362, n367, n1668, n1671, n1674, n1677;
  assign new_SUB_70_U35 = ~new_R179_U20 | ~new_SUB_70_U20;
  assign new_SUB_70_U34 = ~new_R179_U5 | ~new_SUB_70_U21;
  assign new_U272 = new_U279 & new_U351;
  assign new_U273 = new_U352 & new_U349 & ENABLE & new_U272;
  assign new_U274 = new_U373 & new_U279 & RESTART;
  assign new_U275 = new_U272 & AVERAGE & ENABLE;
  assign new_U276 = new_U279 & new_U550 & new_U549;
  assign new_U277 = new_U272 & new_U350;
  assign new_U278 = STATO_REG_1_ & new_U420;
  assign new_U279 = STATO_REG_1_ & n362;
  assign n362 = ~new_U348 | ~new_U377;
  assign n358 = ~new_U543 | ~new_U372 | ~new_U547 | ~new_U546 | ~new_U545;
  assign n354 = ~new_U537 | ~new_U371 | ~new_U541 | ~new_U540 | ~new_U539;
  assign n350 = ~new_U531 | ~new_U370 | ~new_U535 | ~new_U534 | ~new_U533;
  assign n346 = ~new_U369 | ~new_U529 | ~new_U528 | ~new_U527;
  assign n342 = ~new_U368 | ~new_U522 | ~new_U521;
  assign n338 = ~new_U367 | ~new_U516 | ~new_U515;
  assign n334 = ~new_U510 | ~new_U511 | ~new_U509 | ~new_U508 | ~new_U507;
  assign n330 = ~new_U505 | ~new_U506 | ~new_U504 | ~new_U503 | ~new_U502;
  assign n325 = ~new_U501 | ~new_U500;
  assign n320 = ~new_U499 | ~new_U498;
  assign n315 = ~new_U497 | ~new_U496;
  assign n310 = ~new_U495 | ~new_U494;
  assign n305 = ~new_U493 | ~new_U492;
  assign n300 = ~new_U491 | ~new_U490;
  assign n295 = ~new_U489 | ~new_U488;
  assign n290 = ~new_U487 | ~new_U486;
  assign n285 = ~new_U485 | ~new_U484;
  assign n280 = ~new_U483 | ~new_U482;
  assign n275 = ~new_U481 | ~new_U480;
  assign n270 = ~new_U479 | ~new_U478;
  assign n265 = ~new_U477 | ~new_U476;
  assign n260 = ~new_U475 | ~new_U474;
  assign n255 = ~new_U473 | ~new_U472;
  assign n250 = ~new_U471 | ~new_U470;
  assign n245 = ~new_U469 | ~new_U468;
  assign n240 = ~new_U467 | ~new_U466;
  assign n235 = ~new_U465 | ~new_U464;
  assign n230 = ~new_U463 | ~new_U462;
  assign n225 = ~new_U461 | ~new_U460;
  assign n220 = ~new_U459 | ~new_U458;
  assign n215 = ~new_U457 | ~new_U456;
  assign n210 = ~new_U455 | ~new_U454;
  assign n205 = ~new_U453 | ~new_U452;
  assign n200 = ~new_U451 | ~new_U450;
  assign n195 = ~new_U449 | ~new_U448;
  assign n190 = ~new_U447 | ~new_U446;
  assign n185 = ~new_U445 | ~new_U444;
  assign n180 = ~new_U443 | ~new_U442;
  assign n175 = ~new_U441 | ~new_U440;
  assign n170 = ~new_U439 | ~new_U438;
  assign n165 = ~new_U437 | ~new_U436;
  assign n160 = ~new_U435 | ~new_U434;
  assign n155 = ~new_U433 | ~new_U432;
  assign n150 = ~new_U431 | ~new_U430;
  assign n145 = ~new_U429 | ~new_U428;
  assign n140 = ~new_U427 | ~new_U426;
  assign n135 = ~new_U425 | ~new_U424;
  assign n130 = ~new_U423 | ~new_U422;
  assign n125 = ~new_U419 | ~new_U418;
  assign n120 = ~new_U417 | ~new_U416;
  assign n115 = ~new_U415 | ~new_U414;
  assign n110 = ~new_U413 | ~new_U412;
  assign n105 = ~new_U411 | ~new_U410;
  assign n100 = ~new_U409 | ~new_U408;
  assign n95 = ~new_U407 | ~new_U406;
  assign n90 = ~new_U405 | ~new_U404;
  assign n85 = ~new_U398 | ~new_U397;
  assign n80 = ~new_U396 | ~new_U395;
  assign n75 = ~new_U394 | ~new_U393;
  assign n70 = ~new_U392 | ~new_U391;
  assign n65 = ~new_U390 | ~new_U389;
  assign n60 = ~new_U388 | ~new_U387;
  assign n55 = ~new_U386 | ~new_U385;
  assign new_U344 = ~new_U384 | ~new_U383;
  assign new_U345 = ~STATO_REG_0_;
  assign new_U346 = ~STATO_REG_1_;
  assign new_U347 = ~new_GT_88_U6;
  assign new_U348 = ~STATO_REG_1_ | ~new_U345;
  assign new_U349 = ~AVERAGE;
  assign new_U350 = ~ENABLE;
  assign new_U351 = ~RESTART;
  assign new_U352 = ~new_GTE_79_U6;
  assign new_U353 = ~new_U552 | ~new_U551;
  assign new_U354 = ~new_U554 | ~new_U553;
  assign new_U355 = ~new_U556 | ~new_U555;
  assign new_U356 = ~new_U558 | ~new_U557;
  assign new_U357 = ~new_U560 | ~new_U559;
  assign new_U358 = ~new_U562 | ~new_U561;
  assign new_U359 = ~new_U564 | ~new_U563;
  assign new_U360 = ~new_U566 | ~new_U565;
  assign new_U361 = ~new_U568 | ~new_U567;
  assign new_U362 = ~new_U570 | ~new_U569;
  assign new_U363 = ~new_U572 | ~new_U571;
  assign new_U364 = ~new_U574 | ~new_U573;
  assign new_U365 = ~new_U576 | ~new_U575;
  assign new_U366 = ~new_U578 | ~new_U577;
  assign new_U367 = new_U517 & new_U513 & new_U514 & new_U512;
  assign new_U368 = new_U523 & new_U519 & new_U520 & new_U518;
  assign new_U369 = new_U525 & new_U526 & new_U524;
  assign new_U370 = new_U532 & new_U530;
  assign new_U371 = new_U538 & new_U536;
  assign new_U372 = new_U544 & new_U542;
  assign new_U373 = ~new_GTE_67_U6;
  assign new_U374 = STATO_REG_1_ | STATO_REG_0_;
  assign n367 = ~new_U374;
  assign new_U376 = ~new_U348;
  assign new_U377 = ~STATO_REG_0_ | ~new_U346;
  assign new_U378 = ~n362;
  assign new_U379 = ~new_GT_88_U6 | ~STATO_REG_1_;
  assign new_U380 = ~new_U345 | ~new_U379;
  assign new_U381 = STATO_REG_0_ | new_GT_88_U6;
  assign new_U382 = ~new_U374 | ~new_U381;
  assign new_U383 = ~RMAX_REG_7_ | ~new_U382;
  assign new_U384 = ~DATA_IN_7_ | ~new_U380;
  assign new_U385 = ~RMAX_REG_6_ | ~new_U382;
  assign new_U386 = ~DATA_IN_6_ | ~new_U380;
  assign new_U387 = ~RMAX_REG_5_ | ~new_U382;
  assign new_U388 = ~DATA_IN_5_ | ~new_U380;
  assign new_U389 = ~RMAX_REG_4_ | ~new_U382;
  assign new_U390 = ~DATA_IN_4_ | ~new_U380;
  assign new_U391 = ~RMAX_REG_3_ | ~new_U382;
  assign new_U392 = ~DATA_IN_3_ | ~new_U380;
  assign new_U393 = ~RMAX_REG_2_ | ~new_U382;
  assign new_U394 = ~DATA_IN_2_ | ~new_U380;
  assign new_U395 = ~RMAX_REG_1_ | ~new_U382;
  assign new_U396 = ~DATA_IN_1_ | ~new_U380;
  assign new_U397 = ~RMAX_REG_0_ | ~new_U382;
  assign new_U398 = ~DATA_IN_0_ | ~new_U380;
  assign new_U399 = ~new_LT_90_U6 | ~new_U347;
  assign new_U400 = ~new_U399 | ~new_U345;
  assign new_U401 = ~new_U374 | ~new_U400;
  assign new_U402 = ~new_LT_90_U6 | ~STATO_REG_1_ | ~new_U347;
  assign new_U403 = ~new_U345 | ~new_U402;
  assign new_U404 = ~DATA_IN_7_ | ~new_U403;
  assign new_U405 = ~RMIN_REG_7_ | ~new_U401;
  assign new_U406 = ~DATA_IN_6_ | ~new_U403;
  assign new_U407 = ~RMIN_REG_6_ | ~new_U401;
  assign new_U408 = ~DATA_IN_5_ | ~new_U403;
  assign new_U409 = ~RMIN_REG_5_ | ~new_U401;
  assign new_U410 = ~DATA_IN_4_ | ~new_U403;
  assign new_U411 = ~RMIN_REG_4_ | ~new_U401;
  assign new_U412 = ~DATA_IN_3_ | ~new_U403;
  assign new_U413 = ~RMIN_REG_3_ | ~new_U401;
  assign new_U414 = ~DATA_IN_2_ | ~new_U403;
  assign new_U415 = ~RMIN_REG_2_ | ~new_U401;
  assign new_U416 = ~DATA_IN_1_ | ~new_U403;
  assign new_U417 = ~RMIN_REG_1_ | ~new_U401;
  assign new_U418 = ~DATA_IN_0_ | ~new_U403;
  assign new_U419 = ~RMIN_REG_0_ | ~new_U401;
  assign new_U420 = STATO_REG_0_ | ENABLE;
  assign new_U421 = ~new_U374 | ~new_U420;
  assign new_U422 = ~new_U278 | ~DATA_IN_7_;
  assign new_U423 = ~RLAST_REG_7_ | ~new_U421;
  assign new_U424 = ~new_U278 | ~DATA_IN_6_;
  assign new_U425 = ~RLAST_REG_6_ | ~new_U421;
  assign new_U426 = ~new_U278 | ~DATA_IN_5_;
  assign new_U427 = ~RLAST_REG_5_ | ~new_U421;
  assign new_U428 = ~new_U278 | ~DATA_IN_4_;
  assign new_U429 = ~RLAST_REG_4_ | ~new_U421;
  assign new_U430 = ~new_U278 | ~DATA_IN_3_;
  assign new_U431 = ~RLAST_REG_3_ | ~new_U421;
  assign new_U432 = ~new_U278 | ~DATA_IN_2_;
  assign new_U433 = ~RLAST_REG_2_ | ~new_U421;
  assign new_U434 = ~new_U278 | ~DATA_IN_1_;
  assign new_U435 = ~RLAST_REG_1_ | ~new_U421;
  assign new_U436 = ~new_U278 | ~DATA_IN_0_;
  assign new_U437 = ~RLAST_REG_0_ | ~new_U421;
  assign new_U438 = ~new_U376 | ~DATA_IN_7_;
  assign new_U439 = ~REG1_REG_7_ | ~new_U378;
  assign new_U440 = ~new_U376 | ~DATA_IN_6_;
  assign new_U441 = ~REG1_REG_6_ | ~new_U378;
  assign new_U442 = ~new_U376 | ~DATA_IN_5_;
  assign new_U443 = ~REG1_REG_5_ | ~new_U378;
  assign new_U444 = ~new_U376 | ~DATA_IN_4_;
  assign new_U445 = ~REG1_REG_4_ | ~new_U378;
  assign new_U446 = ~new_U376 | ~DATA_IN_3_;
  assign new_U447 = ~REG1_REG_3_ | ~new_U378;
  assign new_U448 = ~new_U376 | ~DATA_IN_2_;
  assign new_U449 = ~REG1_REG_2_ | ~new_U378;
  assign new_U450 = ~new_U376 | ~DATA_IN_1_;
  assign new_U451 = ~REG1_REG_1_ | ~new_U378;
  assign new_U452 = ~new_U376 | ~DATA_IN_0_;
  assign new_U453 = ~REG1_REG_0_ | ~new_U378;
  assign new_U454 = ~REG1_REG_7_ | ~new_U376;
  assign new_U455 = ~REG2_REG_7_ | ~new_U378;
  assign new_U456 = ~REG1_REG_6_ | ~new_U376;
  assign new_U457 = ~REG2_REG_6_ | ~new_U378;
  assign new_U458 = ~REG1_REG_5_ | ~new_U376;
  assign new_U459 = ~REG2_REG_5_ | ~new_U378;
  assign new_U460 = ~REG1_REG_4_ | ~new_U376;
  assign new_U461 = ~REG2_REG_4_ | ~new_U378;
  assign new_U462 = ~REG1_REG_3_ | ~new_U376;
  assign new_U463 = ~REG2_REG_3_ | ~new_U378;
  assign new_U464 = ~REG1_REG_2_ | ~new_U376;
  assign new_U465 = ~REG2_REG_2_ | ~new_U378;
  assign new_U466 = ~REG1_REG_1_ | ~new_U376;
  assign new_U467 = ~REG2_REG_1_ | ~new_U378;
  assign new_U468 = ~REG1_REG_0_ | ~new_U376;
  assign new_U469 = ~REG2_REG_0_ | ~new_U378;
  assign new_U470 = ~REG2_REG_7_ | ~new_U376;
  assign new_U471 = ~REG3_REG_7_ | ~new_U378;
  assign new_U472 = ~REG2_REG_6_ | ~new_U376;
  assign new_U473 = ~REG3_REG_6_ | ~new_U378;
  assign new_U474 = ~REG2_REG_5_ | ~new_U376;
  assign new_U475 = ~REG3_REG_5_ | ~new_U378;
  assign new_U476 = ~REG2_REG_4_ | ~new_U376;
  assign new_U477 = ~REG3_REG_4_ | ~new_U378;
  assign new_U478 = ~REG2_REG_3_ | ~new_U376;
  assign new_U479 = ~REG3_REG_3_ | ~new_U378;
  assign new_U480 = ~REG2_REG_2_ | ~new_U376;
  assign new_U481 = ~REG3_REG_2_ | ~new_U378;
  assign new_U482 = ~REG2_REG_1_ | ~new_U376;
  assign new_U483 = ~REG3_REG_1_ | ~new_U378;
  assign new_U484 = ~REG2_REG_0_ | ~new_U376;
  assign new_U485 = ~REG3_REG_0_ | ~new_U378;
  assign new_U486 = ~REG3_REG_7_ | ~new_U376;
  assign new_U487 = ~REG4_REG_7_ | ~new_U378;
  assign new_U488 = ~REG3_REG_6_ | ~new_U376;
  assign new_U489 = ~REG4_REG_6_ | ~new_U378;
  assign new_U490 = ~REG3_REG_5_ | ~new_U376;
  assign new_U491 = ~REG4_REG_5_ | ~new_U378;
  assign new_U492 = ~REG3_REG_4_ | ~new_U376;
  assign new_U493 = ~REG4_REG_4_ | ~new_U378;
  assign new_U494 = ~REG3_REG_3_ | ~new_U376;
  assign new_U495 = ~REG4_REG_3_ | ~new_U378;
  assign new_U496 = ~REG3_REG_2_ | ~new_U376;
  assign new_U497 = ~REG4_REG_2_ | ~new_U378;
  assign new_U498 = ~REG3_REG_1_ | ~new_U376;
  assign new_U499 = ~REG4_REG_1_ | ~new_U378;
  assign new_U500 = ~REG3_REG_0_ | ~new_U376;
  assign new_U501 = ~REG4_REG_0_ | ~new_U378;
  assign new_U502 = ~new_U277 | ~RLAST_REG_7_;
  assign new_U503 = ~new_U275 | ~REG4_REG_7_;
  assign new_U504 = ~new_SUB_70_166_U22 | ~new_U274;
  assign new_U505 = ~new_SUB_82_165_U22 | ~new_U273;
  assign new_U506 = ~DATA_OUT_REG_7_ | ~new_U378;
  assign new_U507 = ~new_U277 | ~RLAST_REG_6_;
  assign new_U508 = ~new_U275 | ~REG4_REG_6_;
  assign new_U509 = ~new_SUB_70_166_U9 | ~new_U274;
  assign new_U510 = ~new_SUB_82_165_U9 | ~new_U273;
  assign new_U511 = ~DATA_OUT_REG_6_ | ~new_U378;
  assign new_U512 = ~new_U277 | ~RLAST_REG_5_;
  assign new_U513 = ~new_R179_U4 | ~new_U276;
  assign new_U514 = ~new_U275 | ~REG4_REG_5_;
  assign new_U515 = ~new_SUB_70_166_U8 | ~new_U274;
  assign new_U516 = ~new_SUB_82_165_U8 | ~new_U273;
  assign new_U517 = ~DATA_OUT_REG_5_ | ~new_U378;
  assign new_U518 = ~new_U277 | ~RLAST_REG_4_;
  assign new_U519 = ~new_R179_U21 | ~new_U276;
  assign new_U520 = ~new_U275 | ~REG4_REG_4_;
  assign new_U521 = ~new_SUB_70_166_U7 | ~new_U274;
  assign new_U522 = ~new_SUB_82_165_U7 | ~new_U273;
  assign new_U523 = ~DATA_OUT_REG_4_ | ~new_U378;
  assign new_U524 = ~new_U277 | ~RLAST_REG_3_;
  assign new_U525 = ~new_R179_U22 | ~new_U276;
  assign new_U526 = ~new_U275 | ~REG4_REG_3_;
  assign new_U527 = ~new_SUB_70_166_U18 | ~new_U274;
  assign new_U528 = ~new_SUB_82_165_U18 | ~new_U273;
  assign new_U529 = ~DATA_OUT_REG_3_ | ~new_U378;
  assign new_U530 = ~new_U277 | ~RLAST_REG_2_;
  assign new_U531 = ~new_R179_U23 | ~new_U276;
  assign new_U532 = ~new_U275 | ~REG4_REG_2_;
  assign new_U533 = ~new_SUB_70_166_U6 | ~new_U274;
  assign new_U534 = ~new_SUB_82_165_U6 | ~new_U273;
  assign new_U535 = ~DATA_OUT_REG_2_ | ~new_U378;
  assign new_U536 = ~new_U277 | ~RLAST_REG_1_;
  assign new_U537 = ~new_R179_U24 | ~new_U276;
  assign new_U538 = ~new_U275 | ~REG4_REG_1_;
  assign new_U539 = ~new_SUB_70_166_U16 | ~new_U274;
  assign new_U540 = ~new_SUB_82_165_U16 | ~new_U273;
  assign new_U541 = ~DATA_OUT_REG_1_ | ~new_U378;
  assign new_U542 = ~new_U277 | ~RLAST_REG_0_;
  assign new_U543 = ~new_R179_U5 | ~new_U276;
  assign new_U544 = ~new_U275 | ~REG4_REG_0_;
  assign new_U545 = ~new_SUB_70_U15 | ~new_U274;
  assign new_U546 = ~new_SUB_82_U15 | ~new_U273;
  assign new_U547 = ~DATA_OUT_REG_0_ | ~new_U378;
  assign new_U548 = ~new_GTE_79_U6 | ~ENABLE | ~new_U349;
  assign new_U549 = ~RESTART | ~new_U373;
  assign new_U550 = ~new_U548 | ~new_U351;
  assign new_U551 = ~DATA_IN_6_ | ~new_U351;
  assign new_U552 = ~RESTART | ~RMAX_REG_6_;
  assign new_U553 = ~DATA_IN_5_ | ~new_U351;
  assign new_U554 = ~RESTART | ~RMAX_REG_5_;
  assign new_U555 = ~DATA_IN_4_ | ~new_U351;
  assign new_U556 = ~RESTART | ~RMAX_REG_4_;
  assign new_U557 = ~DATA_IN_3_ | ~new_U351;
  assign new_U558 = ~RESTART | ~RMAX_REG_3_;
  assign new_U559 = ~DATA_IN_2_ | ~new_U351;
  assign new_U560 = ~RESTART | ~RMAX_REG_2_;
  assign new_U561 = ~DATA_IN_1_ | ~new_U351;
  assign new_U562 = ~RESTART | ~RMAX_REG_1_;
  assign new_U563 = ~DATA_IN_0_ | ~new_U351;
  assign new_U564 = ~RESTART | ~RMAX_REG_0_;
  assign new_U565 = ~REG4_REG_6_ | ~new_U351;
  assign new_U566 = ~RESTART | ~RMIN_REG_6_;
  assign new_U567 = ~REG4_REG_5_ | ~new_U351;
  assign new_U568 = ~RESTART | ~RMIN_REG_5_;
  assign new_U569 = ~REG4_REG_4_ | ~new_U351;
  assign new_U570 = ~RESTART | ~RMIN_REG_4_;
  assign new_U571 = ~REG4_REG_3_ | ~new_U351;
  assign new_U572 = ~RESTART | ~RMIN_REG_3_;
  assign new_U573 = ~REG4_REG_2_ | ~new_U351;
  assign new_U574 = ~RESTART | ~RMIN_REG_2_;
  assign new_U575 = ~REG4_REG_1_ | ~new_U351;
  assign new_U576 = ~RESTART | ~RMIN_REG_1_;
  assign new_U577 = ~REG4_REG_0_ | ~new_U351;
  assign new_U578 = ~RESTART | ~RMIN_REG_0_;
  assign new_SUB_70_U33 = ~new_SUB_70_U22 | ~new_SUB_70_U18;
  assign new_SUB_70_U32 = ~new_R179_U23 | ~new_SUB_70_U10;
  assign new_SUB_70_U31 = ~new_SUB_70_U24 | ~new_SUB_70_U16;
  assign new_SUB_70_U30 = ~new_R179_U4 | ~new_SUB_70_U12;
  assign new_SUB_70_U29 = ~new_R179_U24 | ~new_SUB_70_U28;
  assign new_SUB_70_U28 = new_R179_U5 | new_R179_U20;
  assign new_SUB_70_U27 = ~new_R179_U22 | ~new_SUB_70_U26;
  assign new_SUB_70_U26 = ~new_SUB_70_U22 | ~new_SUB_70_U18;
  assign new_SUB_70_U25 = ~new_R179_U21 | ~new_SUB_70_U11;
  assign new_SUB_70_U24 = ~new_SUB_70_U12;
  assign new_SUB_70_U23 = ~new_SUB_70_U11;
  assign new_GTE_67_U6 = ~new_ADD_65_U5;
  assign new_SUB_82_U6 = new_SUB_82_U29 & new_SUB_82_U10;
  assign new_SUB_82_U7 = new_SUB_82_U27 & new_SUB_82_U11;
  assign new_SUB_82_U8 = new_SUB_82_U25 & new_SUB_82_U12;
  assign new_SUB_82_U9 = ~new_SUB_82_U24 | ~new_SUB_82_U16;
  assign new_SUB_82_U10 = new_R179_U24 | new_R179_U5 | new_R179_U20;
  assign new_SUB_82_U11 = ~new_SUB_82_U14 | ~new_SUB_82_U22 | ~new_SUB_82_U18;
  assign new_SUB_82_U12 = ~new_SUB_82_U23 | ~new_SUB_82_U13;
  assign new_SUB_82_U13 = ~new_R179_U21;
  assign new_SUB_82_U14 = ~new_R179_U22;
  assign new_SUB_82_U15 = ~new_SUB_82_U35 | ~new_SUB_82_U34;
  assign new_SUB_82_U16 = ~new_R179_U4;
  assign new_SUB_82_U17 = new_SUB_82_U31 & new_SUB_82_U30;
  assign new_SUB_82_U18 = ~new_R179_U23;
  assign new_SUB_82_U19 = new_SUB_82_U33 & new_SUB_82_U32;
  assign new_SUB_82_U20 = ~new_R179_U5;
  assign new_SUB_82_U21 = ~new_R179_U20;
  assign new_SUB_82_U22 = ~new_SUB_82_U10;
  assign new_SUB_82_U23 = ~new_SUB_82_U11;
  assign new_SUB_82_U24 = ~new_SUB_82_U12;
  assign new_SUB_82_U25 = ~new_R179_U21 | ~new_SUB_82_U11;
  assign new_SUB_82_U26 = ~new_SUB_82_U22 | ~new_SUB_82_U18;
  assign new_SUB_82_U27 = ~new_R179_U22 | ~new_SUB_82_U26;
  assign new_SUB_82_U28 = new_R179_U5 | new_R179_U20;
  assign new_SUB_82_U29 = ~new_R179_U24 | ~new_SUB_82_U28;
  assign new_SUB_82_U30 = ~new_R179_U4 | ~new_SUB_82_U12;
  assign new_SUB_82_U31 = ~new_SUB_82_U24 | ~new_SUB_82_U16;
  assign new_SUB_82_U32 = ~new_R179_U23 | ~new_SUB_82_U10;
  assign new_SUB_82_U33 = ~new_SUB_82_U22 | ~new_SUB_82_U18;
  assign new_SUB_82_U34 = ~new_R179_U5 | ~new_SUB_82_U21;
  assign new_SUB_82_U35 = ~new_R179_U20 | ~new_SUB_82_U20;
  assign new_ADD_65_U4 = RMAX_REG_6_ & new_ADD_65_U7;
  assign new_ADD_65_U5 = ~new_ADD_65_U31 | ~new_ADD_65_U30;
  assign new_ADD_65_U6 = ~RMAX_REG_6_;
  assign new_ADD_65_U7 = ~new_ADD_65_U24 | ~new_ADD_65_U23;
  assign new_ADD_65_U8 = RMIN_REG_5_ | RMAX_REG_5_;
  assign new_ADD_65_U9 = ~RMAX_REG_1_ | ~RMIN_REG_1_;
  assign new_ADD_65_U10 = ~RMAX_REG_0_ | ~RMIN_REG_0_;
  assign new_ADD_65_U11 = ~new_ADD_65_U10 | ~new_ADD_65_U9;
  assign new_ADD_65_U12 = RMAX_REG_1_ | RMIN_REG_1_;
  assign new_ADD_65_U13 = RMAX_REG_2_ | RMIN_REG_2_;
  assign new_ADD_65_U14 = ~new_ADD_65_U11 | ~new_ADD_65_U12 | ~new_ADD_65_U13;
  assign new_ADD_65_U15 = ~RMAX_REG_3_ | ~RMIN_REG_3_;
  assign new_ADD_65_U16 = ~RMAX_REG_2_ | ~RMIN_REG_2_;
  assign new_ADD_65_U17 = ~new_ADD_65_U14 | ~new_ADD_65_U15 | ~new_ADD_65_U16;
  assign new_ADD_65_U18 = RMAX_REG_3_ | RMIN_REG_3_;
  assign new_ADD_65_U19 = RMAX_REG_4_ | RMIN_REG_4_;
  assign new_ADD_65_U20 = ~new_ADD_65_U17 | ~new_ADD_65_U18 | ~new_ADD_65_U19;
  assign new_ADD_65_U21 = ~RMAX_REG_4_ | ~RMIN_REG_4_;
  assign new_ADD_65_U22 = ~new_ADD_65_U20 | ~new_ADD_65_U21;
  assign new_ADD_65_U23 = ~new_ADD_65_U22 | ~new_ADD_65_U8;
  assign new_ADD_65_U24 = ~RMAX_REG_5_ | ~RMIN_REG_5_;
  assign new_ADD_65_U25 = ~new_ADD_65_U7;
  assign new_ADD_65_U26 = RMIN_REG_6_ | new_ADD_65_U4;
  assign new_ADD_65_U27 = ~new_ADD_65_U25 | ~new_ADD_65_U6;
  assign new_ADD_65_U28 = ~new_ADD_65_U27 | ~new_ADD_65_U26;
  assign new_ADD_65_U29 = RMIN_REG_7_ | RMAX_REG_7_;
  assign new_ADD_65_U30 = ~RMIN_REG_7_ | ~RMAX_REG_7_;
  assign new_ADD_65_U31 = ~new_ADD_65_U29 | ~new_ADD_65_U28;
  assign new_ADD_77_U4 = DATA_IN_6_ & new_ADD_77_U7;
  assign new_ADD_77_U5 = ~new_ADD_77_U31 | ~new_ADD_77_U30;
  assign new_ADD_77_U6 = ~DATA_IN_6_;
  assign new_ADD_77_U7 = ~new_ADD_77_U24 | ~new_ADD_77_U23;
  assign new_ADD_77_U8 = REG4_REG_5_ | DATA_IN_5_;
  assign new_ADD_77_U9 = ~DATA_IN_1_ | ~REG4_REG_1_;
  assign new_ADD_77_U10 = ~DATA_IN_0_ | ~REG4_REG_0_;
  assign new_ADD_77_U11 = ~new_ADD_77_U10 | ~new_ADD_77_U9;
  assign new_ADD_77_U12 = DATA_IN_1_ | REG4_REG_1_;
  assign new_ADD_77_U13 = DATA_IN_2_ | REG4_REG_2_;
  assign new_ADD_77_U14 = ~new_ADD_77_U11 | ~new_ADD_77_U12 | ~new_ADD_77_U13;
  assign new_ADD_77_U15 = ~DATA_IN_3_ | ~REG4_REG_3_;
  assign new_ADD_77_U16 = ~DATA_IN_2_ | ~REG4_REG_2_;
  assign new_ADD_77_U17 = ~new_ADD_77_U14 | ~new_ADD_77_U15 | ~new_ADD_77_U16;
  assign new_ADD_77_U18 = DATA_IN_3_ | REG4_REG_3_;
  assign new_ADD_77_U19 = DATA_IN_4_ | REG4_REG_4_;
  assign new_ADD_77_U20 = ~new_ADD_77_U17 | ~new_ADD_77_U18 | ~new_ADD_77_U19;
  assign new_ADD_77_U21 = ~DATA_IN_4_ | ~REG4_REG_4_;
  assign new_ADD_77_U22 = ~new_ADD_77_U20 | ~new_ADD_77_U21;
  assign new_ADD_77_U23 = ~new_ADD_77_U22 | ~new_ADD_77_U8;
  assign new_ADD_77_U24 = ~DATA_IN_5_ | ~REG4_REG_5_;
  assign new_ADD_77_U25 = ~new_ADD_77_U7;
  assign new_ADD_77_U26 = REG4_REG_6_ | new_ADD_77_U4;
  assign new_ADD_77_U27 = ~new_ADD_77_U25 | ~new_ADD_77_U6;
  assign new_ADD_77_U28 = ~new_ADD_77_U27 | ~new_ADD_77_U26;
  assign new_ADD_77_U29 = REG4_REG_7_ | DATA_IN_7_;
  assign new_ADD_77_U30 = ~REG4_REG_7_ | ~DATA_IN_7_;
  assign new_ADD_77_U31 = ~new_ADD_77_U29 | ~new_ADD_77_U28;
  assign new_SUB_70_166_U6 = new_SUB_70_166_U31 & new_SUB_70_166_U10;
  assign new_SUB_70_166_U7 = new_SUB_70_166_U29 & new_SUB_70_166_U11;
  assign new_SUB_70_166_U8 = new_SUB_70_166_U27 & new_SUB_70_166_U12;
  assign new_SUB_70_166_U9 = ~new_SUB_70_166_U21 | ~new_SUB_70_166_U26;
  assign new_SUB_70_166_U10 = new_SUB_70_U19 | new_SUB_70_U6 | new_SUB_70_U15;
  assign new_SUB_70_166_U11 = ~new_SUB_70_166_U15 | ~new_SUB_70_166_U23 | ~new_SUB_70_166_U17;
  assign new_SUB_70_166_U12 = ~new_SUB_70_166_U24 | ~new_SUB_70_166_U14;
  assign new_SUB_70_166_U13 = ~new_SUB_70_U9;
  assign new_SUB_70_166_U14 = ~new_SUB_70_U17;
  assign new_SUB_70_166_U15 = ~new_SUB_70_U8;
  assign new_SUB_70_166_U16 = ~new_SUB_70_166_U35 | ~new_SUB_70_166_U34;
  assign new_SUB_70_166_U17 = ~new_SUB_70_U7;
  assign new_SUB_70_166_U18 = new_SUB_70_166_U33 & new_SUB_70_166_U32;
  assign new_SUB_70_166_U19 = ~new_SUB_70_U6;
  assign new_SUB_70_166_U20 = ~new_SUB_70_U15;
  assign new_SUB_70_166_U21 = ~new_SUB_70_166_U12 | ~new_SUB_70_166_U13;
  assign new_SUB_70_166_U22 = ~new_SUB_70_166_U21;
  assign new_SUB_70_166_U23 = ~new_SUB_70_166_U10;
  assign new_SUB_70_166_U24 = ~new_SUB_70_166_U11;
  assign new_SUB_70_166_U25 = ~new_SUB_70_166_U12;
  assign new_SUB_70_166_U26 = ~new_SUB_70_U9 | ~new_SUB_70_166_U25;
  assign new_SUB_70_166_U27 = ~new_SUB_70_U17 | ~new_SUB_70_166_U11;
  assign new_SUB_70_166_U28 = ~new_SUB_70_166_U23 | ~new_SUB_70_166_U17;
  assign new_SUB_70_166_U29 = ~new_SUB_70_U8 | ~new_SUB_70_166_U28;
  assign new_SUB_70_166_U30 = new_SUB_70_U6 | new_SUB_70_U15;
  assign new_SUB_70_166_U31 = ~new_SUB_70_U19 | ~new_SUB_70_166_U30;
  assign new_SUB_70_166_U32 = ~new_SUB_70_U7 | ~new_SUB_70_166_U10;
  assign new_SUB_70_166_U33 = ~new_SUB_70_166_U23 | ~new_SUB_70_166_U17;
  assign new_SUB_70_166_U34 = ~new_SUB_70_U6 | ~new_SUB_70_166_U20;
  assign new_SUB_70_166_U35 = ~new_SUB_70_U15 | ~new_SUB_70_166_U19;
  assign new_LT_90_U6 = ~new_LT_90_U41 | ~new_LT_90_U42;
  assign new_LT_90_U7 = ~DATA_IN_7_;
  assign new_LT_90_U8 = ~DATA_IN_1_;
  assign new_LT_90_U9 = ~RMIN_REG_1_;
  assign new_LT_90_U10 = ~RMIN_REG_2_;
  assign new_LT_90_U11 = ~DATA_IN_2_;
  assign new_LT_90_U12 = ~DATA_IN_3_;
  assign new_LT_90_U13 = ~RMIN_REG_3_;
  assign new_LT_90_U14 = ~RMIN_REG_4_;
  assign new_LT_90_U15 = ~DATA_IN_4_;
  assign new_LT_90_U16 = ~DATA_IN_5_;
  assign new_LT_90_U17 = ~RMIN_REG_5_;
  assign new_LT_90_U18 = ~RMIN_REG_6_;
  assign new_LT_90_U19 = ~DATA_IN_6_;
  assign new_LT_90_U20 = ~RMIN_REG_7_;
  assign new_LT_90_U21 = ~DATA_IN_0_;
  assign new_LT_90_U22 = ~DATA_IN_1_ | ~new_LT_90_U9;
  assign new_LT_90_U23 = ~new_LT_90_U22 | ~RMIN_REG_0_ | ~new_LT_90_U21;
  assign new_LT_90_U24 = ~RMIN_REG_1_ | ~new_LT_90_U8;
  assign new_LT_90_U25 = ~RMIN_REG_2_ | ~new_LT_90_U11;
  assign new_LT_90_U26 = ~new_LT_90_U23 | ~new_LT_90_U24 | ~new_LT_90_U25;
  assign new_LT_90_U27 = ~DATA_IN_2_ | ~new_LT_90_U10;
  assign new_LT_90_U28 = ~DATA_IN_3_ | ~new_LT_90_U13;
  assign new_LT_90_U29 = ~new_LT_90_U26 | ~new_LT_90_U27 | ~new_LT_90_U28;
  assign new_LT_90_U30 = ~RMIN_REG_3_ | ~new_LT_90_U12;
  assign new_LT_90_U31 = ~RMIN_REG_4_ | ~new_LT_90_U15;
  assign new_LT_90_U32 = ~new_LT_90_U29 | ~new_LT_90_U30 | ~new_LT_90_U31;
  assign new_LT_90_U33 = ~DATA_IN_4_ | ~new_LT_90_U14;
  assign new_LT_90_U34 = ~DATA_IN_5_ | ~new_LT_90_U17;
  assign new_LT_90_U35 = ~new_LT_90_U32 | ~new_LT_90_U33 | ~new_LT_90_U34;
  assign new_LT_90_U36 = ~RMIN_REG_5_ | ~new_LT_90_U16;
  assign new_LT_90_U37 = ~RMIN_REG_6_ | ~new_LT_90_U19;
  assign new_LT_90_U38 = ~new_LT_90_U35 | ~new_LT_90_U36 | ~new_LT_90_U37;
  assign new_LT_90_U39 = ~DATA_IN_6_ | ~new_LT_90_U18;
  assign new_LT_90_U40 = ~RMIN_REG_7_ | ~new_LT_90_U7;
  assign new_LT_90_U41 = ~new_LT_90_U38 | ~new_LT_90_U39 | ~new_LT_90_U40;
  assign new_LT_90_U42 = ~DATA_IN_7_ | ~new_LT_90_U20;
  assign new_GT_88_U6 = ~new_GT_88_U41 | ~new_GT_88_U42;
  assign new_GT_88_U7 = ~RMAX_REG_7_;
  assign new_GT_88_U8 = ~RMAX_REG_1_;
  assign new_GT_88_U9 = ~DATA_IN_1_;
  assign new_GT_88_U10 = ~DATA_IN_2_;
  assign new_GT_88_U11 = ~RMAX_REG_2_;
  assign new_GT_88_U12 = ~RMAX_REG_3_;
  assign new_GT_88_U13 = ~DATA_IN_3_;
  assign new_GT_88_U14 = ~DATA_IN_4_;
  assign new_GT_88_U15 = ~RMAX_REG_4_;
  assign new_GT_88_U16 = ~RMAX_REG_5_;
  assign new_GT_88_U17 = ~DATA_IN_5_;
  assign new_GT_88_U18 = ~DATA_IN_6_;
  assign new_GT_88_U19 = ~RMAX_REG_6_;
  assign new_GT_88_U20 = ~DATA_IN_7_;
  assign new_GT_88_U21 = ~RMAX_REG_0_;
  assign new_GT_88_U22 = ~RMAX_REG_1_ | ~new_GT_88_U9;
  assign new_GT_88_U23 = ~new_GT_88_U22 | ~DATA_IN_0_ | ~new_GT_88_U21;
  assign new_GT_88_U24 = ~DATA_IN_1_ | ~new_GT_88_U8;
  assign new_GT_88_U25 = ~DATA_IN_2_ | ~new_GT_88_U11;
  assign new_GT_88_U26 = ~new_GT_88_U23 | ~new_GT_88_U24 | ~new_GT_88_U25;
  assign new_GT_88_U27 = ~RMAX_REG_2_ | ~new_GT_88_U10;
  assign new_GT_88_U28 = ~RMAX_REG_3_ | ~new_GT_88_U13;
  assign new_GT_88_U29 = ~new_GT_88_U26 | ~new_GT_88_U27 | ~new_GT_88_U28;
  assign new_GT_88_U30 = ~DATA_IN_3_ | ~new_GT_88_U12;
  assign new_GT_88_U31 = ~DATA_IN_4_ | ~new_GT_88_U15;
  assign new_GT_88_U32 = ~new_GT_88_U29 | ~new_GT_88_U30 | ~new_GT_88_U31;
  assign new_GT_88_U33 = ~RMAX_REG_4_ | ~new_GT_88_U14;
  assign new_GT_88_U34 = ~RMAX_REG_5_ | ~new_GT_88_U17;
  assign new_GT_88_U35 = ~new_GT_88_U32 | ~new_GT_88_U33 | ~new_GT_88_U34;
  assign new_GT_88_U36 = ~DATA_IN_5_ | ~new_GT_88_U16;
  assign new_GT_88_U37 = ~DATA_IN_6_ | ~new_GT_88_U19;
  assign new_GT_88_U38 = ~new_GT_88_U35 | ~new_GT_88_U36 | ~new_GT_88_U37;
  assign new_GT_88_U39 = ~RMAX_REG_6_ | ~new_GT_88_U18;
  assign new_GT_88_U40 = ~DATA_IN_7_ | ~new_GT_88_U7;
  assign new_GT_88_U41 = ~new_GT_88_U38 | ~new_GT_88_U39 | ~new_GT_88_U40;
  assign new_GT_88_U42 = ~RMAX_REG_7_ | ~new_GT_88_U20;
  assign new_SUB_82_165_U6 = new_SUB_82_165_U31 & new_SUB_82_165_U10;
  assign new_SUB_82_165_U7 = new_SUB_82_165_U29 & new_SUB_82_165_U11;
  assign new_SUB_82_165_U8 = new_SUB_82_165_U27 & new_SUB_82_165_U12;
  assign new_SUB_82_165_U9 = ~new_SUB_82_165_U21 | ~new_SUB_82_165_U26;
  assign new_SUB_82_165_U10 = new_SUB_82_U19 | new_SUB_82_U6 | new_SUB_82_U15;
  assign new_SUB_82_165_U11 = ~new_SUB_82_165_U15 | ~new_SUB_82_165_U23 | ~new_SUB_82_165_U17;
  assign new_SUB_82_165_U12 = ~new_SUB_82_165_U24 | ~new_SUB_82_165_U14;
  assign new_SUB_82_165_U13 = ~new_SUB_82_U9;
  assign new_SUB_82_165_U14 = ~new_SUB_82_U17;
  assign new_SUB_82_165_U15 = ~new_SUB_82_U8;
  assign new_SUB_82_165_U16 = ~new_SUB_82_165_U35 | ~new_SUB_82_165_U34;
  assign new_SUB_82_165_U17 = ~new_SUB_82_U7;
  assign new_SUB_82_165_U18 = new_SUB_82_165_U33 & new_SUB_82_165_U32;
  assign new_SUB_82_165_U19 = ~new_SUB_82_U6;
  assign new_SUB_82_165_U20 = ~new_SUB_82_U15;
  assign new_SUB_82_165_U21 = ~new_SUB_82_165_U12 | ~new_SUB_82_165_U13;
  assign new_SUB_82_165_U22 = ~new_SUB_82_165_U21;
  assign new_SUB_82_165_U23 = ~new_SUB_82_165_U10;
  assign new_SUB_82_165_U24 = ~new_SUB_82_165_U11;
  assign new_SUB_82_165_U25 = ~new_SUB_82_165_U12;
  assign new_SUB_82_165_U26 = ~new_SUB_82_U9 | ~new_SUB_82_165_U25;
  assign new_SUB_82_165_U27 = ~new_SUB_82_U17 | ~new_SUB_82_165_U11;
  assign new_SUB_82_165_U28 = ~new_SUB_82_165_U23 | ~new_SUB_82_165_U17;
  assign new_SUB_82_165_U29 = ~new_SUB_82_U8 | ~new_SUB_82_165_U28;
  assign new_SUB_82_165_U30 = new_SUB_82_U6 | new_SUB_82_U15;
  assign new_SUB_82_165_U31 = ~new_SUB_82_U19 | ~new_SUB_82_165_U30;
  assign new_SUB_82_165_U32 = ~new_SUB_82_U7 | ~new_SUB_82_165_U10;
  assign new_SUB_82_165_U33 = ~new_SUB_82_165_U23 | ~new_SUB_82_165_U17;
  assign new_SUB_82_165_U34 = ~new_SUB_82_U6 | ~new_SUB_82_165_U20;
  assign new_SUB_82_165_U35 = ~new_SUB_82_U15 | ~new_SUB_82_165_U19;
  assign new_GTE_79_U6 = ~new_ADD_77_U5;
  assign new_R179_U4 = new_R179_U55 & new_R179_U51;
  assign new_R179_U5 = ~new_R179_U56 | ~new_R179_U94 | ~new_R179_U93;
  assign new_R179_U6 = ~new_U359;
  assign new_R179_U7 = ~new_U366;
  assign new_R179_U8 = ~new_U365;
  assign new_R179_U9 = ~new_U366 | ~new_U359;
  assign new_R179_U10 = ~new_U358;
  assign new_R179_U11 = ~new_U357;
  assign new_R179_U12 = ~new_U364;
  assign new_R179_U13 = ~new_U356;
  assign new_R179_U14 = ~new_U363;
  assign new_R179_U15 = ~new_U355;
  assign new_R179_U16 = ~new_U362;
  assign new_R179_U17 = ~new_U354;
  assign new_R179_U18 = ~new_U361;
  assign new_R179_U19 = ~new_R179_U46 | ~new_R179_U45;
  assign new_R179_U20 = ~new_R179_U96 | ~new_R179_U95;
  assign new_R179_U21 = ~new_R179_U68 | ~new_R179_U67;
  assign new_R179_U22 = ~new_R179_U75 | ~new_R179_U74;
  assign new_R179_U23 = ~new_R179_U82 | ~new_R179_U81;
  assign new_R179_U24 = ~new_R179_U89 | ~new_R179_U88;
  assign new_R179_U25 = ~new_U360;
  assign new_R179_U26 = ~new_U353;
  assign new_R179_U27 = ~new_R179_U42 | ~new_R179_U41;
  assign new_R179_U28 = ~new_R179_U38 | ~new_R179_U37;
  assign new_R179_U29 = ~new_R179_U30 | ~new_R179_U34;
  assign new_R179_U30 = ~new_U358 | ~new_R179_U32;
  assign new_R179_U31 = ~new_R179_U30;
  assign new_R179_U32 = ~new_R179_U9;
  assign new_R179_U33 = ~new_R179_U10 | ~new_R179_U9;
  assign new_R179_U34 = ~new_U365 | ~new_R179_U33;
  assign new_R179_U35 = ~new_R179_U29;
  assign new_R179_U36 = new_U357 | new_U364;
  assign new_R179_U37 = ~new_R179_U36 | ~new_R179_U29;
  assign new_R179_U38 = ~new_U364 | ~new_U357;
  assign new_R179_U39 = ~new_R179_U28;
  assign new_R179_U40 = new_U356 | new_U363;
  assign new_R179_U41 = ~new_R179_U40 | ~new_R179_U28;
  assign new_R179_U42 = ~new_U363 | ~new_U356;
  assign new_R179_U43 = ~new_R179_U27;
  assign new_R179_U44 = new_U355 | new_U362;
  assign new_R179_U45 = ~new_R179_U44 | ~new_R179_U27;
  assign new_R179_U46 = ~new_U362 | ~new_U355;
  assign new_R179_U47 = ~new_R179_U19;
  assign new_R179_U48 = new_U354 | new_U361;
  assign new_R179_U49 = ~new_R179_U48 | ~new_R179_U19;
  assign new_R179_U50 = ~new_U361 | ~new_U354;
  assign new_R179_U51 = ~new_R179_U49 | ~new_R179_U50 | ~new_R179_U58 | ~new_R179_U57;
  assign new_R179_U52 = ~new_U361 | ~new_U354;
  assign new_R179_U53 = ~new_R179_U47 | ~new_R179_U52;
  assign new_R179_U54 = new_U361 | new_U354;
  assign new_R179_U55 = ~new_R179_U53 | ~new_R179_U54 | ~new_R179_U61;
  assign new_R179_U56 = ~new_R179_U92 | ~new_R179_U10;
  assign new_R179_U57 = ~new_U360 | ~new_R179_U26;
  assign new_R179_U58 = ~new_U353 | ~new_R179_U25;
  assign new_R179_U59 = ~new_U360 | ~new_R179_U26;
  assign new_R179_U60 = ~new_U353 | ~new_R179_U25;
  assign new_R179_U61 = ~new_R179_U60 | ~new_R179_U59;
  assign new_R179_U62 = ~new_U361 | ~new_R179_U17;
  assign new_R179_U63 = ~new_U354 | ~new_R179_U18;
  assign new_R179_U64 = ~new_U361 | ~new_R179_U17;
  assign new_R179_U65 = ~new_U354 | ~new_R179_U18;
  assign new_R179_U66 = ~new_R179_U65 | ~new_R179_U64;
  assign new_R179_U67 = ~new_R179_U19 | ~new_R179_U63 | ~new_R179_U62;
  assign new_R179_U68 = ~new_R179_U66 | ~new_R179_U47;
  assign new_R179_U69 = ~new_U362 | ~new_R179_U15;
  assign new_R179_U70 = ~new_U355 | ~new_R179_U16;
  assign new_R179_U71 = ~new_U362 | ~new_R179_U15;
  assign new_R179_U72 = ~new_U355 | ~new_R179_U16;
  assign new_R179_U73 = ~new_R179_U72 | ~new_R179_U71;
  assign new_R179_U74 = ~new_R179_U27 | ~new_R179_U70 | ~new_R179_U69;
  assign new_R179_U75 = ~new_R179_U43 | ~new_R179_U73;
  assign new_R179_U76 = ~new_U363 | ~new_R179_U13;
  assign new_R179_U77 = ~new_U356 | ~new_R179_U14;
  assign new_R179_U78 = ~new_U363 | ~new_R179_U13;
  assign new_R179_U79 = ~new_U356 | ~new_R179_U14;
  assign new_R179_U80 = ~new_R179_U79 | ~new_R179_U78;
  assign new_R179_U81 = ~new_R179_U28 | ~new_R179_U77 | ~new_R179_U76;
  assign new_R179_U82 = ~new_R179_U39 | ~new_R179_U80;
  assign new_R179_U83 = ~new_U364 | ~new_R179_U11;
  assign new_R179_U84 = ~new_U357 | ~new_R179_U12;
  assign new_R179_U85 = ~new_U364 | ~new_R179_U11;
  assign new_R179_U86 = ~new_U357 | ~new_R179_U12;
  assign new_R179_U87 = ~new_R179_U86 | ~new_R179_U85;
  assign new_R179_U88 = ~new_R179_U29 | ~new_R179_U84 | ~new_R179_U83;
  assign new_R179_U89 = ~new_R179_U35 | ~new_R179_U87;
  assign new_R179_U90 = ~new_U365 | ~new_R179_U9;
  assign new_R179_U91 = ~new_R179_U32 | ~new_R179_U8;
  assign new_R179_U92 = ~new_R179_U91 | ~new_R179_U90;
  assign new_R179_U93 = ~new_R179_U8 | ~new_U358 | ~new_R179_U9;
  assign new_R179_U94 = ~new_R179_U31 | ~new_U365;
  assign new_R179_U95 = ~new_U366 | ~new_R179_U6;
  assign new_R179_U96 = ~new_U359 | ~new_R179_U7;
  assign new_SUB_70_U6 = new_SUB_70_U29 & new_SUB_70_U10;
  assign new_SUB_70_U7 = new_SUB_70_U27 & new_SUB_70_U11;
  assign new_SUB_70_U8 = new_SUB_70_U25 & new_SUB_70_U12;
  assign new_SUB_70_U9 = ~new_SUB_70_U24 | ~new_SUB_70_U16;
  assign new_SUB_70_U10 = new_R179_U24 | new_R179_U5 | new_R179_U20;
  assign new_SUB_70_U11 = ~new_SUB_70_U14 | ~new_SUB_70_U22 | ~new_SUB_70_U18;
  assign new_SUB_70_U12 = ~new_SUB_70_U23 | ~new_SUB_70_U13;
  assign new_SUB_70_U13 = ~new_R179_U21;
  assign new_SUB_70_U14 = ~new_R179_U22;
  assign new_SUB_70_U15 = ~new_SUB_70_U35 | ~new_SUB_70_U34;
  assign new_SUB_70_U16 = ~new_R179_U4;
  assign new_SUB_70_U17 = new_SUB_70_U31 & new_SUB_70_U30;
  assign new_SUB_70_U18 = ~new_R179_U23;
  assign new_SUB_70_U19 = new_SUB_70_U33 & new_SUB_70_U32;
  assign new_SUB_70_U20 = ~new_R179_U5;
  assign new_SUB_70_U21 = ~new_R179_U20;
  assign new_SUB_70_U22 = ~new_SUB_70_U10;
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
  assign n1677 = new_and_7 | new_and_5 | new_and_1 | new_and_3;
  assign new_not_9 = ~Q_2;
  assign new_and_10 = new_not_9 & Q_0 & Q_1;
  assign new_not_11 = ~Q_0;
  assign new_and_12 = new_not_11 & Q_2;
  assign new_not_13 = ~Q_1;
  assign new_and_14 = new_not_13 & Q_2;
  assign n1674 = new_and_14 | new_and_10 | new_and_12;
  assign new_not_16 = ~Q_1;
  assign new_and_17 = Q_0 & new_not_16;
  assign new_not_18 = ~Q_0;
  assign new_and_19 = new_not_18 & Q_1;
  assign n1671 = new_and_17 | new_and_19;
  assign n1668 = ~Q_0;
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
  assign new_y_mux_key0_and_0 = n60 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0_and_1 = new_U344 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key0 = new_y_mux_key0_and_0 | new_y_mux_key0_and_1;
  assign new_y_mux_key1_and_0 = n60 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1_and_1 = new_U344 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key1 = new_y_mux_key1_and_0 | new_y_mux_key1_and_1;
  assign new_y_mux_key2_and_0 = n60 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2_and_1 = new_U344 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key2 = new_y_mux_key2_and_0 | new_y_mux_key2_and_1;
  assign new_y_mux_key3_and_0 = n60 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key3_and_1 = new_U344 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key3 = new_y_mux_key3_and_0 | new_y_mux_key3_and_1;
  assign new_y_mux_key4_and_0 = n60 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key4_and_1 = new_U344 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key4 = new_y_mux_key4_and_0 | new_y_mux_key4_and_1;
  assign new_y_mux_key5_and_0 = n60 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5_and_1 = new_U344 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key5 = new_y_mux_key5_and_0 | new_y_mux_key5_and_1;
  assign new_y_mux_key6_and_0 = n60 & keyinput4 & new_not_keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key6_and_1 = new_U344 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key6 = new_y_mux_key6_and_0 | new_y_mux_key6_and_1;
  assign new_y_mux_key7_and_0 = n60 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7_and_1 = new_U344 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key7 = new_y_mux_key7_and_0 | new_y_mux_key7_and_1;
  assign new_y_mux_key8_and_0 = n60 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key8_and_1 = new_U344 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key8 = new_y_mux_key8_and_0 | new_y_mux_key8_and_1;
  assign new_y_mux_key9_and_0 = n60 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9_and_1 = new_U344 & keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key9 = new_y_mux_key9_and_0 | new_y_mux_key9_and_1;
  assign new_y_mux_key10_and_0 = n60 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key10_and_1 = new_U344 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key10 = new_y_mux_key10_and_0 | new_y_mux_key10_and_1;
  assign new_y_mux_key11_and_0 = n60 & new_not_keyinput4 & keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11_and_1 = new_U344 & keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key11 = new_y_mux_key11_and_0 | new_y_mux_key11_and_1;
  assign new_y_mux_key12_and_0 = n60 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12_and_1 = new_U344 & new_not_keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key12 = new_y_mux_key12_and_0 | new_y_mux_key12_and_1;
  assign new_y_mux_key13_and_0 = n60 & new_not_keyinput4 & keyinput3 & keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key13_and_1 = new_U344 & keyinput4 & keyinput3 & keyinput2 & new_not_keyinput0 & keyinput1;
  assign new_y_mux_key13 = new_y_mux_key13_and_0 | new_y_mux_key13_and_1;
  assign new_y_mux_key14_and_0 = n60 & new_not_keyinput4 & new_not_keyinput3 & keyinput2 & new_not_keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14_and_1 = new_U344 & new_not_keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
  assign new_y_mux_key14 = new_y_mux_key14_and_0 | new_y_mux_key14_and_1;
  assign new_y_mux_key15_and_0 = n60 & keyinput4 & keyinput3 & keyinput2 & keyinput0 & keyinput1;
  assign new_y_mux_key15_and_1 = new_U344 & keyinput4 & new_not_keyinput3 & new_not_keyinput2 & keyinput0 & new_not_keyinput1;
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
  assign n50 = new_and_mux__state_29 | new_and_mux__state_29_2;
  always @ (posedge clock) begin
    RMAX_REG_7_ <= n50;
    RMAX_REG_6_ <= n55;
    RMAX_REG_5_ <= n60;
    RMAX_REG_4_ <= n65;
    RMAX_REG_3_ <= n70;
    RMAX_REG_2_ <= n75;
    RMAX_REG_1_ <= n80;
    RMAX_REG_0_ <= n85;
    RMIN_REG_7_ <= n90;
    RMIN_REG_6_ <= n95;
    RMIN_REG_5_ <= n100;
    RMIN_REG_4_ <= n105;
    RMIN_REG_3_ <= n110;
    RMIN_REG_2_ <= n115;
    RMIN_REG_1_ <= n120;
    RMIN_REG_0_ <= n125;
    RLAST_REG_7_ <= n130;
    RLAST_REG_6_ <= n135;
    RLAST_REG_5_ <= n140;
    RLAST_REG_4_ <= n145;
    RLAST_REG_3_ <= n150;
    RLAST_REG_2_ <= n155;
    RLAST_REG_1_ <= n160;
    RLAST_REG_0_ <= n165;
    REG1_REG_7_ <= n170;
    REG1_REG_6_ <= n175;
    REG1_REG_5_ <= n180;
    REG1_REG_4_ <= n185;
    REG1_REG_3_ <= n190;
    REG1_REG_2_ <= n195;
    REG1_REG_1_ <= n200;
    REG1_REG_0_ <= n205;
    REG2_REG_7_ <= n210;
    REG2_REG_6_ <= n215;
    REG2_REG_5_ <= n220;
    REG2_REG_4_ <= n225;
    REG2_REG_3_ <= n230;
    REG2_REG_2_ <= n235;
    REG2_REG_1_ <= n240;
    REG2_REG_0_ <= n245;
    REG3_REG_7_ <= n250;
    REG3_REG_6_ <= n255;
    REG3_REG_5_ <= n260;
    REG3_REG_4_ <= n265;
    REG3_REG_3_ <= n270;
    REG3_REG_2_ <= n275;
    REG3_REG_1_ <= n280;
    REG3_REG_0_ <= n285;
    REG4_REG_7_ <= n290;
    REG4_REG_6_ <= n295;
    REG4_REG_5_ <= n300;
    REG4_REG_4_ <= n305;
    REG4_REG_3_ <= n310;
    REG4_REG_2_ <= n315;
    REG4_REG_1_ <= n320;
    REG4_REG_0_ <= n325;
    DATA_OUT_REG_7_ <= n330;
    DATA_OUT_REG_6_ <= n334;
    DATA_OUT_REG_5_ <= n338;
    DATA_OUT_REG_4_ <= n342;
    DATA_OUT_REG_3_ <= n346;
    DATA_OUT_REG_2_ <= n350;
    DATA_OUT_REG_1_ <= n354;
    DATA_OUT_REG_0_ <= n358;
    STATO_REG_1_ <= n362;
    STATO_REG_0_ <= n367;
    Q_0 <= n1668;
    Q_1 <= n1671;
    Q_2 <= n1674;
    Q_3 <= n1677;
  end
endmodule
