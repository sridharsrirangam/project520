
module y_update_diagonal_calc ( y_diag, y_old, y_new, sel_old_or_new, 
        sel_diag_or_sum, sel_mode_addsub, y_new_diag, clock, reset );
  input [47:0] y_diag;
  input [47:0] y_old;
  input [47:0] y_new;
  input [1:0] sel_old_or_new;
  output [47:0] y_new_diag;
  input sel_diag_or_sum, sel_mode_addsub, clock, reset;
  wire   U5_Z_0, U5_Z_1, U5_Z_2, U5_Z_3, U5_Z_4, U5_Z_5, U5_Z_6, U5_Z_7,
         U5_Z_8, U5_Z_9, U5_Z_10, U5_Z_11, U5_Z_12, U5_Z_13, U5_Z_14, U5_Z_15,
         U5_Z_16, U5_Z_17, U5_Z_18, U5_Z_19, U5_Z_20, U5_Z_21, U5_Z_22,
         U5_Z_23, U5_Z_24, U5_Z_25, U5_Z_26, U5_Z_27, U5_Z_28, U5_Z_29,
         U5_Z_30, U5_Z_31, U5_Z_32, U5_Z_33, U5_Z_34, U5_Z_35, U5_Z_36,
         U5_Z_37, U5_Z_38, U5_Z_39, U5_Z_40, U5_Z_41, U5_Z_42, U5_Z_43,
         U5_Z_44, U5_Z_45, U5_Z_46, U5_Z_47, U4_Z_0, U4_Z_1, U4_Z_2, U4_Z_3,
         U4_Z_4, U4_Z_5, U4_Z_6, U4_Z_7, U4_Z_8, U4_Z_9, U4_Z_10, U4_Z_11,
         U4_Z_12, U4_Z_13, U4_Z_14, U4_Z_15, U4_Z_16, U4_Z_17, U4_Z_18,
         U4_Z_19, U4_Z_20, U4_Z_21, U4_Z_22, U4_Z_23, U4_Z_24, U4_Z_25,
         U4_Z_26, U4_Z_27, U4_Z_28, U4_Z_29, U4_Z_30, U4_Z_31, U4_Z_32,
         U4_Z_33, U4_Z_34, U4_Z_35, U4_Z_36, U4_Z_37, U4_Z_38, U4_Z_39,
         U4_Z_40, U4_Z_41, U4_Z_42, U4_Z_43, U4_Z_44, U4_Z_45, U4_Z_46,
         U4_Z_47, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n697, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726;
  wire   [146:99] n;

  addsub_cplx u1 ( .in1({U5_Z_47, U5_Z_46, U5_Z_45, U5_Z_44, U5_Z_43, U5_Z_42, 
        U5_Z_41, U5_Z_40, U5_Z_39, U5_Z_38, U5_Z_37, U5_Z_36, U5_Z_35, U5_Z_34, 
        U5_Z_33, U5_Z_32, U5_Z_31, U5_Z_30, U5_Z_29, U5_Z_28, U5_Z_27, U5_Z_26, 
        U5_Z_25, U5_Z_24, U5_Z_23, U5_Z_22, U5_Z_21, U5_Z_20, U5_Z_19, U5_Z_18, 
        U5_Z_17, U5_Z_16, U5_Z_15, U5_Z_14, U5_Z_13, U5_Z_12, U5_Z_11, U5_Z_10, 
        U5_Z_9, U5_Z_8, U5_Z_7, U5_Z_6, U5_Z_5, U5_Z_4, U5_Z_3, U5_Z_2, U5_Z_1, 
        U5_Z_0}), .in2({U4_Z_47, U4_Z_46, U4_Z_45, U4_Z_44, U4_Z_43, U4_Z_42, 
        U4_Z_41, U4_Z_40, U4_Z_39, U4_Z_38, U4_Z_37, U4_Z_36, U4_Z_35, U4_Z_34, 
        U4_Z_33, U4_Z_32, U4_Z_31, U4_Z_30, U4_Z_29, U4_Z_28, U4_Z_27, U4_Z_26, 
        U4_Z_25, U4_Z_24, U4_Z_23, U4_Z_22, U4_Z_21, U4_Z_20, U4_Z_19, U4_Z_18, 
        U4_Z_17, U4_Z_16, U4_Z_15, U4_Z_14, U4_Z_13, U4_Z_12, U4_Z_11, U4_Z_10, 
        U4_Z_9, U4_Z_8, U4_Z_7, U4_Z_6, U4_Z_5, U4_Z_4, U4_Z_3, U4_Z_2, U4_Z_1, 
        U4_Z_0}), .mode(sel_mode_addsub), .op(n) );
  DFFR_X1 y_new_temp_reg_47_ ( .D(y_new[47]), .CK(clock), .RN(n723), .QN(n503)
         );
  DFFR_X1 y_new_temp_reg_46_ ( .D(y_new[46]), .CK(clock), .RN(n723), .QN(n504)
         );
  DFFR_X1 y_new_temp_reg_45_ ( .D(y_new[45]), .CK(clock), .RN(n723), .QN(n505)
         );
  DFFR_X1 y_new_temp_reg_44_ ( .D(y_new[44]), .CK(clock), .RN(n723), .QN(n506)
         );
  DFFR_X1 y_new_temp_reg_43_ ( .D(y_new[43]), .CK(clock), .RN(n723), .QN(n507)
         );
  DFFR_X1 y_new_temp_reg_42_ ( .D(y_new[42]), .CK(clock), .RN(n723), .QN(n508)
         );
  DFFR_X1 y_new_temp_reg_41_ ( .D(y_new[41]), .CK(clock), .RN(n723), .QN(n509)
         );
  DFFR_X1 y_new_temp_reg_40_ ( .D(y_new[40]), .CK(clock), .RN(n723), .QN(n510)
         );
  DFFR_X1 y_new_temp_reg_39_ ( .D(y_new[39]), .CK(clock), .RN(n723), .QN(n511)
         );
  DFFR_X1 y_new_temp_reg_38_ ( .D(y_new[38]), .CK(clock), .RN(n723), .QN(n512)
         );
  DFFR_X1 y_new_temp_reg_37_ ( .D(y_new[37]), .CK(clock), .RN(n723), .QN(n513)
         );
  DFFR_X1 y_new_temp_reg_36_ ( .D(y_new[36]), .CK(clock), .RN(n723), .QN(n514)
         );
  DFFR_X1 y_new_temp_reg_35_ ( .D(y_new[35]), .CK(clock), .RN(n722), .QN(n515)
         );
  DFFR_X1 y_new_temp_reg_34_ ( .D(y_new[34]), .CK(clock), .RN(n722), .QN(n516)
         );
  DFFR_X1 y_new_temp_reg_33_ ( .D(y_new[33]), .CK(clock), .RN(n722), .QN(n517)
         );
  DFFR_X1 y_new_temp_reg_32_ ( .D(y_new[32]), .CK(clock), .RN(n722), .QN(n518)
         );
  DFFR_X1 y_new_temp_reg_31_ ( .D(y_new[31]), .CK(clock), .RN(n722), .QN(n519)
         );
  DFFR_X1 y_new_temp_reg_30_ ( .D(y_new[30]), .CK(clock), .RN(n722), .QN(n520)
         );
  DFFR_X1 y_new_temp_reg_29_ ( .D(y_new[29]), .CK(clock), .RN(n722), .QN(n521)
         );
  DFFR_X1 y_new_temp_reg_28_ ( .D(y_new[28]), .CK(clock), .RN(n722), .QN(n522)
         );
  DFFR_X1 y_new_temp_reg_27_ ( .D(y_new[27]), .CK(clock), .RN(n722), .QN(n523)
         );
  DFFR_X1 y_new_temp_reg_26_ ( .D(y_new[26]), .CK(clock), .RN(n722), .QN(n524)
         );
  DFFR_X1 y_new_temp_reg_25_ ( .D(y_new[25]), .CK(clock), .RN(n722), .QN(n525)
         );
  DFFR_X1 y_new_temp_reg_24_ ( .D(y_new[24]), .CK(clock), .RN(n722), .QN(n526)
         );
  DFFR_X1 y_new_temp_reg_23_ ( .D(y_new[23]), .CK(clock), .RN(n721), .QN(n527)
         );
  DFFR_X1 y_new_temp_reg_22_ ( .D(y_new[22]), .CK(clock), .RN(n721), .QN(n528)
         );
  DFFR_X1 y_new_temp_reg_21_ ( .D(y_new[21]), .CK(clock), .RN(n721), .QN(n529)
         );
  DFFR_X1 y_new_temp_reg_20_ ( .D(y_new[20]), .CK(clock), .RN(n721), .QN(n530)
         );
  DFFR_X1 y_new_temp_reg_19_ ( .D(y_new[19]), .CK(clock), .RN(n721), .QN(n531)
         );
  DFFR_X1 y_new_temp_reg_18_ ( .D(y_new[18]), .CK(clock), .RN(n721), .QN(n532)
         );
  DFFR_X1 y_new_temp_reg_17_ ( .D(y_new[17]), .CK(clock), .RN(n721), .QN(n533)
         );
  DFFR_X1 y_new_temp_reg_16_ ( .D(y_new[16]), .CK(clock), .RN(n721), .QN(n534)
         );
  DFFR_X1 y_new_temp_reg_15_ ( .D(y_new[15]), .CK(clock), .RN(n721), .QN(n535)
         );
  DFFR_X1 y_new_temp_reg_14_ ( .D(y_new[14]), .CK(clock), .RN(n721), .QN(n536)
         );
  DFFR_X1 y_new_temp_reg_13_ ( .D(y_new[13]), .CK(clock), .RN(n721), .QN(n537)
         );
  DFFR_X1 y_new_temp_reg_12_ ( .D(y_new[12]), .CK(clock), .RN(n721), .QN(n538)
         );
  DFFR_X1 y_new_temp_reg_11_ ( .D(y_new[11]), .CK(clock), .RN(n720), .QN(n539)
         );
  DFFR_X1 y_new_temp_reg_10_ ( .D(y_new[10]), .CK(clock), .RN(n720), .QN(n540)
         );
  DFFR_X1 y_new_temp_reg_9_ ( .D(y_new[9]), .CK(clock), .RN(n720), .QN(n541)
         );
  DFFR_X1 y_new_temp_reg_8_ ( .D(y_new[8]), .CK(clock), .RN(n720), .QN(n542)
         );
  DFFR_X1 y_new_temp_reg_7_ ( .D(y_new[7]), .CK(clock), .RN(n720), .QN(n543)
         );
  DFFR_X1 y_new_temp_reg_6_ ( .D(y_new[6]), .CK(clock), .RN(n720), .QN(n544)
         );
  DFFR_X1 y_new_temp_reg_5_ ( .D(y_new[5]), .CK(clock), .RN(n720), .QN(n545)
         );
  DFFR_X1 y_new_temp_reg_4_ ( .D(y_new[4]), .CK(clock), .RN(n720), .QN(n546)
         );
  DFFR_X1 y_new_temp_reg_3_ ( .D(y_new[3]), .CK(clock), .RN(n720), .QN(n547)
         );
  DFFR_X1 y_new_temp_reg_2_ ( .D(y_new[2]), .CK(clock), .RN(n720), .QN(n548)
         );
  DFFR_X1 y_new_temp_reg_1_ ( .D(y_new[1]), .CK(clock), .RN(n720), .QN(n549)
         );
  DFFR_X1 y_new_temp_reg_0_ ( .D(y_new[0]), .CK(clock), .RN(n720), .QN(n550)
         );
  DFFR_X1 y_old_temp_reg_47_ ( .D(y_old[47]), .CK(clock), .RN(n719), .QN(n551)
         );
  DFFR_X1 y_old_temp_reg_46_ ( .D(y_old[46]), .CK(clock), .RN(n719), .QN(n552)
         );
  DFFR_X1 y_old_temp_reg_45_ ( .D(y_old[45]), .CK(clock), .RN(n719), .QN(n553)
         );
  DFFR_X1 y_old_temp_reg_44_ ( .D(y_old[44]), .CK(clock), .RN(n719), .QN(n554)
         );
  DFFR_X1 y_old_temp_reg_43_ ( .D(y_old[43]), .CK(clock), .RN(n719), .QN(n555)
         );
  DFFR_X1 y_old_temp_reg_42_ ( .D(y_old[42]), .CK(clock), .RN(n719), .QN(n556)
         );
  DFFR_X1 y_old_temp_reg_41_ ( .D(y_old[41]), .CK(clock), .RN(n719), .QN(n557)
         );
  DFFR_X1 y_old_temp_reg_40_ ( .D(y_old[40]), .CK(clock), .RN(n719), .QN(n558)
         );
  DFFR_X1 y_old_temp_reg_39_ ( .D(y_old[39]), .CK(clock), .RN(n719), .QN(n559)
         );
  DFFR_X1 y_old_temp_reg_38_ ( .D(y_old[38]), .CK(clock), .RN(n719), .QN(n560)
         );
  DFFR_X1 y_old_temp_reg_37_ ( .D(y_old[37]), .CK(clock), .RN(n719), .QN(n561)
         );
  DFFR_X1 y_old_temp_reg_36_ ( .D(y_old[36]), .CK(clock), .RN(n719), .QN(n562)
         );
  DFFR_X1 y_old_temp_reg_35_ ( .D(y_old[35]), .CK(clock), .RN(n718), .QN(n563)
         );
  DFFR_X1 y_old_temp_reg_34_ ( .D(y_old[34]), .CK(clock), .RN(n718), .QN(n564)
         );
  DFFR_X1 y_old_temp_reg_33_ ( .D(y_old[33]), .CK(clock), .RN(n718), .QN(n565)
         );
  DFFR_X1 y_old_temp_reg_32_ ( .D(y_old[32]), .CK(clock), .RN(n718), .QN(n566)
         );
  DFFR_X1 y_old_temp_reg_31_ ( .D(y_old[31]), .CK(clock), .RN(n718), .QN(n567)
         );
  DFFR_X1 y_old_temp_reg_30_ ( .D(y_old[30]), .CK(clock), .RN(n718), .QN(n568)
         );
  DFFR_X1 y_old_temp_reg_29_ ( .D(y_old[29]), .CK(clock), .RN(n718), .QN(n569)
         );
  DFFR_X1 y_old_temp_reg_28_ ( .D(y_old[28]), .CK(clock), .RN(n718), .QN(n570)
         );
  DFFR_X1 y_old_temp_reg_27_ ( .D(y_old[27]), .CK(clock), .RN(n718), .QN(n571)
         );
  DFFR_X1 y_old_temp_reg_26_ ( .D(y_old[26]), .CK(clock), .RN(n718), .QN(n572)
         );
  DFFR_X1 y_old_temp_reg_25_ ( .D(y_old[25]), .CK(clock), .RN(n718), .QN(n573)
         );
  DFFR_X1 y_old_temp_reg_24_ ( .D(y_old[24]), .CK(clock), .RN(n718), .QN(n574)
         );
  DFFR_X1 y_old_temp_reg_23_ ( .D(y_old[23]), .CK(clock), .RN(n717), .QN(n575)
         );
  DFFR_X1 y_old_temp_reg_22_ ( .D(y_old[22]), .CK(clock), .RN(n717), .QN(n576)
         );
  DFFR_X1 y_old_temp_reg_21_ ( .D(y_old[21]), .CK(clock), .RN(n717), .QN(n577)
         );
  DFFR_X1 y_old_temp_reg_20_ ( .D(y_old[20]), .CK(clock), .RN(n717), .QN(n578)
         );
  DFFR_X1 y_old_temp_reg_19_ ( .D(y_old[19]), .CK(clock), .RN(n717), .QN(n579)
         );
  DFFR_X1 y_old_temp_reg_18_ ( .D(y_old[18]), .CK(clock), .RN(n717), .QN(n580)
         );
  DFFR_X1 y_old_temp_reg_17_ ( .D(y_old[17]), .CK(clock), .RN(n717), .QN(n581)
         );
  DFFR_X1 y_old_temp_reg_16_ ( .D(y_old[16]), .CK(clock), .RN(n717), .QN(n582)
         );
  DFFR_X1 y_old_temp_reg_15_ ( .D(y_old[15]), .CK(clock), .RN(n717), .QN(n583)
         );
  DFFR_X1 y_old_temp_reg_14_ ( .D(y_old[14]), .CK(clock), .RN(n717), .QN(n584)
         );
  DFFR_X1 y_old_temp_reg_13_ ( .D(y_old[13]), .CK(clock), .RN(n717), .QN(n585)
         );
  DFFR_X1 y_old_temp_reg_12_ ( .D(y_old[12]), .CK(clock), .RN(n717), .QN(n586)
         );
  DFFR_X1 y_old_temp_reg_11_ ( .D(y_old[11]), .CK(clock), .RN(n716), .QN(n587)
         );
  DFFR_X1 y_old_temp_reg_10_ ( .D(y_old[10]), .CK(clock), .RN(n716), .QN(n588)
         );
  DFFR_X1 y_old_temp_reg_9_ ( .D(y_old[9]), .CK(clock), .RN(n716), .QN(n589)
         );
  DFFR_X1 y_old_temp_reg_8_ ( .D(y_old[8]), .CK(clock), .RN(n716), .QN(n590)
         );
  DFFR_X1 y_old_temp_reg_7_ ( .D(y_old[7]), .CK(clock), .RN(n716), .QN(n591)
         );
  DFFR_X1 y_old_temp_reg_6_ ( .D(y_old[6]), .CK(clock), .RN(n716), .QN(n592)
         );
  DFFR_X1 y_old_temp_reg_5_ ( .D(y_old[5]), .CK(clock), .RN(n716), .QN(n593)
         );
  DFFR_X1 y_old_temp_reg_4_ ( .D(y_old[4]), .CK(clock), .RN(n716), .QN(n594)
         );
  DFFR_X1 y_old_temp_reg_3_ ( .D(y_old[3]), .CK(clock), .RN(n716), .QN(n595)
         );
  DFFR_X1 y_old_temp_reg_2_ ( .D(y_old[2]), .CK(clock), .RN(n716), .QN(n596)
         );
  DFFR_X1 y_old_temp_reg_1_ ( .D(y_old[1]), .CK(clock), .RN(n716), .QN(n597)
         );
  DFFR_X1 y_old_temp_reg_0_ ( .D(y_old[0]), .CK(clock), .RN(n716), .QN(n598)
         );
  DFFR_X1 y_diag_temp_reg_47_ ( .D(y_diag[47]), .CK(clock), .RN(n715), .QN(
        n599) );
  DFFR_X1 y_diag_temp_reg_46_ ( .D(y_diag[46]), .CK(clock), .RN(n715), .QN(
        n600) );
  DFFR_X1 y_diag_temp_reg_45_ ( .D(y_diag[45]), .CK(clock), .RN(n715), .QN(
        n601) );
  DFFR_X1 y_diag_temp_reg_44_ ( .D(y_diag[44]), .CK(clock), .RN(n715), .QN(
        n602) );
  DFFR_X1 y_diag_temp_reg_43_ ( .D(y_diag[43]), .CK(clock), .RN(n715), .QN(
        n603) );
  DFFR_X1 y_diag_temp_reg_42_ ( .D(y_diag[42]), .CK(clock), .RN(n715), .QN(
        n604) );
  DFFR_X1 y_diag_temp_reg_41_ ( .D(y_diag[41]), .CK(clock), .RN(n715), .QN(
        n605) );
  DFFR_X1 y_diag_temp_reg_40_ ( .D(y_diag[40]), .CK(clock), .RN(n715), .QN(
        n606) );
  DFFR_X1 y_diag_temp_reg_39_ ( .D(y_diag[39]), .CK(clock), .RN(n715), .QN(
        n607) );
  DFFR_X1 y_diag_temp_reg_38_ ( .D(y_diag[38]), .CK(clock), .RN(n715), .QN(
        n608) );
  DFFR_X1 y_diag_temp_reg_37_ ( .D(y_diag[37]), .CK(clock), .RN(n715), .QN(
        n609) );
  DFFR_X1 y_diag_temp_reg_36_ ( .D(y_diag[36]), .CK(clock), .RN(n715), .QN(
        n610) );
  DFFR_X1 y_diag_temp_reg_35_ ( .D(y_diag[35]), .CK(clock), .RN(n714), .QN(
        n611) );
  DFFR_X1 y_diag_temp_reg_34_ ( .D(y_diag[34]), .CK(clock), .RN(n714), .QN(
        n612) );
  DFFR_X1 y_diag_temp_reg_33_ ( .D(y_diag[33]), .CK(clock), .RN(n714), .QN(
        n613) );
  DFFR_X1 y_diag_temp_reg_32_ ( .D(y_diag[32]), .CK(clock), .RN(n714), .QN(
        n614) );
  DFFR_X1 y_diag_temp_reg_31_ ( .D(y_diag[31]), .CK(clock), .RN(n714), .QN(
        n615) );
  DFFR_X1 y_diag_temp_reg_30_ ( .D(y_diag[30]), .CK(clock), .RN(n714), .QN(
        n616) );
  DFFR_X1 y_diag_temp_reg_29_ ( .D(y_diag[29]), .CK(clock), .RN(n714), .QN(
        n617) );
  DFFR_X1 y_diag_temp_reg_28_ ( .D(y_diag[28]), .CK(clock), .RN(n714), .QN(
        n618) );
  DFFR_X1 y_diag_temp_reg_27_ ( .D(y_diag[27]), .CK(clock), .RN(n714), .QN(
        n619) );
  DFFR_X1 y_diag_temp_reg_26_ ( .D(y_diag[26]), .CK(clock), .RN(n714), .QN(
        n620) );
  DFFR_X1 y_diag_temp_reg_25_ ( .D(y_diag[25]), .CK(clock), .RN(n714), .QN(
        n621) );
  DFFR_X1 y_diag_temp_reg_24_ ( .D(y_diag[24]), .CK(clock), .RN(n714), .QN(
        n622) );
  DFFR_X1 y_diag_temp_reg_23_ ( .D(y_diag[23]), .CK(clock), .RN(n713), .QN(
        n623) );
  DFFR_X1 y_diag_temp_reg_22_ ( .D(y_diag[22]), .CK(clock), .RN(n713), .QN(
        n624) );
  DFFR_X1 y_diag_temp_reg_21_ ( .D(y_diag[21]), .CK(clock), .RN(n713), .QN(
        n625) );
  DFFR_X1 y_diag_temp_reg_20_ ( .D(y_diag[20]), .CK(clock), .RN(n713), .QN(
        n626) );
  DFFR_X1 y_diag_temp_reg_19_ ( .D(y_diag[19]), .CK(clock), .RN(n713), .QN(
        n627) );
  DFFR_X1 y_diag_temp_reg_18_ ( .D(y_diag[18]), .CK(clock), .RN(n713), .QN(
        n628) );
  DFFR_X1 y_diag_temp_reg_17_ ( .D(y_diag[17]), .CK(clock), .RN(n713), .QN(
        n629) );
  DFFR_X1 y_diag_temp_reg_16_ ( .D(y_diag[16]), .CK(clock), .RN(n713), .QN(
        n630) );
  DFFR_X1 y_diag_temp_reg_15_ ( .D(y_diag[15]), .CK(clock), .RN(n713), .QN(
        n631) );
  DFFR_X1 y_diag_temp_reg_14_ ( .D(y_diag[14]), .CK(clock), .RN(n713), .QN(
        n632) );
  DFFR_X1 y_diag_temp_reg_13_ ( .D(y_diag[13]), .CK(clock), .RN(n713), .QN(
        n633) );
  DFFR_X1 y_diag_temp_reg_12_ ( .D(y_diag[12]), .CK(clock), .RN(n713), .QN(
        n634) );
  DFFR_X1 y_diag_temp_reg_11_ ( .D(y_diag[11]), .CK(clock), .RN(n712), .QN(
        n635) );
  DFFR_X1 y_diag_temp_reg_10_ ( .D(y_diag[10]), .CK(clock), .RN(n712), .QN(
        n636) );
  DFFR_X1 y_diag_temp_reg_9_ ( .D(y_diag[9]), .CK(clock), .RN(n712), .QN(n637)
         );
  DFFR_X1 y_diag_temp_reg_8_ ( .D(y_diag[8]), .CK(clock), .RN(n712), .QN(n638)
         );
  DFFR_X1 y_diag_temp_reg_7_ ( .D(y_diag[7]), .CK(clock), .RN(n712), .QN(n639)
         );
  DFFR_X1 y_diag_temp_reg_6_ ( .D(y_diag[6]), .CK(clock), .RN(n712), .QN(n640)
         );
  DFFR_X1 y_diag_temp_reg_5_ ( .D(y_diag[5]), .CK(clock), .RN(n712), .QN(n641)
         );
  DFFR_X1 y_diag_temp_reg_4_ ( .D(y_diag[4]), .CK(clock), .RN(n712), .QN(n642)
         );
  DFFR_X1 y_diag_temp_reg_3_ ( .D(y_diag[3]), .CK(clock), .RN(n712), .QN(n643)
         );
  DFFR_X1 y_diag_temp_reg_2_ ( .D(y_diag[2]), .CK(clock), .RN(n712), .QN(n644)
         );
  DFFR_X1 y_diag_temp_reg_1_ ( .D(y_diag[1]), .CK(clock), .RN(n712), .QN(n645)
         );
  DFFR_X1 y_diag_temp_reg_0_ ( .D(y_diag[0]), .CK(clock), .RN(n712), .QN(n646)
         );
  XNOR2_X2 U4 ( .A(sel_old_or_new[0]), .B(sel_old_or_new[1]), .ZN(n697) );
  OAI22_X2 U56 ( .A1(n726), .A2(n647), .B1(n709), .B2(n599), .ZN(U5_Z_47) );
  OAI22_X2 U57 ( .A1(n726), .A2(n648), .B1(n709), .B2(n600), .ZN(U5_Z_46) );
  OAI22_X2 U58 ( .A1(n726), .A2(n649), .B1(n709), .B2(n601), .ZN(U5_Z_45) );
  OAI22_X2 U59 ( .A1(n726), .A2(n650), .B1(n709), .B2(n602), .ZN(U5_Z_44) );
  OAI22_X2 U60 ( .A1(n726), .A2(n651), .B1(n709), .B2(n603), .ZN(U5_Z_43) );
  OAI22_X2 U61 ( .A1(n726), .A2(n652), .B1(n709), .B2(n604), .ZN(U5_Z_42) );
  OAI22_X2 U62 ( .A1(n726), .A2(n653), .B1(n709), .B2(n605), .ZN(U5_Z_41) );
  OAI22_X2 U63 ( .A1(n726), .A2(n654), .B1(n709), .B2(n606), .ZN(U5_Z_40) );
  OAI22_X2 U64 ( .A1(n726), .A2(n655), .B1(n709), .B2(n607), .ZN(U5_Z_39) );
  OAI22_X2 U65 ( .A1(n726), .A2(n656), .B1(n709), .B2(n608), .ZN(U5_Z_38) );
  OAI22_X2 U66 ( .A1(n726), .A2(n657), .B1(n709), .B2(n609), .ZN(U5_Z_37) );
  OAI22_X2 U67 ( .A1(n726), .A2(n658), .B1(n709), .B2(n610), .ZN(U5_Z_36) );
  OAI22_X2 U68 ( .A1(n726), .A2(n659), .B1(n709), .B2(n611), .ZN(U5_Z_35) );
  OAI22_X2 U69 ( .A1(n726), .A2(n660), .B1(n709), .B2(n612), .ZN(U5_Z_34) );
  OAI22_X2 U70 ( .A1(n726), .A2(n661), .B1(n709), .B2(n613), .ZN(U5_Z_33) );
  OAI22_X2 U71 ( .A1(n726), .A2(n662), .B1(n709), .B2(n614), .ZN(U5_Z_32) );
  OAI22_X2 U72 ( .A1(n726), .A2(n663), .B1(n709), .B2(n615), .ZN(U5_Z_31) );
  OAI22_X2 U73 ( .A1(n726), .A2(n664), .B1(n709), .B2(n616), .ZN(U5_Z_30) );
  OAI22_X2 U74 ( .A1(n726), .A2(n665), .B1(n709), .B2(n617), .ZN(U5_Z_29) );
  OAI22_X2 U75 ( .A1(n726), .A2(n666), .B1(n709), .B2(n618), .ZN(U5_Z_28) );
  OAI22_X2 U76 ( .A1(n726), .A2(n667), .B1(n709), .B2(n619), .ZN(U5_Z_27) );
  OAI22_X2 U77 ( .A1(n726), .A2(n668), .B1(n709), .B2(n620), .ZN(U5_Z_26) );
  OAI22_X2 U78 ( .A1(n726), .A2(n669), .B1(n709), .B2(n621), .ZN(U5_Z_25) );
  OAI22_X2 U79 ( .A1(n726), .A2(n670), .B1(n709), .B2(n622), .ZN(U5_Z_24) );
  OAI22_X2 U80 ( .A1(n726), .A2(n671), .B1(sel_diag_or_sum), .B2(n623), .ZN(
        U5_Z_23) );
  OAI22_X2 U81 ( .A1(n726), .A2(n672), .B1(sel_diag_or_sum), .B2(n624), .ZN(
        U5_Z_22) );
  OAI22_X2 U82 ( .A1(n726), .A2(n673), .B1(sel_diag_or_sum), .B2(n625), .ZN(
        U5_Z_21) );
  OAI22_X2 U83 ( .A1(n726), .A2(n674), .B1(sel_diag_or_sum), .B2(n626), .ZN(
        U5_Z_20) );
  OAI22_X2 U84 ( .A1(n726), .A2(n675), .B1(sel_diag_or_sum), .B2(n627), .ZN(
        U5_Z_19) );
  OAI22_X2 U85 ( .A1(n726), .A2(n676), .B1(sel_diag_or_sum), .B2(n628), .ZN(
        U5_Z_18) );
  OAI22_X2 U86 ( .A1(n726), .A2(n677), .B1(sel_diag_or_sum), .B2(n629), .ZN(
        U5_Z_17) );
  OAI22_X2 U87 ( .A1(n726), .A2(n678), .B1(sel_diag_or_sum), .B2(n630), .ZN(
        U5_Z_16) );
  OAI22_X2 U88 ( .A1(n726), .A2(n679), .B1(n709), .B2(n631), .ZN(U5_Z_15) );
  OAI22_X2 U89 ( .A1(n726), .A2(n680), .B1(n709), .B2(n632), .ZN(U5_Z_14) );
  OAI22_X2 U90 ( .A1(n726), .A2(n681), .B1(n709), .B2(n633), .ZN(U5_Z_13) );
  OAI22_X2 U91 ( .A1(n726), .A2(n682), .B1(n709), .B2(n634), .ZN(U5_Z_12) );
  OAI22_X2 U92 ( .A1(n726), .A2(n683), .B1(n709), .B2(n635), .ZN(U5_Z_11) );
  OAI22_X2 U93 ( .A1(n726), .A2(n684), .B1(n709), .B2(n636), .ZN(U5_Z_10) );
  OAI22_X2 U94 ( .A1(n726), .A2(n685), .B1(n709), .B2(n637), .ZN(U5_Z_9) );
  OAI22_X2 U95 ( .A1(n726), .A2(n686), .B1(n709), .B2(n638), .ZN(U5_Z_8) );
  OAI22_X2 U96 ( .A1(n726), .A2(n687), .B1(n709), .B2(n639), .ZN(U5_Z_7) );
  OAI22_X2 U97 ( .A1(n726), .A2(n688), .B1(n709), .B2(n640), .ZN(U5_Z_6) );
  OAI22_X2 U98 ( .A1(n726), .A2(n689), .B1(n709), .B2(n641), .ZN(U5_Z_5) );
  OAI22_X2 U99 ( .A1(n726), .A2(n690), .B1(n709), .B2(n642), .ZN(U5_Z_4) );
  OAI22_X2 U100 ( .A1(n726), .A2(n691), .B1(n709), .B2(n643), .ZN(U5_Z_3) );
  OAI22_X2 U101 ( .A1(n726), .A2(n692), .B1(n709), .B2(n644), .ZN(U5_Z_2) );
  OAI22_X2 U102 ( .A1(n726), .A2(n693), .B1(sel_diag_or_sum), .B2(n645), .ZN(
        U5_Z_1) );
  OAI22_X2 U103 ( .A1(n694), .A2(n726), .B1(n646), .B2(sel_diag_or_sum), .ZN(
        U5_Z_0) );
  OAI222_X2 U6 ( .A1(n703), .A2(n551), .B1(n705), .B2(n503), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_47) );
  OAI222_X2 U7 ( .A1(n703), .A2(n552), .B1(n704), .B2(n504), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_46) );
  OAI222_X2 U8 ( .A1(n702), .A2(n553), .B1(n704), .B2(n505), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_45) );
  OAI222_X2 U9 ( .A1(n703), .A2(n554), .B1(n705), .B2(n506), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_44) );
  OAI222_X2 U10 ( .A1(n702), .A2(n555), .B1(n704), .B2(n507), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_43) );
  OAI222_X2 U11 ( .A1(n702), .A2(n556), .B1(n705), .B2(n508), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_42) );
  OAI222_X2 U12 ( .A1(n703), .A2(n557), .B1(n705), .B2(n509), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_41) );
  OAI222_X2 U13 ( .A1(n703), .A2(n558), .B1(n705), .B2(n510), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_40) );
  OAI222_X2 U14 ( .A1(n702), .A2(n559), .B1(n705), .B2(n511), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_39) );
  OAI222_X2 U15 ( .A1(n703), .A2(n560), .B1(n705), .B2(n512), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_38) );
  OAI222_X2 U16 ( .A1(n702), .A2(n561), .B1(n705), .B2(n513), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_37) );
  OAI222_X2 U17 ( .A1(n703), .A2(n562), .B1(n705), .B2(n514), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_36) );
  OAI222_X2 U18 ( .A1(n702), .A2(n563), .B1(n705), .B2(n515), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_35) );
  OAI222_X2 U19 ( .A1(n702), .A2(n564), .B1(n705), .B2(n516), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_34) );
  OAI222_X2 U20 ( .A1(n703), .A2(n565), .B1(n705), .B2(n517), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_33) );
  OAI222_X2 U21 ( .A1(n702), .A2(n566), .B1(n705), .B2(n518), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_32) );
  OAI222_X2 U22 ( .A1(n703), .A2(n567), .B1(n705), .B2(n519), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_31) );
  OAI222_X2 U23 ( .A1(n702), .A2(n568), .B1(n705), .B2(n520), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_30) );
  OAI222_X2 U24 ( .A1(n703), .A2(n569), .B1(n705), .B2(n521), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_29) );
  OAI222_X2 U25 ( .A1(n702), .A2(n570), .B1(n705), .B2(n522), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_28) );
  OAI222_X2 U26 ( .A1(n703), .A2(n571), .B1(n704), .B2(n523), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_27) );
  OAI222_X2 U27 ( .A1(n702), .A2(n572), .B1(n704), .B2(n524), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_26) );
  OAI222_X2 U28 ( .A1(n703), .A2(n573), .B1(n704), .B2(n525), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_25) );
  OAI222_X2 U30 ( .A1(n702), .A2(n575), .B1(n704), .B2(n527), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_23) );
  OAI222_X2 U31 ( .A1(n702), .A2(n576), .B1(n704), .B2(n528), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_22) );
  OAI222_X2 U32 ( .A1(n702), .A2(n577), .B1(n704), .B2(n529), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_21) );
  OAI222_X2 U33 ( .A1(n702), .A2(n578), .B1(n704), .B2(n530), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_20) );
  OAI222_X2 U35 ( .A1(n702), .A2(n580), .B1(n704), .B2(n532), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_18) );
  OAI222_X2 U37 ( .A1(n702), .A2(n582), .B1(n704), .B2(n534), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_16) );
  OAI222_X2 U39 ( .A1(n702), .A2(n584), .B1(n704), .B2(n536), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_14) );
  OAI222_X2 U41 ( .A1(n702), .A2(n586), .B1(n705), .B2(n538), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_12) );
  OAI222_X2 U42 ( .A1(n703), .A2(n587), .B1(n704), .B2(n539), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_11) );
  OAI222_X2 U43 ( .A1(n703), .A2(n588), .B1(n705), .B2(n540), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_10) );
  OAI222_X2 U44 ( .A1(n703), .A2(n589), .B1(n704), .B2(n541), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_9) );
  OAI222_X2 U45 ( .A1(n703), .A2(n590), .B1(n705), .B2(n542), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_8) );
  OAI222_X2 U46 ( .A1(n703), .A2(n591), .B1(n704), .B2(n543), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_7) );
  OAI222_X2 U47 ( .A1(n703), .A2(n592), .B1(n705), .B2(n544), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_6) );
  OAI222_X2 U48 ( .A1(n703), .A2(n593), .B1(n704), .B2(n545), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_5) );
  OAI222_X2 U49 ( .A1(n703), .A2(n594), .B1(n705), .B2(n546), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_4) );
  OAI222_X2 U50 ( .A1(n703), .A2(n595), .B1(n704), .B2(n547), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_3) );
  OAI222_X2 U51 ( .A1(n703), .A2(n596), .B1(n705), .B2(n548), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_2) );
  OAI222_X2 U52 ( .A1(n703), .A2(n597), .B1(n704), .B2(n549), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_1) );
  OAI222_X2 U53 ( .A1(n598), .A2(n703), .B1(n550), .B2(n705), .C1(1'b1), .C2(
        n707), .ZN(U4_Z_0) );
  DFFR_X2 y_new_diag_reg_47_ ( .D(n[146]), .CK(clock), .RN(n710), .Q(
        y_new_diag[47]), .QN(n647) );
  DFFR_X2 y_new_diag_reg_46_ ( .D(n[145]), .CK(clock), .RN(n710), .Q(
        y_new_diag[46]), .QN(n648) );
  DFFR_X2 y_new_diag_reg_45_ ( .D(n[144]), .CK(clock), .RN(n710), .Q(
        y_new_diag[45]), .QN(n649) );
  DFFR_X2 y_new_diag_reg_44_ ( .D(n[143]), .CK(clock), .RN(n710), .Q(
        y_new_diag[44]), .QN(n650) );
  DFFR_X2 y_new_diag_reg_43_ ( .D(n[142]), .CK(clock), .RN(n710), .Q(
        y_new_diag[43]), .QN(n651) );
  DFFR_X2 y_new_diag_reg_42_ ( .D(n[141]), .CK(clock), .RN(n710), .Q(
        y_new_diag[42]), .QN(n652) );
  DFFR_X2 y_new_diag_reg_41_ ( .D(n[140]), .CK(clock), .RN(n710), .Q(
        y_new_diag[41]), .QN(n653) );
  DFFR_X2 y_new_diag_reg_40_ ( .D(n[139]), .CK(clock), .RN(n710), .Q(
        y_new_diag[40]), .QN(n654) );
  DFFR_X2 y_new_diag_reg_39_ ( .D(n[138]), .CK(clock), .RN(n710), .Q(
        y_new_diag[39]), .QN(n655) );
  DFFR_X2 y_new_diag_reg_38_ ( .D(n[137]), .CK(clock), .RN(n710), .Q(
        y_new_diag[38]), .QN(n656) );
  DFFR_X2 y_new_diag_reg_37_ ( .D(n[136]), .CK(clock), .RN(n710), .Q(
        y_new_diag[37]), .QN(n657) );
  DFFR_X2 y_new_diag_reg_36_ ( .D(n[135]), .CK(clock), .RN(n710), .Q(
        y_new_diag[36]), .QN(n658) );
  DFFR_X2 y_new_diag_reg_35_ ( .D(n[134]), .CK(clock), .RN(n711), .Q(
        y_new_diag[35]), .QN(n659) );
  DFFR_X2 y_new_diag_reg_34_ ( .D(n[133]), .CK(clock), .RN(n711), .Q(
        y_new_diag[34]), .QN(n660) );
  DFFR_X2 y_new_diag_reg_33_ ( .D(n[132]), .CK(clock), .RN(n711), .Q(
        y_new_diag[33]), .QN(n661) );
  DFFR_X2 y_new_diag_reg_32_ ( .D(n[131]), .CK(clock), .RN(n711), .Q(
        y_new_diag[32]), .QN(n662) );
  DFFR_X2 y_new_diag_reg_31_ ( .D(n[130]), .CK(clock), .RN(n711), .Q(
        y_new_diag[31]), .QN(n663) );
  DFFR_X2 y_new_diag_reg_30_ ( .D(n[129]), .CK(clock), .RN(n711), .Q(
        y_new_diag[30]), .QN(n664) );
  DFFR_X2 y_new_diag_reg_29_ ( .D(n[128]), .CK(clock), .RN(n711), .Q(
        y_new_diag[29]), .QN(n665) );
  DFFR_X2 y_new_diag_reg_28_ ( .D(n[127]), .CK(clock), .RN(n711), .Q(
        y_new_diag[28]), .QN(n666) );
  DFFR_X2 y_new_diag_reg_27_ ( .D(n[126]), .CK(clock), .RN(n711), .Q(
        y_new_diag[27]), .QN(n667) );
  DFFR_X2 y_new_diag_reg_26_ ( .D(n[125]), .CK(clock), .RN(n711), .Q(
        y_new_diag[26]), .QN(n668) );
  DFFR_X2 y_new_diag_reg_25_ ( .D(n[124]), .CK(clock), .RN(n711), .Q(
        y_new_diag[25]), .QN(n669) );
  DFFR_X2 y_new_diag_reg_24_ ( .D(n[123]), .CK(clock), .RN(n711), .Q(
        y_new_diag[24]), .QN(n670) );
  DFFR_X2 y_new_diag_reg_23_ ( .D(n[122]), .CK(clock), .RN(n721), .Q(
        y_new_diag[23]), .QN(n671) );
  DFFR_X2 y_new_diag_reg_22_ ( .D(n[121]), .CK(clock), .RN(n718), .Q(
        y_new_diag[22]), .QN(n672) );
  DFFR_X2 y_new_diag_reg_21_ ( .D(n[120]), .CK(clock), .RN(n719), .Q(
        y_new_diag[21]), .QN(n673) );
  DFFR_X2 y_new_diag_reg_20_ ( .D(n[119]), .CK(clock), .RN(n711), .Q(
        y_new_diag[20]), .QN(n674) );
  DFFR_X2 y_new_diag_reg_19_ ( .D(n[118]), .CK(clock), .RN(n710), .Q(
        y_new_diag[19]), .QN(n675) );
  DFFR_X2 y_new_diag_reg_18_ ( .D(n[117]), .CK(clock), .RN(n722), .Q(
        y_new_diag[18]), .QN(n676) );
  DFFR_X2 y_new_diag_reg_17_ ( .D(n[116]), .CK(clock), .RN(n713), .Q(
        y_new_diag[17]), .QN(n677) );
  DFFR_X2 y_new_diag_reg_16_ ( .D(n[115]), .CK(clock), .RN(n712), .Q(
        y_new_diag[16]), .QN(n678) );
  DFFR_X2 y_new_diag_reg_15_ ( .D(n[114]), .CK(clock), .RN(n720), .Q(
        y_new_diag[15]), .QN(n679) );
  DFFR_X2 y_new_diag_reg_14_ ( .D(n[113]), .CK(clock), .RN(n717), .Q(
        y_new_diag[14]), .QN(n680) );
  DFFR_X2 y_new_diag_reg_13_ ( .D(n[112]), .CK(clock), .RN(n716), .Q(
        y_new_diag[13]), .QN(n681) );
  DFFR_X2 y_new_diag_reg_12_ ( .D(n[111]), .CK(clock), .RN(n715), .Q(
        y_new_diag[12]), .QN(n682) );
  DFFR_X2 y_new_diag_reg_11_ ( .D(n[110]), .CK(clock), .RN(n714), .Q(
        y_new_diag[11]), .QN(n683) );
  DFFR_X2 y_new_diag_reg_10_ ( .D(n[109]), .CK(clock), .RN(n723), .Q(
        y_new_diag[10]), .QN(n684) );
  DFFR_X2 y_new_diag_reg_9_ ( .D(n[108]), .CK(clock), .RN(n711), .Q(
        y_new_diag[9]), .QN(n685) );
  DFFR_X2 y_new_diag_reg_8_ ( .D(n[107]), .CK(clock), .RN(n710), .Q(
        y_new_diag[8]), .QN(n686) );
  DFFR_X2 y_new_diag_reg_7_ ( .D(n[106]), .CK(clock), .RN(n722), .Q(
        y_new_diag[7]), .QN(n687) );
  DFFR_X2 y_new_diag_reg_6_ ( .D(n[105]), .CK(clock), .RN(n713), .Q(
        y_new_diag[6]), .QN(n688) );
  DFFR_X2 y_new_diag_reg_5_ ( .D(n[104]), .CK(clock), .RN(n712), .Q(
        y_new_diag[5]), .QN(n689) );
  DFFR_X2 y_new_diag_reg_4_ ( .D(n[103]), .CK(clock), .RN(n720), .Q(
        y_new_diag[4]), .QN(n690) );
  DFFR_X2 y_new_diag_reg_3_ ( .D(n[102]), .CK(clock), .RN(n717), .Q(
        y_new_diag[3]), .QN(n691) );
  DFFR_X2 y_new_diag_reg_2_ ( .D(n[101]), .CK(clock), .RN(n716), .Q(
        y_new_diag[2]), .QN(n692) );
  DFFR_X2 y_new_diag_reg_1_ ( .D(n[100]), .CK(clock), .RN(n715), .Q(
        y_new_diag[1]), .QN(n693) );
  DFFR_X2 y_new_diag_reg_0_ ( .D(n[99]), .CK(clock), .RN(n714), .Q(
        y_new_diag[0]), .QN(n694) );
  AND2_X4 U104 ( .A1(n697), .A2(n703), .ZN(n700) );
  AND2_X4 U105 ( .A1(sel_old_or_new[0]), .A2(sel_old_or_new[1]), .ZN(n701) );
  INV_X4 U106 ( .A(n700), .ZN(n704) );
  INV_X4 U107 ( .A(n700), .ZN(n705) );
  INV_X4 U108 ( .A(n724), .ZN(n711) );
  INV_X4 U109 ( .A(n724), .ZN(n712) );
  INV_X4 U110 ( .A(n724), .ZN(n713) );
  INV_X4 U111 ( .A(n724), .ZN(n714) );
  INV_X4 U112 ( .A(n724), .ZN(n715) );
  INV_X4 U113 ( .A(n724), .ZN(n716) );
  INV_X4 U114 ( .A(n724), .ZN(n717) );
  INV_X4 U115 ( .A(n724), .ZN(n718) );
  INV_X4 U116 ( .A(n724), .ZN(n719) );
  INV_X4 U117 ( .A(n724), .ZN(n720) );
  INV_X4 U118 ( .A(n724), .ZN(n721) );
  INV_X4 U119 ( .A(n724), .ZN(n722) );
  INV_X4 U120 ( .A(n724), .ZN(n723) );
  INV_X4 U121 ( .A(n724), .ZN(n710) );
  INV_X4 U122 ( .A(reset), .ZN(n724) );
  INV_X4 U123 ( .A(n701), .ZN(n703) );
  INV_X4 U124 ( .A(n706), .ZN(n707) );
  INV_X4 U125 ( .A(n701), .ZN(n702) );
  INV_X4 U126 ( .A(sel_diag_or_sum), .ZN(n708) );
  INV_X4 U127 ( .A(n726), .ZN(n709) );
  INV_X4 U128 ( .A(n697), .ZN(n706) );
  OAI222_X1 U29 ( .A1(n702), .A2(n574), .B1(n704), .B2(n526), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_24) );
  OAI222_X1 U34 ( .A1(n702), .A2(n579), .B1(n704), .B2(n531), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_19) );
  OAI222_X1 U36 ( .A1(n702), .A2(n581), .B1(n704), .B2(n533), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_17) );
  OAI222_X1 U38 ( .A1(n702), .A2(n583), .B1(n704), .B2(n535), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_15) );
  OAI222_X1 U40 ( .A1(n702), .A2(n585), .B1(n704), .B2(n537), .C1(1'b1), .C2(
        n697), .ZN(U4_Z_13) );
  INV_X1 U129 ( .A(n708), .ZN(n725) );
  INV_X8 U130 ( .A(n725), .ZN(n726) );
endmodule

