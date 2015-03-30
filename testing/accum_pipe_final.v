
module fp_addsub_24_1_DW01_inc_1 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:2] carry;

  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[16]), .B(A[16]), .Z(SUM[16]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module fp_addsub_24_1_DW_leftsh_0 ( A, SH, B );
  input [20:0] A;
  input [4:0] SH;
  output [20:0] B;
  wire   n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358;

  INV_X4 U228 ( .A(SH[0]), .ZN(n277) );
  INV_X4 U229 ( .A(SH[1]), .ZN(n275) );
  INV_X4 U230 ( .A(SH[2]), .ZN(n271) );
  INV_X4 U231 ( .A(SH[3]), .ZN(n264) );
  INV_X4 U232 ( .A(n281), .ZN(n256) );
  INV_X4 U233 ( .A(n287), .ZN(n257) );
  INV_X4 U234 ( .A(n288), .ZN(n258) );
  INV_X4 U235 ( .A(n289), .ZN(n259) );
  INV_X4 U236 ( .A(n323), .ZN(n260) );
  INV_X4 U237 ( .A(n329), .ZN(n261) );
  INV_X4 U238 ( .A(n298), .ZN(n262) );
  INV_X4 U239 ( .A(n278), .ZN(n263) );
  INV_X4 U240 ( .A(n309), .ZN(n265) );
  INV_X4 U241 ( .A(n301), .ZN(n266) );
  INV_X4 U242 ( .A(n292), .ZN(n267) );
  INV_X4 U243 ( .A(n342), .ZN(n268) );
  INV_X4 U244 ( .A(n336), .ZN(n269) );
  INV_X4 U245 ( .A(n284), .ZN(n270) );
  INV_X4 U246 ( .A(n340), .ZN(n272) );
  INV_X4 U247 ( .A(n327), .ZN(n273) );
  INV_X4 U248 ( .A(n321), .ZN(n274) );
  INV_X4 U249 ( .A(n354), .ZN(n276) );
  NOR2_X1 U250 ( .A1(SH[4]), .A2(n263), .ZN(B[9]) );
  MUX2_X1 U251 ( .A(n279), .B(n280), .S(n264), .Z(n278) );
  NOR2_X1 U252 ( .A1(SH[4]), .A2(n256), .ZN(B[8]) );
  MUX2_X1 U253 ( .A(n282), .B(n283), .S(SH[3]), .Z(n281) );
  NOR3_X1 U254 ( .A1(n270), .A2(SH[4]), .A3(SH[3]), .ZN(B[7]) );
  NOR3_X1 U255 ( .A1(n285), .A2(SH[4]), .A3(SH[3]), .ZN(B[6]) );
  NOR3_X1 U256 ( .A1(n286), .A2(SH[4]), .A3(SH[3]), .ZN(B[5]) );
  NOR2_X1 U257 ( .A1(SH[4]), .A2(n257), .ZN(B[4]) );
  NOR2_X1 U258 ( .A1(SH[4]), .A2(n258), .ZN(B[3]) );
  NOR2_X1 U259 ( .A1(SH[4]), .A2(n259), .ZN(B[2]) );
  MUX2_X1 U260 ( .A(n290), .B(n287), .S(SH[4]), .Z(B[20]) );
  NOR2_X1 U261 ( .A1(n291), .A2(SH[3]), .ZN(n287) );
  MUX2_X1 U262 ( .A(n292), .B(n293), .S(n264), .Z(n290) );
  MUX2_X1 U263 ( .A(n294), .B(n295), .S(n271), .Z(n293) );
  MUX2_X1 U264 ( .A(n296), .B(n297), .S(n275), .Z(n295) );
  MUX2_X1 U265 ( .A(A[19]), .B(A[20]), .S(n277), .Z(n297) );
  NOR2_X1 U266 ( .A1(SH[4]), .A2(n298), .ZN(B[1]) );
  MUX2_X1 U267 ( .A(n299), .B(n288), .S(SH[4]), .Z(B[19]) );
  NOR2_X1 U268 ( .A1(n300), .A2(SH[3]), .ZN(n288) );
  MUX2_X1 U269 ( .A(n301), .B(n302), .S(n264), .Z(n299) );
  MUX2_X1 U270 ( .A(n303), .B(n304), .S(n271), .Z(n302) );
  MUX2_X1 U271 ( .A(n305), .B(n306), .S(n275), .Z(n304) );
  MUX2_X1 U272 ( .A(A[18]), .B(A[19]), .S(n277), .Z(n306) );
  MUX2_X1 U273 ( .A(n307), .B(n289), .S(SH[4]), .Z(B[18]) );
  NOR2_X1 U274 ( .A1(n308), .A2(SH[3]), .ZN(n289) );
  MUX2_X1 U275 ( .A(n309), .B(n310), .S(n264), .Z(n307) );
  MUX2_X1 U276 ( .A(n311), .B(n312), .S(n271), .Z(n310) );
  MUX2_X1 U277 ( .A(n313), .B(n296), .S(n275), .Z(n312) );
  MUX2_X1 U278 ( .A(A[18]), .B(A[17]), .S(SH[0]), .Z(n296) );
  MUX2_X1 U279 ( .A(n314), .B(n262), .S(SH[4]), .Z(B[17]) );
  NAND2_X1 U280 ( .A1(n279), .A2(n264), .ZN(n298) );
  NOR2_X1 U281 ( .A1(n315), .A2(SH[2]), .ZN(n279) );
  MUX2_X1 U282 ( .A(n280), .B(n316), .S(n264), .Z(n314) );
  MUX2_X1 U283 ( .A(n317), .B(n318), .S(n271), .Z(n316) );
  MUX2_X1 U284 ( .A(n319), .B(n305), .S(n275), .Z(n318) );
  MUX2_X1 U285 ( .A(A[17]), .B(A[16]), .S(SH[0]), .Z(n305) );
  MUX2_X1 U286 ( .A(n320), .B(n321), .S(SH[2]), .Z(n280) );
  MUX2_X1 U287 ( .A(n322), .B(n260), .S(SH[4]), .Z(B[16]) );
  MUX2_X1 U288 ( .A(n282), .B(n324), .S(n264), .Z(n322) );
  MUX2_X1 U289 ( .A(n325), .B(n294), .S(n271), .Z(n324) );
  MUX2_X1 U290 ( .A(n326), .B(n313), .S(n275), .Z(n294) );
  MUX2_X1 U291 ( .A(A[15]), .B(A[16]), .S(n277), .Z(n313) );
  MUX2_X1 U292 ( .A(n327), .B(n328), .S(n271), .Z(n282) );
  NOR2_X1 U293 ( .A1(SH[4]), .A2(n261), .ZN(B[15]) );
  MUX2_X1 U294 ( .A(n284), .B(n330), .S(n264), .Z(n329) );
  MUX2_X1 U295 ( .A(n331), .B(n303), .S(n271), .Z(n330) );
  MUX2_X1 U296 ( .A(n332), .B(n319), .S(n275), .Z(n303) );
  MUX2_X1 U297 ( .A(A[14]), .B(A[15]), .S(n277), .Z(n319) );
  MUX2_X1 U298 ( .A(n333), .B(n334), .S(n271), .Z(n284) );
  NOR2_X1 U299 ( .A1(SH[4]), .A2(n335), .ZN(B[14]) );
  MUX2_X1 U300 ( .A(n285), .B(n269), .S(n264), .Z(n335) );
  MUX2_X1 U301 ( .A(n337), .B(n311), .S(n271), .Z(n336) );
  MUX2_X1 U302 ( .A(n338), .B(n326), .S(n275), .Z(n311) );
  MUX2_X1 U303 ( .A(A[13]), .B(A[14]), .S(n277), .Z(n326) );
  MUX2_X1 U304 ( .A(n339), .B(n272), .S(n271), .Z(n285) );
  NOR2_X1 U305 ( .A1(SH[4]), .A2(n341), .ZN(B[13]) );
  MUX2_X1 U306 ( .A(n286), .B(n268), .S(n264), .Z(n341) );
  MUX2_X1 U307 ( .A(n320), .B(n317), .S(n271), .Z(n342) );
  MUX2_X1 U308 ( .A(n343), .B(n332), .S(n275), .Z(n317) );
  MUX2_X1 U309 ( .A(A[12]), .B(A[13]), .S(n277), .Z(n332) );
  MUX2_X1 U310 ( .A(n344), .B(n345), .S(n275), .Z(n320) );
  MUX2_X1 U311 ( .A(n315), .B(n274), .S(n271), .Z(n286) );
  MUX2_X1 U312 ( .A(n346), .B(n347), .S(n275), .Z(n321) );
  NAND2_X1 U313 ( .A1(n348), .A2(n275), .ZN(n315) );
  NOR2_X1 U314 ( .A1(SH[4]), .A2(n349), .ZN(B[12]) );
  MUX2_X1 U315 ( .A(n291), .B(n267), .S(n264), .Z(n349) );
  MUX2_X1 U316 ( .A(n328), .B(n325), .S(n271), .Z(n292) );
  MUX2_X1 U317 ( .A(n350), .B(n338), .S(n275), .Z(n325) );
  MUX2_X1 U318 ( .A(A[11]), .B(A[12]), .S(n277), .Z(n338) );
  MUX2_X1 U319 ( .A(n351), .B(n352), .S(n275), .Z(n328) );
  MUX2_X1 U320 ( .A(n353), .B(n273), .S(n271), .Z(n291) );
  MUX2_X1 U321 ( .A(n354), .B(n355), .S(n275), .Z(n327) );
  NOR2_X1 U322 ( .A1(SH[4]), .A2(n356), .ZN(B[11]) );
  MUX2_X1 U323 ( .A(n300), .B(n266), .S(n264), .Z(n356) );
  MUX2_X1 U324 ( .A(n334), .B(n331), .S(n271), .Z(n301) );
  MUX2_X1 U325 ( .A(n345), .B(n343), .S(n275), .Z(n331) );
  MUX2_X1 U326 ( .A(A[10]), .B(A[11]), .S(n277), .Z(n343) );
  MUX2_X1 U327 ( .A(A[8]), .B(A[9]), .S(n277), .Z(n345) );
  MUX2_X1 U328 ( .A(n347), .B(n344), .S(n275), .Z(n334) );
  MUX2_X1 U329 ( .A(A[6]), .B(A[7]), .S(n277), .Z(n344) );
  MUX2_X1 U330 ( .A(A[4]), .B(A[5]), .S(n277), .Z(n347) );
  NAND2_X1 U331 ( .A1(n333), .A2(n271), .ZN(n300) );
  MUX2_X1 U332 ( .A(n348), .B(n346), .S(n275), .Z(n333) );
  MUX2_X1 U333 ( .A(A[2]), .B(A[3]), .S(n277), .Z(n346) );
  MUX2_X1 U334 ( .A(A[0]), .B(A[1]), .S(n277), .Z(n348) );
  NOR2_X1 U335 ( .A1(SH[4]), .A2(n357), .ZN(B[10]) );
  MUX2_X1 U336 ( .A(n308), .B(n265), .S(n264), .Z(n357) );
  MUX2_X1 U337 ( .A(n340), .B(n337), .S(n271), .Z(n309) );
  MUX2_X1 U338 ( .A(n352), .B(n350), .S(n275), .Z(n337) );
  MUX2_X1 U339 ( .A(A[9]), .B(A[10]), .S(n277), .Z(n350) );
  MUX2_X1 U340 ( .A(A[7]), .B(A[8]), .S(n277), .Z(n352) );
  MUX2_X1 U341 ( .A(n355), .B(n351), .S(n275), .Z(n340) );
  MUX2_X1 U342 ( .A(A[5]), .B(A[6]), .S(n277), .Z(n351) );
  MUX2_X1 U343 ( .A(A[3]), .B(A[4]), .S(n277), .Z(n355) );
  OR2_X1 U344 ( .A1(n339), .A2(SH[2]), .ZN(n308) );
  MUX2_X1 U345 ( .A(n358), .B(n276), .S(n275), .Z(n339) );
  MUX2_X1 U346 ( .A(A[1]), .B(A[2]), .S(n277), .Z(n354) );
  NOR2_X1 U347 ( .A1(SH[4]), .A2(n323), .ZN(B[0]) );
  NAND2_X1 U348 ( .A1(n283), .A2(n264), .ZN(n323) );
  NOR2_X1 U349 ( .A1(n353), .A2(SH[2]), .ZN(n283) );
  OR2_X1 U350 ( .A1(n358), .A2(SH[1]), .ZN(n353) );
  NAND2_X1 U351 ( .A1(A[0]), .A2(n277), .ZN(n358) );
endmodule


module fp_addsub_24_1_DW_lzd_0 ( a, enc, dec );
  input [20:0] a;
  output [5:0] enc;
  output [20:0] dec;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  INV_X4 U1 ( .A(n21), .ZN(n1) );
  INV_X4 U2 ( .A(a[18]), .ZN(n2) );
  INV_X4 U3 ( .A(a[17]), .ZN(n3) );
  INV_X4 U4 ( .A(a[16]), .ZN(n4) );
  INV_X4 U5 ( .A(a[15]), .ZN(n5) );
  INV_X4 U6 ( .A(a[14]), .ZN(n6) );
  INV_X4 U7 ( .A(a[13]), .ZN(n7) );
  INV_X4 U8 ( .A(n23), .ZN(n8) );
  INV_X4 U9 ( .A(a[10]), .ZN(n9) );
  INV_X4 U10 ( .A(a[9]), .ZN(n10) );
  INV_X4 U11 ( .A(a[6]), .ZN(n11) );
  INV_X4 U12 ( .A(a[5]), .ZN(n12) );
  INV_X4 U13 ( .A(n32), .ZN(n13) );
  INV_X4 U14 ( .A(a[2]), .ZN(n14) );
  INV_X4 U15 ( .A(n33), .ZN(n15) );
  INV_X4 U16 ( .A(a[0]), .ZN(n16) );
  AND3_X1 U17 ( .A1(enc[4]), .A2(n16), .A3(n17), .ZN(enc[5]) );
  NOR3_X1 U18 ( .A1(n8), .A2(n18), .A3(n19), .ZN(enc[4]) );
  NOR2_X1 U19 ( .A1(n20), .A2(n19), .ZN(enc[3]) );
  NAND2_X1 U20 ( .A1(n21), .A2(n22), .ZN(n19) );
  AOI211_X1 U21 ( .C1(n17), .C2(n16), .A(n8), .B(n18), .ZN(n20) );
  AOI21_X1 U22 ( .B1(n22), .B2(n24), .A(n1), .ZN(enc[2]) );
  NOR4_X1 U23 ( .A1(a[17]), .A2(a[18]), .A3(a[19]), .A4(a[20]), .ZN(n21) );
  OAI21_X1 U24 ( .B1(n17), .B2(n18), .A(n23), .ZN(n24) );
  NOR4_X1 U25 ( .A1(a[10]), .A2(a[11]), .A3(a[12]), .A4(a[9]), .ZN(n23) );
  OR4_X1 U26 ( .A1(a[5]), .A2(a[6]), .A3(a[7]), .A4(a[8]), .ZN(n18) );
  NOR4_X1 U27 ( .A1(a[1]), .A2(a[2]), .A3(a[3]), .A4(a[4]), .ZN(n17) );
  NOR4_X1 U28 ( .A1(a[13]), .A2(a[14]), .A3(a[15]), .A4(a[16]), .ZN(n22) );
  AOI211_X1 U29 ( .C1(n25), .C2(n26), .A(a[20]), .B(a[19]), .ZN(enc[1]) );
  OAI211_X1 U30 ( .C1(n27), .C2(n28), .A(n5), .B(n4), .ZN(n26) );
  NAND2_X1 U31 ( .A1(n7), .A2(n6), .ZN(n28) );
  NOR3_X1 U32 ( .A1(n29), .A2(a[12]), .A3(a[11]), .ZN(n27) );
  NOR3_X1 U33 ( .A1(n30), .A2(a[9]), .A3(a[10]), .ZN(n29) );
  AOI211_X1 U34 ( .C1(n31), .C2(n13), .A(a[8]), .B(a[7]), .ZN(n30) );
  AOI211_X1 U35 ( .C1(n14), .C2(n33), .A(a[3]), .B(a[4]), .ZN(n32) );
  NOR2_X1 U36 ( .A1(a[6]), .A2(a[5]), .ZN(n31) );
  NOR2_X1 U37 ( .A1(a[18]), .A2(a[17]), .ZN(n25) );
  NOR2_X1 U38 ( .A1(a[20]), .A2(n34), .ZN(enc[0]) );
  AOI21_X1 U39 ( .B1(n35), .B2(n2), .A(a[19]), .ZN(n34) );
  OAI21_X1 U40 ( .B1(a[16]), .B2(n36), .A(n3), .ZN(n35) );
  AOI21_X1 U41 ( .B1(n37), .B2(n6), .A(a[15]), .ZN(n36) );
  OAI21_X1 U42 ( .B1(a[12]), .B2(n38), .A(n7), .ZN(n37) );
  AOI21_X1 U43 ( .B1(n39), .B2(n9), .A(a[11]), .ZN(n38) );
  OAI21_X1 U44 ( .B1(a[8]), .B2(n40), .A(n10), .ZN(n39) );
  AOI21_X1 U45 ( .B1(n41), .B2(n11), .A(a[7]), .ZN(n40) );
  OAI21_X1 U46 ( .B1(a[4]), .B2(n42), .A(n12), .ZN(n41) );
  AOI21_X1 U47 ( .B1(n15), .B2(n14), .A(a[3]), .ZN(n42) );
  NOR2_X1 U48 ( .A1(n16), .A2(a[1]), .ZN(n33) );
endmodule


module fp_addsub_24_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n5, n6;
  wire   [21:5] carry;

  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  AND2_X4 U1 ( .A1(B[3]), .A2(A[3]), .ZN(n1) );
  BUF_X4 U2 ( .A(B[2]), .Z(SUM[2]) );
  BUF_X4 U3 ( .A(B[1]), .Z(SUM[1]) );
  BUF_X4 U4 ( .A(B[0]), .Z(SUM[0]) );
  XNOR2_X2 U5 ( .A(B[21]), .B(n5), .ZN(SUM[21]) );
  INV_X4 U6 ( .A(carry[21]), .ZN(n5) );
  INV_X4 U7 ( .A(A[3]), .ZN(n6) );
  XNOR2_X2 U8 ( .A(B[3]), .B(n6), .ZN(SUM[3]) );
endmodule


module fp_addsub_24_1_DW_rightsh_0 ( A, DATA_TC, SH, B );
  input [19:0] A;
  input [5:0] SH;
  output [19:0] B;
  input DATA_TC;
  wire   n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365;

  INV_X2 U229 ( .A(SH[0]), .ZN(n258) );
  INV_X4 U230 ( .A(n264), .ZN(n263) );
  INV_X4 U231 ( .A(SH[4]), .ZN(n264) );
  INV_X4 U232 ( .A(n259), .ZN(n260) );
  INV_X4 U233 ( .A(SH[1]), .ZN(n259) );
  INV_X4 U234 ( .A(n261), .ZN(n262) );
  INV_X4 U235 ( .A(SH[3]), .ZN(n261) );
  INV_X4 U236 ( .A(n289), .ZN(n265) );
  INV_X4 U237 ( .A(n341), .ZN(n266) );
  INV_X4 U238 ( .A(n342), .ZN(n267) );
  INV_X4 U239 ( .A(n292), .ZN(n268) );
  INV_X4 U240 ( .A(n328), .ZN(n269) );
  INV_X4 U241 ( .A(n356), .ZN(n270) );
  INV_X4 U242 ( .A(n363), .ZN(n271) );
  INV_X4 U243 ( .A(n338), .ZN(n272) );
  INV_X4 U244 ( .A(n340), .ZN(n273) );
  INV_X4 U245 ( .A(n352), .ZN(n274) );
  INV_X4 U246 ( .A(n353), .ZN(n275) );
  INV_X4 U247 ( .A(n357), .ZN(n276) );
  INV_X4 U248 ( .A(n330), .ZN(n277) );
  INV_X4 U249 ( .A(A[13]), .ZN(n278) );
  INV_X4 U250 ( .A(A[12]), .ZN(n279) );
  INV_X4 U251 ( .A(A[8]), .ZN(n280) );
  INV_X4 U252 ( .A(A[9]), .ZN(n281) );
  INV_X4 U253 ( .A(A[10]), .ZN(n282) );
  INV_X4 U254 ( .A(A[11]), .ZN(n283) );
  INV_X4 U255 ( .A(A[6]), .ZN(n284) );
  INV_X4 U256 ( .A(A[7]), .ZN(n285) );
  INV_X4 U257 ( .A(A[14]), .ZN(n286) );
  NOR3_X1 U258 ( .A1(n287), .A2(SH[5]), .A3(n263), .ZN(B[9]) );
  MUX2_X1 U259 ( .A(n288), .B(n265), .S(n262), .Z(n287) );
  NOR3_X1 U260 ( .A1(n290), .A2(SH[5]), .A3(n263), .ZN(B[8]) );
  MUX2_X1 U261 ( .A(n291), .B(n268), .S(n262), .Z(n290) );
  NOR3_X1 U262 ( .A1(n293), .A2(SH[5]), .A3(n263), .ZN(B[7]) );
  MUX2_X1 U263 ( .A(n294), .B(n295), .S(n262), .Z(n293) );
  MUX2_X1 U264 ( .A(n296), .B(n297), .S(SH[2]), .Z(n294) );
  NOR3_X1 U265 ( .A1(n298), .A2(SH[5]), .A3(n263), .ZN(B[6]) );
  MUX2_X1 U266 ( .A(n299), .B(n300), .S(n262), .Z(n298) );
  MUX2_X1 U267 ( .A(n301), .B(n302), .S(SH[2]), .Z(n299) );
  NOR3_X1 U268 ( .A1(n303), .A2(SH[5]), .A3(n263), .ZN(B[5]) );
  MUX2_X1 U269 ( .A(n304), .B(n305), .S(n262), .Z(n303) );
  MUX2_X1 U270 ( .A(n306), .B(n307), .S(SH[2]), .Z(n304) );
  NOR3_X1 U271 ( .A1(n308), .A2(SH[5]), .A3(n263), .ZN(B[4]) );
  MUX2_X1 U272 ( .A(n309), .B(n310), .S(n262), .Z(n308) );
  MUX2_X1 U273 ( .A(n311), .B(n312), .S(SH[2]), .Z(n309) );
  NOR2_X1 U274 ( .A1(SH[5]), .A2(n313), .ZN(B[3]) );
  MUX2_X1 U275 ( .A(n314), .B(n315), .S(n263), .Z(n313) );
  MUX2_X1 U276 ( .A(n316), .B(n317), .S(n262), .Z(n314) );
  MUX2_X1 U277 ( .A(n318), .B(n296), .S(SH[2]), .Z(n316) );
  MUX2_X1 U278 ( .A(n319), .B(n320), .S(n260), .Z(n296) );
  MUX2_X1 U279 ( .A(n273), .B(n272), .S(n260), .Z(n318) );
  NOR2_X1 U280 ( .A1(SH[5]), .A2(n321), .ZN(B[2]) );
  MUX2_X1 U281 ( .A(n322), .B(n323), .S(n263), .Z(n321) );
  MUX2_X1 U282 ( .A(n324), .B(n325), .S(n262), .Z(n322) );
  MUX2_X1 U283 ( .A(n269), .B(n301), .S(SH[2]), .Z(n324) );
  MUX2_X1 U284 ( .A(n326), .B(n327), .S(n260), .Z(n301) );
  MUX2_X1 U285 ( .A(n329), .B(n330), .S(n260), .Z(n328) );
  NOR2_X1 U286 ( .A1(SH[5]), .A2(n331), .ZN(B[1]) );
  MUX2_X1 U287 ( .A(n332), .B(n333), .S(n263), .Z(n331) );
  MUX2_X1 U288 ( .A(n334), .B(n288), .S(n262), .Z(n332) );
  MUX2_X1 U289 ( .A(n307), .B(n335), .S(SH[2]), .Z(n288) );
  MUX2_X1 U290 ( .A(n320), .B(n336), .S(n260), .Z(n307) );
  MUX2_X1 U291 ( .A(n281), .B(n282), .S(SH[0]), .Z(n320) );
  MUX2_X1 U292 ( .A(n337), .B(n306), .S(SH[2]), .Z(n334) );
  MUX2_X1 U293 ( .A(n272), .B(n319), .S(n260), .Z(n306) );
  MUX2_X1 U294 ( .A(n285), .B(n280), .S(SH[0]), .Z(n319) );
  MUX2_X1 U295 ( .A(A[5]), .B(A[6]), .S(SH[0]), .Z(n338) );
  MUX2_X1 U296 ( .A(n339), .B(n273), .S(n260), .Z(n337) );
  MUX2_X1 U297 ( .A(A[3]), .B(A[4]), .S(SH[0]), .Z(n340) );
  NAND2_X1 U298 ( .A1(A[2]), .A2(SH[0]), .ZN(n339) );
  NOR3_X1 U299 ( .A1(n315), .A2(SH[5]), .A3(n263), .ZN(B[19]) );
  NAND2_X1 U300 ( .A1(n341), .A2(n261), .ZN(n315) );
  NOR3_X1 U301 ( .A1(n323), .A2(SH[5]), .A3(n263), .ZN(B[18]) );
  NAND2_X1 U302 ( .A1(n342), .A2(n261), .ZN(n323) );
  NOR3_X1 U303 ( .A1(n333), .A2(SH[5]), .A3(n263), .ZN(B[17]) );
  NAND2_X1 U304 ( .A1(n289), .A2(n261), .ZN(n333) );
  NOR2_X1 U305 ( .A1(n343), .A2(SH[2]), .ZN(n289) );
  NOR3_X1 U306 ( .A1(n344), .A2(SH[5]), .A3(n263), .ZN(B[16]) );
  NOR4_X1 U307 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n295), .ZN(B[15]) );
  MUX2_X1 U308 ( .A(n345), .B(n346), .S(SH[2]), .Z(n295) );
  NOR4_X1 U309 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n300), .ZN(B[14]) );
  MUX2_X1 U310 ( .A(n270), .B(n347), .S(SH[2]), .Z(n300) );
  NOR4_X1 U311 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n305), .ZN(B[13]) );
  MUX2_X1 U312 ( .A(n335), .B(n343), .S(SH[2]), .Z(n305) );
  MUX2_X1 U313 ( .A(n274), .B(n348), .S(n260), .Z(n343) );
  MUX2_X1 U314 ( .A(n349), .B(n275), .S(n260), .Z(n335) );
  NOR4_X1 U315 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n310), .ZN(B[12]) );
  MUX2_X1 U316 ( .A(n350), .B(n271), .S(SH[2]), .Z(n310) );
  NOR3_X1 U317 ( .A1(n351), .A2(SH[5]), .A3(n263), .ZN(B[11]) );
  MUX2_X1 U318 ( .A(n317), .B(n266), .S(n262), .Z(n351) );
  NOR2_X1 U319 ( .A1(n346), .A2(SH[2]), .ZN(n341) );
  OR2_X1 U320 ( .A1(n348), .A2(n260), .ZN(n346) );
  NAND2_X1 U321 ( .A1(A[19]), .A2(n258), .ZN(n348) );
  MUX2_X1 U322 ( .A(n297), .B(n345), .S(SH[2]), .Z(n317) );
  MUX2_X1 U323 ( .A(n275), .B(n274), .S(n260), .Z(n345) );
  MUX2_X1 U324 ( .A(A[17]), .B(A[18]), .S(SH[0]), .Z(n352) );
  MUX2_X1 U325 ( .A(A[15]), .B(A[16]), .S(SH[0]), .Z(n353) );
  MUX2_X1 U326 ( .A(n336), .B(n349), .S(n260), .Z(n297) );
  MUX2_X1 U327 ( .A(n278), .B(n286), .S(SH[0]), .Z(n349) );
  MUX2_X1 U328 ( .A(n283), .B(n279), .S(SH[0]), .Z(n336) );
  NOR3_X1 U329 ( .A1(n354), .A2(SH[5]), .A3(n263), .ZN(B[10]) );
  MUX2_X1 U330 ( .A(n325), .B(n267), .S(n262), .Z(n354) );
  NOR2_X1 U331 ( .A1(n347), .A2(SH[2]), .ZN(n342) );
  NAND2_X1 U332 ( .A1(n355), .A2(n259), .ZN(n347) );
  MUX2_X1 U333 ( .A(n302), .B(n270), .S(SH[2]), .Z(n325) );
  MUX2_X1 U334 ( .A(n357), .B(n358), .S(n260), .Z(n356) );
  MUX2_X1 U335 ( .A(n359), .B(n360), .S(n260), .Z(n302) );
  NOR2_X1 U336 ( .A1(SH[5]), .A2(n361), .ZN(B[0]) );
  MUX2_X1 U337 ( .A(n362), .B(n344), .S(n263), .Z(n361) );
  NAND2_X1 U338 ( .A1(n292), .A2(n261), .ZN(n344) );
  NOR2_X1 U339 ( .A1(n271), .A2(SH[2]), .ZN(n292) );
  MUX2_X1 U340 ( .A(n358), .B(n355), .S(n260), .Z(n363) );
  MUX2_X1 U341 ( .A(A[18]), .B(A[19]), .S(SH[0]), .Z(n355) );
  MUX2_X1 U342 ( .A(A[16]), .B(A[17]), .S(SH[0]), .Z(n358) );
  MUX2_X1 U343 ( .A(n364), .B(n291), .S(n262), .Z(n362) );
  MUX2_X1 U344 ( .A(n312), .B(n350), .S(SH[2]), .Z(n291) );
  MUX2_X1 U345 ( .A(n360), .B(n276), .S(n260), .Z(n350) );
  MUX2_X1 U346 ( .A(A[14]), .B(A[15]), .S(SH[0]), .Z(n357) );
  MUX2_X1 U347 ( .A(n279), .B(n278), .S(SH[0]), .Z(n360) );
  MUX2_X1 U348 ( .A(n327), .B(n359), .S(n260), .Z(n312) );
  MUX2_X1 U349 ( .A(n282), .B(n283), .S(SH[0]), .Z(n359) );
  MUX2_X1 U350 ( .A(n280), .B(n281), .S(SH[0]), .Z(n327) );
  MUX2_X1 U351 ( .A(n365), .B(n311), .S(SH[2]), .Z(n364) );
  MUX2_X1 U352 ( .A(n277), .B(n326), .S(n260), .Z(n311) );
  MUX2_X1 U353 ( .A(n284), .B(n285), .S(SH[0]), .Z(n326) );
  MUX2_X1 U354 ( .A(A[4]), .B(A[5]), .S(SH[0]), .Z(n330) );
  NAND2_X1 U355 ( .A1(n260), .A2(n329), .ZN(n365) );
  MUX2_X1 U356 ( .A(A[2]), .B(A[3]), .S(SH[0]), .Z(n329) );
endmodule


module fp_addsub_24_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n12, n13, n1, n2, n3, n4, n5, n6, n7, n8, n10;
  wire   [5:1] carry;

  FA_X1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .S(n12) );
  FA_X1 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  NAND2_X2 U1 ( .A1(B[0]), .A2(n1), .ZN(carry[1]) );
  XNOR2_X2 U2 ( .A(n3), .B(A[0]), .ZN(n13) );
  INV_X4 U3 ( .A(A[0]), .ZN(n1) );
  INV_X4 U4 ( .A(B[4]), .ZN(n2) );
  INV_X4 U5 ( .A(B[0]), .ZN(n3) );
  INV_X4 U6 ( .A(B[5]), .ZN(n4) );
  INV_X4 U7 ( .A(B[3]), .ZN(n5) );
  INV_X4 U8 ( .A(B[2]), .ZN(n6) );
  INV_X4 U9 ( .A(B[1]), .ZN(n7) );
  INV_X1 U10 ( .A(n12), .ZN(n8) );
  INV_X4 U11 ( .A(n8), .ZN(DIFF[5]) );
  INV_X1 U12 ( .A(n13), .ZN(n10) );
  INV_X4 U13 ( .A(n10), .ZN(DIFF[0]) );
endmodule


module fp_addsub_24_1_DW_cmp_1 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE
 );
  input [22:0] A;
  input [22:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992;

  INV_X4 U463 ( .A(n940), .ZN(n909) );
  INV_X4 U464 ( .A(A[22]), .ZN(n910) );
  INV_X4 U465 ( .A(n986), .ZN(n911) );
  INV_X4 U466 ( .A(n984), .ZN(n912) );
  INV_X4 U467 ( .A(n990), .ZN(n913) );
  INV_X4 U468 ( .A(A[18]), .ZN(n914) );
  INV_X4 U469 ( .A(n988), .ZN(n915) );
  INV_X4 U470 ( .A(A[17]), .ZN(n916) );
  INV_X4 U471 ( .A(n983), .ZN(n917) );
  INV_X4 U472 ( .A(A[14]), .ZN(n918) );
  INV_X4 U473 ( .A(A[12]), .ZN(n919) );
  INV_X4 U474 ( .A(n977), .ZN(n920) );
  INV_X4 U475 ( .A(A[10]), .ZN(n921) );
  INV_X4 U476 ( .A(A[8]), .ZN(n922) );
  INV_X4 U477 ( .A(n951), .ZN(n923) );
  INV_X4 U478 ( .A(A[6]), .ZN(n924) );
  INV_X4 U479 ( .A(A[4]), .ZN(n925) );
  INV_X4 U480 ( .A(A[1]), .ZN(n926) );
  INV_X4 U481 ( .A(B[21]), .ZN(n927) );
  INV_X4 U482 ( .A(B[20]), .ZN(n928) );
  INV_X4 U483 ( .A(B[19]), .ZN(n929) );
  INV_X4 U484 ( .A(B[16]), .ZN(n930) );
  INV_X4 U485 ( .A(B[15]), .ZN(n931) );
  INV_X4 U486 ( .A(B[13]), .ZN(n932) );
  INV_X4 U487 ( .A(B[11]), .ZN(n933) );
  INV_X4 U488 ( .A(B[9]), .ZN(n934) );
  INV_X4 U489 ( .A(B[7]), .ZN(n935) );
  INV_X4 U490 ( .A(B[5]), .ZN(n936) );
  INV_X4 U491 ( .A(B[3]), .ZN(n937) );
  INV_X4 U492 ( .A(B[2]), .ZN(n938) );
  INV_X4 U493 ( .A(B[1]), .ZN(n939) );
  OAI22_X1 U494 ( .A1(n940), .A2(n941), .B1(n942), .B2(n943), .ZN(GE_LT_GT_LE)
         );
  OAI211_X1 U495 ( .C1(n944), .C2(n945), .A(n946), .B(n913), .ZN(n943) );
  NAND2_X1 U496 ( .A1(n947), .A2(n948), .ZN(n945) );
  OAI22_X1 U497 ( .A1(n949), .A2(n950), .B1(n923), .B2(n949), .ZN(n948) );
  OAI21_X1 U498 ( .B1(A[5]), .B2(n936), .A(n952), .ZN(n950) );
  NAND3_X1 U499 ( .A1(n953), .A2(n925), .A3(B[4]), .ZN(n952) );
  OAI21_X1 U500 ( .B1(A[7]), .B2(n935), .A(n954), .ZN(n949) );
  NAND3_X1 U501 ( .A1(n955), .A2(n924), .A3(B[6]), .ZN(n954) );
  OR3_X1 U502 ( .A1(n956), .A2(n951), .A3(n957), .ZN(n947) );
  OAI221_X1 U503 ( .B1(B[4]), .B2(n925), .C1(n958), .C2(n959), .A(n953), .ZN(
        n957) );
  NAND2_X1 U504 ( .A1(A[5]), .A2(n936), .ZN(n953) );
  AOI21_X1 U505 ( .B1(A[2]), .B2(n938), .A(n960), .ZN(n958) );
  OAI21_X1 U506 ( .B1(B[6]), .B2(n924), .A(n955), .ZN(n951) );
  NAND2_X1 U507 ( .A1(A[7]), .A2(n935), .ZN(n955) );
  AOI221_X1 U508 ( .B1(B[1]), .B2(n926), .C1(n961), .C2(B[0]), .A(n959), .ZN(
        n956) );
  OAI21_X1 U509 ( .B1(A[3]), .B2(n937), .A(n962), .ZN(n959) );
  OR3_X1 U510 ( .A1(n960), .A2(A[2]), .A3(n938), .ZN(n962) );
  AND2_X1 U511 ( .A1(A[3]), .A2(n937), .ZN(n960) );
  AOI21_X1 U512 ( .B1(A[1]), .B2(n939), .A(A[0]), .ZN(n961) );
  OAI211_X1 U513 ( .C1(n963), .C2(n944), .A(n909), .B(n964), .ZN(n942) );
  AOI21_X1 U514 ( .B1(A[16]), .B2(n930), .A(n965), .ZN(n964) );
  OAI21_X1 U515 ( .B1(n966), .B2(n967), .A(n968), .ZN(n944) );
  OAI22_X1 U516 ( .A1(n969), .A2(n970), .B1(n917), .B2(n969), .ZN(n968) );
  OAI21_X1 U517 ( .B1(A[13]), .B2(n932), .A(n971), .ZN(n970) );
  NAND3_X1 U518 ( .A1(n972), .A2(n919), .A3(B[12]), .ZN(n971) );
  OAI21_X1 U519 ( .B1(A[15]), .B2(n931), .A(n973), .ZN(n969) );
  NAND3_X1 U520 ( .A1(n974), .A2(n918), .A3(B[14]), .ZN(n973) );
  OAI22_X1 U521 ( .A1(n975), .A2(n976), .B1(n920), .B2(n975), .ZN(n967) );
  OAI21_X1 U522 ( .B1(A[9]), .B2(n934), .A(n978), .ZN(n976) );
  NAND3_X1 U523 ( .A1(n979), .A2(n922), .A3(B[8]), .ZN(n978) );
  OAI21_X1 U524 ( .B1(A[11]), .B2(n933), .A(n980), .ZN(n975) );
  NAND3_X1 U525 ( .A1(n981), .A2(n921), .A3(B[10]), .ZN(n980) );
  NOR3_X1 U526 ( .A1(n982), .A2(n966), .A3(n977), .ZN(n963) );
  OAI21_X1 U527 ( .B1(B[10]), .B2(n921), .A(n981), .ZN(n977) );
  NAND2_X1 U528 ( .A1(A[11]), .A2(n933), .ZN(n981) );
  OAI211_X1 U529 ( .C1(B[12]), .C2(n919), .A(n972), .B(n917), .ZN(n966) );
  OAI21_X1 U530 ( .B1(B[14]), .B2(n918), .A(n974), .ZN(n983) );
  NAND2_X1 U531 ( .A1(A[15]), .A2(n931), .ZN(n974) );
  NAND2_X1 U532 ( .A1(A[13]), .A2(n932), .ZN(n972) );
  OAI21_X1 U533 ( .B1(B[8]), .B2(n922), .A(n979), .ZN(n982) );
  NAND2_X1 U534 ( .A1(A[9]), .A2(n934), .ZN(n979) );
  AOI221_X1 U535 ( .B1(B[22]), .B2(n910), .C1(n984), .C2(n985), .A(n911), .ZN(
        n941) );
  OAI221_X1 U536 ( .B1(n987), .B2(n913), .C1(n915), .C2(n987), .A(n946), .ZN(
        n986) );
  AOI21_X1 U537 ( .B1(n928), .B2(A[20]), .A(n912), .ZN(n946) );
  AOI22_X1 U538 ( .A1(B[17]), .A2(n916), .B1(n989), .B2(B[16]), .ZN(n988) );
  NOR2_X1 U539 ( .A1(A[16]), .A2(n965), .ZN(n989) );
  NOR2_X1 U540 ( .A1(n916), .A2(B[17]), .ZN(n965) );
  OAI21_X1 U541 ( .B1(B[18]), .B2(n914), .A(n991), .ZN(n990) );
  OAI21_X1 U542 ( .B1(A[19]), .B2(n929), .A(n992), .ZN(n987) );
  NAND3_X1 U543 ( .A1(n991), .A2(n914), .A3(B[18]), .ZN(n992) );
  NAND2_X1 U544 ( .A1(A[19]), .A2(n929), .ZN(n991) );
  OAI22_X1 U545 ( .A1(A[21]), .A2(n927), .B1(A[20]), .B2(n928), .ZN(n985) );
  NAND2_X1 U546 ( .A1(A[21]), .A2(n927), .ZN(n984) );
  NOR2_X1 U547 ( .A1(n910), .A2(B[22]), .ZN(n940) );
endmodule


module fp_addsub_24_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [20:1] carry;

  XNOR2_X2 U1 ( .A(A[21]), .B(n1), .ZN(SUM[21]) );
  XNOR2_X2 U2 ( .A(A[20]), .B(n2), .ZN(SUM[20]) );
  NAND2_X2 U3 ( .A1(A[20]), .A2(carry[20]), .ZN(n1) );
  XNOR2_X2 U4 ( .A(A[19]), .B(n3), .ZN(SUM[19]) );
  NAND2_X2 U5 ( .A1(A[19]), .A2(carry[19]), .ZN(n2) );
  INV_X4 U6 ( .A(n2), .ZN(carry[20]) );
  XNOR2_X2 U7 ( .A(A[18]), .B(n4), .ZN(SUM[18]) );
  NAND2_X2 U8 ( .A1(A[18]), .A2(carry[18]), .ZN(n3) );
  INV_X4 U9 ( .A(n3), .ZN(carry[19]) );
  XNOR2_X2 U10 ( .A(A[17]), .B(n5), .ZN(SUM[17]) );
  NAND2_X2 U11 ( .A1(A[17]), .A2(carry[17]), .ZN(n4) );
  INV_X4 U12 ( .A(n4), .ZN(carry[18]) );
  XNOR2_X2 U13 ( .A(A[16]), .B(n6), .ZN(SUM[16]) );
  NAND2_X2 U14 ( .A1(A[16]), .A2(carry[16]), .ZN(n5) );
  INV_X4 U15 ( .A(n5), .ZN(carry[17]) );
  XNOR2_X2 U16 ( .A(A[15]), .B(n7), .ZN(SUM[15]) );
  NAND2_X2 U17 ( .A1(A[15]), .A2(carry[15]), .ZN(n6) );
  INV_X4 U18 ( .A(n6), .ZN(carry[16]) );
  XNOR2_X2 U19 ( .A(A[14]), .B(n8), .ZN(SUM[14]) );
  NAND2_X2 U20 ( .A1(A[14]), .A2(carry[14]), .ZN(n7) );
  INV_X4 U21 ( .A(n7), .ZN(carry[15]) );
  XNOR2_X2 U22 ( .A(A[13]), .B(n9), .ZN(SUM[13]) );
  NAND2_X2 U23 ( .A1(A[13]), .A2(carry[13]), .ZN(n8) );
  INV_X4 U24 ( .A(n8), .ZN(carry[14]) );
  XNOR2_X2 U25 ( .A(A[12]), .B(n10), .ZN(SUM[12]) );
  NAND2_X2 U26 ( .A1(A[12]), .A2(carry[12]), .ZN(n9) );
  INV_X4 U27 ( .A(n9), .ZN(carry[13]) );
  XNOR2_X2 U28 ( .A(A[11]), .B(n11), .ZN(SUM[11]) );
  NAND2_X2 U29 ( .A1(A[11]), .A2(carry[11]), .ZN(n10) );
  INV_X4 U30 ( .A(n10), .ZN(carry[12]) );
  XNOR2_X2 U31 ( .A(A[10]), .B(n12), .ZN(SUM[10]) );
  NAND2_X2 U32 ( .A1(A[10]), .A2(carry[10]), .ZN(n11) );
  INV_X4 U33 ( .A(n11), .ZN(carry[11]) );
  XNOR2_X2 U34 ( .A(A[9]), .B(n13), .ZN(SUM[9]) );
  NAND2_X2 U35 ( .A1(A[9]), .A2(carry[9]), .ZN(n12) );
  INV_X4 U36 ( .A(n12), .ZN(carry[10]) );
  XNOR2_X2 U37 ( .A(A[8]), .B(n14), .ZN(SUM[8]) );
  NAND2_X2 U38 ( .A1(A[8]), .A2(carry[8]), .ZN(n13) );
  INV_X4 U39 ( .A(n13), .ZN(carry[9]) );
  XNOR2_X2 U40 ( .A(A[7]), .B(n15), .ZN(SUM[7]) );
  NAND2_X2 U41 ( .A1(A[7]), .A2(carry[7]), .ZN(n14) );
  INV_X4 U42 ( .A(n14), .ZN(carry[8]) );
  XNOR2_X2 U43 ( .A(A[6]), .B(n16), .ZN(SUM[6]) );
  NAND2_X2 U44 ( .A1(A[6]), .A2(carry[6]), .ZN(n15) );
  INV_X4 U45 ( .A(n15), .ZN(carry[7]) );
  XNOR2_X2 U46 ( .A(A[5]), .B(n17), .ZN(SUM[5]) );
  NAND2_X2 U47 ( .A1(A[5]), .A2(carry[5]), .ZN(n16) );
  INV_X4 U48 ( .A(n16), .ZN(carry[6]) );
  XNOR2_X2 U49 ( .A(A[4]), .B(n18), .ZN(SUM[4]) );
  NAND2_X2 U50 ( .A1(A[4]), .A2(carry[4]), .ZN(n17) );
  INV_X4 U51 ( .A(n17), .ZN(carry[5]) );
  XNOR2_X2 U52 ( .A(A[3]), .B(n19), .ZN(SUM[3]) );
  NAND2_X2 U53 ( .A1(A[3]), .A2(carry[3]), .ZN(n18) );
  INV_X4 U54 ( .A(n18), .ZN(carry[4]) );
  XNOR2_X2 U55 ( .A(A[2]), .B(n20), .ZN(SUM[2]) );
  NAND2_X2 U56 ( .A1(A[2]), .A2(carry[2]), .ZN(n19) );
  INV_X4 U57 ( .A(n19), .ZN(carry[3]) );
  XNOR2_X2 U58 ( .A(A[1]), .B(n22), .ZN(SUM[1]) );
  NAND2_X2 U59 ( .A1(A[1]), .A2(carry[1]), .ZN(n20) );
  INV_X4 U60 ( .A(n20), .ZN(carry[2]) );
  INV_X4 U61 ( .A(A[0]), .ZN(n21) );
  XNOR2_X2 U62 ( .A(B[0]), .B(n21), .ZN(SUM[0]) );
  NAND2_X2 U63 ( .A1(B[0]), .A2(A[0]), .ZN(n22) );
  INV_X4 U64 ( .A(n22), .ZN(carry[1]) );
endmodule


module fp_addsub_24_1_DW_fp_addsub_0 ( a, b, rnd, op, z, status );
  input [23:0] a;
  input [23:0] b;
  input [2:0] rnd;
  output [23:0] z;
  output [7:0] status;
  input op;
  wire   swap, sig_large_17_, sig_small_17_, exp_large_int_0_, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21;
  wire   [22:0] large_p;
  wire   [16:0] small_p;
  wire   [5:0] exp_small_int;
  wire   [5:0] mag_exp_diff;
  wire   [20:1] sig_small_shifted;
  wire   [21:0] sig_aligned2;
  wire   [21:0] adder_output;
  wire   [5:0] num_of_zeros;
  wire   [4:0] num_of_zeros_used;
  wire   [21:1] a_norm;
  wire   [16:0] frac1;
  wire   [6:1] E1;
  wire   [6:1] Elz;
  wire   [5:2] add_274_carry;
  wire   [6:1] sub_275_carry;

  fp_addsub_24_1_DW01_inc_1 add_271 ( .A(a_norm[20:4]), .SUM(frac1) );
  fp_addsub_24_1_DW_leftsh_0 sll_244 ( .A(adder_output[21:1]), .SH(
        num_of_zeros_used), .B(a_norm) );
  fp_addsub_24_1_DW_lzd_0 U1 ( .a(adder_output[21:1]), .enc(num_of_zeros), 
        .dec({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21}) );
  fp_addsub_24_1_DW01_add_0 add_233 ( .A({1'b0, sig_large_17_, large_p[16:0], 
        1'b0, 1'b0, 1'b0}), .B(sig_aligned2), .CI(1'b0), .SUM({N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119}) );
  fp_addsub_24_1_DW_rightsh_0 srl_222_lsb_trim ( .A({sig_small_17_, small_p, 
        1'b0, 1'b0}), .DATA_TC(1'b0), .SH({mag_exp_diff[5:3], n84, 
        mag_exp_diff[1:0]}), .B(sig_small_shifted) );
  fp_addsub_24_1_DW01_sub_1 sub_218 ( .A({large_p[22:18], exp_large_int_0_}), 
        .B(exp_small_int), .CI(1'b0), .DIFF(mag_exp_diff) );
  fp_addsub_24_1_DW_cmp_1 lt_176 ( .A(a[22:0]), .B(b[22:0]), .TC(1'b0), 
        .GE_LT(1'b1), .GE_GT_EQ(1'b0), .GE_LT_GT_LE(swap) );
  fp_addsub_24_1_DW01_add_1 add_233_2 ( .A({N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, sig_aligned2[21]}), .CI(1'b0), .SUM(adder_output) );
  HA_X1 add_274_U1_1_1 ( .A(large_p[18]), .B(large_p[17]), .CO(
        add_274_carry[2]), .S(E1[1]) );
  HA_X1 add_274_U1_1_2 ( .A(large_p[19]), .B(add_274_carry[2]), .CO(
        add_274_carry[3]), .S(E1[2]) );
  HA_X1 add_274_U1_1_3 ( .A(large_p[20]), .B(add_274_carry[3]), .CO(
        add_274_carry[4]), .S(E1[3]) );
  HA_X1 add_274_U1_1_4 ( .A(large_p[21]), .B(add_274_carry[4]), .CO(
        add_274_carry[5]), .S(E1[4]) );
  HA_X1 add_274_U1_1_5 ( .A(large_p[22]), .B(add_274_carry[5]), .CO(E1[6]), 
        .S(E1[5]) );
  FA_X1 sub_275_U2_1 ( .A(E1[1]), .B(n89), .CI(sub_275_carry[1]), .CO(
        sub_275_carry[2]), .S(Elz[1]) );
  FA_X1 sub_275_U2_2 ( .A(E1[2]), .B(n90), .CI(sub_275_carry[2]), .CO(
        sub_275_carry[3]), .S(Elz[2]) );
  FA_X1 sub_275_U2_3 ( .A(E1[3]), .B(n91), .CI(sub_275_carry[3]), .CO(
        sub_275_carry[4]), .S(Elz[3]) );
  FA_X1 sub_275_U2_4 ( .A(E1[4]), .B(n92), .CI(sub_275_carry[4]), .CO(
        sub_275_carry[5]), .S(Elz[4]) );
  INV_X1 U4 ( .A(swap), .ZN(n87) );
  AND2_X4 U5 ( .A1(n81), .A2(n82), .ZN(n77) );
  XOR2_X2 U6 ( .A(n88), .B(n142), .Z(n78) );
  MUX2_X2 U7 ( .A(large_p[21]), .B(num_of_zeros[4]), .S(N141), .Z(
        num_of_zeros_used[4]) );
  NAND2_X2 U9 ( .A1(sig_aligned2[21]), .A2(n231), .ZN(n209) );
  INV_X4 U10 ( .A(sig_aligned2[21]), .ZN(n129) );
  INV_X4 U11 ( .A(n85), .ZN(n84) );
  INV_X4 U12 ( .A(mag_exp_diff[2]), .ZN(n85) );
  NAND2_X2 U13 ( .A1(n79), .A2(n80), .ZN(sub_275_carry[6]) );
  XNOR2_X2 U14 ( .A(E1[5]), .B(sub_275_carry[5]), .ZN(Elz[5]) );
  INV_X4 U15 ( .A(E1[5]), .ZN(n79) );
  INV_X4 U16 ( .A(sub_275_carry[5]), .ZN(n80) );
  XNOR2_X2 U17 ( .A(E1[6]), .B(sub_275_carry[6]), .ZN(Elz[6]) );
  INV_X4 U18 ( .A(E1[6]), .ZN(n81) );
  INV_X4 U19 ( .A(sub_275_carry[6]), .ZN(n82) );
  NAND2_X2 U20 ( .A1(num_of_zeros_used[0]), .A2(large_p[17]), .ZN(
        sub_275_carry[1]) );
  AND4_X4 U21 ( .A1(n109), .A2(n186), .A3(n187), .A4(n188), .ZN(n147) );
  NOR3_X2 U22 ( .A1(status[2]), .A2(status[4]), .A3(n189), .ZN(n148) );
  OR2_X4 U23 ( .A1(n231), .A2(sig_aligned2[21]), .ZN(n83) );
  OR2_X4 U24 ( .A1(n231), .A2(sig_aligned2[21]), .ZN(n210) );
  INV_X4 U31 ( .A(num_of_zeros_used[0]), .ZN(n88) );
  INV_X4 U32 ( .A(num_of_zeros_used[1]), .ZN(n89) );
  INV_X4 U33 ( .A(num_of_zeros_used[2]), .ZN(n90) );
  INV_X4 U34 ( .A(num_of_zeros_used[3]), .ZN(n91) );
  INV_X4 U35 ( .A(num_of_zeros_used[4]), .ZN(n92) );
  AOI22_X1 U36 ( .A1(large_p[21]), .A2(n106), .B1(large_p[22]), .B2(n104), 
        .ZN(n102) );
  NOR2_X1 U37 ( .A1(n104), .A2(large_p[22]), .ZN(n101) );
  NAND2_X1 U38 ( .A1(num_of_zeros[3]), .A2(n141), .ZN(n95) );
  NAND3_X1 U39 ( .A1(n95), .A2(n107), .A3(large_p[19]), .ZN(n93) );
  OAI21_X1 U40 ( .B1(num_of_zeros[3]), .B2(n141), .A(n93), .ZN(n94) );
  OAI21_X1 U41 ( .B1(large_p[19]), .B2(n107), .A(n95), .ZN(n98) );
  AOI21_X1 U42 ( .B1(num_of_zeros[1]), .B2(n144), .A(num_of_zeros[0]), .ZN(n96) );
  AOI22_X1 U43 ( .A1(large_p[18]), .A2(n103), .B1(n96), .B2(exp_large_int_0_), 
        .ZN(n97) );
  AOI22_X1 U44 ( .A1(n108), .A2(n98), .B1(n97), .B2(n108), .ZN(n99) );
  OAI211_X1 U45 ( .C1(large_p[21]), .C2(n106), .A(n105), .B(n99), .ZN(n100) );
  OAI21_X1 U46 ( .B1(n102), .B2(n101), .A(n100), .ZN(N141) );
  INV_X4 U47 ( .A(num_of_zeros[1]), .ZN(n103) );
  INV_X4 U48 ( .A(num_of_zeros[5]), .ZN(n104) );
  INV_X4 U49 ( .A(n101), .ZN(n105) );
  INV_X4 U50 ( .A(num_of_zeros[4]), .ZN(n106) );
  INV_X4 U51 ( .A(num_of_zeros[2]), .ZN(n107) );
  INV_X4 U52 ( .A(n94), .ZN(n108) );
  INV_X4 U53 ( .A(n148), .ZN(n109) );
  INV_X4 U54 ( .A(status[4]), .ZN(n110) );
  INV_X4 U55 ( .A(n169), .ZN(n111) );
  INV_X4 U56 ( .A(n189), .ZN(n112) );
  INV_X4 U57 ( .A(a_norm[21]), .ZN(n113) );
  INV_X4 U58 ( .A(n171), .ZN(n114) );
  INV_X4 U59 ( .A(Elz[5]), .ZN(n115) );
  INV_X4 U60 ( .A(Elz[4]), .ZN(n116) );
  INV_X4 U61 ( .A(Elz[3]), .ZN(n117) );
  INV_X4 U62 ( .A(Elz[2]), .ZN(n118) );
  INV_X4 U63 ( .A(Elz[1]), .ZN(n119) );
  INV_X4 U64 ( .A(n172), .ZN(n120) );
  INV_X4 U65 ( .A(n234), .ZN(n121) );
  INV_X4 U66 ( .A(n246), .ZN(n122) );
  INV_X4 U67 ( .A(n247), .ZN(n123) );
  INV_X4 U68 ( .A(n242), .ZN(n124) );
  INV_X4 U69 ( .A(n244), .ZN(n125) );
  INV_X4 U70 ( .A(n236), .ZN(n126) );
  INV_X4 U71 ( .A(n238), .ZN(n127) );
  INV_X4 U72 ( .A(n243), .ZN(n128) );
  INV_X4 U73 ( .A(a[23]), .ZN(n130) );
  INV_X4 U74 ( .A(n177), .ZN(n131) );
  INV_X4 U75 ( .A(n203), .ZN(n132) );
  INV_X4 U76 ( .A(n200), .ZN(n133) );
  INV_X4 U77 ( .A(small_p[2]), .ZN(n134) );
  INV_X4 U78 ( .A(n240), .ZN(n135) );
  INV_X4 U79 ( .A(n158), .ZN(n136) );
  INV_X4 U80 ( .A(sig_large_17_), .ZN(n137) );
  INV_X4 U81 ( .A(n191), .ZN(n138) );
  INV_X4 U82 ( .A(large_p[21]), .ZN(n139) );
  INV_X4 U83 ( .A(large_p[22]), .ZN(n140) );
  INV_X4 U84 ( .A(large_p[20]), .ZN(n141) );
  INV_X4 U85 ( .A(large_p[17]), .ZN(n142) );
  INV_X4 U86 ( .A(large_p[19]), .ZN(n143) );
  INV_X4 U87 ( .A(large_p[18]), .ZN(n144) );
  INV_X4 U88 ( .A(n202), .ZN(n145) );
  INV_X1 U89 ( .A(n146), .ZN(z[9]) );
  AOI22_X1 U90 ( .A1(a_norm[13]), .A2(n147), .B1(frac1[9]), .B2(n148), .ZN(
        n146) );
  INV_X1 U91 ( .A(n149), .ZN(z[8]) );
  AOI22_X1 U92 ( .A1(a_norm[12]), .A2(n147), .B1(frac1[8]), .B2(n148), .ZN(
        n149) );
  INV_X1 U93 ( .A(n150), .ZN(z[7]) );
  AOI22_X1 U94 ( .A1(a_norm[11]), .A2(n147), .B1(frac1[7]), .B2(n148), .ZN(
        n150) );
  INV_X1 U95 ( .A(n151), .ZN(z[6]) );
  AOI22_X1 U96 ( .A1(a_norm[10]), .A2(n147), .B1(frac1[6]), .B2(n148), .ZN(
        n151) );
  INV_X1 U97 ( .A(n152), .ZN(z[5]) );
  AOI22_X1 U98 ( .A1(a_norm[9]), .A2(n147), .B1(frac1[5]), .B2(n148), .ZN(n152) );
  INV_X1 U99 ( .A(n153), .ZN(z[4]) );
  AOI22_X1 U100 ( .A1(a_norm[8]), .A2(n147), .B1(frac1[4]), .B2(n148), .ZN(
        n153) );
  INV_X1 U101 ( .A(n154), .ZN(z[3]) );
  AOI22_X1 U102 ( .A1(a_norm[7]), .A2(n147), .B1(frac1[3]), .B2(n148), .ZN(
        n154) );
  INV_X1 U103 ( .A(n155), .ZN(z[2]) );
  AOI22_X1 U104 ( .A1(a_norm[6]), .A2(n147), .B1(frac1[2]), .B2(n148), .ZN(
        n155) );
  NOR4_X1 U105 ( .A1(status[2]), .A2(n120), .A3(n156), .A4(n157), .ZN(z[23])
         );
  NOR2_X1 U106 ( .A1(n158), .A2(n129), .ZN(n156) );
  OAI221_X1 U107 ( .B1(n140), .B2(n159), .C1(n160), .C2(n115), .A(n161), .ZN(
        z[22]) );
  NAND2_X1 U108 ( .A1(E1[5]), .A2(n162), .ZN(n161) );
  OAI221_X1 U109 ( .B1(n139), .B2(n159), .C1(n160), .C2(n116), .A(n163), .ZN(
        z[21]) );
  NAND2_X1 U110 ( .A1(E1[4]), .A2(n162), .ZN(n163) );
  OAI221_X1 U111 ( .B1(n141), .B2(n159), .C1(n160), .C2(n117), .A(n164), .ZN(
        z[20]) );
  NAND2_X1 U112 ( .A1(E1[3]), .A2(n162), .ZN(n164) );
  INV_X1 U113 ( .A(n165), .ZN(z[1]) );
  AOI22_X1 U114 ( .A1(a_norm[5]), .A2(n147), .B1(frac1[1]), .B2(n148), .ZN(
        n165) );
  OAI221_X1 U115 ( .B1(n143), .B2(n159), .C1(n160), .C2(n118), .A(n166), .ZN(
        z[19]) );
  NAND2_X1 U116 ( .A1(E1[2]), .A2(n162), .ZN(n166) );
  OAI221_X1 U117 ( .B1(n144), .B2(n159), .C1(n160), .C2(n119), .A(n167), .ZN(
        z[18]) );
  NAND2_X1 U118 ( .A1(E1[1]), .A2(n162), .ZN(n167) );
  OAI221_X1 U119 ( .B1(n142), .B2(n159), .C1(n160), .C2(n78), .A(n168), .ZN(
        z[17]) );
  NAND2_X1 U120 ( .A1(n142), .A2(n162), .ZN(n168) );
  AND2_X1 U121 ( .A1(n169), .A2(n170), .ZN(n162) );
  OAI211_X1 U122 ( .C1(n136), .C2(n171), .A(n172), .B(n173), .ZN(n160) );
  NOR2_X1 U123 ( .A1(n113), .A2(n170), .ZN(n173) );
  NAND2_X1 U124 ( .A1(n111), .A2(n170), .ZN(n159) );
  NAND3_X1 U125 ( .A1(n131), .A2(sig_aligned2[21]), .A3(n174), .ZN(n170) );
  AOI21_X1 U126 ( .B1(adder_output[2]), .B2(n175), .A(n137), .ZN(n174) );
  OAI22_X1 U127 ( .A1(sig_large_17_), .A2(n113), .B1(n176), .B2(n177), .ZN(
        n169) );
  INV_X1 U128 ( .A(n178), .ZN(z[16]) );
  AOI22_X1 U129 ( .A1(a_norm[20]), .A2(n147), .B1(frac1[16]), .B2(n148), .ZN(
        n178) );
  INV_X1 U130 ( .A(n179), .ZN(z[15]) );
  AOI22_X1 U131 ( .A1(a_norm[19]), .A2(n147), .B1(frac1[15]), .B2(n148), .ZN(
        n179) );
  INV_X1 U132 ( .A(n180), .ZN(z[14]) );
  AOI22_X1 U133 ( .A1(a_norm[18]), .A2(n147), .B1(frac1[14]), .B2(n148), .ZN(
        n180) );
  INV_X1 U134 ( .A(n181), .ZN(z[13]) );
  AOI22_X1 U135 ( .A1(a_norm[17]), .A2(n147), .B1(frac1[13]), .B2(n148), .ZN(
        n181) );
  INV_X1 U136 ( .A(n182), .ZN(z[12]) );
  AOI22_X1 U137 ( .A1(a_norm[16]), .A2(n147), .B1(frac1[12]), .B2(n148), .ZN(
        n182) );
  INV_X1 U138 ( .A(n183), .ZN(z[11]) );
  AOI22_X1 U139 ( .A1(a_norm[15]), .A2(n147), .B1(frac1[11]), .B2(n148), .ZN(
        n183) );
  INV_X1 U140 ( .A(n184), .ZN(z[10]) );
  AOI22_X1 U141 ( .A1(a_norm[14]), .A2(n147), .B1(frac1[10]), .B2(n148), .ZN(
        n184) );
  INV_X1 U142 ( .A(n185), .ZN(z[0]) );
  AOI221_X1 U143 ( .B1(n147), .B2(a_norm[4]), .C1(n148), .C2(frac1[0]), .A(
        status[2]), .ZN(n185) );
  NOR3_X1 U144 ( .A1(n136), .A2(status[4]), .A3(status[2]), .ZN(n188) );
  OAI21_X1 U145 ( .B1(n190), .B2(n177), .A(n110), .ZN(status[5]) );
  NOR4_X1 U146 ( .A1(adder_output[0]), .A2(a_norm[3]), .A3(a_norm[2]), .A4(
        a_norm[1]), .ZN(n190) );
  OAI21_X1 U147 ( .B1(status[2]), .B2(n186), .A(n110), .ZN(status[1]) );
  NOR3_X1 U148 ( .A1(n191), .A2(n176), .A3(n177), .ZN(status[4]) );
  AOI21_X1 U149 ( .B1(adder_output[20]), .B2(n175), .A(adder_output[21]), .ZN(
        n176) );
  NOR4_X1 U150 ( .A1(n192), .A2(n193), .A3(n194), .A4(n195), .ZN(n175) );
  NAND4_X1 U151 ( .A1(adder_output[5]), .A2(adder_output[4]), .A3(n196), .A4(
        n197), .ZN(n195) );
  AND4_X1 U152 ( .A1(adder_output[9]), .A2(adder_output[8]), .A3(
        adder_output[7]), .A4(adder_output[6]), .ZN(n197) );
  AND3_X1 U153 ( .A1(adder_output[19]), .A2(adder_output[18]), .A3(
        adder_output[3]), .ZN(n196) );
  NAND4_X1 U154 ( .A1(adder_output[17]), .A2(adder_output[16]), .A3(
        adder_output[15]), .A4(adder_output[14]), .ZN(n194) );
  NAND2_X1 U155 ( .A1(adder_output[13]), .A2(adder_output[12]), .ZN(n193) );
  NAND3_X1 U156 ( .A1(adder_output[10]), .A2(n112), .A3(adder_output[11]), 
        .ZN(n192) );
  NAND2_X1 U157 ( .A1(a_norm[3]), .A2(n198), .ZN(n189) );
  OR4_X1 U158 ( .A1(a_norm[1]), .A2(a_norm[2]), .A3(a_norm[4]), .A4(
        adder_output[0]), .ZN(n198) );
  OAI21_X1 U159 ( .B1(n129), .B2(n199), .A(n131), .ZN(status[2]) );
  OAI21_X1 U160 ( .B1(n187), .B2(n177), .A(n158), .ZN(status[0]) );
  OAI21_X1 U161 ( .B1(n200), .B2(n199), .A(n201), .ZN(n177) );
  NAND3_X1 U162 ( .A1(large_p[17]), .A2(n202), .A3(n138), .ZN(n201) );
  NAND4_X1 U163 ( .A1(exp_small_int[2]), .A2(n203), .A3(exp_small_int[1]), 
        .A4(n204), .ZN(n199) );
  AND3_X1 U164 ( .A1(exp_small_int[4]), .A2(exp_small_int[3]), .A3(
        exp_small_int[5]), .ZN(n204) );
  AOI21_X1 U165 ( .B1(sig_large_17_), .B2(n114), .A(n120), .ZN(n187) );
  NAND4_X1 U166 ( .A1(num_of_zeros[4]), .A2(num_of_zeros[3]), .A3(
        num_of_zeros[5]), .A4(n205), .ZN(n172) );
  AND3_X1 U167 ( .A1(num_of_zeros[2]), .A2(num_of_zeros[0]), .A3(
        num_of_zeros[1]), .ZN(n205) );
  NOR2_X1 U168 ( .A1(n206), .A2(n77), .ZN(n171) );
  AND4_X1 U169 ( .A1(n119), .A2(n118), .A3(n78), .A4(n207), .ZN(n206) );
  NOR4_X1 U170 ( .A1(Elz[6]), .A2(Elz[5]), .A3(Elz[4]), .A4(Elz[3]), .ZN(n207)
         );
  NAND2_X1 U171 ( .A1(n208), .A2(n209), .ZN(sig_aligned2[9]) );
  MUX2_X1 U172 ( .A(n129), .B(n210), .S(sig_small_shifted[9]), .Z(n208) );
  NAND2_X1 U173 ( .A1(n211), .A2(n209), .ZN(sig_aligned2[8]) );
  MUX2_X1 U174 ( .A(n129), .B(n83), .S(sig_small_shifted[8]), .Z(n211) );
  NAND2_X1 U175 ( .A1(n212), .A2(n209), .ZN(sig_aligned2[7]) );
  MUX2_X1 U176 ( .A(n129), .B(n210), .S(sig_small_shifted[7]), .Z(n212) );
  NAND2_X1 U177 ( .A1(n213), .A2(n209), .ZN(sig_aligned2[6]) );
  MUX2_X1 U178 ( .A(n129), .B(n83), .S(sig_small_shifted[6]), .Z(n213) );
  NAND2_X1 U179 ( .A1(n214), .A2(n209), .ZN(sig_aligned2[5]) );
  MUX2_X1 U180 ( .A(n129), .B(n210), .S(sig_small_shifted[5]), .Z(n214) );
  NAND2_X1 U181 ( .A1(n215), .A2(n209), .ZN(sig_aligned2[4]) );
  MUX2_X1 U182 ( .A(n129), .B(n83), .S(sig_small_shifted[4]), .Z(n215) );
  NAND2_X1 U183 ( .A1(n216), .A2(n209), .ZN(sig_aligned2[3]) );
  MUX2_X1 U184 ( .A(n129), .B(n210), .S(sig_small_shifted[3]), .Z(n216) );
  NAND2_X1 U185 ( .A1(n217), .A2(n209), .ZN(sig_aligned2[2]) );
  MUX2_X1 U186 ( .A(n129), .B(n83), .S(sig_small_shifted[2]), .Z(n217) );
  NAND2_X1 U187 ( .A1(n218), .A2(n209), .ZN(sig_aligned2[20]) );
  MUX2_X1 U188 ( .A(n129), .B(n210), .S(sig_small_shifted[20]), .Z(n218) );
  NAND2_X1 U189 ( .A1(n219), .A2(n209), .ZN(sig_aligned2[1]) );
  MUX2_X1 U190 ( .A(n129), .B(n83), .S(sig_small_shifted[1]), .Z(n219) );
  NAND2_X1 U191 ( .A1(n220), .A2(n209), .ZN(sig_aligned2[19]) );
  MUX2_X1 U192 ( .A(n129), .B(n210), .S(sig_small_shifted[19]), .Z(n220) );
  NAND2_X1 U193 ( .A1(n221), .A2(n209), .ZN(sig_aligned2[18]) );
  MUX2_X1 U194 ( .A(n129), .B(n83), .S(sig_small_shifted[18]), .Z(n221) );
  NAND2_X1 U195 ( .A1(n222), .A2(n209), .ZN(sig_aligned2[17]) );
  MUX2_X1 U196 ( .A(n129), .B(n210), .S(sig_small_shifted[17]), .Z(n222) );
  NAND2_X1 U197 ( .A1(n223), .A2(n209), .ZN(sig_aligned2[16]) );
  MUX2_X1 U198 ( .A(n129), .B(n83), .S(sig_small_shifted[16]), .Z(n223) );
  NAND2_X1 U199 ( .A1(n224), .A2(n209), .ZN(sig_aligned2[15]) );
  MUX2_X1 U200 ( .A(n129), .B(n210), .S(sig_small_shifted[15]), .Z(n224) );
  NAND2_X1 U201 ( .A1(n225), .A2(n209), .ZN(sig_aligned2[14]) );
  MUX2_X1 U202 ( .A(n129), .B(n83), .S(sig_small_shifted[14]), .Z(n225) );
  NAND2_X1 U203 ( .A1(n226), .A2(n209), .ZN(sig_aligned2[13]) );
  MUX2_X1 U204 ( .A(n129), .B(n210), .S(sig_small_shifted[13]), .Z(n226) );
  NAND2_X1 U205 ( .A1(n227), .A2(n209), .ZN(sig_aligned2[12]) );
  MUX2_X1 U206 ( .A(n129), .B(n83), .S(sig_small_shifted[12]), .Z(n227) );
  NAND2_X1 U207 ( .A1(n228), .A2(n209), .ZN(sig_aligned2[11]) );
  MUX2_X1 U208 ( .A(n129), .B(n210), .S(sig_small_shifted[11]), .Z(n228) );
  NAND2_X1 U209 ( .A1(n229), .A2(n209), .ZN(sig_aligned2[10]) );
  MUX2_X1 U210 ( .A(n129), .B(n210), .S(sig_small_shifted[10]), .Z(n229) );
  NAND2_X1 U211 ( .A1(n230), .A2(n209), .ZN(sig_aligned2[0]) );
  MUX2_X1 U212 ( .A(n83), .B(n129), .S(n232), .Z(n230) );
  AOI221_X1 U213 ( .B1(mag_exp_diff[1]), .B2(n122), .C1(mag_exp_diff[3]), .C2(
        n233), .A(n121), .ZN(n232) );
  AOI221_X1 U214 ( .B1(n235), .B2(n84), .C1(n126), .C2(mag_exp_diff[4]), .A(
        mag_exp_diff[5]), .ZN(n234) );
  AOI21_X1 U215 ( .B1(small_p[14]), .B2(n127), .A(n237), .ZN(n236) );
  OAI21_X1 U216 ( .B1(n134), .B2(n238), .A(n239), .ZN(n235) );
  NAND3_X1 U217 ( .A1(n239), .A2(n240), .A3(n241), .ZN(n233) );
  AOI222_X1 U218 ( .A1(small_p[6]), .A2(n127), .B1(n84), .B2(n125), .C1(
        mag_exp_diff[1]), .C2(n124), .ZN(n241) );
  AOI221_X1 U219 ( .B1(n128), .B2(n84), .C1(small_p[8]), .C2(mag_exp_diff[0]), 
        .A(small_p[7]), .ZN(n242) );
  AOI21_X1 U220 ( .B1(mag_exp_diff[0]), .B2(small_p[12]), .A(small_p[11]), 
        .ZN(n243) );
  AOI21_X1 U221 ( .B1(n127), .B2(small_p[10]), .A(n245), .ZN(n244) );
  NOR2_X1 U222 ( .A1(mag_exp_diff[1]), .A2(mag_exp_diff[0]), .ZN(n238) );
  NOR3_X1 U223 ( .A1(small_p[0]), .A2(mag_exp_diff[4]), .A3(small_p[1]), .ZN(
        n239) );
  AOI222_X1 U224 ( .A1(small_p[3]), .A2(n84), .B1(n123), .B2(mag_exp_diff[0]), 
        .C1(small_p[15]), .C2(mag_exp_diff[4]), .ZN(n246) );
  AOI221_X1 U225 ( .B1(n84), .B2(small_p[4]), .C1(mag_exp_diff[4]), .C2(
        small_p[16]), .A(small_p[0]), .ZN(n247) );
  NAND2_X1 U226 ( .A1(n248), .A2(n186), .ZN(n231) );
  NAND3_X1 U227 ( .A1(n138), .A2(large_p[17]), .A3(n145), .ZN(n186) );
  NAND4_X1 U228 ( .A1(large_p[18]), .A2(large_p[19]), .A3(n249), .A4(
        large_p[21]), .ZN(n191) );
  NOR2_X1 U229 ( .A1(n141), .A2(n140), .ZN(n249) );
  MUX2_X1 U230 ( .A(large_p[20]), .B(num_of_zeros[3]), .S(N141), .Z(
        num_of_zeros_used[3]) );
  MUX2_X1 U231 ( .A(large_p[19]), .B(num_of_zeros[2]), .S(N141), .Z(
        num_of_zeros_used[2]) );
  MUX2_X1 U232 ( .A(large_p[18]), .B(num_of_zeros[1]), .S(N141), .Z(
        num_of_zeros_used[1]) );
  MUX2_X1 U233 ( .A(exp_large_int_0_), .B(num_of_zeros[0]), .S(N141), .Z(
        num_of_zeros_used[0]) );
  NAND3_X1 U234 ( .A1(n248), .A2(sig_small_17_), .A3(n132), .ZN(
        exp_small_int[0]) );
  NAND2_X1 U235 ( .A1(n250), .A2(n133), .ZN(sig_small_17_) );
  NAND2_X1 U236 ( .A1(n200), .A2(n250), .ZN(n248) );
  NOR4_X1 U237 ( .A1(exp_small_int[1]), .A2(exp_small_int[2]), .A3(n203), .A4(
        n251), .ZN(n250) );
  OR3_X1 U238 ( .A1(exp_small_int[3]), .A2(exp_small_int[5]), .A3(
        exp_small_int[4]), .ZN(n251) );
  MUX2_X1 U239 ( .A(b[21]), .B(a[21]), .S(n86), .Z(exp_small_int[4]) );
  MUX2_X1 U240 ( .A(b[22]), .B(a[22]), .S(n86), .Z(exp_small_int[5]) );
  MUX2_X1 U241 ( .A(b[20]), .B(a[20]), .S(n86), .Z(exp_small_int[3]) );
  MUX2_X1 U242 ( .A(b[17]), .B(a[17]), .S(n86), .Z(n203) );
  MUX2_X1 U243 ( .A(b[19]), .B(a[19]), .S(n86), .Z(exp_small_int[2]) );
  MUX2_X1 U244 ( .A(b[18]), .B(a[18]), .S(n86), .Z(exp_small_int[1]) );
  NOR4_X1 U245 ( .A1(small_p[16]), .A2(n237), .A3(small_p[15]), .A4(
        small_p[14]), .ZN(n200) );
  MUX2_X1 U246 ( .A(b[14]), .B(a[14]), .S(n86), .Z(small_p[14]) );
  MUX2_X1 U247 ( .A(b[15]), .B(a[15]), .S(n86), .Z(small_p[15]) );
  NAND2_X1 U248 ( .A1(n252), .A2(n253), .ZN(n237) );
  NOR4_X1 U249 ( .A1(small_p[0]), .A2(small_p[1]), .A3(small_p[10]), .A4(
        small_p[11]), .ZN(n253) );
  MUX2_X1 U250 ( .A(b[11]), .B(a[11]), .S(n86), .Z(small_p[11]) );
  MUX2_X1 U251 ( .A(b[10]), .B(a[10]), .S(n86), .Z(small_p[10]) );
  MUX2_X1 U252 ( .A(b[1]), .B(a[1]), .S(n86), .Z(small_p[1]) );
  MUX2_X1 U253 ( .A(b[0]), .B(a[0]), .S(n86), .Z(small_p[0]) );
  NOR4_X1 U254 ( .A1(small_p[12]), .A2(small_p[13]), .A3(n135), .A4(n245), 
        .ZN(n252) );
  OR4_X1 U255 ( .A1(small_p[9]), .A2(small_p[8]), .A3(small_p[7]), .A4(
        small_p[6]), .ZN(n245) );
  MUX2_X1 U256 ( .A(b[6]), .B(a[6]), .S(n86), .Z(small_p[6]) );
  MUX2_X1 U257 ( .A(b[7]), .B(a[7]), .S(swap), .Z(small_p[7]) );
  MUX2_X1 U258 ( .A(b[8]), .B(a[8]), .S(n86), .Z(small_p[8]) );
  MUX2_X1 U259 ( .A(b[9]), .B(a[9]), .S(n86), .Z(small_p[9]) );
  NOR4_X1 U260 ( .A1(small_p[5]), .A2(small_p[4]), .A3(small_p[3]), .A4(
        small_p[2]), .ZN(n240) );
  MUX2_X1 U261 ( .A(b[2]), .B(a[2]), .S(n86), .Z(small_p[2]) );
  MUX2_X1 U262 ( .A(b[3]), .B(a[3]), .S(n86), .Z(small_p[3]) );
  MUX2_X1 U263 ( .A(b[4]), .B(a[4]), .S(n86), .Z(small_p[4]) );
  MUX2_X1 U264 ( .A(b[5]), .B(a[5]), .S(n86), .Z(small_p[5]) );
  MUX2_X1 U265 ( .A(b[13]), .B(a[13]), .S(n86), .Z(small_p[13]) );
  MUX2_X1 U266 ( .A(b[12]), .B(a[12]), .S(n86), .Z(small_p[12]) );
  MUX2_X1 U267 ( .A(b[16]), .B(a[16]), .S(n86), .Z(small_p[16]) );
  NAND3_X1 U268 ( .A1(n158), .A2(sig_large_17_), .A3(n142), .ZN(
        exp_large_int_0_) );
  NAND2_X1 U269 ( .A1(n254), .A2(n202), .ZN(sig_large_17_) );
  NAND2_X1 U270 ( .A1(n145), .A2(n254), .ZN(n158) );
  AND4_X1 U271 ( .A1(n144), .A2(n143), .A3(n142), .A4(n255), .ZN(n254) );
  NOR3_X1 U272 ( .A1(large_p[20]), .A2(large_p[22]), .A3(large_p[21]), .ZN(
        n255) );
  MUX2_X1 U273 ( .A(a[21]), .B(b[21]), .S(n86), .Z(large_p[21]) );
  MUX2_X1 U274 ( .A(a[22]), .B(b[22]), .S(n86), .Z(large_p[22]) );
  MUX2_X1 U275 ( .A(a[20]), .B(b[20]), .S(n86), .Z(large_p[20]) );
  MUX2_X1 U276 ( .A(a[17]), .B(b[17]), .S(n86), .Z(large_p[17]) );
  MUX2_X1 U277 ( .A(a[19]), .B(b[19]), .S(n86), .Z(large_p[19]) );
  MUX2_X1 U278 ( .A(a[18]), .B(b[18]), .S(n86), .Z(large_p[18]) );
  NAND3_X1 U279 ( .A1(n256), .A2(n257), .A3(n258), .ZN(n202) );
  NOR4_X1 U280 ( .A1(n259), .A2(n260), .A3(large_p[3]), .A4(large_p[4]), .ZN(
        n258) );
  MUX2_X1 U281 ( .A(a[4]), .B(b[4]), .S(n86), .Z(large_p[4]) );
  MUX2_X1 U282 ( .A(a[3]), .B(b[3]), .S(n86), .Z(large_p[3]) );
  OR3_X1 U283 ( .A1(large_p[1]), .A2(large_p[0]), .A3(large_p[2]), .ZN(n260)
         );
  MUX2_X1 U284 ( .A(a[2]), .B(b[2]), .S(n86), .Z(large_p[2]) );
  MUX2_X1 U285 ( .A(a[0]), .B(b[0]), .S(n86), .Z(large_p[0]) );
  MUX2_X1 U286 ( .A(a[1]), .B(b[1]), .S(n86), .Z(large_p[1]) );
  OR4_X1 U287 ( .A1(large_p[8]), .A2(large_p[7]), .A3(large_p[6]), .A4(
        large_p[5]), .ZN(n259) );
  MUX2_X1 U288 ( .A(a[5]), .B(b[5]), .S(n86), .Z(large_p[5]) );
  MUX2_X1 U289 ( .A(a[6]), .B(b[6]), .S(n86), .Z(large_p[6]) );
  MUX2_X1 U290 ( .A(a[7]), .B(b[7]), .S(n86), .Z(large_p[7]) );
  MUX2_X1 U291 ( .A(a[8]), .B(b[8]), .S(n86), .Z(large_p[8]) );
  NOR4_X1 U292 ( .A1(large_p[9]), .A2(large_p[10]), .A3(large_p[11]), .A4(
        large_p[12]), .ZN(n257) );
  MUX2_X1 U293 ( .A(a[12]), .B(b[12]), .S(n86), .Z(large_p[12]) );
  MUX2_X1 U294 ( .A(a[11]), .B(b[11]), .S(n86), .Z(large_p[11]) );
  MUX2_X1 U295 ( .A(a[10]), .B(b[10]), .S(n86), .Z(large_p[10]) );
  MUX2_X1 U296 ( .A(a[9]), .B(b[9]), .S(swap), .Z(large_p[9]) );
  NOR4_X1 U297 ( .A1(large_p[13]), .A2(large_p[14]), .A3(large_p[15]), .A4(
        large_p[16]), .ZN(n256) );
  MUX2_X1 U298 ( .A(a[16]), .B(b[16]), .S(swap), .Z(large_p[16]) );
  MUX2_X1 U299 ( .A(a[15]), .B(b[15]), .S(swap), .Z(large_p[15]) );
  MUX2_X1 U300 ( .A(a[14]), .B(b[14]), .S(swap), .Z(large_p[14]) );
  MUX2_X1 U301 ( .A(a[13]), .B(b[13]), .S(swap), .Z(large_p[13]) );
  XOR2_X1 U302 ( .A(n261), .B(n157), .Z(sig_aligned2[21]) );
  MUX2_X1 U303 ( .A(n130), .B(n262), .S(swap), .Z(n157) );
  MUX2_X1 U304 ( .A(n262), .B(n130), .S(swap), .Z(n261) );
  XNOR2_X1 U305 ( .A(b[23]), .B(op), .ZN(n262) );
  INV_X8 U8 ( .A(n87), .ZN(n86) );
endmodule


module fp_addsub_24_1 ( in1, in2, mode, opt, clock, status );
  input [23:0] in1;
  input [23:0] in2;
  output [23:0] opt;
  output [7:0] status;
  input mode, clock;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [23:0] z_inst_internal;
  wire   [5:0] status_inst_internal;
  wire   [23:0] z_inst_pipe1;
  wire   [5:0] status_inst_pipe1;
  wire   [23:0] z_inst_pipe2;
  wire   [5:0] status_inst_pipe2;
  assign status[7] = 1'b0;
  assign status[6] = 1'b0;
  assign status[3] = 1'b0;

  fp_addsub_24_1_DW_fp_addsub_0 U1 ( .a(in1), .b(in2), .rnd({1'b0, 1'b0, 1'b0}), .op(mode), .z(z_inst_internal), .status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, status_inst_internal[5:4], 
        SYNOPSYS_UNCONNECTED_3, status_inst_internal[2:0]}) );
  DFF_X1 status_inst_pipe1_reg_5_ ( .D(status_inst_internal[5]), .CK(clock), 
        .Q(status_inst_pipe1[5]) );
  DFF_X1 status_inst_pipe2_reg_5_ ( .D(status_inst_pipe1[5]), .CK(clock), .Q(
        status_inst_pipe2[5]) );
  DFF_X1 status_inst_pipe1_reg_4_ ( .D(status_inst_internal[4]), .CK(clock), 
        .Q(status_inst_pipe1[4]) );
  DFF_X1 status_inst_pipe2_reg_4_ ( .D(status_inst_pipe1[4]), .CK(clock), .Q(
        status_inst_pipe2[4]) );
  DFF_X1 status_inst_pipe1_reg_2_ ( .D(status_inst_internal[2]), .CK(clock), 
        .Q(status_inst_pipe1[2]) );
  DFF_X1 status_inst_pipe2_reg_2_ ( .D(status_inst_pipe1[2]), .CK(clock), .Q(
        status_inst_pipe2[2]) );
  DFF_X1 status_inst_pipe1_reg_1_ ( .D(status_inst_internal[1]), .CK(clock), 
        .Q(status_inst_pipe1[1]) );
  DFF_X1 status_inst_pipe2_reg_1_ ( .D(status_inst_pipe1[1]), .CK(clock), .Q(
        status_inst_pipe2[1]) );
  DFF_X1 status_inst_pipe1_reg_0_ ( .D(status_inst_internal[0]), .CK(clock), 
        .Q(status_inst_pipe1[0]) );
  DFF_X1 status_inst_pipe2_reg_0_ ( .D(status_inst_pipe1[0]), .CK(clock), .Q(
        status_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe1_reg_23_ ( .D(z_inst_internal[23]), .CK(clock), .Q(
        z_inst_pipe1[23]) );
  DFF_X1 z_inst_pipe2_reg_23_ ( .D(z_inst_pipe1[23]), .CK(clock), .Q(
        z_inst_pipe2[23]) );
  DFF_X1 z_inst_pipe1_reg_22_ ( .D(z_inst_internal[22]), .CK(clock), .Q(
        z_inst_pipe1[22]) );
  DFF_X1 z_inst_pipe2_reg_22_ ( .D(z_inst_pipe1[22]), .CK(clock), .Q(
        z_inst_pipe2[22]) );
  DFF_X1 z_inst_pipe1_reg_21_ ( .D(z_inst_internal[21]), .CK(clock), .Q(
        z_inst_pipe1[21]) );
  DFF_X1 z_inst_pipe2_reg_21_ ( .D(z_inst_pipe1[21]), .CK(clock), .Q(
        z_inst_pipe2[21]) );
  DFF_X1 z_inst_pipe1_reg_20_ ( .D(z_inst_internal[20]), .CK(clock), .Q(
        z_inst_pipe1[20]) );
  DFF_X1 z_inst_pipe2_reg_20_ ( .D(z_inst_pipe1[20]), .CK(clock), .Q(
        z_inst_pipe2[20]) );
  DFF_X1 z_inst_pipe1_reg_19_ ( .D(z_inst_internal[19]), .CK(clock), .Q(
        z_inst_pipe1[19]) );
  DFF_X1 z_inst_pipe2_reg_19_ ( .D(z_inst_pipe1[19]), .CK(clock), .Q(
        z_inst_pipe2[19]) );
  DFF_X1 z_inst_pipe1_reg_18_ ( .D(z_inst_internal[18]), .CK(clock), .Q(
        z_inst_pipe1[18]) );
  DFF_X1 z_inst_pipe2_reg_18_ ( .D(z_inst_pipe1[18]), .CK(clock), .Q(
        z_inst_pipe2[18]) );
  DFF_X1 z_inst_pipe1_reg_17_ ( .D(z_inst_internal[17]), .CK(clock), .Q(
        z_inst_pipe1[17]) );
  DFF_X1 z_inst_pipe2_reg_17_ ( .D(z_inst_pipe1[17]), .CK(clock), .Q(
        z_inst_pipe2[17]) );
  DFF_X1 z_inst_pipe1_reg_16_ ( .D(z_inst_internal[16]), .CK(clock), .Q(
        z_inst_pipe1[16]) );
  DFF_X1 z_inst_pipe2_reg_16_ ( .D(z_inst_pipe1[16]), .CK(clock), .Q(
        z_inst_pipe2[16]) );
  DFF_X1 z_inst_pipe1_reg_15_ ( .D(z_inst_internal[15]), .CK(clock), .Q(
        z_inst_pipe1[15]) );
  DFF_X1 z_inst_pipe2_reg_15_ ( .D(z_inst_pipe1[15]), .CK(clock), .Q(
        z_inst_pipe2[15]) );
  DFF_X1 z_inst_pipe1_reg_14_ ( .D(z_inst_internal[14]), .CK(clock), .Q(
        z_inst_pipe1[14]) );
  DFF_X1 z_inst_pipe2_reg_14_ ( .D(z_inst_pipe1[14]), .CK(clock), .Q(
        z_inst_pipe2[14]) );
  DFF_X1 z_inst_pipe1_reg_13_ ( .D(z_inst_internal[13]), .CK(clock), .Q(
        z_inst_pipe1[13]) );
  DFF_X1 z_inst_pipe2_reg_13_ ( .D(z_inst_pipe1[13]), .CK(clock), .Q(
        z_inst_pipe2[13]) );
  DFF_X1 z_inst_pipe1_reg_12_ ( .D(z_inst_internal[12]), .CK(clock), .Q(
        z_inst_pipe1[12]) );
  DFF_X1 z_inst_pipe2_reg_12_ ( .D(z_inst_pipe1[12]), .CK(clock), .Q(
        z_inst_pipe2[12]) );
  DFF_X1 z_inst_pipe1_reg_11_ ( .D(z_inst_internal[11]), .CK(clock), .Q(
        z_inst_pipe1[11]) );
  DFF_X1 z_inst_pipe2_reg_11_ ( .D(z_inst_pipe1[11]), .CK(clock), .Q(
        z_inst_pipe2[11]) );
  DFF_X1 z_inst_pipe1_reg_10_ ( .D(z_inst_internal[10]), .CK(clock), .Q(
        z_inst_pipe1[10]) );
  DFF_X1 z_inst_pipe2_reg_10_ ( .D(z_inst_pipe1[10]), .CK(clock), .Q(
        z_inst_pipe2[10]) );
  DFF_X1 z_inst_pipe1_reg_9_ ( .D(z_inst_internal[9]), .CK(clock), .Q(
        z_inst_pipe1[9]) );
  DFF_X1 z_inst_pipe2_reg_9_ ( .D(z_inst_pipe1[9]), .CK(clock), .Q(
        z_inst_pipe2[9]) );
  DFF_X1 z_inst_pipe1_reg_8_ ( .D(z_inst_internal[8]), .CK(clock), .Q(
        z_inst_pipe1[8]) );
  DFF_X1 z_inst_pipe2_reg_8_ ( .D(z_inst_pipe1[8]), .CK(clock), .Q(
        z_inst_pipe2[8]) );
  DFF_X1 z_inst_pipe1_reg_7_ ( .D(z_inst_internal[7]), .CK(clock), .Q(
        z_inst_pipe1[7]) );
  DFF_X1 z_inst_pipe2_reg_7_ ( .D(z_inst_pipe1[7]), .CK(clock), .Q(
        z_inst_pipe2[7]) );
  DFF_X1 z_inst_pipe1_reg_6_ ( .D(z_inst_internal[6]), .CK(clock), .Q(
        z_inst_pipe1[6]) );
  DFF_X1 z_inst_pipe2_reg_6_ ( .D(z_inst_pipe1[6]), .CK(clock), .Q(
        z_inst_pipe2[6]) );
  DFF_X1 z_inst_pipe1_reg_5_ ( .D(z_inst_internal[5]), .CK(clock), .Q(
        z_inst_pipe1[5]) );
  DFF_X1 z_inst_pipe2_reg_5_ ( .D(z_inst_pipe1[5]), .CK(clock), .Q(
        z_inst_pipe2[5]) );
  DFF_X1 z_inst_pipe1_reg_4_ ( .D(z_inst_internal[4]), .CK(clock), .Q(
        z_inst_pipe1[4]) );
  DFF_X1 z_inst_pipe2_reg_4_ ( .D(z_inst_pipe1[4]), .CK(clock), .Q(
        z_inst_pipe2[4]) );
  DFF_X1 z_inst_pipe1_reg_3_ ( .D(z_inst_internal[3]), .CK(clock), .Q(
        z_inst_pipe1[3]) );
  DFF_X1 z_inst_pipe2_reg_3_ ( .D(z_inst_pipe1[3]), .CK(clock), .Q(
        z_inst_pipe2[3]) );
  DFF_X1 z_inst_pipe1_reg_2_ ( .D(z_inst_internal[2]), .CK(clock), .Q(
        z_inst_pipe1[2]) );
  DFF_X1 z_inst_pipe2_reg_2_ ( .D(z_inst_pipe1[2]), .CK(clock), .Q(
        z_inst_pipe2[2]) );
  DFF_X1 z_inst_pipe1_reg_1_ ( .D(z_inst_internal[1]), .CK(clock), .Q(
        z_inst_pipe1[1]) );
  DFF_X1 z_inst_pipe2_reg_1_ ( .D(z_inst_pipe1[1]), .CK(clock), .Q(
        z_inst_pipe2[1]) );
  DFF_X1 z_inst_pipe1_reg_0_ ( .D(z_inst_internal[0]), .CK(clock), .Q(
        z_inst_pipe1[0]) );
  DFF_X1 z_inst_pipe2_reg_0_ ( .D(z_inst_pipe1[0]), .CK(clock), .Q(
        z_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe3_reg_23_ ( .D(z_inst_pipe2[23]), .CK(clock), .Q(opt[23])
         );
  DFF_X1 z_inst_pipe3_reg_22_ ( .D(z_inst_pipe2[22]), .CK(clock), .Q(opt[22])
         );
  DFF_X1 z_inst_pipe3_reg_21_ ( .D(z_inst_pipe2[21]), .CK(clock), .Q(opt[21])
         );
  DFF_X1 z_inst_pipe3_reg_20_ ( .D(z_inst_pipe2[20]), .CK(clock), .Q(opt[20])
         );
  DFF_X1 z_inst_pipe3_reg_19_ ( .D(z_inst_pipe2[19]), .CK(clock), .Q(opt[19])
         );
  DFF_X1 z_inst_pipe3_reg_18_ ( .D(z_inst_pipe2[18]), .CK(clock), .Q(opt[18])
         );
  DFF_X1 z_inst_pipe3_reg_17_ ( .D(z_inst_pipe2[17]), .CK(clock), .Q(opt[17])
         );
  DFF_X1 z_inst_pipe3_reg_16_ ( .D(z_inst_pipe2[16]), .CK(clock), .Q(opt[16])
         );
  DFF_X1 z_inst_pipe3_reg_15_ ( .D(z_inst_pipe2[15]), .CK(clock), .Q(opt[15])
         );
  DFF_X1 z_inst_pipe3_reg_14_ ( .D(z_inst_pipe2[14]), .CK(clock), .Q(opt[14])
         );
  DFF_X1 z_inst_pipe3_reg_13_ ( .D(z_inst_pipe2[13]), .CK(clock), .Q(opt[13])
         );
  DFF_X1 z_inst_pipe3_reg_12_ ( .D(z_inst_pipe2[12]), .CK(clock), .Q(opt[12])
         );
  DFF_X1 z_inst_pipe3_reg_11_ ( .D(z_inst_pipe2[11]), .CK(clock), .Q(opt[11])
         );
  DFF_X1 z_inst_pipe3_reg_10_ ( .D(z_inst_pipe2[10]), .CK(clock), .Q(opt[10])
         );
  DFF_X1 z_inst_pipe3_reg_9_ ( .D(z_inst_pipe2[9]), .CK(clock), .Q(opt[9]) );
  DFF_X1 z_inst_pipe3_reg_8_ ( .D(z_inst_pipe2[8]), .CK(clock), .Q(opt[8]) );
  DFF_X1 z_inst_pipe3_reg_7_ ( .D(z_inst_pipe2[7]), .CK(clock), .Q(opt[7]) );
  DFF_X1 z_inst_pipe3_reg_6_ ( .D(z_inst_pipe2[6]), .CK(clock), .Q(opt[6]) );
  DFF_X1 z_inst_pipe3_reg_5_ ( .D(z_inst_pipe2[5]), .CK(clock), .Q(opt[5]) );
  DFF_X1 z_inst_pipe3_reg_4_ ( .D(z_inst_pipe2[4]), .CK(clock), .Q(opt[4]) );
  DFF_X1 z_inst_pipe3_reg_3_ ( .D(z_inst_pipe2[3]), .CK(clock), .Q(opt[3]) );
  DFF_X1 z_inst_pipe3_reg_2_ ( .D(z_inst_pipe2[2]), .CK(clock), .Q(opt[2]) );
  DFF_X1 z_inst_pipe3_reg_1_ ( .D(z_inst_pipe2[1]), .CK(clock), .Q(opt[1]) );
  DFF_X1 z_inst_pipe3_reg_0_ ( .D(z_inst_pipe2[0]), .CK(clock), .Q(opt[0]) );
  DFF_X1 status_inst_pipe3_reg_5_ ( .D(status_inst_pipe2[5]), .CK(clock), .Q(
        status[5]) );
  DFF_X1 status_inst_pipe3_reg_4_ ( .D(status_inst_pipe2[4]), .CK(clock), .Q(
        status[4]) );
  DFF_X1 status_inst_pipe3_reg_2_ ( .D(status_inst_pipe2[2]), .CK(clock), .Q(
        status[2]) );
  DFF_X1 status_inst_pipe3_reg_1_ ( .D(status_inst_pipe2[1]), .CK(clock), .Q(
        status[1]) );
  DFF_X1 status_inst_pipe3_reg_0_ ( .D(status_inst_pipe2[0]), .CK(clock), .Q(
        status[0]) );
endmodule


module fp_addsub_24_5_DW01_inc_1 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:2] carry;

  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[16]), .B(A[16]), .Z(SUM[16]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module fp_addsub_24_5_DW_leftsh_0 ( A, SH, B );
  input [20:0] A;
  input [4:0] SH;
  output [20:0] B;
  wire   n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358;

  INV_X4 U228 ( .A(SH[0]), .ZN(n277) );
  INV_X4 U229 ( .A(SH[1]), .ZN(n275) );
  INV_X4 U230 ( .A(SH[2]), .ZN(n271) );
  INV_X4 U231 ( .A(SH[3]), .ZN(n264) );
  INV_X4 U232 ( .A(n281), .ZN(n256) );
  INV_X4 U233 ( .A(n287), .ZN(n257) );
  INV_X4 U234 ( .A(n288), .ZN(n258) );
  INV_X4 U235 ( .A(n289), .ZN(n259) );
  INV_X4 U236 ( .A(n323), .ZN(n260) );
  INV_X4 U237 ( .A(n329), .ZN(n261) );
  INV_X4 U238 ( .A(n298), .ZN(n262) );
  INV_X4 U239 ( .A(n278), .ZN(n263) );
  INV_X4 U240 ( .A(n309), .ZN(n265) );
  INV_X4 U241 ( .A(n301), .ZN(n266) );
  INV_X4 U242 ( .A(n292), .ZN(n267) );
  INV_X4 U243 ( .A(n342), .ZN(n268) );
  INV_X4 U244 ( .A(n336), .ZN(n269) );
  INV_X4 U245 ( .A(n284), .ZN(n270) );
  INV_X4 U246 ( .A(n340), .ZN(n272) );
  INV_X4 U247 ( .A(n327), .ZN(n273) );
  INV_X4 U248 ( .A(n321), .ZN(n274) );
  INV_X4 U249 ( .A(n354), .ZN(n276) );
  NOR2_X1 U250 ( .A1(SH[4]), .A2(n263), .ZN(B[9]) );
  MUX2_X1 U251 ( .A(n279), .B(n280), .S(n264), .Z(n278) );
  NOR2_X1 U252 ( .A1(SH[4]), .A2(n256), .ZN(B[8]) );
  MUX2_X1 U253 ( .A(n282), .B(n283), .S(SH[3]), .Z(n281) );
  NOR3_X1 U254 ( .A1(n270), .A2(SH[4]), .A3(SH[3]), .ZN(B[7]) );
  NOR3_X1 U255 ( .A1(n285), .A2(SH[4]), .A3(SH[3]), .ZN(B[6]) );
  NOR3_X1 U256 ( .A1(n286), .A2(SH[4]), .A3(SH[3]), .ZN(B[5]) );
  NOR2_X1 U257 ( .A1(SH[4]), .A2(n257), .ZN(B[4]) );
  NOR2_X1 U258 ( .A1(SH[4]), .A2(n258), .ZN(B[3]) );
  NOR2_X1 U259 ( .A1(SH[4]), .A2(n259), .ZN(B[2]) );
  MUX2_X1 U260 ( .A(n290), .B(n287), .S(SH[4]), .Z(B[20]) );
  NOR2_X1 U261 ( .A1(n291), .A2(SH[3]), .ZN(n287) );
  MUX2_X1 U262 ( .A(n292), .B(n293), .S(n264), .Z(n290) );
  MUX2_X1 U263 ( .A(n294), .B(n295), .S(n271), .Z(n293) );
  MUX2_X1 U264 ( .A(n296), .B(n297), .S(n275), .Z(n295) );
  MUX2_X1 U265 ( .A(A[19]), .B(A[20]), .S(n277), .Z(n297) );
  NOR2_X1 U266 ( .A1(SH[4]), .A2(n298), .ZN(B[1]) );
  MUX2_X1 U267 ( .A(n299), .B(n288), .S(SH[4]), .Z(B[19]) );
  NOR2_X1 U268 ( .A1(n300), .A2(SH[3]), .ZN(n288) );
  MUX2_X1 U269 ( .A(n301), .B(n302), .S(n264), .Z(n299) );
  MUX2_X1 U270 ( .A(n303), .B(n304), .S(n271), .Z(n302) );
  MUX2_X1 U271 ( .A(n305), .B(n306), .S(n275), .Z(n304) );
  MUX2_X1 U272 ( .A(A[18]), .B(A[19]), .S(n277), .Z(n306) );
  MUX2_X1 U273 ( .A(n307), .B(n289), .S(SH[4]), .Z(B[18]) );
  NOR2_X1 U274 ( .A1(n308), .A2(SH[3]), .ZN(n289) );
  MUX2_X1 U275 ( .A(n309), .B(n310), .S(n264), .Z(n307) );
  MUX2_X1 U276 ( .A(n311), .B(n312), .S(n271), .Z(n310) );
  MUX2_X1 U277 ( .A(n313), .B(n296), .S(n275), .Z(n312) );
  MUX2_X1 U278 ( .A(A[18]), .B(A[17]), .S(SH[0]), .Z(n296) );
  MUX2_X1 U279 ( .A(n314), .B(n262), .S(SH[4]), .Z(B[17]) );
  NAND2_X1 U280 ( .A1(n279), .A2(n264), .ZN(n298) );
  NOR2_X1 U281 ( .A1(n315), .A2(SH[2]), .ZN(n279) );
  MUX2_X1 U282 ( .A(n280), .B(n316), .S(n264), .Z(n314) );
  MUX2_X1 U283 ( .A(n317), .B(n318), .S(n271), .Z(n316) );
  MUX2_X1 U284 ( .A(n319), .B(n305), .S(n275), .Z(n318) );
  MUX2_X1 U285 ( .A(A[17]), .B(A[16]), .S(SH[0]), .Z(n305) );
  MUX2_X1 U286 ( .A(n320), .B(n321), .S(SH[2]), .Z(n280) );
  MUX2_X1 U287 ( .A(n322), .B(n260), .S(SH[4]), .Z(B[16]) );
  MUX2_X1 U288 ( .A(n282), .B(n324), .S(n264), .Z(n322) );
  MUX2_X1 U289 ( .A(n325), .B(n294), .S(n271), .Z(n324) );
  MUX2_X1 U290 ( .A(n326), .B(n313), .S(n275), .Z(n294) );
  MUX2_X1 U291 ( .A(A[15]), .B(A[16]), .S(n277), .Z(n313) );
  MUX2_X1 U292 ( .A(n327), .B(n328), .S(n271), .Z(n282) );
  NOR2_X1 U293 ( .A1(SH[4]), .A2(n261), .ZN(B[15]) );
  MUX2_X1 U294 ( .A(n284), .B(n330), .S(n264), .Z(n329) );
  MUX2_X1 U295 ( .A(n331), .B(n303), .S(n271), .Z(n330) );
  MUX2_X1 U296 ( .A(n332), .B(n319), .S(n275), .Z(n303) );
  MUX2_X1 U297 ( .A(A[14]), .B(A[15]), .S(n277), .Z(n319) );
  MUX2_X1 U298 ( .A(n333), .B(n334), .S(n271), .Z(n284) );
  NOR2_X1 U299 ( .A1(SH[4]), .A2(n335), .ZN(B[14]) );
  MUX2_X1 U300 ( .A(n285), .B(n269), .S(n264), .Z(n335) );
  MUX2_X1 U301 ( .A(n337), .B(n311), .S(n271), .Z(n336) );
  MUX2_X1 U302 ( .A(n338), .B(n326), .S(n275), .Z(n311) );
  MUX2_X1 U303 ( .A(A[13]), .B(A[14]), .S(n277), .Z(n326) );
  MUX2_X1 U304 ( .A(n339), .B(n272), .S(n271), .Z(n285) );
  NOR2_X1 U305 ( .A1(SH[4]), .A2(n341), .ZN(B[13]) );
  MUX2_X1 U306 ( .A(n286), .B(n268), .S(n264), .Z(n341) );
  MUX2_X1 U307 ( .A(n320), .B(n317), .S(n271), .Z(n342) );
  MUX2_X1 U308 ( .A(n343), .B(n332), .S(n275), .Z(n317) );
  MUX2_X1 U309 ( .A(A[12]), .B(A[13]), .S(n277), .Z(n332) );
  MUX2_X1 U310 ( .A(n344), .B(n345), .S(n275), .Z(n320) );
  MUX2_X1 U311 ( .A(n315), .B(n274), .S(n271), .Z(n286) );
  MUX2_X1 U312 ( .A(n346), .B(n347), .S(n275), .Z(n321) );
  NAND2_X1 U313 ( .A1(n348), .A2(n275), .ZN(n315) );
  NOR2_X1 U314 ( .A1(SH[4]), .A2(n349), .ZN(B[12]) );
  MUX2_X1 U315 ( .A(n291), .B(n267), .S(n264), .Z(n349) );
  MUX2_X1 U316 ( .A(n328), .B(n325), .S(n271), .Z(n292) );
  MUX2_X1 U317 ( .A(n350), .B(n338), .S(n275), .Z(n325) );
  MUX2_X1 U318 ( .A(A[11]), .B(A[12]), .S(n277), .Z(n338) );
  MUX2_X1 U319 ( .A(n351), .B(n352), .S(n275), .Z(n328) );
  MUX2_X1 U320 ( .A(n353), .B(n273), .S(n271), .Z(n291) );
  MUX2_X1 U321 ( .A(n354), .B(n355), .S(n275), .Z(n327) );
  NOR2_X1 U322 ( .A1(SH[4]), .A2(n356), .ZN(B[11]) );
  MUX2_X1 U323 ( .A(n300), .B(n266), .S(n264), .Z(n356) );
  MUX2_X1 U324 ( .A(n334), .B(n331), .S(n271), .Z(n301) );
  MUX2_X1 U325 ( .A(n345), .B(n343), .S(n275), .Z(n331) );
  MUX2_X1 U326 ( .A(A[10]), .B(A[11]), .S(n277), .Z(n343) );
  MUX2_X1 U327 ( .A(A[8]), .B(A[9]), .S(n277), .Z(n345) );
  MUX2_X1 U328 ( .A(n347), .B(n344), .S(n275), .Z(n334) );
  MUX2_X1 U329 ( .A(A[6]), .B(A[7]), .S(n277), .Z(n344) );
  MUX2_X1 U330 ( .A(A[4]), .B(A[5]), .S(n277), .Z(n347) );
  NAND2_X1 U331 ( .A1(n333), .A2(n271), .ZN(n300) );
  MUX2_X1 U332 ( .A(n348), .B(n346), .S(n275), .Z(n333) );
  MUX2_X1 U333 ( .A(A[2]), .B(A[3]), .S(n277), .Z(n346) );
  MUX2_X1 U334 ( .A(A[0]), .B(A[1]), .S(n277), .Z(n348) );
  NOR2_X1 U335 ( .A1(SH[4]), .A2(n357), .ZN(B[10]) );
  MUX2_X1 U336 ( .A(n308), .B(n265), .S(n264), .Z(n357) );
  MUX2_X1 U337 ( .A(n340), .B(n337), .S(n271), .Z(n309) );
  MUX2_X1 U338 ( .A(n352), .B(n350), .S(n275), .Z(n337) );
  MUX2_X1 U339 ( .A(A[9]), .B(A[10]), .S(n277), .Z(n350) );
  MUX2_X1 U340 ( .A(A[7]), .B(A[8]), .S(n277), .Z(n352) );
  MUX2_X1 U341 ( .A(n355), .B(n351), .S(n275), .Z(n340) );
  MUX2_X1 U342 ( .A(A[5]), .B(A[6]), .S(n277), .Z(n351) );
  MUX2_X1 U343 ( .A(A[3]), .B(A[4]), .S(n277), .Z(n355) );
  OR2_X1 U344 ( .A1(n339), .A2(SH[2]), .ZN(n308) );
  MUX2_X1 U345 ( .A(n358), .B(n276), .S(n275), .Z(n339) );
  MUX2_X1 U346 ( .A(A[1]), .B(A[2]), .S(n277), .Z(n354) );
  NOR2_X1 U347 ( .A1(SH[4]), .A2(n323), .ZN(B[0]) );
  NAND2_X1 U348 ( .A1(n283), .A2(n264), .ZN(n323) );
  NOR2_X1 U349 ( .A1(n353), .A2(SH[2]), .ZN(n283) );
  OR2_X1 U350 ( .A1(n358), .A2(SH[1]), .ZN(n353) );
  NAND2_X1 U351 ( .A1(A[0]), .A2(n277), .ZN(n358) );
endmodule


module fp_addsub_24_5_DW_lzd_0 ( a, enc, dec );
  input [20:0] a;
  output [5:0] enc;
  output [20:0] dec;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  INV_X4 U1 ( .A(n21), .ZN(n1) );
  INV_X4 U2 ( .A(a[18]), .ZN(n2) );
  INV_X4 U3 ( .A(a[17]), .ZN(n3) );
  INV_X4 U4 ( .A(a[16]), .ZN(n4) );
  INV_X4 U5 ( .A(a[15]), .ZN(n5) );
  INV_X4 U6 ( .A(a[14]), .ZN(n6) );
  INV_X4 U7 ( .A(a[13]), .ZN(n7) );
  INV_X4 U8 ( .A(n23), .ZN(n8) );
  INV_X4 U9 ( .A(a[10]), .ZN(n9) );
  INV_X4 U10 ( .A(a[9]), .ZN(n10) );
  INV_X4 U11 ( .A(a[6]), .ZN(n11) );
  INV_X4 U12 ( .A(a[5]), .ZN(n12) );
  INV_X4 U13 ( .A(n32), .ZN(n13) );
  INV_X4 U14 ( .A(a[2]), .ZN(n14) );
  INV_X4 U15 ( .A(n33), .ZN(n15) );
  INV_X4 U16 ( .A(a[0]), .ZN(n16) );
  AND3_X1 U17 ( .A1(enc[4]), .A2(n16), .A3(n17), .ZN(enc[5]) );
  NOR3_X1 U18 ( .A1(n8), .A2(n18), .A3(n19), .ZN(enc[4]) );
  NOR2_X1 U19 ( .A1(n20), .A2(n19), .ZN(enc[3]) );
  NAND2_X1 U20 ( .A1(n21), .A2(n22), .ZN(n19) );
  AOI211_X1 U21 ( .C1(n17), .C2(n16), .A(n8), .B(n18), .ZN(n20) );
  AOI21_X1 U22 ( .B1(n22), .B2(n24), .A(n1), .ZN(enc[2]) );
  NOR4_X1 U23 ( .A1(a[17]), .A2(a[18]), .A3(a[19]), .A4(a[20]), .ZN(n21) );
  OAI21_X1 U24 ( .B1(n17), .B2(n18), .A(n23), .ZN(n24) );
  NOR4_X1 U25 ( .A1(a[10]), .A2(a[11]), .A3(a[12]), .A4(a[9]), .ZN(n23) );
  OR4_X1 U26 ( .A1(a[5]), .A2(a[6]), .A3(a[7]), .A4(a[8]), .ZN(n18) );
  NOR4_X1 U27 ( .A1(a[1]), .A2(a[2]), .A3(a[3]), .A4(a[4]), .ZN(n17) );
  NOR4_X1 U28 ( .A1(a[13]), .A2(a[14]), .A3(a[15]), .A4(a[16]), .ZN(n22) );
  AOI211_X1 U29 ( .C1(n25), .C2(n26), .A(a[20]), .B(a[19]), .ZN(enc[1]) );
  OAI211_X1 U30 ( .C1(n27), .C2(n28), .A(n5), .B(n4), .ZN(n26) );
  NAND2_X1 U31 ( .A1(n7), .A2(n6), .ZN(n28) );
  NOR3_X1 U32 ( .A1(n29), .A2(a[12]), .A3(a[11]), .ZN(n27) );
  NOR3_X1 U33 ( .A1(n30), .A2(a[9]), .A3(a[10]), .ZN(n29) );
  AOI211_X1 U34 ( .C1(n31), .C2(n13), .A(a[8]), .B(a[7]), .ZN(n30) );
  AOI211_X1 U35 ( .C1(n14), .C2(n33), .A(a[3]), .B(a[4]), .ZN(n32) );
  NOR2_X1 U36 ( .A1(a[6]), .A2(a[5]), .ZN(n31) );
  NOR2_X1 U37 ( .A1(a[18]), .A2(a[17]), .ZN(n25) );
  NOR2_X1 U38 ( .A1(a[20]), .A2(n34), .ZN(enc[0]) );
  AOI21_X1 U39 ( .B1(n35), .B2(n2), .A(a[19]), .ZN(n34) );
  OAI21_X1 U40 ( .B1(a[16]), .B2(n36), .A(n3), .ZN(n35) );
  AOI21_X1 U41 ( .B1(n37), .B2(n6), .A(a[15]), .ZN(n36) );
  OAI21_X1 U42 ( .B1(a[12]), .B2(n38), .A(n7), .ZN(n37) );
  AOI21_X1 U43 ( .B1(n39), .B2(n9), .A(a[11]), .ZN(n38) );
  OAI21_X1 U44 ( .B1(a[8]), .B2(n40), .A(n10), .ZN(n39) );
  AOI21_X1 U45 ( .B1(n41), .B2(n11), .A(a[7]), .ZN(n40) );
  OAI21_X1 U46 ( .B1(a[4]), .B2(n42), .A(n12), .ZN(n41) );
  AOI21_X1 U47 ( .B1(n15), .B2(n14), .A(a[3]), .ZN(n42) );
  NOR2_X1 U48 ( .A1(n16), .A2(a[1]), .ZN(n33) );
endmodule


module fp_addsub_24_5_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n5, n6;
  wire   [21:5] carry;

  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  AND2_X4 U1 ( .A1(B[3]), .A2(A[3]), .ZN(n1) );
  BUF_X4 U2 ( .A(B[2]), .Z(SUM[2]) );
  BUF_X4 U3 ( .A(B[1]), .Z(SUM[1]) );
  BUF_X4 U4 ( .A(B[0]), .Z(SUM[0]) );
  XNOR2_X2 U5 ( .A(B[21]), .B(n5), .ZN(SUM[21]) );
  INV_X4 U6 ( .A(carry[21]), .ZN(n5) );
  INV_X4 U7 ( .A(A[3]), .ZN(n6) );
  XNOR2_X2 U8 ( .A(B[3]), .B(n6), .ZN(SUM[3]) );
endmodule


module fp_addsub_24_5_DW_rightsh_0 ( A, DATA_TC, SH, B );
  input [19:0] A;
  input [5:0] SH;
  output [19:0] B;
  input DATA_TC;
  wire   n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365;

  INV_X2 U229 ( .A(SH[0]), .ZN(n258) );
  INV_X4 U230 ( .A(n264), .ZN(n263) );
  INV_X4 U231 ( .A(SH[4]), .ZN(n264) );
  INV_X4 U232 ( .A(n259), .ZN(n260) );
  INV_X4 U233 ( .A(SH[1]), .ZN(n259) );
  INV_X4 U234 ( .A(n261), .ZN(n262) );
  INV_X4 U235 ( .A(SH[3]), .ZN(n261) );
  INV_X4 U236 ( .A(n289), .ZN(n265) );
  INV_X4 U237 ( .A(n341), .ZN(n266) );
  INV_X4 U238 ( .A(n342), .ZN(n267) );
  INV_X4 U239 ( .A(n292), .ZN(n268) );
  INV_X4 U240 ( .A(n328), .ZN(n269) );
  INV_X4 U241 ( .A(n356), .ZN(n270) );
  INV_X4 U242 ( .A(n363), .ZN(n271) );
  INV_X4 U243 ( .A(n338), .ZN(n272) );
  INV_X4 U244 ( .A(n340), .ZN(n273) );
  INV_X4 U245 ( .A(n352), .ZN(n274) );
  INV_X4 U246 ( .A(n353), .ZN(n275) );
  INV_X4 U247 ( .A(n357), .ZN(n276) );
  INV_X4 U248 ( .A(n330), .ZN(n277) );
  INV_X4 U249 ( .A(A[13]), .ZN(n278) );
  INV_X4 U250 ( .A(A[12]), .ZN(n279) );
  INV_X4 U251 ( .A(A[8]), .ZN(n280) );
  INV_X4 U252 ( .A(A[9]), .ZN(n281) );
  INV_X4 U253 ( .A(A[10]), .ZN(n282) );
  INV_X4 U254 ( .A(A[11]), .ZN(n283) );
  INV_X4 U255 ( .A(A[6]), .ZN(n284) );
  INV_X4 U256 ( .A(A[7]), .ZN(n285) );
  INV_X4 U257 ( .A(A[14]), .ZN(n286) );
  NOR3_X1 U258 ( .A1(n287), .A2(SH[5]), .A3(n263), .ZN(B[9]) );
  MUX2_X1 U259 ( .A(n288), .B(n265), .S(n262), .Z(n287) );
  NOR3_X1 U260 ( .A1(n290), .A2(SH[5]), .A3(n263), .ZN(B[8]) );
  MUX2_X1 U261 ( .A(n291), .B(n268), .S(n262), .Z(n290) );
  NOR3_X1 U262 ( .A1(n293), .A2(SH[5]), .A3(n263), .ZN(B[7]) );
  MUX2_X1 U263 ( .A(n294), .B(n295), .S(n262), .Z(n293) );
  MUX2_X1 U264 ( .A(n296), .B(n297), .S(SH[2]), .Z(n294) );
  NOR3_X1 U265 ( .A1(n298), .A2(SH[5]), .A3(n263), .ZN(B[6]) );
  MUX2_X1 U266 ( .A(n299), .B(n300), .S(n262), .Z(n298) );
  MUX2_X1 U267 ( .A(n301), .B(n302), .S(SH[2]), .Z(n299) );
  NOR3_X1 U268 ( .A1(n303), .A2(SH[5]), .A3(n263), .ZN(B[5]) );
  MUX2_X1 U269 ( .A(n304), .B(n305), .S(n262), .Z(n303) );
  MUX2_X1 U270 ( .A(n306), .B(n307), .S(SH[2]), .Z(n304) );
  NOR3_X1 U271 ( .A1(n308), .A2(SH[5]), .A3(n263), .ZN(B[4]) );
  MUX2_X1 U272 ( .A(n309), .B(n310), .S(n262), .Z(n308) );
  MUX2_X1 U273 ( .A(n311), .B(n312), .S(SH[2]), .Z(n309) );
  NOR2_X1 U274 ( .A1(SH[5]), .A2(n313), .ZN(B[3]) );
  MUX2_X1 U275 ( .A(n314), .B(n315), .S(n263), .Z(n313) );
  MUX2_X1 U276 ( .A(n316), .B(n317), .S(n262), .Z(n314) );
  MUX2_X1 U277 ( .A(n318), .B(n296), .S(SH[2]), .Z(n316) );
  MUX2_X1 U278 ( .A(n319), .B(n320), .S(n260), .Z(n296) );
  MUX2_X1 U279 ( .A(n273), .B(n272), .S(n260), .Z(n318) );
  NOR2_X1 U280 ( .A1(SH[5]), .A2(n321), .ZN(B[2]) );
  MUX2_X1 U281 ( .A(n322), .B(n323), .S(n263), .Z(n321) );
  MUX2_X1 U282 ( .A(n324), .B(n325), .S(n262), .Z(n322) );
  MUX2_X1 U283 ( .A(n269), .B(n301), .S(SH[2]), .Z(n324) );
  MUX2_X1 U284 ( .A(n326), .B(n327), .S(n260), .Z(n301) );
  MUX2_X1 U285 ( .A(n329), .B(n330), .S(n260), .Z(n328) );
  NOR2_X1 U286 ( .A1(SH[5]), .A2(n331), .ZN(B[1]) );
  MUX2_X1 U287 ( .A(n332), .B(n333), .S(n263), .Z(n331) );
  MUX2_X1 U288 ( .A(n334), .B(n288), .S(n262), .Z(n332) );
  MUX2_X1 U289 ( .A(n307), .B(n335), .S(SH[2]), .Z(n288) );
  MUX2_X1 U290 ( .A(n320), .B(n336), .S(n260), .Z(n307) );
  MUX2_X1 U291 ( .A(n281), .B(n282), .S(SH[0]), .Z(n320) );
  MUX2_X1 U292 ( .A(n337), .B(n306), .S(SH[2]), .Z(n334) );
  MUX2_X1 U293 ( .A(n272), .B(n319), .S(n260), .Z(n306) );
  MUX2_X1 U294 ( .A(n285), .B(n280), .S(SH[0]), .Z(n319) );
  MUX2_X1 U295 ( .A(A[5]), .B(A[6]), .S(SH[0]), .Z(n338) );
  MUX2_X1 U296 ( .A(n339), .B(n273), .S(n260), .Z(n337) );
  MUX2_X1 U297 ( .A(A[3]), .B(A[4]), .S(SH[0]), .Z(n340) );
  NAND2_X1 U298 ( .A1(A[2]), .A2(SH[0]), .ZN(n339) );
  NOR3_X1 U299 ( .A1(n315), .A2(SH[5]), .A3(n263), .ZN(B[19]) );
  NAND2_X1 U300 ( .A1(n341), .A2(n261), .ZN(n315) );
  NOR3_X1 U301 ( .A1(n323), .A2(SH[5]), .A3(n263), .ZN(B[18]) );
  NAND2_X1 U302 ( .A1(n342), .A2(n261), .ZN(n323) );
  NOR3_X1 U303 ( .A1(n333), .A2(SH[5]), .A3(n263), .ZN(B[17]) );
  NAND2_X1 U304 ( .A1(n289), .A2(n261), .ZN(n333) );
  NOR2_X1 U305 ( .A1(n343), .A2(SH[2]), .ZN(n289) );
  NOR3_X1 U306 ( .A1(n344), .A2(SH[5]), .A3(n263), .ZN(B[16]) );
  NOR4_X1 U307 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n295), .ZN(B[15]) );
  MUX2_X1 U308 ( .A(n345), .B(n346), .S(SH[2]), .Z(n295) );
  NOR4_X1 U309 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n300), .ZN(B[14]) );
  MUX2_X1 U310 ( .A(n270), .B(n347), .S(SH[2]), .Z(n300) );
  NOR4_X1 U311 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n305), .ZN(B[13]) );
  MUX2_X1 U312 ( .A(n335), .B(n343), .S(SH[2]), .Z(n305) );
  MUX2_X1 U313 ( .A(n274), .B(n348), .S(n260), .Z(n343) );
  MUX2_X1 U314 ( .A(n349), .B(n275), .S(n260), .Z(n335) );
  NOR4_X1 U315 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n310), .ZN(B[12]) );
  MUX2_X1 U316 ( .A(n350), .B(n271), .S(SH[2]), .Z(n310) );
  NOR3_X1 U317 ( .A1(n351), .A2(SH[5]), .A3(n263), .ZN(B[11]) );
  MUX2_X1 U318 ( .A(n317), .B(n266), .S(n262), .Z(n351) );
  NOR2_X1 U319 ( .A1(n346), .A2(SH[2]), .ZN(n341) );
  OR2_X1 U320 ( .A1(n348), .A2(n260), .ZN(n346) );
  NAND2_X1 U321 ( .A1(A[19]), .A2(n258), .ZN(n348) );
  MUX2_X1 U322 ( .A(n297), .B(n345), .S(SH[2]), .Z(n317) );
  MUX2_X1 U323 ( .A(n275), .B(n274), .S(n260), .Z(n345) );
  MUX2_X1 U324 ( .A(A[17]), .B(A[18]), .S(SH[0]), .Z(n352) );
  MUX2_X1 U325 ( .A(A[15]), .B(A[16]), .S(SH[0]), .Z(n353) );
  MUX2_X1 U326 ( .A(n336), .B(n349), .S(n260), .Z(n297) );
  MUX2_X1 U327 ( .A(n278), .B(n286), .S(SH[0]), .Z(n349) );
  MUX2_X1 U328 ( .A(n283), .B(n279), .S(SH[0]), .Z(n336) );
  NOR3_X1 U329 ( .A1(n354), .A2(SH[5]), .A3(n263), .ZN(B[10]) );
  MUX2_X1 U330 ( .A(n325), .B(n267), .S(n262), .Z(n354) );
  NOR2_X1 U331 ( .A1(n347), .A2(SH[2]), .ZN(n342) );
  NAND2_X1 U332 ( .A1(n355), .A2(n259), .ZN(n347) );
  MUX2_X1 U333 ( .A(n302), .B(n270), .S(SH[2]), .Z(n325) );
  MUX2_X1 U334 ( .A(n357), .B(n358), .S(n260), .Z(n356) );
  MUX2_X1 U335 ( .A(n359), .B(n360), .S(n260), .Z(n302) );
  NOR2_X1 U336 ( .A1(SH[5]), .A2(n361), .ZN(B[0]) );
  MUX2_X1 U337 ( .A(n362), .B(n344), .S(n263), .Z(n361) );
  NAND2_X1 U338 ( .A1(n292), .A2(n261), .ZN(n344) );
  NOR2_X1 U339 ( .A1(n271), .A2(SH[2]), .ZN(n292) );
  MUX2_X1 U340 ( .A(n358), .B(n355), .S(n260), .Z(n363) );
  MUX2_X1 U341 ( .A(A[18]), .B(A[19]), .S(SH[0]), .Z(n355) );
  MUX2_X1 U342 ( .A(A[16]), .B(A[17]), .S(SH[0]), .Z(n358) );
  MUX2_X1 U343 ( .A(n364), .B(n291), .S(n262), .Z(n362) );
  MUX2_X1 U344 ( .A(n312), .B(n350), .S(SH[2]), .Z(n291) );
  MUX2_X1 U345 ( .A(n360), .B(n276), .S(n260), .Z(n350) );
  MUX2_X1 U346 ( .A(A[14]), .B(A[15]), .S(SH[0]), .Z(n357) );
  MUX2_X1 U347 ( .A(n279), .B(n278), .S(SH[0]), .Z(n360) );
  MUX2_X1 U348 ( .A(n327), .B(n359), .S(n260), .Z(n312) );
  MUX2_X1 U349 ( .A(n282), .B(n283), .S(SH[0]), .Z(n359) );
  MUX2_X1 U350 ( .A(n280), .B(n281), .S(SH[0]), .Z(n327) );
  MUX2_X1 U351 ( .A(n365), .B(n311), .S(SH[2]), .Z(n364) );
  MUX2_X1 U352 ( .A(n277), .B(n326), .S(n260), .Z(n311) );
  MUX2_X1 U353 ( .A(n284), .B(n285), .S(SH[0]), .Z(n326) );
  MUX2_X1 U354 ( .A(A[4]), .B(A[5]), .S(SH[0]), .Z(n330) );
  NAND2_X1 U355 ( .A1(n260), .A2(n329), .ZN(n365) );
  MUX2_X1 U356 ( .A(A[2]), .B(A[3]), .S(SH[0]), .Z(n329) );
endmodule


module fp_addsub_24_5_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n12, n13, n1, n2, n3, n4, n5, n6, n7, n8, n10;
  wire   [5:1] carry;

  FA_X1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .S(n12) );
  FA_X1 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  NAND2_X2 U1 ( .A1(B[0]), .A2(n1), .ZN(carry[1]) );
  XNOR2_X2 U2 ( .A(n3), .B(A[0]), .ZN(n13) );
  INV_X4 U3 ( .A(A[0]), .ZN(n1) );
  INV_X4 U4 ( .A(B[4]), .ZN(n2) );
  INV_X4 U5 ( .A(B[0]), .ZN(n3) );
  INV_X4 U6 ( .A(B[5]), .ZN(n4) );
  INV_X4 U7 ( .A(B[3]), .ZN(n5) );
  INV_X4 U8 ( .A(B[2]), .ZN(n6) );
  INV_X4 U9 ( .A(B[1]), .ZN(n7) );
  INV_X1 U10 ( .A(n12), .ZN(n8) );
  INV_X4 U11 ( .A(n8), .ZN(DIFF[5]) );
  INV_X1 U12 ( .A(n13), .ZN(n10) );
  INV_X4 U13 ( .A(n10), .ZN(DIFF[0]) );
endmodule


module fp_addsub_24_5_DW_cmp_1 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE
 );
  input [22:0] A;
  input [22:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992;

  INV_X4 U463 ( .A(n940), .ZN(n909) );
  INV_X4 U464 ( .A(A[22]), .ZN(n910) );
  INV_X4 U465 ( .A(n986), .ZN(n911) );
  INV_X4 U466 ( .A(n984), .ZN(n912) );
  INV_X4 U467 ( .A(n990), .ZN(n913) );
  INV_X4 U468 ( .A(A[18]), .ZN(n914) );
  INV_X4 U469 ( .A(n988), .ZN(n915) );
  INV_X4 U470 ( .A(A[17]), .ZN(n916) );
  INV_X4 U471 ( .A(n983), .ZN(n917) );
  INV_X4 U472 ( .A(A[14]), .ZN(n918) );
  INV_X4 U473 ( .A(A[12]), .ZN(n919) );
  INV_X4 U474 ( .A(n977), .ZN(n920) );
  INV_X4 U475 ( .A(A[10]), .ZN(n921) );
  INV_X4 U476 ( .A(A[8]), .ZN(n922) );
  INV_X4 U477 ( .A(n951), .ZN(n923) );
  INV_X4 U478 ( .A(A[6]), .ZN(n924) );
  INV_X4 U479 ( .A(A[4]), .ZN(n925) );
  INV_X4 U480 ( .A(A[1]), .ZN(n926) );
  INV_X4 U481 ( .A(B[21]), .ZN(n927) );
  INV_X4 U482 ( .A(B[20]), .ZN(n928) );
  INV_X4 U483 ( .A(B[19]), .ZN(n929) );
  INV_X4 U484 ( .A(B[16]), .ZN(n930) );
  INV_X4 U485 ( .A(B[15]), .ZN(n931) );
  INV_X4 U486 ( .A(B[13]), .ZN(n932) );
  INV_X4 U487 ( .A(B[11]), .ZN(n933) );
  INV_X4 U488 ( .A(B[9]), .ZN(n934) );
  INV_X4 U489 ( .A(B[7]), .ZN(n935) );
  INV_X4 U490 ( .A(B[5]), .ZN(n936) );
  INV_X4 U491 ( .A(B[3]), .ZN(n937) );
  INV_X4 U492 ( .A(B[2]), .ZN(n938) );
  INV_X4 U493 ( .A(B[1]), .ZN(n939) );
  OAI22_X1 U494 ( .A1(n940), .A2(n941), .B1(n942), .B2(n943), .ZN(GE_LT_GT_LE)
         );
  OAI211_X1 U495 ( .C1(n944), .C2(n945), .A(n946), .B(n913), .ZN(n943) );
  NAND2_X1 U496 ( .A1(n947), .A2(n948), .ZN(n945) );
  OAI22_X1 U497 ( .A1(n949), .A2(n950), .B1(n923), .B2(n949), .ZN(n948) );
  OAI21_X1 U498 ( .B1(A[5]), .B2(n936), .A(n952), .ZN(n950) );
  NAND3_X1 U499 ( .A1(n953), .A2(n925), .A3(B[4]), .ZN(n952) );
  OAI21_X1 U500 ( .B1(A[7]), .B2(n935), .A(n954), .ZN(n949) );
  NAND3_X1 U501 ( .A1(n955), .A2(n924), .A3(B[6]), .ZN(n954) );
  OR3_X1 U502 ( .A1(n956), .A2(n951), .A3(n957), .ZN(n947) );
  OAI221_X1 U503 ( .B1(B[4]), .B2(n925), .C1(n958), .C2(n959), .A(n953), .ZN(
        n957) );
  NAND2_X1 U504 ( .A1(A[5]), .A2(n936), .ZN(n953) );
  AOI21_X1 U505 ( .B1(A[2]), .B2(n938), .A(n960), .ZN(n958) );
  OAI21_X1 U506 ( .B1(B[6]), .B2(n924), .A(n955), .ZN(n951) );
  NAND2_X1 U507 ( .A1(A[7]), .A2(n935), .ZN(n955) );
  AOI221_X1 U508 ( .B1(B[1]), .B2(n926), .C1(n961), .C2(B[0]), .A(n959), .ZN(
        n956) );
  OAI21_X1 U509 ( .B1(A[3]), .B2(n937), .A(n962), .ZN(n959) );
  OR3_X1 U510 ( .A1(n960), .A2(A[2]), .A3(n938), .ZN(n962) );
  AND2_X1 U511 ( .A1(A[3]), .A2(n937), .ZN(n960) );
  AOI21_X1 U512 ( .B1(A[1]), .B2(n939), .A(A[0]), .ZN(n961) );
  OAI211_X1 U513 ( .C1(n963), .C2(n944), .A(n909), .B(n964), .ZN(n942) );
  AOI21_X1 U514 ( .B1(A[16]), .B2(n930), .A(n965), .ZN(n964) );
  OAI21_X1 U515 ( .B1(n966), .B2(n967), .A(n968), .ZN(n944) );
  OAI22_X1 U516 ( .A1(n969), .A2(n970), .B1(n917), .B2(n969), .ZN(n968) );
  OAI21_X1 U517 ( .B1(A[13]), .B2(n932), .A(n971), .ZN(n970) );
  NAND3_X1 U518 ( .A1(n972), .A2(n919), .A3(B[12]), .ZN(n971) );
  OAI21_X1 U519 ( .B1(A[15]), .B2(n931), .A(n973), .ZN(n969) );
  NAND3_X1 U520 ( .A1(n974), .A2(n918), .A3(B[14]), .ZN(n973) );
  OAI22_X1 U521 ( .A1(n975), .A2(n976), .B1(n920), .B2(n975), .ZN(n967) );
  OAI21_X1 U522 ( .B1(A[9]), .B2(n934), .A(n978), .ZN(n976) );
  NAND3_X1 U523 ( .A1(n979), .A2(n922), .A3(B[8]), .ZN(n978) );
  OAI21_X1 U524 ( .B1(A[11]), .B2(n933), .A(n980), .ZN(n975) );
  NAND3_X1 U525 ( .A1(n981), .A2(n921), .A3(B[10]), .ZN(n980) );
  NOR3_X1 U526 ( .A1(n982), .A2(n966), .A3(n977), .ZN(n963) );
  OAI21_X1 U527 ( .B1(B[10]), .B2(n921), .A(n981), .ZN(n977) );
  NAND2_X1 U528 ( .A1(A[11]), .A2(n933), .ZN(n981) );
  OAI211_X1 U529 ( .C1(B[12]), .C2(n919), .A(n972), .B(n917), .ZN(n966) );
  OAI21_X1 U530 ( .B1(B[14]), .B2(n918), .A(n974), .ZN(n983) );
  NAND2_X1 U531 ( .A1(A[15]), .A2(n931), .ZN(n974) );
  NAND2_X1 U532 ( .A1(A[13]), .A2(n932), .ZN(n972) );
  OAI21_X1 U533 ( .B1(B[8]), .B2(n922), .A(n979), .ZN(n982) );
  NAND2_X1 U534 ( .A1(A[9]), .A2(n934), .ZN(n979) );
  AOI221_X1 U535 ( .B1(B[22]), .B2(n910), .C1(n984), .C2(n985), .A(n911), .ZN(
        n941) );
  OAI221_X1 U536 ( .B1(n987), .B2(n913), .C1(n915), .C2(n987), .A(n946), .ZN(
        n986) );
  AOI21_X1 U537 ( .B1(n928), .B2(A[20]), .A(n912), .ZN(n946) );
  AOI22_X1 U538 ( .A1(B[17]), .A2(n916), .B1(n989), .B2(B[16]), .ZN(n988) );
  NOR2_X1 U539 ( .A1(A[16]), .A2(n965), .ZN(n989) );
  NOR2_X1 U540 ( .A1(n916), .A2(B[17]), .ZN(n965) );
  OAI21_X1 U541 ( .B1(B[18]), .B2(n914), .A(n991), .ZN(n990) );
  OAI21_X1 U542 ( .B1(A[19]), .B2(n929), .A(n992), .ZN(n987) );
  NAND3_X1 U543 ( .A1(n991), .A2(n914), .A3(B[18]), .ZN(n992) );
  NAND2_X1 U544 ( .A1(A[19]), .A2(n929), .ZN(n991) );
  OAI22_X1 U545 ( .A1(A[21]), .A2(n927), .B1(A[20]), .B2(n928), .ZN(n985) );
  NAND2_X1 U546 ( .A1(A[21]), .A2(n927), .ZN(n984) );
  NOR2_X1 U547 ( .A1(n910), .A2(B[22]), .ZN(n940) );
endmodule


module fp_addsub_24_5_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [20:1] carry;

  XNOR2_X2 U1 ( .A(A[21]), .B(n1), .ZN(SUM[21]) );
  XNOR2_X2 U2 ( .A(A[20]), .B(n2), .ZN(SUM[20]) );
  NAND2_X2 U3 ( .A1(A[20]), .A2(carry[20]), .ZN(n1) );
  XNOR2_X2 U4 ( .A(A[19]), .B(n3), .ZN(SUM[19]) );
  NAND2_X2 U5 ( .A1(A[19]), .A2(carry[19]), .ZN(n2) );
  INV_X4 U6 ( .A(n2), .ZN(carry[20]) );
  XNOR2_X2 U7 ( .A(A[18]), .B(n4), .ZN(SUM[18]) );
  NAND2_X2 U8 ( .A1(A[18]), .A2(carry[18]), .ZN(n3) );
  INV_X4 U9 ( .A(n3), .ZN(carry[19]) );
  XNOR2_X2 U10 ( .A(A[17]), .B(n5), .ZN(SUM[17]) );
  NAND2_X2 U11 ( .A1(A[17]), .A2(carry[17]), .ZN(n4) );
  INV_X4 U12 ( .A(n4), .ZN(carry[18]) );
  XNOR2_X2 U13 ( .A(A[16]), .B(n6), .ZN(SUM[16]) );
  NAND2_X2 U14 ( .A1(A[16]), .A2(carry[16]), .ZN(n5) );
  INV_X4 U15 ( .A(n5), .ZN(carry[17]) );
  XNOR2_X2 U16 ( .A(A[15]), .B(n7), .ZN(SUM[15]) );
  NAND2_X2 U17 ( .A1(A[15]), .A2(carry[15]), .ZN(n6) );
  INV_X4 U18 ( .A(n6), .ZN(carry[16]) );
  XNOR2_X2 U19 ( .A(A[14]), .B(n8), .ZN(SUM[14]) );
  NAND2_X2 U20 ( .A1(A[14]), .A2(carry[14]), .ZN(n7) );
  INV_X4 U21 ( .A(n7), .ZN(carry[15]) );
  XNOR2_X2 U22 ( .A(A[13]), .B(n9), .ZN(SUM[13]) );
  NAND2_X2 U23 ( .A1(A[13]), .A2(carry[13]), .ZN(n8) );
  INV_X4 U24 ( .A(n8), .ZN(carry[14]) );
  XNOR2_X2 U25 ( .A(A[12]), .B(n10), .ZN(SUM[12]) );
  NAND2_X2 U26 ( .A1(A[12]), .A2(carry[12]), .ZN(n9) );
  INV_X4 U27 ( .A(n9), .ZN(carry[13]) );
  XNOR2_X2 U28 ( .A(A[11]), .B(n11), .ZN(SUM[11]) );
  NAND2_X2 U29 ( .A1(A[11]), .A2(carry[11]), .ZN(n10) );
  INV_X4 U30 ( .A(n10), .ZN(carry[12]) );
  XNOR2_X2 U31 ( .A(A[10]), .B(n12), .ZN(SUM[10]) );
  NAND2_X2 U32 ( .A1(A[10]), .A2(carry[10]), .ZN(n11) );
  INV_X4 U33 ( .A(n11), .ZN(carry[11]) );
  XNOR2_X2 U34 ( .A(A[9]), .B(n13), .ZN(SUM[9]) );
  NAND2_X2 U35 ( .A1(A[9]), .A2(carry[9]), .ZN(n12) );
  INV_X4 U36 ( .A(n12), .ZN(carry[10]) );
  XNOR2_X2 U37 ( .A(A[8]), .B(n14), .ZN(SUM[8]) );
  NAND2_X2 U38 ( .A1(A[8]), .A2(carry[8]), .ZN(n13) );
  INV_X4 U39 ( .A(n13), .ZN(carry[9]) );
  XNOR2_X2 U40 ( .A(A[7]), .B(n15), .ZN(SUM[7]) );
  NAND2_X2 U41 ( .A1(A[7]), .A2(carry[7]), .ZN(n14) );
  INV_X4 U42 ( .A(n14), .ZN(carry[8]) );
  XNOR2_X2 U43 ( .A(A[6]), .B(n16), .ZN(SUM[6]) );
  NAND2_X2 U44 ( .A1(A[6]), .A2(carry[6]), .ZN(n15) );
  INV_X4 U45 ( .A(n15), .ZN(carry[7]) );
  XNOR2_X2 U46 ( .A(A[5]), .B(n17), .ZN(SUM[5]) );
  NAND2_X2 U47 ( .A1(A[5]), .A2(carry[5]), .ZN(n16) );
  INV_X4 U48 ( .A(n16), .ZN(carry[6]) );
  XNOR2_X2 U49 ( .A(A[4]), .B(n18), .ZN(SUM[4]) );
  NAND2_X2 U50 ( .A1(A[4]), .A2(carry[4]), .ZN(n17) );
  INV_X4 U51 ( .A(n17), .ZN(carry[5]) );
  XNOR2_X2 U52 ( .A(A[3]), .B(n19), .ZN(SUM[3]) );
  NAND2_X2 U53 ( .A1(A[3]), .A2(carry[3]), .ZN(n18) );
  INV_X4 U54 ( .A(n18), .ZN(carry[4]) );
  XNOR2_X2 U55 ( .A(A[2]), .B(n20), .ZN(SUM[2]) );
  NAND2_X2 U56 ( .A1(A[2]), .A2(carry[2]), .ZN(n19) );
  INV_X4 U57 ( .A(n19), .ZN(carry[3]) );
  XNOR2_X2 U58 ( .A(A[1]), .B(n22), .ZN(SUM[1]) );
  NAND2_X2 U59 ( .A1(A[1]), .A2(carry[1]), .ZN(n20) );
  INV_X4 U60 ( .A(n20), .ZN(carry[2]) );
  INV_X4 U61 ( .A(A[0]), .ZN(n21) );
  XNOR2_X2 U62 ( .A(B[0]), .B(n21), .ZN(SUM[0]) );
  NAND2_X2 U63 ( .A1(B[0]), .A2(A[0]), .ZN(n22) );
  INV_X4 U64 ( .A(n22), .ZN(carry[1]) );
endmodule


module fp_addsub_24_5_DW_fp_addsub_0 ( a, b, rnd, op, z, status );
  input [23:0] a;
  input [23:0] b;
  input [2:0] rnd;
  output [23:0] z;
  output [7:0] status;
  input op;
  wire   swap, sig_large_17_, sig_small_17_, exp_large_int_0_, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21;
  wire   [22:0] large_p;
  wire   [16:0] small_p;
  wire   [5:0] exp_small_int;
  wire   [5:0] mag_exp_diff;
  wire   [20:1] sig_small_shifted;
  wire   [21:0] sig_aligned2;
  wire   [21:0] adder_output;
  wire   [5:0] num_of_zeros;
  wire   [4:0] num_of_zeros_used;
  wire   [21:1] a_norm;
  wire   [16:0] frac1;
  wire   [6:1] E1;
  wire   [6:1] Elz;
  wire   [5:2] add_274_carry;
  wire   [6:1] sub_275_carry;

  fp_addsub_24_5_DW01_inc_1 add_271 ( .A(a_norm[20:4]), .SUM(frac1) );
  fp_addsub_24_5_DW_leftsh_0 sll_244 ( .A(adder_output[21:1]), .SH(
        num_of_zeros_used), .B(a_norm) );
  fp_addsub_24_5_DW_lzd_0 U1 ( .a(adder_output[21:1]), .enc(num_of_zeros), 
        .dec({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21}) );
  fp_addsub_24_5_DW01_add_0 add_233 ( .A({1'b0, sig_large_17_, large_p[16:0], 
        1'b0, 1'b0, 1'b0}), .B(sig_aligned2), .CI(1'b0), .SUM({N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119}) );
  fp_addsub_24_5_DW_rightsh_0 srl_222_lsb_trim ( .A({sig_small_17_, small_p, 
        1'b0, 1'b0}), .DATA_TC(1'b0), .SH({mag_exp_diff[5:3], n84, 
        mag_exp_diff[1:0]}), .B(sig_small_shifted) );
  fp_addsub_24_5_DW01_sub_1 sub_218 ( .A({large_p[22:18], exp_large_int_0_}), 
        .B(exp_small_int), .CI(1'b0), .DIFF(mag_exp_diff) );
  fp_addsub_24_5_DW_cmp_1 lt_176 ( .A(a[22:0]), .B(b[22:0]), .TC(1'b0), 
        .GE_LT(1'b1), .GE_GT_EQ(1'b0), .GE_LT_GT_LE(swap) );
  fp_addsub_24_5_DW01_add_1 add_233_2 ( .A({N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, sig_aligned2[21]}), .CI(1'b0), .SUM(adder_output) );
  HA_X1 add_274_U1_1_1 ( .A(large_p[18]), .B(large_p[17]), .CO(
        add_274_carry[2]), .S(E1[1]) );
  HA_X1 add_274_U1_1_2 ( .A(large_p[19]), .B(add_274_carry[2]), .CO(
        add_274_carry[3]), .S(E1[2]) );
  HA_X1 add_274_U1_1_3 ( .A(large_p[20]), .B(add_274_carry[3]), .CO(
        add_274_carry[4]), .S(E1[3]) );
  HA_X1 add_274_U1_1_4 ( .A(large_p[21]), .B(add_274_carry[4]), .CO(
        add_274_carry[5]), .S(E1[4]) );
  HA_X1 add_274_U1_1_5 ( .A(large_p[22]), .B(add_274_carry[5]), .CO(E1[6]), 
        .S(E1[5]) );
  FA_X1 sub_275_U2_1 ( .A(E1[1]), .B(n89), .CI(sub_275_carry[1]), .CO(
        sub_275_carry[2]), .S(Elz[1]) );
  FA_X1 sub_275_U2_2 ( .A(E1[2]), .B(n90), .CI(sub_275_carry[2]), .CO(
        sub_275_carry[3]), .S(Elz[2]) );
  FA_X1 sub_275_U2_3 ( .A(E1[3]), .B(n91), .CI(sub_275_carry[3]), .CO(
        sub_275_carry[4]), .S(Elz[3]) );
  FA_X1 sub_275_U2_4 ( .A(E1[4]), .B(n92), .CI(sub_275_carry[4]), .CO(
        sub_275_carry[5]), .S(Elz[4]) );
  INV_X1 U4 ( .A(swap), .ZN(n87) );
  AND2_X4 U5 ( .A1(n81), .A2(n82), .ZN(n77) );
  XOR2_X2 U6 ( .A(n88), .B(n142), .Z(n78) );
  MUX2_X2 U7 ( .A(large_p[21]), .B(num_of_zeros[4]), .S(N141), .Z(
        num_of_zeros_used[4]) );
  NAND2_X2 U9 ( .A1(sig_aligned2[21]), .A2(n231), .ZN(n209) );
  INV_X4 U10 ( .A(sig_aligned2[21]), .ZN(n129) );
  INV_X4 U11 ( .A(n85), .ZN(n84) );
  INV_X4 U12 ( .A(mag_exp_diff[2]), .ZN(n85) );
  NAND2_X2 U13 ( .A1(n79), .A2(n80), .ZN(sub_275_carry[6]) );
  XNOR2_X2 U14 ( .A(E1[5]), .B(sub_275_carry[5]), .ZN(Elz[5]) );
  INV_X4 U15 ( .A(E1[5]), .ZN(n79) );
  INV_X4 U16 ( .A(sub_275_carry[5]), .ZN(n80) );
  XNOR2_X2 U17 ( .A(E1[6]), .B(sub_275_carry[6]), .ZN(Elz[6]) );
  INV_X4 U18 ( .A(E1[6]), .ZN(n81) );
  INV_X4 U19 ( .A(sub_275_carry[6]), .ZN(n82) );
  NAND2_X2 U20 ( .A1(num_of_zeros_used[0]), .A2(large_p[17]), .ZN(
        sub_275_carry[1]) );
  AND4_X4 U21 ( .A1(n109), .A2(n186), .A3(n187), .A4(n188), .ZN(n147) );
  NOR3_X2 U22 ( .A1(status[2]), .A2(status[4]), .A3(n189), .ZN(n148) );
  OR2_X4 U23 ( .A1(n231), .A2(sig_aligned2[21]), .ZN(n83) );
  OR2_X4 U24 ( .A1(n231), .A2(sig_aligned2[21]), .ZN(n210) );
  INV_X4 U31 ( .A(num_of_zeros_used[0]), .ZN(n88) );
  INV_X4 U32 ( .A(num_of_zeros_used[1]), .ZN(n89) );
  INV_X4 U33 ( .A(num_of_zeros_used[2]), .ZN(n90) );
  INV_X4 U34 ( .A(num_of_zeros_used[3]), .ZN(n91) );
  INV_X4 U35 ( .A(num_of_zeros_used[4]), .ZN(n92) );
  AOI22_X1 U36 ( .A1(large_p[21]), .A2(n106), .B1(large_p[22]), .B2(n104), 
        .ZN(n102) );
  NOR2_X1 U37 ( .A1(n104), .A2(large_p[22]), .ZN(n101) );
  NAND2_X1 U38 ( .A1(num_of_zeros[3]), .A2(n141), .ZN(n95) );
  NAND3_X1 U39 ( .A1(n95), .A2(n107), .A3(large_p[19]), .ZN(n93) );
  OAI21_X1 U40 ( .B1(num_of_zeros[3]), .B2(n141), .A(n93), .ZN(n94) );
  OAI21_X1 U41 ( .B1(large_p[19]), .B2(n107), .A(n95), .ZN(n98) );
  AOI21_X1 U42 ( .B1(num_of_zeros[1]), .B2(n144), .A(num_of_zeros[0]), .ZN(n96) );
  AOI22_X1 U43 ( .A1(large_p[18]), .A2(n103), .B1(n96), .B2(exp_large_int_0_), 
        .ZN(n97) );
  AOI22_X1 U44 ( .A1(n108), .A2(n98), .B1(n97), .B2(n108), .ZN(n99) );
  OAI211_X1 U45 ( .C1(large_p[21]), .C2(n106), .A(n105), .B(n99), .ZN(n100) );
  OAI21_X1 U46 ( .B1(n102), .B2(n101), .A(n100), .ZN(N141) );
  INV_X4 U47 ( .A(num_of_zeros[1]), .ZN(n103) );
  INV_X4 U48 ( .A(num_of_zeros[5]), .ZN(n104) );
  INV_X4 U49 ( .A(n101), .ZN(n105) );
  INV_X4 U50 ( .A(num_of_zeros[4]), .ZN(n106) );
  INV_X4 U51 ( .A(num_of_zeros[2]), .ZN(n107) );
  INV_X4 U52 ( .A(n94), .ZN(n108) );
  INV_X4 U53 ( .A(n148), .ZN(n109) );
  INV_X4 U54 ( .A(status[4]), .ZN(n110) );
  INV_X4 U55 ( .A(n169), .ZN(n111) );
  INV_X4 U56 ( .A(n189), .ZN(n112) );
  INV_X4 U57 ( .A(a_norm[21]), .ZN(n113) );
  INV_X4 U58 ( .A(n171), .ZN(n114) );
  INV_X4 U59 ( .A(Elz[5]), .ZN(n115) );
  INV_X4 U60 ( .A(Elz[4]), .ZN(n116) );
  INV_X4 U61 ( .A(Elz[3]), .ZN(n117) );
  INV_X4 U62 ( .A(Elz[2]), .ZN(n118) );
  INV_X4 U63 ( .A(Elz[1]), .ZN(n119) );
  INV_X4 U64 ( .A(n172), .ZN(n120) );
  INV_X4 U65 ( .A(n234), .ZN(n121) );
  INV_X4 U66 ( .A(n246), .ZN(n122) );
  INV_X4 U67 ( .A(n247), .ZN(n123) );
  INV_X4 U68 ( .A(n242), .ZN(n124) );
  INV_X4 U69 ( .A(n244), .ZN(n125) );
  INV_X4 U70 ( .A(n236), .ZN(n126) );
  INV_X4 U71 ( .A(n238), .ZN(n127) );
  INV_X4 U72 ( .A(n243), .ZN(n128) );
  INV_X4 U73 ( .A(a[23]), .ZN(n130) );
  INV_X4 U74 ( .A(n177), .ZN(n131) );
  INV_X4 U75 ( .A(n203), .ZN(n132) );
  INV_X4 U76 ( .A(n200), .ZN(n133) );
  INV_X4 U77 ( .A(small_p[2]), .ZN(n134) );
  INV_X4 U78 ( .A(n240), .ZN(n135) );
  INV_X4 U79 ( .A(n158), .ZN(n136) );
  INV_X4 U80 ( .A(sig_large_17_), .ZN(n137) );
  INV_X4 U81 ( .A(n191), .ZN(n138) );
  INV_X4 U82 ( .A(large_p[21]), .ZN(n139) );
  INV_X4 U83 ( .A(large_p[22]), .ZN(n140) );
  INV_X4 U84 ( .A(large_p[20]), .ZN(n141) );
  INV_X4 U85 ( .A(large_p[17]), .ZN(n142) );
  INV_X4 U86 ( .A(large_p[19]), .ZN(n143) );
  INV_X4 U87 ( .A(large_p[18]), .ZN(n144) );
  INV_X4 U88 ( .A(n202), .ZN(n145) );
  INV_X1 U89 ( .A(n146), .ZN(z[9]) );
  AOI22_X1 U90 ( .A1(a_norm[13]), .A2(n147), .B1(frac1[9]), .B2(n148), .ZN(
        n146) );
  INV_X1 U91 ( .A(n149), .ZN(z[8]) );
  AOI22_X1 U92 ( .A1(a_norm[12]), .A2(n147), .B1(frac1[8]), .B2(n148), .ZN(
        n149) );
  INV_X1 U93 ( .A(n150), .ZN(z[7]) );
  AOI22_X1 U94 ( .A1(a_norm[11]), .A2(n147), .B1(frac1[7]), .B2(n148), .ZN(
        n150) );
  INV_X1 U95 ( .A(n151), .ZN(z[6]) );
  AOI22_X1 U96 ( .A1(a_norm[10]), .A2(n147), .B1(frac1[6]), .B2(n148), .ZN(
        n151) );
  INV_X1 U97 ( .A(n152), .ZN(z[5]) );
  AOI22_X1 U98 ( .A1(a_norm[9]), .A2(n147), .B1(frac1[5]), .B2(n148), .ZN(n152) );
  INV_X1 U99 ( .A(n153), .ZN(z[4]) );
  AOI22_X1 U100 ( .A1(a_norm[8]), .A2(n147), .B1(frac1[4]), .B2(n148), .ZN(
        n153) );
  INV_X1 U101 ( .A(n154), .ZN(z[3]) );
  AOI22_X1 U102 ( .A1(a_norm[7]), .A2(n147), .B1(frac1[3]), .B2(n148), .ZN(
        n154) );
  INV_X1 U103 ( .A(n155), .ZN(z[2]) );
  AOI22_X1 U104 ( .A1(a_norm[6]), .A2(n147), .B1(frac1[2]), .B2(n148), .ZN(
        n155) );
  NOR4_X1 U105 ( .A1(status[2]), .A2(n120), .A3(n156), .A4(n157), .ZN(z[23])
         );
  NOR2_X1 U106 ( .A1(n158), .A2(n129), .ZN(n156) );
  OAI221_X1 U107 ( .B1(n140), .B2(n159), .C1(n160), .C2(n115), .A(n161), .ZN(
        z[22]) );
  NAND2_X1 U108 ( .A1(E1[5]), .A2(n162), .ZN(n161) );
  OAI221_X1 U109 ( .B1(n139), .B2(n159), .C1(n160), .C2(n116), .A(n163), .ZN(
        z[21]) );
  NAND2_X1 U110 ( .A1(E1[4]), .A2(n162), .ZN(n163) );
  OAI221_X1 U111 ( .B1(n141), .B2(n159), .C1(n160), .C2(n117), .A(n164), .ZN(
        z[20]) );
  NAND2_X1 U112 ( .A1(E1[3]), .A2(n162), .ZN(n164) );
  INV_X1 U113 ( .A(n165), .ZN(z[1]) );
  AOI22_X1 U114 ( .A1(a_norm[5]), .A2(n147), .B1(frac1[1]), .B2(n148), .ZN(
        n165) );
  OAI221_X1 U115 ( .B1(n143), .B2(n159), .C1(n160), .C2(n118), .A(n166), .ZN(
        z[19]) );
  NAND2_X1 U116 ( .A1(E1[2]), .A2(n162), .ZN(n166) );
  OAI221_X1 U117 ( .B1(n144), .B2(n159), .C1(n160), .C2(n119), .A(n167), .ZN(
        z[18]) );
  NAND2_X1 U118 ( .A1(E1[1]), .A2(n162), .ZN(n167) );
  OAI221_X1 U119 ( .B1(n142), .B2(n159), .C1(n160), .C2(n78), .A(n168), .ZN(
        z[17]) );
  NAND2_X1 U120 ( .A1(n142), .A2(n162), .ZN(n168) );
  AND2_X1 U121 ( .A1(n169), .A2(n170), .ZN(n162) );
  OAI211_X1 U122 ( .C1(n136), .C2(n171), .A(n172), .B(n173), .ZN(n160) );
  NOR2_X1 U123 ( .A1(n113), .A2(n170), .ZN(n173) );
  NAND2_X1 U124 ( .A1(n111), .A2(n170), .ZN(n159) );
  NAND3_X1 U125 ( .A1(n131), .A2(sig_aligned2[21]), .A3(n174), .ZN(n170) );
  AOI21_X1 U126 ( .B1(adder_output[2]), .B2(n175), .A(n137), .ZN(n174) );
  OAI22_X1 U127 ( .A1(sig_large_17_), .A2(n113), .B1(n176), .B2(n177), .ZN(
        n169) );
  INV_X1 U128 ( .A(n178), .ZN(z[16]) );
  AOI22_X1 U129 ( .A1(a_norm[20]), .A2(n147), .B1(frac1[16]), .B2(n148), .ZN(
        n178) );
  INV_X1 U130 ( .A(n179), .ZN(z[15]) );
  AOI22_X1 U131 ( .A1(a_norm[19]), .A2(n147), .B1(frac1[15]), .B2(n148), .ZN(
        n179) );
  INV_X1 U132 ( .A(n180), .ZN(z[14]) );
  AOI22_X1 U133 ( .A1(a_norm[18]), .A2(n147), .B1(frac1[14]), .B2(n148), .ZN(
        n180) );
  INV_X1 U134 ( .A(n181), .ZN(z[13]) );
  AOI22_X1 U135 ( .A1(a_norm[17]), .A2(n147), .B1(frac1[13]), .B2(n148), .ZN(
        n181) );
  INV_X1 U136 ( .A(n182), .ZN(z[12]) );
  AOI22_X1 U137 ( .A1(a_norm[16]), .A2(n147), .B1(frac1[12]), .B2(n148), .ZN(
        n182) );
  INV_X1 U138 ( .A(n183), .ZN(z[11]) );
  AOI22_X1 U139 ( .A1(a_norm[15]), .A2(n147), .B1(frac1[11]), .B2(n148), .ZN(
        n183) );
  INV_X1 U140 ( .A(n184), .ZN(z[10]) );
  AOI22_X1 U141 ( .A1(a_norm[14]), .A2(n147), .B1(frac1[10]), .B2(n148), .ZN(
        n184) );
  INV_X1 U142 ( .A(n185), .ZN(z[0]) );
  AOI221_X1 U143 ( .B1(n147), .B2(a_norm[4]), .C1(n148), .C2(frac1[0]), .A(
        status[2]), .ZN(n185) );
  NOR3_X1 U144 ( .A1(n136), .A2(status[4]), .A3(status[2]), .ZN(n188) );
  OAI21_X1 U145 ( .B1(n190), .B2(n177), .A(n110), .ZN(status[5]) );
  NOR4_X1 U146 ( .A1(adder_output[0]), .A2(a_norm[3]), .A3(a_norm[2]), .A4(
        a_norm[1]), .ZN(n190) );
  OAI21_X1 U147 ( .B1(status[2]), .B2(n186), .A(n110), .ZN(status[1]) );
  NOR3_X1 U148 ( .A1(n191), .A2(n176), .A3(n177), .ZN(status[4]) );
  AOI21_X1 U149 ( .B1(adder_output[20]), .B2(n175), .A(adder_output[21]), .ZN(
        n176) );
  NOR4_X1 U150 ( .A1(n192), .A2(n193), .A3(n194), .A4(n195), .ZN(n175) );
  NAND4_X1 U151 ( .A1(adder_output[5]), .A2(adder_output[4]), .A3(n196), .A4(
        n197), .ZN(n195) );
  AND4_X1 U152 ( .A1(adder_output[9]), .A2(adder_output[8]), .A3(
        adder_output[7]), .A4(adder_output[6]), .ZN(n197) );
  AND3_X1 U153 ( .A1(adder_output[19]), .A2(adder_output[18]), .A3(
        adder_output[3]), .ZN(n196) );
  NAND4_X1 U154 ( .A1(adder_output[17]), .A2(adder_output[16]), .A3(
        adder_output[15]), .A4(adder_output[14]), .ZN(n194) );
  NAND2_X1 U155 ( .A1(adder_output[13]), .A2(adder_output[12]), .ZN(n193) );
  NAND3_X1 U156 ( .A1(adder_output[10]), .A2(n112), .A3(adder_output[11]), 
        .ZN(n192) );
  NAND2_X1 U157 ( .A1(a_norm[3]), .A2(n198), .ZN(n189) );
  OR4_X1 U158 ( .A1(a_norm[1]), .A2(a_norm[2]), .A3(a_norm[4]), .A4(
        adder_output[0]), .ZN(n198) );
  OAI21_X1 U159 ( .B1(n129), .B2(n199), .A(n131), .ZN(status[2]) );
  OAI21_X1 U160 ( .B1(n187), .B2(n177), .A(n158), .ZN(status[0]) );
  OAI21_X1 U161 ( .B1(n200), .B2(n199), .A(n201), .ZN(n177) );
  NAND3_X1 U162 ( .A1(large_p[17]), .A2(n202), .A3(n138), .ZN(n201) );
  NAND4_X1 U163 ( .A1(exp_small_int[2]), .A2(n203), .A3(exp_small_int[1]), 
        .A4(n204), .ZN(n199) );
  AND3_X1 U164 ( .A1(exp_small_int[4]), .A2(exp_small_int[3]), .A3(
        exp_small_int[5]), .ZN(n204) );
  AOI21_X1 U165 ( .B1(sig_large_17_), .B2(n114), .A(n120), .ZN(n187) );
  NAND4_X1 U166 ( .A1(num_of_zeros[4]), .A2(num_of_zeros[3]), .A3(
        num_of_zeros[5]), .A4(n205), .ZN(n172) );
  AND3_X1 U167 ( .A1(num_of_zeros[2]), .A2(num_of_zeros[0]), .A3(
        num_of_zeros[1]), .ZN(n205) );
  NOR2_X1 U168 ( .A1(n206), .A2(n77), .ZN(n171) );
  AND4_X1 U169 ( .A1(n119), .A2(n118), .A3(n78), .A4(n207), .ZN(n206) );
  NOR4_X1 U170 ( .A1(Elz[6]), .A2(Elz[5]), .A3(Elz[4]), .A4(Elz[3]), .ZN(n207)
         );
  NAND2_X1 U171 ( .A1(n208), .A2(n209), .ZN(sig_aligned2[9]) );
  MUX2_X1 U172 ( .A(n129), .B(n210), .S(sig_small_shifted[9]), .Z(n208) );
  NAND2_X1 U173 ( .A1(n211), .A2(n209), .ZN(sig_aligned2[8]) );
  MUX2_X1 U174 ( .A(n129), .B(n83), .S(sig_small_shifted[8]), .Z(n211) );
  NAND2_X1 U175 ( .A1(n212), .A2(n209), .ZN(sig_aligned2[7]) );
  MUX2_X1 U176 ( .A(n129), .B(n210), .S(sig_small_shifted[7]), .Z(n212) );
  NAND2_X1 U177 ( .A1(n213), .A2(n209), .ZN(sig_aligned2[6]) );
  MUX2_X1 U178 ( .A(n129), .B(n83), .S(sig_small_shifted[6]), .Z(n213) );
  NAND2_X1 U179 ( .A1(n214), .A2(n209), .ZN(sig_aligned2[5]) );
  MUX2_X1 U180 ( .A(n129), .B(n210), .S(sig_small_shifted[5]), .Z(n214) );
  NAND2_X1 U181 ( .A1(n215), .A2(n209), .ZN(sig_aligned2[4]) );
  MUX2_X1 U182 ( .A(n129), .B(n83), .S(sig_small_shifted[4]), .Z(n215) );
  NAND2_X1 U183 ( .A1(n216), .A2(n209), .ZN(sig_aligned2[3]) );
  MUX2_X1 U184 ( .A(n129), .B(n210), .S(sig_small_shifted[3]), .Z(n216) );
  NAND2_X1 U185 ( .A1(n217), .A2(n209), .ZN(sig_aligned2[2]) );
  MUX2_X1 U186 ( .A(n129), .B(n83), .S(sig_small_shifted[2]), .Z(n217) );
  NAND2_X1 U187 ( .A1(n218), .A2(n209), .ZN(sig_aligned2[20]) );
  MUX2_X1 U188 ( .A(n129), .B(n210), .S(sig_small_shifted[20]), .Z(n218) );
  NAND2_X1 U189 ( .A1(n219), .A2(n209), .ZN(sig_aligned2[1]) );
  MUX2_X1 U190 ( .A(n129), .B(n83), .S(sig_small_shifted[1]), .Z(n219) );
  NAND2_X1 U191 ( .A1(n220), .A2(n209), .ZN(sig_aligned2[19]) );
  MUX2_X1 U192 ( .A(n129), .B(n210), .S(sig_small_shifted[19]), .Z(n220) );
  NAND2_X1 U193 ( .A1(n221), .A2(n209), .ZN(sig_aligned2[18]) );
  MUX2_X1 U194 ( .A(n129), .B(n83), .S(sig_small_shifted[18]), .Z(n221) );
  NAND2_X1 U195 ( .A1(n222), .A2(n209), .ZN(sig_aligned2[17]) );
  MUX2_X1 U196 ( .A(n129), .B(n210), .S(sig_small_shifted[17]), .Z(n222) );
  NAND2_X1 U197 ( .A1(n223), .A2(n209), .ZN(sig_aligned2[16]) );
  MUX2_X1 U198 ( .A(n129), .B(n83), .S(sig_small_shifted[16]), .Z(n223) );
  NAND2_X1 U199 ( .A1(n224), .A2(n209), .ZN(sig_aligned2[15]) );
  MUX2_X1 U200 ( .A(n129), .B(n210), .S(sig_small_shifted[15]), .Z(n224) );
  NAND2_X1 U201 ( .A1(n225), .A2(n209), .ZN(sig_aligned2[14]) );
  MUX2_X1 U202 ( .A(n129), .B(n83), .S(sig_small_shifted[14]), .Z(n225) );
  NAND2_X1 U203 ( .A1(n226), .A2(n209), .ZN(sig_aligned2[13]) );
  MUX2_X1 U204 ( .A(n129), .B(n210), .S(sig_small_shifted[13]), .Z(n226) );
  NAND2_X1 U205 ( .A1(n227), .A2(n209), .ZN(sig_aligned2[12]) );
  MUX2_X1 U206 ( .A(n129), .B(n83), .S(sig_small_shifted[12]), .Z(n227) );
  NAND2_X1 U207 ( .A1(n228), .A2(n209), .ZN(sig_aligned2[11]) );
  MUX2_X1 U208 ( .A(n129), .B(n210), .S(sig_small_shifted[11]), .Z(n228) );
  NAND2_X1 U209 ( .A1(n229), .A2(n209), .ZN(sig_aligned2[10]) );
  MUX2_X1 U210 ( .A(n129), .B(n210), .S(sig_small_shifted[10]), .Z(n229) );
  NAND2_X1 U211 ( .A1(n230), .A2(n209), .ZN(sig_aligned2[0]) );
  MUX2_X1 U212 ( .A(n83), .B(n129), .S(n232), .Z(n230) );
  AOI221_X1 U213 ( .B1(mag_exp_diff[1]), .B2(n122), .C1(mag_exp_diff[3]), .C2(
        n233), .A(n121), .ZN(n232) );
  AOI221_X1 U214 ( .B1(n235), .B2(n84), .C1(n126), .C2(mag_exp_diff[4]), .A(
        mag_exp_diff[5]), .ZN(n234) );
  AOI21_X1 U215 ( .B1(small_p[14]), .B2(n127), .A(n237), .ZN(n236) );
  OAI21_X1 U216 ( .B1(n134), .B2(n238), .A(n239), .ZN(n235) );
  NAND3_X1 U217 ( .A1(n239), .A2(n240), .A3(n241), .ZN(n233) );
  AOI222_X1 U218 ( .A1(small_p[6]), .A2(n127), .B1(n84), .B2(n125), .C1(
        mag_exp_diff[1]), .C2(n124), .ZN(n241) );
  AOI221_X1 U219 ( .B1(n128), .B2(n84), .C1(small_p[8]), .C2(mag_exp_diff[0]), 
        .A(small_p[7]), .ZN(n242) );
  AOI21_X1 U220 ( .B1(mag_exp_diff[0]), .B2(small_p[12]), .A(small_p[11]), 
        .ZN(n243) );
  AOI21_X1 U221 ( .B1(n127), .B2(small_p[10]), .A(n245), .ZN(n244) );
  NOR2_X1 U222 ( .A1(mag_exp_diff[1]), .A2(mag_exp_diff[0]), .ZN(n238) );
  NOR3_X1 U223 ( .A1(small_p[0]), .A2(mag_exp_diff[4]), .A3(small_p[1]), .ZN(
        n239) );
  AOI222_X1 U224 ( .A1(small_p[3]), .A2(n84), .B1(n123), .B2(mag_exp_diff[0]), 
        .C1(small_p[15]), .C2(mag_exp_diff[4]), .ZN(n246) );
  AOI221_X1 U225 ( .B1(n84), .B2(small_p[4]), .C1(mag_exp_diff[4]), .C2(
        small_p[16]), .A(small_p[0]), .ZN(n247) );
  NAND2_X1 U226 ( .A1(n248), .A2(n186), .ZN(n231) );
  NAND3_X1 U227 ( .A1(n138), .A2(large_p[17]), .A3(n145), .ZN(n186) );
  NAND4_X1 U228 ( .A1(large_p[18]), .A2(large_p[19]), .A3(n249), .A4(
        large_p[21]), .ZN(n191) );
  NOR2_X1 U229 ( .A1(n141), .A2(n140), .ZN(n249) );
  MUX2_X1 U230 ( .A(large_p[20]), .B(num_of_zeros[3]), .S(N141), .Z(
        num_of_zeros_used[3]) );
  MUX2_X1 U231 ( .A(large_p[19]), .B(num_of_zeros[2]), .S(N141), .Z(
        num_of_zeros_used[2]) );
  MUX2_X1 U232 ( .A(large_p[18]), .B(num_of_zeros[1]), .S(N141), .Z(
        num_of_zeros_used[1]) );
  MUX2_X1 U233 ( .A(exp_large_int_0_), .B(num_of_zeros[0]), .S(N141), .Z(
        num_of_zeros_used[0]) );
  NAND3_X1 U234 ( .A1(n248), .A2(sig_small_17_), .A3(n132), .ZN(
        exp_small_int[0]) );
  NAND2_X1 U235 ( .A1(n250), .A2(n133), .ZN(sig_small_17_) );
  NAND2_X1 U236 ( .A1(n200), .A2(n250), .ZN(n248) );
  NOR4_X1 U237 ( .A1(exp_small_int[1]), .A2(exp_small_int[2]), .A3(n203), .A4(
        n251), .ZN(n250) );
  OR3_X1 U238 ( .A1(exp_small_int[3]), .A2(exp_small_int[5]), .A3(
        exp_small_int[4]), .ZN(n251) );
  MUX2_X1 U239 ( .A(b[21]), .B(a[21]), .S(n86), .Z(exp_small_int[4]) );
  MUX2_X1 U240 ( .A(b[22]), .B(a[22]), .S(n86), .Z(exp_small_int[5]) );
  MUX2_X1 U241 ( .A(b[20]), .B(a[20]), .S(n86), .Z(exp_small_int[3]) );
  MUX2_X1 U242 ( .A(b[17]), .B(a[17]), .S(n86), .Z(n203) );
  MUX2_X1 U243 ( .A(b[19]), .B(a[19]), .S(n86), .Z(exp_small_int[2]) );
  MUX2_X1 U244 ( .A(b[18]), .B(a[18]), .S(n86), .Z(exp_small_int[1]) );
  NOR4_X1 U245 ( .A1(small_p[16]), .A2(n237), .A3(small_p[15]), .A4(
        small_p[14]), .ZN(n200) );
  MUX2_X1 U246 ( .A(b[14]), .B(a[14]), .S(n86), .Z(small_p[14]) );
  MUX2_X1 U247 ( .A(b[15]), .B(a[15]), .S(n86), .Z(small_p[15]) );
  NAND2_X1 U248 ( .A1(n252), .A2(n253), .ZN(n237) );
  NOR4_X1 U249 ( .A1(small_p[0]), .A2(small_p[1]), .A3(small_p[10]), .A4(
        small_p[11]), .ZN(n253) );
  MUX2_X1 U250 ( .A(b[11]), .B(a[11]), .S(n86), .Z(small_p[11]) );
  MUX2_X1 U251 ( .A(b[10]), .B(a[10]), .S(n86), .Z(small_p[10]) );
  MUX2_X1 U252 ( .A(b[1]), .B(a[1]), .S(n86), .Z(small_p[1]) );
  MUX2_X1 U253 ( .A(b[0]), .B(a[0]), .S(n86), .Z(small_p[0]) );
  NOR4_X1 U254 ( .A1(small_p[12]), .A2(small_p[13]), .A3(n135), .A4(n245), 
        .ZN(n252) );
  OR4_X1 U255 ( .A1(small_p[9]), .A2(small_p[8]), .A3(small_p[7]), .A4(
        small_p[6]), .ZN(n245) );
  MUX2_X1 U256 ( .A(b[6]), .B(a[6]), .S(n86), .Z(small_p[6]) );
  MUX2_X1 U257 ( .A(b[7]), .B(a[7]), .S(swap), .Z(small_p[7]) );
  MUX2_X1 U258 ( .A(b[8]), .B(a[8]), .S(n86), .Z(small_p[8]) );
  MUX2_X1 U259 ( .A(b[9]), .B(a[9]), .S(n86), .Z(small_p[9]) );
  NOR4_X1 U260 ( .A1(small_p[5]), .A2(small_p[4]), .A3(small_p[3]), .A4(
        small_p[2]), .ZN(n240) );
  MUX2_X1 U261 ( .A(b[2]), .B(a[2]), .S(n86), .Z(small_p[2]) );
  MUX2_X1 U262 ( .A(b[3]), .B(a[3]), .S(n86), .Z(small_p[3]) );
  MUX2_X1 U263 ( .A(b[4]), .B(a[4]), .S(n86), .Z(small_p[4]) );
  MUX2_X1 U264 ( .A(b[5]), .B(a[5]), .S(n86), .Z(small_p[5]) );
  MUX2_X1 U265 ( .A(b[13]), .B(a[13]), .S(n86), .Z(small_p[13]) );
  MUX2_X1 U266 ( .A(b[12]), .B(a[12]), .S(n86), .Z(small_p[12]) );
  MUX2_X1 U267 ( .A(b[16]), .B(a[16]), .S(n86), .Z(small_p[16]) );
  NAND3_X1 U268 ( .A1(n158), .A2(sig_large_17_), .A3(n142), .ZN(
        exp_large_int_0_) );
  NAND2_X1 U269 ( .A1(n254), .A2(n202), .ZN(sig_large_17_) );
  NAND2_X1 U270 ( .A1(n145), .A2(n254), .ZN(n158) );
  AND4_X1 U271 ( .A1(n144), .A2(n143), .A3(n142), .A4(n255), .ZN(n254) );
  NOR3_X1 U272 ( .A1(large_p[20]), .A2(large_p[22]), .A3(large_p[21]), .ZN(
        n255) );
  MUX2_X1 U273 ( .A(a[21]), .B(b[21]), .S(n86), .Z(large_p[21]) );
  MUX2_X1 U274 ( .A(a[22]), .B(b[22]), .S(n86), .Z(large_p[22]) );
  MUX2_X1 U275 ( .A(a[20]), .B(b[20]), .S(n86), .Z(large_p[20]) );
  MUX2_X1 U276 ( .A(a[17]), .B(b[17]), .S(n86), .Z(large_p[17]) );
  MUX2_X1 U277 ( .A(a[19]), .B(b[19]), .S(n86), .Z(large_p[19]) );
  MUX2_X1 U278 ( .A(a[18]), .B(b[18]), .S(n86), .Z(large_p[18]) );
  NAND3_X1 U279 ( .A1(n256), .A2(n257), .A3(n258), .ZN(n202) );
  NOR4_X1 U280 ( .A1(n259), .A2(n260), .A3(large_p[3]), .A4(large_p[4]), .ZN(
        n258) );
  MUX2_X1 U281 ( .A(a[4]), .B(b[4]), .S(n86), .Z(large_p[4]) );
  MUX2_X1 U282 ( .A(a[3]), .B(b[3]), .S(n86), .Z(large_p[3]) );
  OR3_X1 U283 ( .A1(large_p[1]), .A2(large_p[0]), .A3(large_p[2]), .ZN(n260)
         );
  MUX2_X1 U284 ( .A(a[2]), .B(b[2]), .S(n86), .Z(large_p[2]) );
  MUX2_X1 U285 ( .A(a[0]), .B(b[0]), .S(n86), .Z(large_p[0]) );
  MUX2_X1 U286 ( .A(a[1]), .B(b[1]), .S(n86), .Z(large_p[1]) );
  OR4_X1 U287 ( .A1(large_p[8]), .A2(large_p[7]), .A3(large_p[6]), .A4(
        large_p[5]), .ZN(n259) );
  MUX2_X1 U288 ( .A(a[5]), .B(b[5]), .S(n86), .Z(large_p[5]) );
  MUX2_X1 U289 ( .A(a[6]), .B(b[6]), .S(n86), .Z(large_p[6]) );
  MUX2_X1 U290 ( .A(a[7]), .B(b[7]), .S(n86), .Z(large_p[7]) );
  MUX2_X1 U291 ( .A(a[8]), .B(b[8]), .S(n86), .Z(large_p[8]) );
  NOR4_X1 U292 ( .A1(large_p[9]), .A2(large_p[10]), .A3(large_p[11]), .A4(
        large_p[12]), .ZN(n257) );
  MUX2_X1 U293 ( .A(a[12]), .B(b[12]), .S(n86), .Z(large_p[12]) );
  MUX2_X1 U294 ( .A(a[11]), .B(b[11]), .S(n86), .Z(large_p[11]) );
  MUX2_X1 U295 ( .A(a[10]), .B(b[10]), .S(n86), .Z(large_p[10]) );
  MUX2_X1 U296 ( .A(a[9]), .B(b[9]), .S(swap), .Z(large_p[9]) );
  NOR4_X1 U297 ( .A1(large_p[13]), .A2(large_p[14]), .A3(large_p[15]), .A4(
        large_p[16]), .ZN(n256) );
  MUX2_X1 U298 ( .A(a[16]), .B(b[16]), .S(swap), .Z(large_p[16]) );
  MUX2_X1 U299 ( .A(a[15]), .B(b[15]), .S(swap), .Z(large_p[15]) );
  MUX2_X1 U300 ( .A(a[14]), .B(b[14]), .S(swap), .Z(large_p[14]) );
  MUX2_X1 U301 ( .A(a[13]), .B(b[13]), .S(swap), .Z(large_p[13]) );
  XOR2_X1 U302 ( .A(n261), .B(n157), .Z(sig_aligned2[21]) );
  MUX2_X1 U303 ( .A(n130), .B(n262), .S(swap), .Z(n157) );
  MUX2_X1 U304 ( .A(n262), .B(n130), .S(swap), .Z(n261) );
  XNOR2_X1 U305 ( .A(b[23]), .B(op), .ZN(n262) );
  INV_X8 U8 ( .A(n87), .ZN(n86) );
endmodule


module fp_addsub_24_5 ( in1, in2, mode, opt, clock, status );
  input [23:0] in1;
  input [23:0] in2;
  output [23:0] opt;
  output [7:0] status;
  input mode, clock;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [23:0] z_inst_internal;
  wire   [5:0] status_inst_internal;
  wire   [23:0] z_inst_pipe1;
  wire   [5:0] status_inst_pipe1;
  wire   [23:0] z_inst_pipe2;
  wire   [5:0] status_inst_pipe2;
  assign status[7] = 1'b0;
  assign status[6] = 1'b0;
  assign status[3] = 1'b0;

  fp_addsub_24_5_DW_fp_addsub_0 U1 ( .a(in1), .b(in2), .rnd({1'b0, 1'b0, 1'b0}), .op(mode), .z(z_inst_internal), .status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, status_inst_internal[5:4], 
        SYNOPSYS_UNCONNECTED_3, status_inst_internal[2:0]}) );
  DFF_X1 status_inst_pipe1_reg_5_ ( .D(status_inst_internal[5]), .CK(clock), 
        .Q(status_inst_pipe1[5]) );
  DFF_X1 status_inst_pipe2_reg_5_ ( .D(status_inst_pipe1[5]), .CK(clock), .Q(
        status_inst_pipe2[5]) );
  DFF_X1 status_inst_pipe1_reg_4_ ( .D(status_inst_internal[4]), .CK(clock), 
        .Q(status_inst_pipe1[4]) );
  DFF_X1 status_inst_pipe2_reg_4_ ( .D(status_inst_pipe1[4]), .CK(clock), .Q(
        status_inst_pipe2[4]) );
  DFF_X1 status_inst_pipe1_reg_2_ ( .D(status_inst_internal[2]), .CK(clock), 
        .Q(status_inst_pipe1[2]) );
  DFF_X1 status_inst_pipe2_reg_2_ ( .D(status_inst_pipe1[2]), .CK(clock), .Q(
        status_inst_pipe2[2]) );
  DFF_X1 status_inst_pipe1_reg_1_ ( .D(status_inst_internal[1]), .CK(clock), 
        .Q(status_inst_pipe1[1]) );
  DFF_X1 status_inst_pipe2_reg_1_ ( .D(status_inst_pipe1[1]), .CK(clock), .Q(
        status_inst_pipe2[1]) );
  DFF_X1 status_inst_pipe1_reg_0_ ( .D(status_inst_internal[0]), .CK(clock), 
        .Q(status_inst_pipe1[0]) );
  DFF_X1 status_inst_pipe2_reg_0_ ( .D(status_inst_pipe1[0]), .CK(clock), .Q(
        status_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe1_reg_23_ ( .D(z_inst_internal[23]), .CK(clock), .Q(
        z_inst_pipe1[23]) );
  DFF_X1 z_inst_pipe2_reg_23_ ( .D(z_inst_pipe1[23]), .CK(clock), .Q(
        z_inst_pipe2[23]) );
  DFF_X1 z_inst_pipe1_reg_22_ ( .D(z_inst_internal[22]), .CK(clock), .Q(
        z_inst_pipe1[22]) );
  DFF_X1 z_inst_pipe2_reg_22_ ( .D(z_inst_pipe1[22]), .CK(clock), .Q(
        z_inst_pipe2[22]) );
  DFF_X1 z_inst_pipe1_reg_21_ ( .D(z_inst_internal[21]), .CK(clock), .Q(
        z_inst_pipe1[21]) );
  DFF_X1 z_inst_pipe2_reg_21_ ( .D(z_inst_pipe1[21]), .CK(clock), .Q(
        z_inst_pipe2[21]) );
  DFF_X1 z_inst_pipe1_reg_20_ ( .D(z_inst_internal[20]), .CK(clock), .Q(
        z_inst_pipe1[20]) );
  DFF_X1 z_inst_pipe2_reg_20_ ( .D(z_inst_pipe1[20]), .CK(clock), .Q(
        z_inst_pipe2[20]) );
  DFF_X1 z_inst_pipe1_reg_19_ ( .D(z_inst_internal[19]), .CK(clock), .Q(
        z_inst_pipe1[19]) );
  DFF_X1 z_inst_pipe2_reg_19_ ( .D(z_inst_pipe1[19]), .CK(clock), .Q(
        z_inst_pipe2[19]) );
  DFF_X1 z_inst_pipe1_reg_18_ ( .D(z_inst_internal[18]), .CK(clock), .Q(
        z_inst_pipe1[18]) );
  DFF_X1 z_inst_pipe2_reg_18_ ( .D(z_inst_pipe1[18]), .CK(clock), .Q(
        z_inst_pipe2[18]) );
  DFF_X1 z_inst_pipe1_reg_17_ ( .D(z_inst_internal[17]), .CK(clock), .Q(
        z_inst_pipe1[17]) );
  DFF_X1 z_inst_pipe2_reg_17_ ( .D(z_inst_pipe1[17]), .CK(clock), .Q(
        z_inst_pipe2[17]) );
  DFF_X1 z_inst_pipe1_reg_16_ ( .D(z_inst_internal[16]), .CK(clock), .Q(
        z_inst_pipe1[16]) );
  DFF_X1 z_inst_pipe2_reg_16_ ( .D(z_inst_pipe1[16]), .CK(clock), .Q(
        z_inst_pipe2[16]) );
  DFF_X1 z_inst_pipe1_reg_15_ ( .D(z_inst_internal[15]), .CK(clock), .Q(
        z_inst_pipe1[15]) );
  DFF_X1 z_inst_pipe2_reg_15_ ( .D(z_inst_pipe1[15]), .CK(clock), .Q(
        z_inst_pipe2[15]) );
  DFF_X1 z_inst_pipe1_reg_14_ ( .D(z_inst_internal[14]), .CK(clock), .Q(
        z_inst_pipe1[14]) );
  DFF_X1 z_inst_pipe2_reg_14_ ( .D(z_inst_pipe1[14]), .CK(clock), .Q(
        z_inst_pipe2[14]) );
  DFF_X1 z_inst_pipe1_reg_13_ ( .D(z_inst_internal[13]), .CK(clock), .Q(
        z_inst_pipe1[13]) );
  DFF_X1 z_inst_pipe2_reg_13_ ( .D(z_inst_pipe1[13]), .CK(clock), .Q(
        z_inst_pipe2[13]) );
  DFF_X1 z_inst_pipe1_reg_12_ ( .D(z_inst_internal[12]), .CK(clock), .Q(
        z_inst_pipe1[12]) );
  DFF_X1 z_inst_pipe2_reg_12_ ( .D(z_inst_pipe1[12]), .CK(clock), .Q(
        z_inst_pipe2[12]) );
  DFF_X1 z_inst_pipe1_reg_11_ ( .D(z_inst_internal[11]), .CK(clock), .Q(
        z_inst_pipe1[11]) );
  DFF_X1 z_inst_pipe2_reg_11_ ( .D(z_inst_pipe1[11]), .CK(clock), .Q(
        z_inst_pipe2[11]) );
  DFF_X1 z_inst_pipe1_reg_10_ ( .D(z_inst_internal[10]), .CK(clock), .Q(
        z_inst_pipe1[10]) );
  DFF_X1 z_inst_pipe2_reg_10_ ( .D(z_inst_pipe1[10]), .CK(clock), .Q(
        z_inst_pipe2[10]) );
  DFF_X1 z_inst_pipe1_reg_9_ ( .D(z_inst_internal[9]), .CK(clock), .Q(
        z_inst_pipe1[9]) );
  DFF_X1 z_inst_pipe2_reg_9_ ( .D(z_inst_pipe1[9]), .CK(clock), .Q(
        z_inst_pipe2[9]) );
  DFF_X1 z_inst_pipe1_reg_8_ ( .D(z_inst_internal[8]), .CK(clock), .Q(
        z_inst_pipe1[8]) );
  DFF_X1 z_inst_pipe2_reg_8_ ( .D(z_inst_pipe1[8]), .CK(clock), .Q(
        z_inst_pipe2[8]) );
  DFF_X1 z_inst_pipe1_reg_7_ ( .D(z_inst_internal[7]), .CK(clock), .Q(
        z_inst_pipe1[7]) );
  DFF_X1 z_inst_pipe2_reg_7_ ( .D(z_inst_pipe1[7]), .CK(clock), .Q(
        z_inst_pipe2[7]) );
  DFF_X1 z_inst_pipe1_reg_6_ ( .D(z_inst_internal[6]), .CK(clock), .Q(
        z_inst_pipe1[6]) );
  DFF_X1 z_inst_pipe2_reg_6_ ( .D(z_inst_pipe1[6]), .CK(clock), .Q(
        z_inst_pipe2[6]) );
  DFF_X1 z_inst_pipe1_reg_5_ ( .D(z_inst_internal[5]), .CK(clock), .Q(
        z_inst_pipe1[5]) );
  DFF_X1 z_inst_pipe2_reg_5_ ( .D(z_inst_pipe1[5]), .CK(clock), .Q(
        z_inst_pipe2[5]) );
  DFF_X1 z_inst_pipe1_reg_4_ ( .D(z_inst_internal[4]), .CK(clock), .Q(
        z_inst_pipe1[4]) );
  DFF_X1 z_inst_pipe2_reg_4_ ( .D(z_inst_pipe1[4]), .CK(clock), .Q(
        z_inst_pipe2[4]) );
  DFF_X1 z_inst_pipe1_reg_3_ ( .D(z_inst_internal[3]), .CK(clock), .Q(
        z_inst_pipe1[3]) );
  DFF_X1 z_inst_pipe2_reg_3_ ( .D(z_inst_pipe1[3]), .CK(clock), .Q(
        z_inst_pipe2[3]) );
  DFF_X1 z_inst_pipe1_reg_2_ ( .D(z_inst_internal[2]), .CK(clock), .Q(
        z_inst_pipe1[2]) );
  DFF_X1 z_inst_pipe2_reg_2_ ( .D(z_inst_pipe1[2]), .CK(clock), .Q(
        z_inst_pipe2[2]) );
  DFF_X1 z_inst_pipe1_reg_1_ ( .D(z_inst_internal[1]), .CK(clock), .Q(
        z_inst_pipe1[1]) );
  DFF_X1 z_inst_pipe2_reg_1_ ( .D(z_inst_pipe1[1]), .CK(clock), .Q(
        z_inst_pipe2[1]) );
  DFF_X1 z_inst_pipe1_reg_0_ ( .D(z_inst_internal[0]), .CK(clock), .Q(
        z_inst_pipe1[0]) );
  DFF_X1 z_inst_pipe2_reg_0_ ( .D(z_inst_pipe1[0]), .CK(clock), .Q(
        z_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe3_reg_23_ ( .D(z_inst_pipe2[23]), .CK(clock), .Q(opt[23])
         );
  DFF_X1 z_inst_pipe3_reg_22_ ( .D(z_inst_pipe2[22]), .CK(clock), .Q(opt[22])
         );
  DFF_X1 z_inst_pipe3_reg_21_ ( .D(z_inst_pipe2[21]), .CK(clock), .Q(opt[21])
         );
  DFF_X1 z_inst_pipe3_reg_20_ ( .D(z_inst_pipe2[20]), .CK(clock), .Q(opt[20])
         );
  DFF_X1 z_inst_pipe3_reg_19_ ( .D(z_inst_pipe2[19]), .CK(clock), .Q(opt[19])
         );
  DFF_X1 z_inst_pipe3_reg_18_ ( .D(z_inst_pipe2[18]), .CK(clock), .Q(opt[18])
         );
  DFF_X1 z_inst_pipe3_reg_17_ ( .D(z_inst_pipe2[17]), .CK(clock), .Q(opt[17])
         );
  DFF_X1 z_inst_pipe3_reg_16_ ( .D(z_inst_pipe2[16]), .CK(clock), .Q(opt[16])
         );
  DFF_X1 z_inst_pipe3_reg_15_ ( .D(z_inst_pipe2[15]), .CK(clock), .Q(opt[15])
         );
  DFF_X1 z_inst_pipe3_reg_14_ ( .D(z_inst_pipe2[14]), .CK(clock), .Q(opt[14])
         );
  DFF_X1 z_inst_pipe3_reg_13_ ( .D(z_inst_pipe2[13]), .CK(clock), .Q(opt[13])
         );
  DFF_X1 z_inst_pipe3_reg_12_ ( .D(z_inst_pipe2[12]), .CK(clock), .Q(opt[12])
         );
  DFF_X1 z_inst_pipe3_reg_11_ ( .D(z_inst_pipe2[11]), .CK(clock), .Q(opt[11])
         );
  DFF_X1 z_inst_pipe3_reg_10_ ( .D(z_inst_pipe2[10]), .CK(clock), .Q(opt[10])
         );
  DFF_X1 z_inst_pipe3_reg_9_ ( .D(z_inst_pipe2[9]), .CK(clock), .Q(opt[9]) );
  DFF_X1 z_inst_pipe3_reg_8_ ( .D(z_inst_pipe2[8]), .CK(clock), .Q(opt[8]) );
  DFF_X1 z_inst_pipe3_reg_7_ ( .D(z_inst_pipe2[7]), .CK(clock), .Q(opt[7]) );
  DFF_X1 z_inst_pipe3_reg_6_ ( .D(z_inst_pipe2[6]), .CK(clock), .Q(opt[6]) );
  DFF_X1 z_inst_pipe3_reg_5_ ( .D(z_inst_pipe2[5]), .CK(clock), .Q(opt[5]) );
  DFF_X1 z_inst_pipe3_reg_4_ ( .D(z_inst_pipe2[4]), .CK(clock), .Q(opt[4]) );
  DFF_X1 z_inst_pipe3_reg_3_ ( .D(z_inst_pipe2[3]), .CK(clock), .Q(opt[3]) );
  DFF_X1 z_inst_pipe3_reg_2_ ( .D(z_inst_pipe2[2]), .CK(clock), .Q(opt[2]) );
  DFF_X1 z_inst_pipe3_reg_1_ ( .D(z_inst_pipe2[1]), .CK(clock), .Q(opt[1]) );
  DFF_X1 z_inst_pipe3_reg_0_ ( .D(z_inst_pipe2[0]), .CK(clock), .Q(opt[0]) );
  DFF_X1 status_inst_pipe3_reg_5_ ( .D(status_inst_pipe2[5]), .CK(clock), .Q(
        status[5]) );
  DFF_X1 status_inst_pipe3_reg_4_ ( .D(status_inst_pipe2[4]), .CK(clock), .Q(
        status[4]) );
  DFF_X1 status_inst_pipe3_reg_2_ ( .D(status_inst_pipe2[2]), .CK(clock), .Q(
        status[2]) );
  DFF_X1 status_inst_pipe3_reg_1_ ( .D(status_inst_pipe2[1]), .CK(clock), .Q(
        status[1]) );
  DFF_X1 status_inst_pipe3_reg_0_ ( .D(status_inst_pipe2[0]), .CK(clock), .Q(
        status[0]) );
endmodule


module addsub_cplx_1 ( in1, in2, mode, op );
  input [47:0] in1;
  input [47:0] in2;
  output [47:0] op;
  input mode;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16;

  fp_addsub_24_1 Addr_r ( .in1(in1[47:24]), .in2(in2[47:24]), .mode(mode), 
        .opt(op[47:24]), .clock(1'b0), .status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
  fp_addsub_24_5 Addr_i ( .in1(in1[23:0]), .in2(in2[23:0]), .mode(mode), .opt(
        op[23:0]), .clock(1'b0), .status({SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}) );
endmodule


module fp_addsub_24_4_DW01_inc_1 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:2] carry;

  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[16]), .B(A[16]), .Z(SUM[16]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module fp_addsub_24_4_DW_leftsh_0 ( A, SH, B );
  input [20:0] A;
  input [4:0] SH;
  output [20:0] B;
  wire   n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358;

  INV_X4 U228 ( .A(SH[0]), .ZN(n277) );
  INV_X4 U229 ( .A(SH[1]), .ZN(n275) );
  INV_X4 U230 ( .A(SH[2]), .ZN(n271) );
  INV_X4 U231 ( .A(SH[3]), .ZN(n264) );
  INV_X4 U232 ( .A(n281), .ZN(n256) );
  INV_X4 U233 ( .A(n287), .ZN(n257) );
  INV_X4 U234 ( .A(n288), .ZN(n258) );
  INV_X4 U235 ( .A(n289), .ZN(n259) );
  INV_X4 U236 ( .A(n323), .ZN(n260) );
  INV_X4 U237 ( .A(n329), .ZN(n261) );
  INV_X4 U238 ( .A(n298), .ZN(n262) );
  INV_X4 U239 ( .A(n278), .ZN(n263) );
  INV_X4 U240 ( .A(n309), .ZN(n265) );
  INV_X4 U241 ( .A(n301), .ZN(n266) );
  INV_X4 U242 ( .A(n292), .ZN(n267) );
  INV_X4 U243 ( .A(n342), .ZN(n268) );
  INV_X4 U244 ( .A(n336), .ZN(n269) );
  INV_X4 U245 ( .A(n284), .ZN(n270) );
  INV_X4 U246 ( .A(n340), .ZN(n272) );
  INV_X4 U247 ( .A(n327), .ZN(n273) );
  INV_X4 U248 ( .A(n321), .ZN(n274) );
  INV_X4 U249 ( .A(n354), .ZN(n276) );
  NOR2_X1 U250 ( .A1(SH[4]), .A2(n263), .ZN(B[9]) );
  MUX2_X1 U251 ( .A(n279), .B(n280), .S(n264), .Z(n278) );
  NOR2_X1 U252 ( .A1(SH[4]), .A2(n256), .ZN(B[8]) );
  MUX2_X1 U253 ( .A(n282), .B(n283), .S(SH[3]), .Z(n281) );
  NOR3_X1 U254 ( .A1(n270), .A2(SH[4]), .A3(SH[3]), .ZN(B[7]) );
  NOR3_X1 U255 ( .A1(n285), .A2(SH[4]), .A3(SH[3]), .ZN(B[6]) );
  NOR3_X1 U256 ( .A1(n286), .A2(SH[4]), .A3(SH[3]), .ZN(B[5]) );
  NOR2_X1 U257 ( .A1(SH[4]), .A2(n257), .ZN(B[4]) );
  NOR2_X1 U258 ( .A1(SH[4]), .A2(n258), .ZN(B[3]) );
  NOR2_X1 U259 ( .A1(SH[4]), .A2(n259), .ZN(B[2]) );
  MUX2_X1 U260 ( .A(n290), .B(n287), .S(SH[4]), .Z(B[20]) );
  NOR2_X1 U261 ( .A1(n291), .A2(SH[3]), .ZN(n287) );
  MUX2_X1 U262 ( .A(n292), .B(n293), .S(n264), .Z(n290) );
  MUX2_X1 U263 ( .A(n294), .B(n295), .S(n271), .Z(n293) );
  MUX2_X1 U264 ( .A(n296), .B(n297), .S(n275), .Z(n295) );
  MUX2_X1 U265 ( .A(A[19]), .B(A[20]), .S(n277), .Z(n297) );
  NOR2_X1 U266 ( .A1(SH[4]), .A2(n298), .ZN(B[1]) );
  MUX2_X1 U267 ( .A(n299), .B(n288), .S(SH[4]), .Z(B[19]) );
  NOR2_X1 U268 ( .A1(n300), .A2(SH[3]), .ZN(n288) );
  MUX2_X1 U269 ( .A(n301), .B(n302), .S(n264), .Z(n299) );
  MUX2_X1 U270 ( .A(n303), .B(n304), .S(n271), .Z(n302) );
  MUX2_X1 U271 ( .A(n305), .B(n306), .S(n275), .Z(n304) );
  MUX2_X1 U272 ( .A(A[18]), .B(A[19]), .S(n277), .Z(n306) );
  MUX2_X1 U273 ( .A(n307), .B(n289), .S(SH[4]), .Z(B[18]) );
  NOR2_X1 U274 ( .A1(n308), .A2(SH[3]), .ZN(n289) );
  MUX2_X1 U275 ( .A(n309), .B(n310), .S(n264), .Z(n307) );
  MUX2_X1 U276 ( .A(n311), .B(n312), .S(n271), .Z(n310) );
  MUX2_X1 U277 ( .A(n313), .B(n296), .S(n275), .Z(n312) );
  MUX2_X1 U278 ( .A(A[18]), .B(A[17]), .S(SH[0]), .Z(n296) );
  MUX2_X1 U279 ( .A(n314), .B(n262), .S(SH[4]), .Z(B[17]) );
  NAND2_X1 U280 ( .A1(n279), .A2(n264), .ZN(n298) );
  NOR2_X1 U281 ( .A1(n315), .A2(SH[2]), .ZN(n279) );
  MUX2_X1 U282 ( .A(n280), .B(n316), .S(n264), .Z(n314) );
  MUX2_X1 U283 ( .A(n317), .B(n318), .S(n271), .Z(n316) );
  MUX2_X1 U284 ( .A(n319), .B(n305), .S(n275), .Z(n318) );
  MUX2_X1 U285 ( .A(A[17]), .B(A[16]), .S(SH[0]), .Z(n305) );
  MUX2_X1 U286 ( .A(n320), .B(n321), .S(SH[2]), .Z(n280) );
  MUX2_X1 U287 ( .A(n322), .B(n260), .S(SH[4]), .Z(B[16]) );
  MUX2_X1 U288 ( .A(n282), .B(n324), .S(n264), .Z(n322) );
  MUX2_X1 U289 ( .A(n325), .B(n294), .S(n271), .Z(n324) );
  MUX2_X1 U290 ( .A(n326), .B(n313), .S(n275), .Z(n294) );
  MUX2_X1 U291 ( .A(A[15]), .B(A[16]), .S(n277), .Z(n313) );
  MUX2_X1 U292 ( .A(n327), .B(n328), .S(n271), .Z(n282) );
  NOR2_X1 U293 ( .A1(SH[4]), .A2(n261), .ZN(B[15]) );
  MUX2_X1 U294 ( .A(n284), .B(n330), .S(n264), .Z(n329) );
  MUX2_X1 U295 ( .A(n331), .B(n303), .S(n271), .Z(n330) );
  MUX2_X1 U296 ( .A(n332), .B(n319), .S(n275), .Z(n303) );
  MUX2_X1 U297 ( .A(A[14]), .B(A[15]), .S(n277), .Z(n319) );
  MUX2_X1 U298 ( .A(n333), .B(n334), .S(n271), .Z(n284) );
  NOR2_X1 U299 ( .A1(SH[4]), .A2(n335), .ZN(B[14]) );
  MUX2_X1 U300 ( .A(n285), .B(n269), .S(n264), .Z(n335) );
  MUX2_X1 U301 ( .A(n337), .B(n311), .S(n271), .Z(n336) );
  MUX2_X1 U302 ( .A(n338), .B(n326), .S(n275), .Z(n311) );
  MUX2_X1 U303 ( .A(A[13]), .B(A[14]), .S(n277), .Z(n326) );
  MUX2_X1 U304 ( .A(n339), .B(n272), .S(n271), .Z(n285) );
  NOR2_X1 U305 ( .A1(SH[4]), .A2(n341), .ZN(B[13]) );
  MUX2_X1 U306 ( .A(n286), .B(n268), .S(n264), .Z(n341) );
  MUX2_X1 U307 ( .A(n320), .B(n317), .S(n271), .Z(n342) );
  MUX2_X1 U308 ( .A(n343), .B(n332), .S(n275), .Z(n317) );
  MUX2_X1 U309 ( .A(A[12]), .B(A[13]), .S(n277), .Z(n332) );
  MUX2_X1 U310 ( .A(n344), .B(n345), .S(n275), .Z(n320) );
  MUX2_X1 U311 ( .A(n315), .B(n274), .S(n271), .Z(n286) );
  MUX2_X1 U312 ( .A(n346), .B(n347), .S(n275), .Z(n321) );
  NAND2_X1 U313 ( .A1(n348), .A2(n275), .ZN(n315) );
  NOR2_X1 U314 ( .A1(SH[4]), .A2(n349), .ZN(B[12]) );
  MUX2_X1 U315 ( .A(n291), .B(n267), .S(n264), .Z(n349) );
  MUX2_X1 U316 ( .A(n328), .B(n325), .S(n271), .Z(n292) );
  MUX2_X1 U317 ( .A(n350), .B(n338), .S(n275), .Z(n325) );
  MUX2_X1 U318 ( .A(A[11]), .B(A[12]), .S(n277), .Z(n338) );
  MUX2_X1 U319 ( .A(n351), .B(n352), .S(n275), .Z(n328) );
  MUX2_X1 U320 ( .A(n353), .B(n273), .S(n271), .Z(n291) );
  MUX2_X1 U321 ( .A(n354), .B(n355), .S(n275), .Z(n327) );
  NOR2_X1 U322 ( .A1(SH[4]), .A2(n356), .ZN(B[11]) );
  MUX2_X1 U323 ( .A(n300), .B(n266), .S(n264), .Z(n356) );
  MUX2_X1 U324 ( .A(n334), .B(n331), .S(n271), .Z(n301) );
  MUX2_X1 U325 ( .A(n345), .B(n343), .S(n275), .Z(n331) );
  MUX2_X1 U326 ( .A(A[10]), .B(A[11]), .S(n277), .Z(n343) );
  MUX2_X1 U327 ( .A(A[8]), .B(A[9]), .S(n277), .Z(n345) );
  MUX2_X1 U328 ( .A(n347), .B(n344), .S(n275), .Z(n334) );
  MUX2_X1 U329 ( .A(A[6]), .B(A[7]), .S(n277), .Z(n344) );
  MUX2_X1 U330 ( .A(A[4]), .B(A[5]), .S(n277), .Z(n347) );
  NAND2_X1 U331 ( .A1(n333), .A2(n271), .ZN(n300) );
  MUX2_X1 U332 ( .A(n348), .B(n346), .S(n275), .Z(n333) );
  MUX2_X1 U333 ( .A(A[2]), .B(A[3]), .S(n277), .Z(n346) );
  MUX2_X1 U334 ( .A(A[0]), .B(A[1]), .S(n277), .Z(n348) );
  NOR2_X1 U335 ( .A1(SH[4]), .A2(n357), .ZN(B[10]) );
  MUX2_X1 U336 ( .A(n308), .B(n265), .S(n264), .Z(n357) );
  MUX2_X1 U337 ( .A(n340), .B(n337), .S(n271), .Z(n309) );
  MUX2_X1 U338 ( .A(n352), .B(n350), .S(n275), .Z(n337) );
  MUX2_X1 U339 ( .A(A[9]), .B(A[10]), .S(n277), .Z(n350) );
  MUX2_X1 U340 ( .A(A[7]), .B(A[8]), .S(n277), .Z(n352) );
  MUX2_X1 U341 ( .A(n355), .B(n351), .S(n275), .Z(n340) );
  MUX2_X1 U342 ( .A(A[5]), .B(A[6]), .S(n277), .Z(n351) );
  MUX2_X1 U343 ( .A(A[3]), .B(A[4]), .S(n277), .Z(n355) );
  OR2_X1 U344 ( .A1(n339), .A2(SH[2]), .ZN(n308) );
  MUX2_X1 U345 ( .A(n358), .B(n276), .S(n275), .Z(n339) );
  MUX2_X1 U346 ( .A(A[1]), .B(A[2]), .S(n277), .Z(n354) );
  NOR2_X1 U347 ( .A1(SH[4]), .A2(n323), .ZN(B[0]) );
  NAND2_X1 U348 ( .A1(n283), .A2(n264), .ZN(n323) );
  NOR2_X1 U349 ( .A1(n353), .A2(SH[2]), .ZN(n283) );
  OR2_X1 U350 ( .A1(n358), .A2(SH[1]), .ZN(n353) );
  NAND2_X1 U351 ( .A1(A[0]), .A2(n277), .ZN(n358) );
endmodule


module fp_addsub_24_4_DW_lzd_0 ( a, enc, dec );
  input [20:0] a;
  output [5:0] enc;
  output [20:0] dec;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  INV_X4 U1 ( .A(n21), .ZN(n1) );
  INV_X4 U2 ( .A(a[18]), .ZN(n2) );
  INV_X4 U3 ( .A(a[17]), .ZN(n3) );
  INV_X4 U4 ( .A(a[16]), .ZN(n4) );
  INV_X4 U5 ( .A(a[15]), .ZN(n5) );
  INV_X4 U6 ( .A(a[14]), .ZN(n6) );
  INV_X4 U7 ( .A(a[13]), .ZN(n7) );
  INV_X4 U8 ( .A(n23), .ZN(n8) );
  INV_X4 U9 ( .A(a[10]), .ZN(n9) );
  INV_X4 U10 ( .A(a[9]), .ZN(n10) );
  INV_X4 U11 ( .A(a[6]), .ZN(n11) );
  INV_X4 U12 ( .A(a[5]), .ZN(n12) );
  INV_X4 U13 ( .A(n32), .ZN(n13) );
  INV_X4 U14 ( .A(a[2]), .ZN(n14) );
  INV_X4 U15 ( .A(n33), .ZN(n15) );
  INV_X4 U16 ( .A(a[0]), .ZN(n16) );
  AND3_X1 U17 ( .A1(enc[4]), .A2(n16), .A3(n17), .ZN(enc[5]) );
  NOR3_X1 U18 ( .A1(n8), .A2(n18), .A3(n19), .ZN(enc[4]) );
  NOR2_X1 U19 ( .A1(n20), .A2(n19), .ZN(enc[3]) );
  NAND2_X1 U20 ( .A1(n21), .A2(n22), .ZN(n19) );
  AOI211_X1 U21 ( .C1(n17), .C2(n16), .A(n8), .B(n18), .ZN(n20) );
  AOI21_X1 U22 ( .B1(n22), .B2(n24), .A(n1), .ZN(enc[2]) );
  NOR4_X1 U23 ( .A1(a[17]), .A2(a[18]), .A3(a[19]), .A4(a[20]), .ZN(n21) );
  OAI21_X1 U24 ( .B1(n17), .B2(n18), .A(n23), .ZN(n24) );
  NOR4_X1 U25 ( .A1(a[10]), .A2(a[11]), .A3(a[12]), .A4(a[9]), .ZN(n23) );
  OR4_X1 U26 ( .A1(a[5]), .A2(a[6]), .A3(a[7]), .A4(a[8]), .ZN(n18) );
  NOR4_X1 U27 ( .A1(a[1]), .A2(a[2]), .A3(a[3]), .A4(a[4]), .ZN(n17) );
  NOR4_X1 U28 ( .A1(a[13]), .A2(a[14]), .A3(a[15]), .A4(a[16]), .ZN(n22) );
  AOI211_X1 U29 ( .C1(n25), .C2(n26), .A(a[20]), .B(a[19]), .ZN(enc[1]) );
  OAI211_X1 U30 ( .C1(n27), .C2(n28), .A(n5), .B(n4), .ZN(n26) );
  NAND2_X1 U31 ( .A1(n7), .A2(n6), .ZN(n28) );
  NOR3_X1 U32 ( .A1(n29), .A2(a[12]), .A3(a[11]), .ZN(n27) );
  NOR3_X1 U33 ( .A1(n30), .A2(a[9]), .A3(a[10]), .ZN(n29) );
  AOI211_X1 U34 ( .C1(n31), .C2(n13), .A(a[8]), .B(a[7]), .ZN(n30) );
  AOI211_X1 U35 ( .C1(n14), .C2(n33), .A(a[3]), .B(a[4]), .ZN(n32) );
  NOR2_X1 U36 ( .A1(a[6]), .A2(a[5]), .ZN(n31) );
  NOR2_X1 U37 ( .A1(a[18]), .A2(a[17]), .ZN(n25) );
  NOR2_X1 U38 ( .A1(a[20]), .A2(n34), .ZN(enc[0]) );
  AOI21_X1 U39 ( .B1(n35), .B2(n2), .A(a[19]), .ZN(n34) );
  OAI21_X1 U40 ( .B1(a[16]), .B2(n36), .A(n3), .ZN(n35) );
  AOI21_X1 U41 ( .B1(n37), .B2(n6), .A(a[15]), .ZN(n36) );
  OAI21_X1 U42 ( .B1(a[12]), .B2(n38), .A(n7), .ZN(n37) );
  AOI21_X1 U43 ( .B1(n39), .B2(n9), .A(a[11]), .ZN(n38) );
  OAI21_X1 U44 ( .B1(a[8]), .B2(n40), .A(n10), .ZN(n39) );
  AOI21_X1 U45 ( .B1(n41), .B2(n11), .A(a[7]), .ZN(n40) );
  OAI21_X1 U46 ( .B1(a[4]), .B2(n42), .A(n12), .ZN(n41) );
  AOI21_X1 U47 ( .B1(n15), .B2(n14), .A(a[3]), .ZN(n42) );
  NOR2_X1 U48 ( .A1(n16), .A2(a[1]), .ZN(n33) );
endmodule


module fp_addsub_24_4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n5, n6;
  wire   [21:5] carry;

  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  AND2_X4 U1 ( .A1(B[3]), .A2(A[3]), .ZN(n1) );
  BUF_X4 U2 ( .A(B[2]), .Z(SUM[2]) );
  BUF_X4 U3 ( .A(B[1]), .Z(SUM[1]) );
  BUF_X4 U4 ( .A(B[0]), .Z(SUM[0]) );
  XNOR2_X2 U5 ( .A(B[21]), .B(n5), .ZN(SUM[21]) );
  INV_X4 U6 ( .A(carry[21]), .ZN(n5) );
  INV_X4 U7 ( .A(A[3]), .ZN(n6) );
  XNOR2_X2 U8 ( .A(B[3]), .B(n6), .ZN(SUM[3]) );
endmodule


module fp_addsub_24_4_DW_rightsh_0 ( A, DATA_TC, SH, B );
  input [19:0] A;
  input [5:0] SH;
  output [19:0] B;
  input DATA_TC;
  wire   n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365;

  INV_X2 U229 ( .A(SH[0]), .ZN(n258) );
  INV_X4 U230 ( .A(n264), .ZN(n263) );
  INV_X4 U231 ( .A(SH[4]), .ZN(n264) );
  INV_X4 U232 ( .A(n259), .ZN(n260) );
  INV_X4 U233 ( .A(SH[1]), .ZN(n259) );
  INV_X4 U234 ( .A(n261), .ZN(n262) );
  INV_X4 U235 ( .A(SH[3]), .ZN(n261) );
  INV_X4 U236 ( .A(n289), .ZN(n265) );
  INV_X4 U237 ( .A(n341), .ZN(n266) );
  INV_X4 U238 ( .A(n342), .ZN(n267) );
  INV_X4 U239 ( .A(n292), .ZN(n268) );
  INV_X4 U240 ( .A(n328), .ZN(n269) );
  INV_X4 U241 ( .A(n356), .ZN(n270) );
  INV_X4 U242 ( .A(n363), .ZN(n271) );
  INV_X4 U243 ( .A(n338), .ZN(n272) );
  INV_X4 U244 ( .A(n340), .ZN(n273) );
  INV_X4 U245 ( .A(n352), .ZN(n274) );
  INV_X4 U246 ( .A(n353), .ZN(n275) );
  INV_X4 U247 ( .A(n357), .ZN(n276) );
  INV_X4 U248 ( .A(n330), .ZN(n277) );
  INV_X4 U249 ( .A(A[13]), .ZN(n278) );
  INV_X4 U250 ( .A(A[12]), .ZN(n279) );
  INV_X4 U251 ( .A(A[8]), .ZN(n280) );
  INV_X4 U252 ( .A(A[9]), .ZN(n281) );
  INV_X4 U253 ( .A(A[10]), .ZN(n282) );
  INV_X4 U254 ( .A(A[11]), .ZN(n283) );
  INV_X4 U255 ( .A(A[6]), .ZN(n284) );
  INV_X4 U256 ( .A(A[7]), .ZN(n285) );
  INV_X4 U257 ( .A(A[14]), .ZN(n286) );
  NOR3_X1 U258 ( .A1(n287), .A2(SH[5]), .A3(n263), .ZN(B[9]) );
  MUX2_X1 U259 ( .A(n288), .B(n265), .S(n262), .Z(n287) );
  NOR3_X1 U260 ( .A1(n290), .A2(SH[5]), .A3(n263), .ZN(B[8]) );
  MUX2_X1 U261 ( .A(n291), .B(n268), .S(n262), .Z(n290) );
  NOR3_X1 U262 ( .A1(n293), .A2(SH[5]), .A3(n263), .ZN(B[7]) );
  MUX2_X1 U263 ( .A(n294), .B(n295), .S(n262), .Z(n293) );
  MUX2_X1 U264 ( .A(n296), .B(n297), .S(SH[2]), .Z(n294) );
  NOR3_X1 U265 ( .A1(n298), .A2(SH[5]), .A3(n263), .ZN(B[6]) );
  MUX2_X1 U266 ( .A(n299), .B(n300), .S(n262), .Z(n298) );
  MUX2_X1 U267 ( .A(n301), .B(n302), .S(SH[2]), .Z(n299) );
  NOR3_X1 U268 ( .A1(n303), .A2(SH[5]), .A3(n263), .ZN(B[5]) );
  MUX2_X1 U269 ( .A(n304), .B(n305), .S(n262), .Z(n303) );
  MUX2_X1 U270 ( .A(n306), .B(n307), .S(SH[2]), .Z(n304) );
  NOR3_X1 U271 ( .A1(n308), .A2(SH[5]), .A3(n263), .ZN(B[4]) );
  MUX2_X1 U272 ( .A(n309), .B(n310), .S(n262), .Z(n308) );
  MUX2_X1 U273 ( .A(n311), .B(n312), .S(SH[2]), .Z(n309) );
  NOR2_X1 U274 ( .A1(SH[5]), .A2(n313), .ZN(B[3]) );
  MUX2_X1 U275 ( .A(n314), .B(n315), .S(n263), .Z(n313) );
  MUX2_X1 U276 ( .A(n316), .B(n317), .S(n262), .Z(n314) );
  MUX2_X1 U277 ( .A(n318), .B(n296), .S(SH[2]), .Z(n316) );
  MUX2_X1 U278 ( .A(n319), .B(n320), .S(n260), .Z(n296) );
  MUX2_X1 U279 ( .A(n273), .B(n272), .S(n260), .Z(n318) );
  NOR2_X1 U280 ( .A1(SH[5]), .A2(n321), .ZN(B[2]) );
  MUX2_X1 U281 ( .A(n322), .B(n323), .S(n263), .Z(n321) );
  MUX2_X1 U282 ( .A(n324), .B(n325), .S(n262), .Z(n322) );
  MUX2_X1 U283 ( .A(n269), .B(n301), .S(SH[2]), .Z(n324) );
  MUX2_X1 U284 ( .A(n326), .B(n327), .S(n260), .Z(n301) );
  MUX2_X1 U285 ( .A(n329), .B(n330), .S(n260), .Z(n328) );
  NOR2_X1 U286 ( .A1(SH[5]), .A2(n331), .ZN(B[1]) );
  MUX2_X1 U287 ( .A(n332), .B(n333), .S(n263), .Z(n331) );
  MUX2_X1 U288 ( .A(n334), .B(n288), .S(n262), .Z(n332) );
  MUX2_X1 U289 ( .A(n307), .B(n335), .S(SH[2]), .Z(n288) );
  MUX2_X1 U290 ( .A(n320), .B(n336), .S(n260), .Z(n307) );
  MUX2_X1 U291 ( .A(n281), .B(n282), .S(SH[0]), .Z(n320) );
  MUX2_X1 U292 ( .A(n337), .B(n306), .S(SH[2]), .Z(n334) );
  MUX2_X1 U293 ( .A(n272), .B(n319), .S(n260), .Z(n306) );
  MUX2_X1 U294 ( .A(n285), .B(n280), .S(SH[0]), .Z(n319) );
  MUX2_X1 U295 ( .A(A[5]), .B(A[6]), .S(SH[0]), .Z(n338) );
  MUX2_X1 U296 ( .A(n339), .B(n273), .S(n260), .Z(n337) );
  MUX2_X1 U297 ( .A(A[3]), .B(A[4]), .S(SH[0]), .Z(n340) );
  NAND2_X1 U298 ( .A1(A[2]), .A2(SH[0]), .ZN(n339) );
  NOR3_X1 U299 ( .A1(n315), .A2(SH[5]), .A3(n263), .ZN(B[19]) );
  NAND2_X1 U300 ( .A1(n341), .A2(n261), .ZN(n315) );
  NOR3_X1 U301 ( .A1(n323), .A2(SH[5]), .A3(n263), .ZN(B[18]) );
  NAND2_X1 U302 ( .A1(n342), .A2(n261), .ZN(n323) );
  NOR3_X1 U303 ( .A1(n333), .A2(SH[5]), .A3(n263), .ZN(B[17]) );
  NAND2_X1 U304 ( .A1(n289), .A2(n261), .ZN(n333) );
  NOR2_X1 U305 ( .A1(n343), .A2(SH[2]), .ZN(n289) );
  NOR3_X1 U306 ( .A1(n344), .A2(SH[5]), .A3(n263), .ZN(B[16]) );
  NOR4_X1 U307 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n295), .ZN(B[15]) );
  MUX2_X1 U308 ( .A(n345), .B(n346), .S(SH[2]), .Z(n295) );
  NOR4_X1 U309 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n300), .ZN(B[14]) );
  MUX2_X1 U310 ( .A(n270), .B(n347), .S(SH[2]), .Z(n300) );
  NOR4_X1 U311 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n305), .ZN(B[13]) );
  MUX2_X1 U312 ( .A(n335), .B(n343), .S(SH[2]), .Z(n305) );
  MUX2_X1 U313 ( .A(n274), .B(n348), .S(n260), .Z(n343) );
  MUX2_X1 U314 ( .A(n349), .B(n275), .S(n260), .Z(n335) );
  NOR4_X1 U315 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n310), .ZN(B[12]) );
  MUX2_X1 U316 ( .A(n350), .B(n271), .S(SH[2]), .Z(n310) );
  NOR3_X1 U317 ( .A1(n351), .A2(SH[5]), .A3(n263), .ZN(B[11]) );
  MUX2_X1 U318 ( .A(n317), .B(n266), .S(n262), .Z(n351) );
  NOR2_X1 U319 ( .A1(n346), .A2(SH[2]), .ZN(n341) );
  OR2_X1 U320 ( .A1(n348), .A2(n260), .ZN(n346) );
  NAND2_X1 U321 ( .A1(A[19]), .A2(n258), .ZN(n348) );
  MUX2_X1 U322 ( .A(n297), .B(n345), .S(SH[2]), .Z(n317) );
  MUX2_X1 U323 ( .A(n275), .B(n274), .S(n260), .Z(n345) );
  MUX2_X1 U324 ( .A(A[17]), .B(A[18]), .S(SH[0]), .Z(n352) );
  MUX2_X1 U325 ( .A(A[15]), .B(A[16]), .S(SH[0]), .Z(n353) );
  MUX2_X1 U326 ( .A(n336), .B(n349), .S(n260), .Z(n297) );
  MUX2_X1 U327 ( .A(n278), .B(n286), .S(SH[0]), .Z(n349) );
  MUX2_X1 U328 ( .A(n283), .B(n279), .S(SH[0]), .Z(n336) );
  NOR3_X1 U329 ( .A1(n354), .A2(SH[5]), .A3(n263), .ZN(B[10]) );
  MUX2_X1 U330 ( .A(n325), .B(n267), .S(n262), .Z(n354) );
  NOR2_X1 U331 ( .A1(n347), .A2(SH[2]), .ZN(n342) );
  NAND2_X1 U332 ( .A1(n355), .A2(n259), .ZN(n347) );
  MUX2_X1 U333 ( .A(n302), .B(n270), .S(SH[2]), .Z(n325) );
  MUX2_X1 U334 ( .A(n357), .B(n358), .S(n260), .Z(n356) );
  MUX2_X1 U335 ( .A(n359), .B(n360), .S(n260), .Z(n302) );
  NOR2_X1 U336 ( .A1(SH[5]), .A2(n361), .ZN(B[0]) );
  MUX2_X1 U337 ( .A(n362), .B(n344), .S(n263), .Z(n361) );
  NAND2_X1 U338 ( .A1(n292), .A2(n261), .ZN(n344) );
  NOR2_X1 U339 ( .A1(n271), .A2(SH[2]), .ZN(n292) );
  MUX2_X1 U340 ( .A(n358), .B(n355), .S(n260), .Z(n363) );
  MUX2_X1 U341 ( .A(A[18]), .B(A[19]), .S(SH[0]), .Z(n355) );
  MUX2_X1 U342 ( .A(A[16]), .B(A[17]), .S(SH[0]), .Z(n358) );
  MUX2_X1 U343 ( .A(n364), .B(n291), .S(n262), .Z(n362) );
  MUX2_X1 U344 ( .A(n312), .B(n350), .S(SH[2]), .Z(n291) );
  MUX2_X1 U345 ( .A(n360), .B(n276), .S(n260), .Z(n350) );
  MUX2_X1 U346 ( .A(A[14]), .B(A[15]), .S(SH[0]), .Z(n357) );
  MUX2_X1 U347 ( .A(n279), .B(n278), .S(SH[0]), .Z(n360) );
  MUX2_X1 U348 ( .A(n327), .B(n359), .S(n260), .Z(n312) );
  MUX2_X1 U349 ( .A(n282), .B(n283), .S(SH[0]), .Z(n359) );
  MUX2_X1 U350 ( .A(n280), .B(n281), .S(SH[0]), .Z(n327) );
  MUX2_X1 U351 ( .A(n365), .B(n311), .S(SH[2]), .Z(n364) );
  MUX2_X1 U352 ( .A(n277), .B(n326), .S(n260), .Z(n311) );
  MUX2_X1 U353 ( .A(n284), .B(n285), .S(SH[0]), .Z(n326) );
  MUX2_X1 U354 ( .A(A[4]), .B(A[5]), .S(SH[0]), .Z(n330) );
  NAND2_X1 U355 ( .A1(n260), .A2(n329), .ZN(n365) );
  MUX2_X1 U356 ( .A(A[2]), .B(A[3]), .S(SH[0]), .Z(n329) );
endmodule


module fp_addsub_24_4_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n12, n13, n1, n2, n3, n4, n5, n6, n7, n8, n10;
  wire   [5:1] carry;

  FA_X1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .S(n12) );
  FA_X1 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  NAND2_X2 U1 ( .A1(B[0]), .A2(n1), .ZN(carry[1]) );
  XNOR2_X2 U2 ( .A(n3), .B(A[0]), .ZN(n13) );
  INV_X4 U3 ( .A(A[0]), .ZN(n1) );
  INV_X4 U4 ( .A(B[4]), .ZN(n2) );
  INV_X4 U5 ( .A(B[0]), .ZN(n3) );
  INV_X4 U6 ( .A(B[5]), .ZN(n4) );
  INV_X4 U7 ( .A(B[3]), .ZN(n5) );
  INV_X4 U8 ( .A(B[2]), .ZN(n6) );
  INV_X4 U9 ( .A(B[1]), .ZN(n7) );
  INV_X1 U10 ( .A(n12), .ZN(n8) );
  INV_X4 U11 ( .A(n8), .ZN(DIFF[5]) );
  INV_X1 U12 ( .A(n13), .ZN(n10) );
  INV_X4 U13 ( .A(n10), .ZN(DIFF[0]) );
endmodule


module fp_addsub_24_4_DW_cmp_1 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE
 );
  input [22:0] A;
  input [22:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992;

  INV_X4 U463 ( .A(n940), .ZN(n909) );
  INV_X4 U464 ( .A(n986), .ZN(n910) );
  INV_X4 U465 ( .A(n984), .ZN(n911) );
  INV_X4 U466 ( .A(B[21]), .ZN(n912) );
  INV_X4 U467 ( .A(B[20]), .ZN(n913) );
  INV_X4 U468 ( .A(n990), .ZN(n914) );
  INV_X4 U469 ( .A(B[19]), .ZN(n915) );
  INV_X4 U470 ( .A(n988), .ZN(n916) );
  INV_X4 U471 ( .A(B[16]), .ZN(n917) );
  INV_X4 U472 ( .A(n983), .ZN(n918) );
  INV_X4 U473 ( .A(B[15]), .ZN(n919) );
  INV_X4 U474 ( .A(B[13]), .ZN(n920) );
  INV_X4 U475 ( .A(n977), .ZN(n921) );
  INV_X4 U476 ( .A(B[11]), .ZN(n922) );
  INV_X4 U477 ( .A(B[9]), .ZN(n923) );
  INV_X4 U478 ( .A(n951), .ZN(n924) );
  INV_X4 U479 ( .A(B[7]), .ZN(n925) );
  INV_X4 U480 ( .A(B[5]), .ZN(n926) );
  INV_X4 U481 ( .A(B[3]), .ZN(n927) );
  INV_X4 U482 ( .A(B[2]), .ZN(n928) );
  INV_X4 U483 ( .A(B[1]), .ZN(n929) );
  INV_X4 U484 ( .A(A[22]), .ZN(n930) );
  INV_X4 U485 ( .A(A[18]), .ZN(n931) );
  INV_X4 U486 ( .A(A[17]), .ZN(n932) );
  INV_X4 U487 ( .A(A[14]), .ZN(n933) );
  INV_X4 U488 ( .A(A[12]), .ZN(n934) );
  INV_X4 U489 ( .A(A[10]), .ZN(n935) );
  INV_X4 U490 ( .A(A[8]), .ZN(n936) );
  INV_X4 U491 ( .A(A[6]), .ZN(n937) );
  INV_X4 U492 ( .A(A[4]), .ZN(n938) );
  INV_X4 U493 ( .A(A[1]), .ZN(n939) );
  OAI22_X1 U494 ( .A1(n940), .A2(n941), .B1(n942), .B2(n943), .ZN(GE_LT_GT_LE)
         );
  OAI211_X1 U495 ( .C1(n944), .C2(n945), .A(n946), .B(n914), .ZN(n943) );
  NAND2_X1 U496 ( .A1(n947), .A2(n948), .ZN(n945) );
  OAI22_X1 U497 ( .A1(n949), .A2(n950), .B1(n924), .B2(n949), .ZN(n948) );
  OAI21_X1 U498 ( .B1(A[5]), .B2(n926), .A(n952), .ZN(n950) );
  NAND3_X1 U499 ( .A1(n953), .A2(n938), .A3(B[4]), .ZN(n952) );
  OAI21_X1 U500 ( .B1(A[7]), .B2(n925), .A(n954), .ZN(n949) );
  NAND3_X1 U501 ( .A1(n955), .A2(n937), .A3(B[6]), .ZN(n954) );
  OR3_X1 U502 ( .A1(n956), .A2(n951), .A3(n957), .ZN(n947) );
  OAI221_X1 U503 ( .B1(B[4]), .B2(n938), .C1(n958), .C2(n959), .A(n953), .ZN(
        n957) );
  NAND2_X1 U504 ( .A1(A[5]), .A2(n926), .ZN(n953) );
  AOI21_X1 U505 ( .B1(A[2]), .B2(n928), .A(n960), .ZN(n958) );
  OAI21_X1 U506 ( .B1(B[6]), .B2(n937), .A(n955), .ZN(n951) );
  NAND2_X1 U507 ( .A1(A[7]), .A2(n925), .ZN(n955) );
  AOI221_X1 U508 ( .B1(B[1]), .B2(n939), .C1(n961), .C2(B[0]), .A(n959), .ZN(
        n956) );
  OAI21_X1 U509 ( .B1(A[3]), .B2(n927), .A(n962), .ZN(n959) );
  OR3_X1 U510 ( .A1(n960), .A2(A[2]), .A3(n928), .ZN(n962) );
  AND2_X1 U511 ( .A1(A[3]), .A2(n927), .ZN(n960) );
  AOI21_X1 U512 ( .B1(A[1]), .B2(n929), .A(A[0]), .ZN(n961) );
  OAI211_X1 U513 ( .C1(n963), .C2(n944), .A(n909), .B(n964), .ZN(n942) );
  AOI21_X1 U514 ( .B1(A[16]), .B2(n917), .A(n965), .ZN(n964) );
  OAI21_X1 U515 ( .B1(n966), .B2(n967), .A(n968), .ZN(n944) );
  OAI22_X1 U516 ( .A1(n969), .A2(n970), .B1(n918), .B2(n969), .ZN(n968) );
  OAI21_X1 U517 ( .B1(A[13]), .B2(n920), .A(n971), .ZN(n970) );
  NAND3_X1 U518 ( .A1(n972), .A2(n934), .A3(B[12]), .ZN(n971) );
  OAI21_X1 U519 ( .B1(A[15]), .B2(n919), .A(n973), .ZN(n969) );
  NAND3_X1 U520 ( .A1(n974), .A2(n933), .A3(B[14]), .ZN(n973) );
  OAI22_X1 U521 ( .A1(n975), .A2(n976), .B1(n921), .B2(n975), .ZN(n967) );
  OAI21_X1 U522 ( .B1(A[9]), .B2(n923), .A(n978), .ZN(n976) );
  NAND3_X1 U523 ( .A1(n979), .A2(n936), .A3(B[8]), .ZN(n978) );
  OAI21_X1 U524 ( .B1(A[11]), .B2(n922), .A(n980), .ZN(n975) );
  NAND3_X1 U525 ( .A1(n981), .A2(n935), .A3(B[10]), .ZN(n980) );
  NOR3_X1 U526 ( .A1(n982), .A2(n966), .A3(n977), .ZN(n963) );
  OAI21_X1 U527 ( .B1(B[10]), .B2(n935), .A(n981), .ZN(n977) );
  NAND2_X1 U528 ( .A1(A[11]), .A2(n922), .ZN(n981) );
  OAI211_X1 U529 ( .C1(B[12]), .C2(n934), .A(n972), .B(n918), .ZN(n966) );
  OAI21_X1 U530 ( .B1(B[14]), .B2(n933), .A(n974), .ZN(n983) );
  NAND2_X1 U531 ( .A1(A[15]), .A2(n919), .ZN(n974) );
  NAND2_X1 U532 ( .A1(A[13]), .A2(n920), .ZN(n972) );
  OAI21_X1 U533 ( .B1(B[8]), .B2(n936), .A(n979), .ZN(n982) );
  NAND2_X1 U534 ( .A1(A[9]), .A2(n923), .ZN(n979) );
  AOI221_X1 U535 ( .B1(B[22]), .B2(n930), .C1(n984), .C2(n985), .A(n910), .ZN(
        n941) );
  OAI221_X1 U536 ( .B1(n987), .B2(n914), .C1(n916), .C2(n987), .A(n946), .ZN(
        n986) );
  AOI21_X1 U537 ( .B1(n913), .B2(A[20]), .A(n911), .ZN(n946) );
  AOI22_X1 U538 ( .A1(B[17]), .A2(n932), .B1(n989), .B2(B[16]), .ZN(n988) );
  NOR2_X1 U539 ( .A1(A[16]), .A2(n965), .ZN(n989) );
  NOR2_X1 U540 ( .A1(n932), .A2(B[17]), .ZN(n965) );
  OAI21_X1 U541 ( .B1(B[18]), .B2(n931), .A(n991), .ZN(n990) );
  OAI21_X1 U542 ( .B1(A[19]), .B2(n915), .A(n992), .ZN(n987) );
  NAND3_X1 U543 ( .A1(n991), .A2(n931), .A3(B[18]), .ZN(n992) );
  NAND2_X1 U544 ( .A1(A[19]), .A2(n915), .ZN(n991) );
  OAI22_X1 U545 ( .A1(A[21]), .A2(n912), .B1(A[20]), .B2(n913), .ZN(n985) );
  NAND2_X1 U546 ( .A1(A[21]), .A2(n912), .ZN(n984) );
  NOR2_X1 U547 ( .A1(n930), .A2(B[22]), .ZN(n940) );
endmodule


module fp_addsub_24_4_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [20:1] carry;

  XNOR2_X2 U1 ( .A(A[21]), .B(n1), .ZN(SUM[21]) );
  XNOR2_X2 U2 ( .A(A[20]), .B(n2), .ZN(SUM[20]) );
  NAND2_X2 U3 ( .A1(A[20]), .A2(carry[20]), .ZN(n1) );
  XNOR2_X2 U4 ( .A(A[19]), .B(n3), .ZN(SUM[19]) );
  NAND2_X2 U5 ( .A1(A[19]), .A2(carry[19]), .ZN(n2) );
  INV_X4 U6 ( .A(n2), .ZN(carry[20]) );
  XNOR2_X2 U7 ( .A(A[18]), .B(n4), .ZN(SUM[18]) );
  NAND2_X2 U8 ( .A1(A[18]), .A2(carry[18]), .ZN(n3) );
  INV_X4 U9 ( .A(n3), .ZN(carry[19]) );
  XNOR2_X2 U10 ( .A(A[17]), .B(n5), .ZN(SUM[17]) );
  NAND2_X2 U11 ( .A1(A[17]), .A2(carry[17]), .ZN(n4) );
  INV_X4 U12 ( .A(n4), .ZN(carry[18]) );
  XNOR2_X2 U13 ( .A(A[16]), .B(n6), .ZN(SUM[16]) );
  NAND2_X2 U14 ( .A1(A[16]), .A2(carry[16]), .ZN(n5) );
  INV_X4 U15 ( .A(n5), .ZN(carry[17]) );
  XNOR2_X2 U16 ( .A(A[15]), .B(n7), .ZN(SUM[15]) );
  NAND2_X2 U17 ( .A1(A[15]), .A2(carry[15]), .ZN(n6) );
  INV_X4 U18 ( .A(n6), .ZN(carry[16]) );
  XNOR2_X2 U19 ( .A(A[14]), .B(n8), .ZN(SUM[14]) );
  NAND2_X2 U20 ( .A1(A[14]), .A2(carry[14]), .ZN(n7) );
  INV_X4 U21 ( .A(n7), .ZN(carry[15]) );
  XNOR2_X2 U22 ( .A(A[13]), .B(n9), .ZN(SUM[13]) );
  NAND2_X2 U23 ( .A1(A[13]), .A2(carry[13]), .ZN(n8) );
  INV_X4 U24 ( .A(n8), .ZN(carry[14]) );
  XNOR2_X2 U25 ( .A(A[12]), .B(n10), .ZN(SUM[12]) );
  NAND2_X2 U26 ( .A1(A[12]), .A2(carry[12]), .ZN(n9) );
  INV_X4 U27 ( .A(n9), .ZN(carry[13]) );
  XNOR2_X2 U28 ( .A(A[11]), .B(n11), .ZN(SUM[11]) );
  NAND2_X2 U29 ( .A1(A[11]), .A2(carry[11]), .ZN(n10) );
  INV_X4 U30 ( .A(n10), .ZN(carry[12]) );
  XNOR2_X2 U31 ( .A(A[10]), .B(n12), .ZN(SUM[10]) );
  NAND2_X2 U32 ( .A1(A[10]), .A2(carry[10]), .ZN(n11) );
  INV_X4 U33 ( .A(n11), .ZN(carry[11]) );
  XNOR2_X2 U34 ( .A(A[9]), .B(n13), .ZN(SUM[9]) );
  NAND2_X2 U35 ( .A1(A[9]), .A2(carry[9]), .ZN(n12) );
  INV_X4 U36 ( .A(n12), .ZN(carry[10]) );
  XNOR2_X2 U37 ( .A(A[8]), .B(n14), .ZN(SUM[8]) );
  NAND2_X2 U38 ( .A1(A[8]), .A2(carry[8]), .ZN(n13) );
  INV_X4 U39 ( .A(n13), .ZN(carry[9]) );
  XNOR2_X2 U40 ( .A(A[7]), .B(n15), .ZN(SUM[7]) );
  NAND2_X2 U41 ( .A1(A[7]), .A2(carry[7]), .ZN(n14) );
  INV_X4 U42 ( .A(n14), .ZN(carry[8]) );
  XNOR2_X2 U43 ( .A(A[6]), .B(n16), .ZN(SUM[6]) );
  NAND2_X2 U44 ( .A1(A[6]), .A2(carry[6]), .ZN(n15) );
  INV_X4 U45 ( .A(n15), .ZN(carry[7]) );
  XNOR2_X2 U46 ( .A(A[5]), .B(n17), .ZN(SUM[5]) );
  NAND2_X2 U47 ( .A1(A[5]), .A2(carry[5]), .ZN(n16) );
  INV_X4 U48 ( .A(n16), .ZN(carry[6]) );
  XNOR2_X2 U49 ( .A(A[4]), .B(n18), .ZN(SUM[4]) );
  NAND2_X2 U50 ( .A1(A[4]), .A2(carry[4]), .ZN(n17) );
  INV_X4 U51 ( .A(n17), .ZN(carry[5]) );
  XNOR2_X2 U52 ( .A(A[3]), .B(n19), .ZN(SUM[3]) );
  NAND2_X2 U53 ( .A1(A[3]), .A2(carry[3]), .ZN(n18) );
  INV_X4 U54 ( .A(n18), .ZN(carry[4]) );
  XNOR2_X2 U55 ( .A(A[2]), .B(n20), .ZN(SUM[2]) );
  NAND2_X2 U56 ( .A1(A[2]), .A2(carry[2]), .ZN(n19) );
  INV_X4 U57 ( .A(n19), .ZN(carry[3]) );
  XNOR2_X2 U58 ( .A(A[1]), .B(n22), .ZN(SUM[1]) );
  NAND2_X2 U59 ( .A1(A[1]), .A2(carry[1]), .ZN(n20) );
  INV_X4 U60 ( .A(n20), .ZN(carry[2]) );
  INV_X4 U61 ( .A(A[0]), .ZN(n21) );
  XNOR2_X2 U62 ( .A(B[0]), .B(n21), .ZN(SUM[0]) );
  NAND2_X2 U63 ( .A1(B[0]), .A2(A[0]), .ZN(n22) );
  INV_X4 U64 ( .A(n22), .ZN(carry[1]) );
endmodule


module fp_addsub_24_4_DW_fp_addsub_0 ( a, b, rnd, op, z, status );
  input [23:0] a;
  input [23:0] b;
  input [2:0] rnd;
  output [23:0] z;
  output [7:0] status;
  input op;
  wire   swap, sig_large_17_, sig_small_17_, exp_large_int_0_, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21;
  wire   [22:0] large_p;
  wire   [16:0] small_p;
  wire   [5:0] exp_small_int;
  wire   [5:0] mag_exp_diff;
  wire   [20:1] sig_small_shifted;
  wire   [21:0] sig_aligned2;
  wire   [21:0] adder_output;
  wire   [5:0] num_of_zeros;
  wire   [4:0] num_of_zeros_used;
  wire   [21:1] a_norm;
  wire   [16:0] frac1;
  wire   [6:1] E1;
  wire   [6:1] Elz;
  wire   [5:2] add_274_carry;
  wire   [6:1] sub_275_carry;

  fp_addsub_24_4_DW01_inc_1 add_271 ( .A(a_norm[20:4]), .SUM(frac1) );
  fp_addsub_24_4_DW_leftsh_0 sll_244 ( .A(adder_output[21:1]), .SH(
        num_of_zeros_used), .B(a_norm) );
  fp_addsub_24_4_DW_lzd_0 U1 ( .a(adder_output[21:1]), .enc(num_of_zeros), 
        .dec({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21}) );
  fp_addsub_24_4_DW01_add_0 add_233 ( .A({1'b0, sig_large_17_, large_p[16:0], 
        1'b0, 1'b0, 1'b0}), .B(sig_aligned2), .CI(1'b0), .SUM({N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119}) );
  fp_addsub_24_4_DW_rightsh_0 srl_222_lsb_trim ( .A({sig_small_17_, small_p, 
        1'b0, 1'b0}), .DATA_TC(1'b0), .SH({mag_exp_diff[5:3], n84, 
        mag_exp_diff[1:0]}), .B(sig_small_shifted) );
  fp_addsub_24_4_DW01_sub_1 sub_218 ( .A({large_p[22:18], exp_large_int_0_}), 
        .B(exp_small_int), .CI(1'b0), .DIFF(mag_exp_diff) );
  fp_addsub_24_4_DW_cmp_1 lt_176 ( .A(a[22:0]), .B(b[22:0]), .TC(1'b0), 
        .GE_LT(1'b1), .GE_GT_EQ(1'b0), .GE_LT_GT_LE(swap) );
  fp_addsub_24_4_DW01_add_1 add_233_2 ( .A({N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, sig_aligned2[21]}), .CI(1'b0), .SUM(adder_output) );
  HA_X1 add_274_U1_1_1 ( .A(large_p[18]), .B(large_p[17]), .CO(
        add_274_carry[2]), .S(E1[1]) );
  HA_X1 add_274_U1_1_2 ( .A(large_p[19]), .B(add_274_carry[2]), .CO(
        add_274_carry[3]), .S(E1[2]) );
  HA_X1 add_274_U1_1_3 ( .A(large_p[20]), .B(add_274_carry[3]), .CO(
        add_274_carry[4]), .S(E1[3]) );
  HA_X1 add_274_U1_1_4 ( .A(large_p[21]), .B(add_274_carry[4]), .CO(
        add_274_carry[5]), .S(E1[4]) );
  HA_X1 add_274_U1_1_5 ( .A(large_p[22]), .B(add_274_carry[5]), .CO(E1[6]), 
        .S(E1[5]) );
  FA_X1 sub_275_U2_1 ( .A(E1[1]), .B(n89), .CI(sub_275_carry[1]), .CO(
        sub_275_carry[2]), .S(Elz[1]) );
  FA_X1 sub_275_U2_2 ( .A(E1[2]), .B(n90), .CI(sub_275_carry[2]), .CO(
        sub_275_carry[3]), .S(Elz[2]) );
  FA_X1 sub_275_U2_3 ( .A(E1[3]), .B(n91), .CI(sub_275_carry[3]), .CO(
        sub_275_carry[4]), .S(Elz[3]) );
  FA_X1 sub_275_U2_4 ( .A(E1[4]), .B(n92), .CI(sub_275_carry[4]), .CO(
        sub_275_carry[5]), .S(Elz[4]) );
  INV_X1 U4 ( .A(swap), .ZN(n87) );
  AND2_X4 U5 ( .A1(n81), .A2(n82), .ZN(n77) );
  XOR2_X2 U6 ( .A(n88), .B(n141), .Z(n78) );
  MUX2_X2 U7 ( .A(large_p[21]), .B(num_of_zeros[4]), .S(N141), .Z(
        num_of_zeros_used[4]) );
  NAND2_X2 U9 ( .A1(sig_aligned2[21]), .A2(n231), .ZN(n209) );
  INV_X4 U10 ( .A(sig_aligned2[21]), .ZN(n129) );
  INV_X4 U11 ( .A(n85), .ZN(n84) );
  INV_X4 U12 ( .A(mag_exp_diff[2]), .ZN(n85) );
  NAND2_X2 U13 ( .A1(n79), .A2(n80), .ZN(sub_275_carry[6]) );
  XNOR2_X2 U14 ( .A(E1[5]), .B(sub_275_carry[5]), .ZN(Elz[5]) );
  INV_X4 U15 ( .A(E1[5]), .ZN(n79) );
  INV_X4 U16 ( .A(sub_275_carry[5]), .ZN(n80) );
  XNOR2_X2 U17 ( .A(E1[6]), .B(sub_275_carry[6]), .ZN(Elz[6]) );
  INV_X4 U18 ( .A(E1[6]), .ZN(n81) );
  INV_X4 U19 ( .A(sub_275_carry[6]), .ZN(n82) );
  NAND2_X2 U20 ( .A1(num_of_zeros_used[0]), .A2(large_p[17]), .ZN(
        sub_275_carry[1]) );
  AND4_X4 U21 ( .A1(n109), .A2(n186), .A3(n187), .A4(n188), .ZN(n147) );
  NOR3_X2 U22 ( .A1(status[2]), .A2(status[4]), .A3(n189), .ZN(n148) );
  OR2_X4 U23 ( .A1(n231), .A2(sig_aligned2[21]), .ZN(n83) );
  OR2_X4 U24 ( .A1(n231), .A2(sig_aligned2[21]), .ZN(n210) );
  INV_X4 U31 ( .A(num_of_zeros_used[0]), .ZN(n88) );
  INV_X4 U32 ( .A(num_of_zeros_used[1]), .ZN(n89) );
  INV_X4 U33 ( .A(num_of_zeros_used[2]), .ZN(n90) );
  INV_X4 U34 ( .A(num_of_zeros_used[3]), .ZN(n91) );
  INV_X4 U35 ( .A(num_of_zeros_used[4]), .ZN(n92) );
  AOI22_X1 U36 ( .A1(large_p[21]), .A2(n106), .B1(large_p[22]), .B2(n104), 
        .ZN(n102) );
  NOR2_X1 U37 ( .A1(n104), .A2(large_p[22]), .ZN(n101) );
  NAND2_X1 U38 ( .A1(num_of_zeros[3]), .A2(n140), .ZN(n95) );
  NAND3_X1 U39 ( .A1(n95), .A2(n107), .A3(large_p[19]), .ZN(n93) );
  OAI21_X1 U40 ( .B1(num_of_zeros[3]), .B2(n140), .A(n93), .ZN(n94) );
  OAI21_X1 U41 ( .B1(large_p[19]), .B2(n107), .A(n95), .ZN(n98) );
  AOI21_X1 U42 ( .B1(num_of_zeros[1]), .B2(n143), .A(num_of_zeros[0]), .ZN(n96) );
  AOI22_X1 U43 ( .A1(large_p[18]), .A2(n103), .B1(n96), .B2(exp_large_int_0_), 
        .ZN(n97) );
  AOI22_X1 U44 ( .A1(n108), .A2(n98), .B1(n97), .B2(n108), .ZN(n99) );
  OAI211_X1 U45 ( .C1(large_p[21]), .C2(n106), .A(n105), .B(n99), .ZN(n100) );
  OAI21_X1 U46 ( .B1(n102), .B2(n101), .A(n100), .ZN(N141) );
  INV_X4 U47 ( .A(num_of_zeros[1]), .ZN(n103) );
  INV_X4 U48 ( .A(num_of_zeros[5]), .ZN(n104) );
  INV_X4 U49 ( .A(n101), .ZN(n105) );
  INV_X4 U50 ( .A(num_of_zeros[4]), .ZN(n106) );
  INV_X4 U51 ( .A(num_of_zeros[2]), .ZN(n107) );
  INV_X4 U52 ( .A(n94), .ZN(n108) );
  INV_X4 U53 ( .A(n148), .ZN(n109) );
  INV_X4 U54 ( .A(status[4]), .ZN(n110) );
  INV_X4 U55 ( .A(n169), .ZN(n111) );
  INV_X4 U56 ( .A(n189), .ZN(n112) );
  INV_X4 U57 ( .A(a_norm[21]), .ZN(n113) );
  INV_X4 U58 ( .A(n171), .ZN(n114) );
  INV_X4 U59 ( .A(Elz[5]), .ZN(n115) );
  INV_X4 U60 ( .A(Elz[4]), .ZN(n116) );
  INV_X4 U61 ( .A(Elz[3]), .ZN(n117) );
  INV_X4 U62 ( .A(Elz[2]), .ZN(n118) );
  INV_X4 U63 ( .A(Elz[1]), .ZN(n119) );
  INV_X4 U64 ( .A(n172), .ZN(n120) );
  INV_X4 U65 ( .A(n234), .ZN(n121) );
  INV_X4 U66 ( .A(n246), .ZN(n122) );
  INV_X4 U67 ( .A(n247), .ZN(n123) );
  INV_X4 U68 ( .A(n242), .ZN(n124) );
  INV_X4 U69 ( .A(n244), .ZN(n125) );
  INV_X4 U70 ( .A(n236), .ZN(n126) );
  INV_X4 U71 ( .A(n238), .ZN(n127) );
  INV_X4 U72 ( .A(n243), .ZN(n128) );
  INV_X4 U73 ( .A(n177), .ZN(n130) );
  INV_X4 U74 ( .A(n203), .ZN(n131) );
  INV_X4 U75 ( .A(n200), .ZN(n132) );
  INV_X4 U76 ( .A(small_p[2]), .ZN(n133) );
  INV_X4 U77 ( .A(n240), .ZN(n134) );
  INV_X4 U78 ( .A(n158), .ZN(n135) );
  INV_X4 U79 ( .A(sig_large_17_), .ZN(n136) );
  INV_X4 U80 ( .A(n191), .ZN(n137) );
  INV_X4 U81 ( .A(large_p[21]), .ZN(n138) );
  INV_X4 U82 ( .A(large_p[22]), .ZN(n139) );
  INV_X4 U83 ( .A(large_p[20]), .ZN(n140) );
  INV_X4 U84 ( .A(large_p[17]), .ZN(n141) );
  INV_X4 U85 ( .A(large_p[19]), .ZN(n142) );
  INV_X4 U86 ( .A(large_p[18]), .ZN(n143) );
  INV_X4 U87 ( .A(n202), .ZN(n144) );
  INV_X4 U88 ( .A(a[23]), .ZN(n145) );
  INV_X1 U89 ( .A(n146), .ZN(z[9]) );
  AOI22_X1 U90 ( .A1(a_norm[13]), .A2(n147), .B1(frac1[9]), .B2(n148), .ZN(
        n146) );
  INV_X1 U91 ( .A(n149), .ZN(z[8]) );
  AOI22_X1 U92 ( .A1(a_norm[12]), .A2(n147), .B1(frac1[8]), .B2(n148), .ZN(
        n149) );
  INV_X1 U93 ( .A(n150), .ZN(z[7]) );
  AOI22_X1 U94 ( .A1(a_norm[11]), .A2(n147), .B1(frac1[7]), .B2(n148), .ZN(
        n150) );
  INV_X1 U95 ( .A(n151), .ZN(z[6]) );
  AOI22_X1 U96 ( .A1(a_norm[10]), .A2(n147), .B1(frac1[6]), .B2(n148), .ZN(
        n151) );
  INV_X1 U97 ( .A(n152), .ZN(z[5]) );
  AOI22_X1 U98 ( .A1(a_norm[9]), .A2(n147), .B1(frac1[5]), .B2(n148), .ZN(n152) );
  INV_X1 U99 ( .A(n153), .ZN(z[4]) );
  AOI22_X1 U100 ( .A1(a_norm[8]), .A2(n147), .B1(frac1[4]), .B2(n148), .ZN(
        n153) );
  INV_X1 U101 ( .A(n154), .ZN(z[3]) );
  AOI22_X1 U102 ( .A1(a_norm[7]), .A2(n147), .B1(frac1[3]), .B2(n148), .ZN(
        n154) );
  INV_X1 U103 ( .A(n155), .ZN(z[2]) );
  AOI22_X1 U104 ( .A1(a_norm[6]), .A2(n147), .B1(frac1[2]), .B2(n148), .ZN(
        n155) );
  NOR4_X1 U105 ( .A1(status[2]), .A2(n120), .A3(n156), .A4(n157), .ZN(z[23])
         );
  NOR2_X1 U106 ( .A1(n158), .A2(n129), .ZN(n156) );
  OAI221_X1 U107 ( .B1(n139), .B2(n159), .C1(n160), .C2(n115), .A(n161), .ZN(
        z[22]) );
  NAND2_X1 U108 ( .A1(E1[5]), .A2(n162), .ZN(n161) );
  OAI221_X1 U109 ( .B1(n138), .B2(n159), .C1(n160), .C2(n116), .A(n163), .ZN(
        z[21]) );
  NAND2_X1 U110 ( .A1(E1[4]), .A2(n162), .ZN(n163) );
  OAI221_X1 U111 ( .B1(n140), .B2(n159), .C1(n160), .C2(n117), .A(n164), .ZN(
        z[20]) );
  NAND2_X1 U112 ( .A1(E1[3]), .A2(n162), .ZN(n164) );
  INV_X1 U113 ( .A(n165), .ZN(z[1]) );
  AOI22_X1 U114 ( .A1(a_norm[5]), .A2(n147), .B1(frac1[1]), .B2(n148), .ZN(
        n165) );
  OAI221_X1 U115 ( .B1(n142), .B2(n159), .C1(n160), .C2(n118), .A(n166), .ZN(
        z[19]) );
  NAND2_X1 U116 ( .A1(E1[2]), .A2(n162), .ZN(n166) );
  OAI221_X1 U117 ( .B1(n143), .B2(n159), .C1(n160), .C2(n119), .A(n167), .ZN(
        z[18]) );
  NAND2_X1 U118 ( .A1(E1[1]), .A2(n162), .ZN(n167) );
  OAI221_X1 U119 ( .B1(n141), .B2(n159), .C1(n160), .C2(n78), .A(n168), .ZN(
        z[17]) );
  NAND2_X1 U120 ( .A1(n141), .A2(n162), .ZN(n168) );
  AND2_X1 U121 ( .A1(n169), .A2(n170), .ZN(n162) );
  OAI211_X1 U122 ( .C1(n135), .C2(n171), .A(n172), .B(n173), .ZN(n160) );
  NOR2_X1 U123 ( .A1(n113), .A2(n170), .ZN(n173) );
  NAND2_X1 U124 ( .A1(n111), .A2(n170), .ZN(n159) );
  NAND3_X1 U125 ( .A1(n130), .A2(sig_aligned2[21]), .A3(n174), .ZN(n170) );
  AOI21_X1 U126 ( .B1(adder_output[2]), .B2(n175), .A(n136), .ZN(n174) );
  OAI22_X1 U127 ( .A1(sig_large_17_), .A2(n113), .B1(n176), .B2(n177), .ZN(
        n169) );
  INV_X1 U128 ( .A(n178), .ZN(z[16]) );
  AOI22_X1 U129 ( .A1(a_norm[20]), .A2(n147), .B1(frac1[16]), .B2(n148), .ZN(
        n178) );
  INV_X1 U130 ( .A(n179), .ZN(z[15]) );
  AOI22_X1 U131 ( .A1(a_norm[19]), .A2(n147), .B1(frac1[15]), .B2(n148), .ZN(
        n179) );
  INV_X1 U132 ( .A(n180), .ZN(z[14]) );
  AOI22_X1 U133 ( .A1(a_norm[18]), .A2(n147), .B1(frac1[14]), .B2(n148), .ZN(
        n180) );
  INV_X1 U134 ( .A(n181), .ZN(z[13]) );
  AOI22_X1 U135 ( .A1(a_norm[17]), .A2(n147), .B1(frac1[13]), .B2(n148), .ZN(
        n181) );
  INV_X1 U136 ( .A(n182), .ZN(z[12]) );
  AOI22_X1 U137 ( .A1(a_norm[16]), .A2(n147), .B1(frac1[12]), .B2(n148), .ZN(
        n182) );
  INV_X1 U138 ( .A(n183), .ZN(z[11]) );
  AOI22_X1 U139 ( .A1(a_norm[15]), .A2(n147), .B1(frac1[11]), .B2(n148), .ZN(
        n183) );
  INV_X1 U140 ( .A(n184), .ZN(z[10]) );
  AOI22_X1 U141 ( .A1(a_norm[14]), .A2(n147), .B1(frac1[10]), .B2(n148), .ZN(
        n184) );
  INV_X1 U142 ( .A(n185), .ZN(z[0]) );
  AOI221_X1 U143 ( .B1(n147), .B2(a_norm[4]), .C1(n148), .C2(frac1[0]), .A(
        status[2]), .ZN(n185) );
  NOR3_X1 U144 ( .A1(n135), .A2(status[4]), .A3(status[2]), .ZN(n188) );
  OAI21_X1 U145 ( .B1(n190), .B2(n177), .A(n110), .ZN(status[5]) );
  NOR4_X1 U146 ( .A1(adder_output[0]), .A2(a_norm[3]), .A3(a_norm[2]), .A4(
        a_norm[1]), .ZN(n190) );
  OAI21_X1 U147 ( .B1(status[2]), .B2(n186), .A(n110), .ZN(status[1]) );
  NOR3_X1 U148 ( .A1(n191), .A2(n176), .A3(n177), .ZN(status[4]) );
  AOI21_X1 U149 ( .B1(adder_output[20]), .B2(n175), .A(adder_output[21]), .ZN(
        n176) );
  NOR4_X1 U150 ( .A1(n192), .A2(n193), .A3(n194), .A4(n195), .ZN(n175) );
  NAND4_X1 U151 ( .A1(adder_output[5]), .A2(adder_output[4]), .A3(n196), .A4(
        n197), .ZN(n195) );
  AND4_X1 U152 ( .A1(adder_output[9]), .A2(adder_output[8]), .A3(
        adder_output[7]), .A4(adder_output[6]), .ZN(n197) );
  AND3_X1 U153 ( .A1(adder_output[19]), .A2(adder_output[18]), .A3(
        adder_output[3]), .ZN(n196) );
  NAND4_X1 U154 ( .A1(adder_output[17]), .A2(adder_output[16]), .A3(
        adder_output[15]), .A4(adder_output[14]), .ZN(n194) );
  NAND2_X1 U155 ( .A1(adder_output[13]), .A2(adder_output[12]), .ZN(n193) );
  NAND3_X1 U156 ( .A1(adder_output[10]), .A2(n112), .A3(adder_output[11]), 
        .ZN(n192) );
  NAND2_X1 U157 ( .A1(a_norm[3]), .A2(n198), .ZN(n189) );
  OR4_X1 U158 ( .A1(a_norm[1]), .A2(a_norm[2]), .A3(a_norm[4]), .A4(
        adder_output[0]), .ZN(n198) );
  OAI21_X1 U159 ( .B1(n129), .B2(n199), .A(n130), .ZN(status[2]) );
  OAI21_X1 U160 ( .B1(n187), .B2(n177), .A(n158), .ZN(status[0]) );
  OAI21_X1 U161 ( .B1(n200), .B2(n199), .A(n201), .ZN(n177) );
  NAND3_X1 U162 ( .A1(large_p[17]), .A2(n202), .A3(n137), .ZN(n201) );
  NAND4_X1 U163 ( .A1(exp_small_int[2]), .A2(n203), .A3(exp_small_int[1]), 
        .A4(n204), .ZN(n199) );
  AND3_X1 U164 ( .A1(exp_small_int[4]), .A2(exp_small_int[3]), .A3(
        exp_small_int[5]), .ZN(n204) );
  AOI21_X1 U165 ( .B1(sig_large_17_), .B2(n114), .A(n120), .ZN(n187) );
  NAND4_X1 U166 ( .A1(num_of_zeros[4]), .A2(num_of_zeros[3]), .A3(
        num_of_zeros[5]), .A4(n205), .ZN(n172) );
  AND3_X1 U167 ( .A1(num_of_zeros[2]), .A2(num_of_zeros[0]), .A3(
        num_of_zeros[1]), .ZN(n205) );
  NOR2_X1 U168 ( .A1(n206), .A2(n77), .ZN(n171) );
  AND4_X1 U169 ( .A1(n119), .A2(n118), .A3(n78), .A4(n207), .ZN(n206) );
  NOR4_X1 U170 ( .A1(Elz[6]), .A2(Elz[5]), .A3(Elz[4]), .A4(Elz[3]), .ZN(n207)
         );
  NAND2_X1 U171 ( .A1(n208), .A2(n209), .ZN(sig_aligned2[9]) );
  MUX2_X1 U172 ( .A(n129), .B(n210), .S(sig_small_shifted[9]), .Z(n208) );
  NAND2_X1 U173 ( .A1(n211), .A2(n209), .ZN(sig_aligned2[8]) );
  MUX2_X1 U174 ( .A(n129), .B(n83), .S(sig_small_shifted[8]), .Z(n211) );
  NAND2_X1 U175 ( .A1(n212), .A2(n209), .ZN(sig_aligned2[7]) );
  MUX2_X1 U176 ( .A(n129), .B(n210), .S(sig_small_shifted[7]), .Z(n212) );
  NAND2_X1 U177 ( .A1(n213), .A2(n209), .ZN(sig_aligned2[6]) );
  MUX2_X1 U178 ( .A(n129), .B(n83), .S(sig_small_shifted[6]), .Z(n213) );
  NAND2_X1 U179 ( .A1(n214), .A2(n209), .ZN(sig_aligned2[5]) );
  MUX2_X1 U180 ( .A(n129), .B(n210), .S(sig_small_shifted[5]), .Z(n214) );
  NAND2_X1 U181 ( .A1(n215), .A2(n209), .ZN(sig_aligned2[4]) );
  MUX2_X1 U182 ( .A(n129), .B(n83), .S(sig_small_shifted[4]), .Z(n215) );
  NAND2_X1 U183 ( .A1(n216), .A2(n209), .ZN(sig_aligned2[3]) );
  MUX2_X1 U184 ( .A(n129), .B(n210), .S(sig_small_shifted[3]), .Z(n216) );
  NAND2_X1 U185 ( .A1(n217), .A2(n209), .ZN(sig_aligned2[2]) );
  MUX2_X1 U186 ( .A(n129), .B(n83), .S(sig_small_shifted[2]), .Z(n217) );
  NAND2_X1 U187 ( .A1(n218), .A2(n209), .ZN(sig_aligned2[20]) );
  MUX2_X1 U188 ( .A(n129), .B(n210), .S(sig_small_shifted[20]), .Z(n218) );
  NAND2_X1 U189 ( .A1(n219), .A2(n209), .ZN(sig_aligned2[1]) );
  MUX2_X1 U190 ( .A(n129), .B(n83), .S(sig_small_shifted[1]), .Z(n219) );
  NAND2_X1 U191 ( .A1(n220), .A2(n209), .ZN(sig_aligned2[19]) );
  MUX2_X1 U192 ( .A(n129), .B(n210), .S(sig_small_shifted[19]), .Z(n220) );
  NAND2_X1 U193 ( .A1(n221), .A2(n209), .ZN(sig_aligned2[18]) );
  MUX2_X1 U194 ( .A(n129), .B(n83), .S(sig_small_shifted[18]), .Z(n221) );
  NAND2_X1 U195 ( .A1(n222), .A2(n209), .ZN(sig_aligned2[17]) );
  MUX2_X1 U196 ( .A(n129), .B(n210), .S(sig_small_shifted[17]), .Z(n222) );
  NAND2_X1 U197 ( .A1(n223), .A2(n209), .ZN(sig_aligned2[16]) );
  MUX2_X1 U198 ( .A(n129), .B(n83), .S(sig_small_shifted[16]), .Z(n223) );
  NAND2_X1 U199 ( .A1(n224), .A2(n209), .ZN(sig_aligned2[15]) );
  MUX2_X1 U200 ( .A(n129), .B(n210), .S(sig_small_shifted[15]), .Z(n224) );
  NAND2_X1 U201 ( .A1(n225), .A2(n209), .ZN(sig_aligned2[14]) );
  MUX2_X1 U202 ( .A(n129), .B(n83), .S(sig_small_shifted[14]), .Z(n225) );
  NAND2_X1 U203 ( .A1(n226), .A2(n209), .ZN(sig_aligned2[13]) );
  MUX2_X1 U204 ( .A(n129), .B(n210), .S(sig_small_shifted[13]), .Z(n226) );
  NAND2_X1 U205 ( .A1(n227), .A2(n209), .ZN(sig_aligned2[12]) );
  MUX2_X1 U206 ( .A(n129), .B(n83), .S(sig_small_shifted[12]), .Z(n227) );
  NAND2_X1 U207 ( .A1(n228), .A2(n209), .ZN(sig_aligned2[11]) );
  MUX2_X1 U208 ( .A(n129), .B(n210), .S(sig_small_shifted[11]), .Z(n228) );
  NAND2_X1 U209 ( .A1(n229), .A2(n209), .ZN(sig_aligned2[10]) );
  MUX2_X1 U210 ( .A(n129), .B(n210), .S(sig_small_shifted[10]), .Z(n229) );
  NAND2_X1 U211 ( .A1(n230), .A2(n209), .ZN(sig_aligned2[0]) );
  MUX2_X1 U212 ( .A(n83), .B(n129), .S(n232), .Z(n230) );
  AOI221_X1 U213 ( .B1(mag_exp_diff[1]), .B2(n122), .C1(mag_exp_diff[3]), .C2(
        n233), .A(n121), .ZN(n232) );
  AOI221_X1 U214 ( .B1(n235), .B2(n84), .C1(n126), .C2(mag_exp_diff[4]), .A(
        mag_exp_diff[5]), .ZN(n234) );
  AOI21_X1 U215 ( .B1(small_p[14]), .B2(n127), .A(n237), .ZN(n236) );
  OAI21_X1 U216 ( .B1(n133), .B2(n238), .A(n239), .ZN(n235) );
  NAND3_X1 U217 ( .A1(n239), .A2(n240), .A3(n241), .ZN(n233) );
  AOI222_X1 U218 ( .A1(small_p[6]), .A2(n127), .B1(n84), .B2(n125), .C1(
        mag_exp_diff[1]), .C2(n124), .ZN(n241) );
  AOI221_X1 U219 ( .B1(n128), .B2(n84), .C1(small_p[8]), .C2(mag_exp_diff[0]), 
        .A(small_p[7]), .ZN(n242) );
  AOI21_X1 U220 ( .B1(mag_exp_diff[0]), .B2(small_p[12]), .A(small_p[11]), 
        .ZN(n243) );
  AOI21_X1 U221 ( .B1(n127), .B2(small_p[10]), .A(n245), .ZN(n244) );
  NOR2_X1 U222 ( .A1(mag_exp_diff[1]), .A2(mag_exp_diff[0]), .ZN(n238) );
  NOR3_X1 U223 ( .A1(small_p[0]), .A2(mag_exp_diff[4]), .A3(small_p[1]), .ZN(
        n239) );
  AOI222_X1 U224 ( .A1(small_p[3]), .A2(n84), .B1(n123), .B2(mag_exp_diff[0]), 
        .C1(small_p[15]), .C2(mag_exp_diff[4]), .ZN(n246) );
  AOI221_X1 U225 ( .B1(n84), .B2(small_p[4]), .C1(mag_exp_diff[4]), .C2(
        small_p[16]), .A(small_p[0]), .ZN(n247) );
  NAND2_X1 U226 ( .A1(n248), .A2(n186), .ZN(n231) );
  NAND3_X1 U227 ( .A1(n137), .A2(large_p[17]), .A3(n144), .ZN(n186) );
  NAND4_X1 U228 ( .A1(large_p[18]), .A2(large_p[19]), .A3(n249), .A4(
        large_p[21]), .ZN(n191) );
  NOR2_X1 U229 ( .A1(n140), .A2(n139), .ZN(n249) );
  MUX2_X1 U230 ( .A(large_p[20]), .B(num_of_zeros[3]), .S(N141), .Z(
        num_of_zeros_used[3]) );
  MUX2_X1 U231 ( .A(large_p[19]), .B(num_of_zeros[2]), .S(N141), .Z(
        num_of_zeros_used[2]) );
  MUX2_X1 U232 ( .A(large_p[18]), .B(num_of_zeros[1]), .S(N141), .Z(
        num_of_zeros_used[1]) );
  MUX2_X1 U233 ( .A(exp_large_int_0_), .B(num_of_zeros[0]), .S(N141), .Z(
        num_of_zeros_used[0]) );
  NAND3_X1 U234 ( .A1(n248), .A2(sig_small_17_), .A3(n131), .ZN(
        exp_small_int[0]) );
  NAND2_X1 U235 ( .A1(n250), .A2(n132), .ZN(sig_small_17_) );
  NAND2_X1 U236 ( .A1(n200), .A2(n250), .ZN(n248) );
  NOR4_X1 U237 ( .A1(exp_small_int[1]), .A2(exp_small_int[2]), .A3(n203), .A4(
        n251), .ZN(n250) );
  OR3_X1 U238 ( .A1(exp_small_int[3]), .A2(exp_small_int[5]), .A3(
        exp_small_int[4]), .ZN(n251) );
  MUX2_X1 U239 ( .A(b[21]), .B(a[21]), .S(n86), .Z(exp_small_int[4]) );
  MUX2_X1 U240 ( .A(b[22]), .B(a[22]), .S(n86), .Z(exp_small_int[5]) );
  MUX2_X1 U241 ( .A(b[20]), .B(a[20]), .S(n86), .Z(exp_small_int[3]) );
  MUX2_X1 U242 ( .A(b[17]), .B(a[17]), .S(n86), .Z(n203) );
  MUX2_X1 U243 ( .A(b[19]), .B(a[19]), .S(n86), .Z(exp_small_int[2]) );
  MUX2_X1 U244 ( .A(b[18]), .B(a[18]), .S(n86), .Z(exp_small_int[1]) );
  NOR4_X1 U245 ( .A1(small_p[16]), .A2(n237), .A3(small_p[15]), .A4(
        small_p[14]), .ZN(n200) );
  MUX2_X1 U246 ( .A(b[14]), .B(a[14]), .S(n86), .Z(small_p[14]) );
  MUX2_X1 U247 ( .A(b[15]), .B(a[15]), .S(n86), .Z(small_p[15]) );
  NAND2_X1 U248 ( .A1(n252), .A2(n253), .ZN(n237) );
  NOR4_X1 U249 ( .A1(small_p[0]), .A2(small_p[1]), .A3(small_p[10]), .A4(
        small_p[11]), .ZN(n253) );
  MUX2_X1 U250 ( .A(b[11]), .B(a[11]), .S(n86), .Z(small_p[11]) );
  MUX2_X1 U251 ( .A(b[10]), .B(a[10]), .S(n86), .Z(small_p[10]) );
  MUX2_X1 U252 ( .A(b[1]), .B(a[1]), .S(n86), .Z(small_p[1]) );
  MUX2_X1 U253 ( .A(b[0]), .B(a[0]), .S(n86), .Z(small_p[0]) );
  NOR4_X1 U254 ( .A1(small_p[12]), .A2(small_p[13]), .A3(n134), .A4(n245), 
        .ZN(n252) );
  OR4_X1 U255 ( .A1(small_p[9]), .A2(small_p[8]), .A3(small_p[7]), .A4(
        small_p[6]), .ZN(n245) );
  MUX2_X1 U256 ( .A(b[6]), .B(a[6]), .S(n86), .Z(small_p[6]) );
  MUX2_X1 U257 ( .A(b[7]), .B(a[7]), .S(swap), .Z(small_p[7]) );
  MUX2_X1 U258 ( .A(b[8]), .B(a[8]), .S(n86), .Z(small_p[8]) );
  MUX2_X1 U259 ( .A(b[9]), .B(a[9]), .S(n86), .Z(small_p[9]) );
  NOR4_X1 U260 ( .A1(small_p[5]), .A2(small_p[4]), .A3(small_p[3]), .A4(
        small_p[2]), .ZN(n240) );
  MUX2_X1 U261 ( .A(b[2]), .B(a[2]), .S(n86), .Z(small_p[2]) );
  MUX2_X1 U262 ( .A(b[3]), .B(a[3]), .S(n86), .Z(small_p[3]) );
  MUX2_X1 U263 ( .A(b[4]), .B(a[4]), .S(n86), .Z(small_p[4]) );
  MUX2_X1 U264 ( .A(b[5]), .B(a[5]), .S(n86), .Z(small_p[5]) );
  MUX2_X1 U265 ( .A(b[13]), .B(a[13]), .S(n86), .Z(small_p[13]) );
  MUX2_X1 U266 ( .A(b[12]), .B(a[12]), .S(n86), .Z(small_p[12]) );
  MUX2_X1 U267 ( .A(b[16]), .B(a[16]), .S(n86), .Z(small_p[16]) );
  NAND3_X1 U268 ( .A1(n158), .A2(sig_large_17_), .A3(n141), .ZN(
        exp_large_int_0_) );
  NAND2_X1 U269 ( .A1(n254), .A2(n202), .ZN(sig_large_17_) );
  NAND2_X1 U270 ( .A1(n144), .A2(n254), .ZN(n158) );
  AND4_X1 U271 ( .A1(n143), .A2(n142), .A3(n141), .A4(n255), .ZN(n254) );
  NOR3_X1 U272 ( .A1(large_p[20]), .A2(large_p[22]), .A3(large_p[21]), .ZN(
        n255) );
  MUX2_X1 U273 ( .A(a[21]), .B(b[21]), .S(n86), .Z(large_p[21]) );
  MUX2_X1 U274 ( .A(a[22]), .B(b[22]), .S(n86), .Z(large_p[22]) );
  MUX2_X1 U275 ( .A(a[20]), .B(b[20]), .S(n86), .Z(large_p[20]) );
  MUX2_X1 U276 ( .A(a[17]), .B(b[17]), .S(n86), .Z(large_p[17]) );
  MUX2_X1 U277 ( .A(a[19]), .B(b[19]), .S(n86), .Z(large_p[19]) );
  MUX2_X1 U278 ( .A(a[18]), .B(b[18]), .S(n86), .Z(large_p[18]) );
  NAND3_X1 U279 ( .A1(n256), .A2(n257), .A3(n258), .ZN(n202) );
  NOR4_X1 U280 ( .A1(n259), .A2(n260), .A3(large_p[3]), .A4(large_p[4]), .ZN(
        n258) );
  MUX2_X1 U281 ( .A(a[4]), .B(b[4]), .S(n86), .Z(large_p[4]) );
  MUX2_X1 U282 ( .A(a[3]), .B(b[3]), .S(n86), .Z(large_p[3]) );
  OR3_X1 U283 ( .A1(large_p[1]), .A2(large_p[0]), .A3(large_p[2]), .ZN(n260)
         );
  MUX2_X1 U284 ( .A(a[2]), .B(b[2]), .S(n86), .Z(large_p[2]) );
  MUX2_X1 U285 ( .A(a[0]), .B(b[0]), .S(n86), .Z(large_p[0]) );
  MUX2_X1 U286 ( .A(a[1]), .B(b[1]), .S(n86), .Z(large_p[1]) );
  OR4_X1 U287 ( .A1(large_p[8]), .A2(large_p[7]), .A3(large_p[6]), .A4(
        large_p[5]), .ZN(n259) );
  MUX2_X1 U288 ( .A(a[5]), .B(b[5]), .S(n86), .Z(large_p[5]) );
  MUX2_X1 U289 ( .A(a[6]), .B(b[6]), .S(n86), .Z(large_p[6]) );
  MUX2_X1 U290 ( .A(a[7]), .B(b[7]), .S(n86), .Z(large_p[7]) );
  MUX2_X1 U291 ( .A(a[8]), .B(b[8]), .S(n86), .Z(large_p[8]) );
  NOR4_X1 U292 ( .A1(large_p[9]), .A2(large_p[10]), .A3(large_p[11]), .A4(
        large_p[12]), .ZN(n257) );
  MUX2_X1 U293 ( .A(a[12]), .B(b[12]), .S(n86), .Z(large_p[12]) );
  MUX2_X1 U294 ( .A(a[11]), .B(b[11]), .S(n86), .Z(large_p[11]) );
  MUX2_X1 U295 ( .A(a[10]), .B(b[10]), .S(n86), .Z(large_p[10]) );
  MUX2_X1 U296 ( .A(a[9]), .B(b[9]), .S(swap), .Z(large_p[9]) );
  NOR4_X1 U297 ( .A1(large_p[13]), .A2(large_p[14]), .A3(large_p[15]), .A4(
        large_p[16]), .ZN(n256) );
  MUX2_X1 U298 ( .A(a[16]), .B(b[16]), .S(swap), .Z(large_p[16]) );
  MUX2_X1 U299 ( .A(a[15]), .B(b[15]), .S(swap), .Z(large_p[15]) );
  MUX2_X1 U300 ( .A(a[14]), .B(b[14]), .S(swap), .Z(large_p[14]) );
  MUX2_X1 U301 ( .A(a[13]), .B(b[13]), .S(swap), .Z(large_p[13]) );
  XOR2_X1 U302 ( .A(n261), .B(n157), .Z(sig_aligned2[21]) );
  MUX2_X1 U303 ( .A(n145), .B(n262), .S(swap), .Z(n157) );
  MUX2_X1 U304 ( .A(n262), .B(n145), .S(swap), .Z(n261) );
  XNOR2_X1 U305 ( .A(b[23]), .B(op), .ZN(n262) );
  INV_X8 U8 ( .A(n87), .ZN(n86) );
endmodule


module fp_addsub_24_4 ( in1, in2, mode, opt, clock, status );
  input [23:0] in1;
  input [23:0] in2;
  output [23:0] opt;
  output [7:0] status;
  input mode, clock;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [23:0] z_inst_internal;
  wire   [5:0] status_inst_internal;
  wire   [23:0] z_inst_pipe1;
  wire   [5:0] status_inst_pipe1;
  wire   [23:0] z_inst_pipe2;
  wire   [5:0] status_inst_pipe2;
  assign status[7] = 1'b0;
  assign status[6] = 1'b0;
  assign status[3] = 1'b0;

  fp_addsub_24_4_DW_fp_addsub_0 U1 ( .a(in1), .b(in2), .rnd({1'b0, 1'b0, 1'b0}), .op(mode), .z(z_inst_internal), .status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, status_inst_internal[5:4], 
        SYNOPSYS_UNCONNECTED_3, status_inst_internal[2:0]}) );
  DFF_X1 status_inst_pipe1_reg_5_ ( .D(status_inst_internal[5]), .CK(clock), 
        .Q(status_inst_pipe1[5]) );
  DFF_X1 status_inst_pipe2_reg_5_ ( .D(status_inst_pipe1[5]), .CK(clock), .Q(
        status_inst_pipe2[5]) );
  DFF_X1 status_inst_pipe1_reg_4_ ( .D(status_inst_internal[4]), .CK(clock), 
        .Q(status_inst_pipe1[4]) );
  DFF_X1 status_inst_pipe2_reg_4_ ( .D(status_inst_pipe1[4]), .CK(clock), .Q(
        status_inst_pipe2[4]) );
  DFF_X1 status_inst_pipe1_reg_2_ ( .D(status_inst_internal[2]), .CK(clock), 
        .Q(status_inst_pipe1[2]) );
  DFF_X1 status_inst_pipe2_reg_2_ ( .D(status_inst_pipe1[2]), .CK(clock), .Q(
        status_inst_pipe2[2]) );
  DFF_X1 status_inst_pipe1_reg_1_ ( .D(status_inst_internal[1]), .CK(clock), 
        .Q(status_inst_pipe1[1]) );
  DFF_X1 status_inst_pipe2_reg_1_ ( .D(status_inst_pipe1[1]), .CK(clock), .Q(
        status_inst_pipe2[1]) );
  DFF_X1 status_inst_pipe1_reg_0_ ( .D(status_inst_internal[0]), .CK(clock), 
        .Q(status_inst_pipe1[0]) );
  DFF_X1 status_inst_pipe2_reg_0_ ( .D(status_inst_pipe1[0]), .CK(clock), .Q(
        status_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe1_reg_23_ ( .D(z_inst_internal[23]), .CK(clock), .Q(
        z_inst_pipe1[23]) );
  DFF_X1 z_inst_pipe2_reg_23_ ( .D(z_inst_pipe1[23]), .CK(clock), .Q(
        z_inst_pipe2[23]) );
  DFF_X1 z_inst_pipe1_reg_22_ ( .D(z_inst_internal[22]), .CK(clock), .Q(
        z_inst_pipe1[22]) );
  DFF_X1 z_inst_pipe2_reg_22_ ( .D(z_inst_pipe1[22]), .CK(clock), .Q(
        z_inst_pipe2[22]) );
  DFF_X1 z_inst_pipe1_reg_21_ ( .D(z_inst_internal[21]), .CK(clock), .Q(
        z_inst_pipe1[21]) );
  DFF_X1 z_inst_pipe2_reg_21_ ( .D(z_inst_pipe1[21]), .CK(clock), .Q(
        z_inst_pipe2[21]) );
  DFF_X1 z_inst_pipe1_reg_20_ ( .D(z_inst_internal[20]), .CK(clock), .Q(
        z_inst_pipe1[20]) );
  DFF_X1 z_inst_pipe2_reg_20_ ( .D(z_inst_pipe1[20]), .CK(clock), .Q(
        z_inst_pipe2[20]) );
  DFF_X1 z_inst_pipe1_reg_19_ ( .D(z_inst_internal[19]), .CK(clock), .Q(
        z_inst_pipe1[19]) );
  DFF_X1 z_inst_pipe2_reg_19_ ( .D(z_inst_pipe1[19]), .CK(clock), .Q(
        z_inst_pipe2[19]) );
  DFF_X1 z_inst_pipe1_reg_18_ ( .D(z_inst_internal[18]), .CK(clock), .Q(
        z_inst_pipe1[18]) );
  DFF_X1 z_inst_pipe2_reg_18_ ( .D(z_inst_pipe1[18]), .CK(clock), .Q(
        z_inst_pipe2[18]) );
  DFF_X1 z_inst_pipe1_reg_17_ ( .D(z_inst_internal[17]), .CK(clock), .Q(
        z_inst_pipe1[17]) );
  DFF_X1 z_inst_pipe2_reg_17_ ( .D(z_inst_pipe1[17]), .CK(clock), .Q(
        z_inst_pipe2[17]) );
  DFF_X1 z_inst_pipe1_reg_16_ ( .D(z_inst_internal[16]), .CK(clock), .Q(
        z_inst_pipe1[16]) );
  DFF_X1 z_inst_pipe2_reg_16_ ( .D(z_inst_pipe1[16]), .CK(clock), .Q(
        z_inst_pipe2[16]) );
  DFF_X1 z_inst_pipe1_reg_15_ ( .D(z_inst_internal[15]), .CK(clock), .Q(
        z_inst_pipe1[15]) );
  DFF_X1 z_inst_pipe2_reg_15_ ( .D(z_inst_pipe1[15]), .CK(clock), .Q(
        z_inst_pipe2[15]) );
  DFF_X1 z_inst_pipe1_reg_14_ ( .D(z_inst_internal[14]), .CK(clock), .Q(
        z_inst_pipe1[14]) );
  DFF_X1 z_inst_pipe2_reg_14_ ( .D(z_inst_pipe1[14]), .CK(clock), .Q(
        z_inst_pipe2[14]) );
  DFF_X1 z_inst_pipe1_reg_13_ ( .D(z_inst_internal[13]), .CK(clock), .Q(
        z_inst_pipe1[13]) );
  DFF_X1 z_inst_pipe2_reg_13_ ( .D(z_inst_pipe1[13]), .CK(clock), .Q(
        z_inst_pipe2[13]) );
  DFF_X1 z_inst_pipe1_reg_12_ ( .D(z_inst_internal[12]), .CK(clock), .Q(
        z_inst_pipe1[12]) );
  DFF_X1 z_inst_pipe2_reg_12_ ( .D(z_inst_pipe1[12]), .CK(clock), .Q(
        z_inst_pipe2[12]) );
  DFF_X1 z_inst_pipe1_reg_11_ ( .D(z_inst_internal[11]), .CK(clock), .Q(
        z_inst_pipe1[11]) );
  DFF_X1 z_inst_pipe2_reg_11_ ( .D(z_inst_pipe1[11]), .CK(clock), .Q(
        z_inst_pipe2[11]) );
  DFF_X1 z_inst_pipe1_reg_10_ ( .D(z_inst_internal[10]), .CK(clock), .Q(
        z_inst_pipe1[10]) );
  DFF_X1 z_inst_pipe2_reg_10_ ( .D(z_inst_pipe1[10]), .CK(clock), .Q(
        z_inst_pipe2[10]) );
  DFF_X1 z_inst_pipe1_reg_9_ ( .D(z_inst_internal[9]), .CK(clock), .Q(
        z_inst_pipe1[9]) );
  DFF_X1 z_inst_pipe2_reg_9_ ( .D(z_inst_pipe1[9]), .CK(clock), .Q(
        z_inst_pipe2[9]) );
  DFF_X1 z_inst_pipe1_reg_8_ ( .D(z_inst_internal[8]), .CK(clock), .Q(
        z_inst_pipe1[8]) );
  DFF_X1 z_inst_pipe2_reg_8_ ( .D(z_inst_pipe1[8]), .CK(clock), .Q(
        z_inst_pipe2[8]) );
  DFF_X1 z_inst_pipe1_reg_7_ ( .D(z_inst_internal[7]), .CK(clock), .Q(
        z_inst_pipe1[7]) );
  DFF_X1 z_inst_pipe2_reg_7_ ( .D(z_inst_pipe1[7]), .CK(clock), .Q(
        z_inst_pipe2[7]) );
  DFF_X1 z_inst_pipe1_reg_6_ ( .D(z_inst_internal[6]), .CK(clock), .Q(
        z_inst_pipe1[6]) );
  DFF_X1 z_inst_pipe2_reg_6_ ( .D(z_inst_pipe1[6]), .CK(clock), .Q(
        z_inst_pipe2[6]) );
  DFF_X1 z_inst_pipe1_reg_5_ ( .D(z_inst_internal[5]), .CK(clock), .Q(
        z_inst_pipe1[5]) );
  DFF_X1 z_inst_pipe2_reg_5_ ( .D(z_inst_pipe1[5]), .CK(clock), .Q(
        z_inst_pipe2[5]) );
  DFF_X1 z_inst_pipe1_reg_4_ ( .D(z_inst_internal[4]), .CK(clock), .Q(
        z_inst_pipe1[4]) );
  DFF_X1 z_inst_pipe2_reg_4_ ( .D(z_inst_pipe1[4]), .CK(clock), .Q(
        z_inst_pipe2[4]) );
  DFF_X1 z_inst_pipe1_reg_3_ ( .D(z_inst_internal[3]), .CK(clock), .Q(
        z_inst_pipe1[3]) );
  DFF_X1 z_inst_pipe2_reg_3_ ( .D(z_inst_pipe1[3]), .CK(clock), .Q(
        z_inst_pipe2[3]) );
  DFF_X1 z_inst_pipe1_reg_2_ ( .D(z_inst_internal[2]), .CK(clock), .Q(
        z_inst_pipe1[2]) );
  DFF_X1 z_inst_pipe2_reg_2_ ( .D(z_inst_pipe1[2]), .CK(clock), .Q(
        z_inst_pipe2[2]) );
  DFF_X1 z_inst_pipe1_reg_1_ ( .D(z_inst_internal[1]), .CK(clock), .Q(
        z_inst_pipe1[1]) );
  DFF_X1 z_inst_pipe2_reg_1_ ( .D(z_inst_pipe1[1]), .CK(clock), .Q(
        z_inst_pipe2[1]) );
  DFF_X1 z_inst_pipe1_reg_0_ ( .D(z_inst_internal[0]), .CK(clock), .Q(
        z_inst_pipe1[0]) );
  DFF_X1 z_inst_pipe2_reg_0_ ( .D(z_inst_pipe1[0]), .CK(clock), .Q(
        z_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe3_reg_23_ ( .D(z_inst_pipe2[23]), .CK(clock), .Q(opt[23])
         );
  DFF_X1 z_inst_pipe3_reg_22_ ( .D(z_inst_pipe2[22]), .CK(clock), .Q(opt[22])
         );
  DFF_X1 z_inst_pipe3_reg_21_ ( .D(z_inst_pipe2[21]), .CK(clock), .Q(opt[21])
         );
  DFF_X1 z_inst_pipe3_reg_20_ ( .D(z_inst_pipe2[20]), .CK(clock), .Q(opt[20])
         );
  DFF_X1 z_inst_pipe3_reg_19_ ( .D(z_inst_pipe2[19]), .CK(clock), .Q(opt[19])
         );
  DFF_X1 z_inst_pipe3_reg_18_ ( .D(z_inst_pipe2[18]), .CK(clock), .Q(opt[18])
         );
  DFF_X1 z_inst_pipe3_reg_17_ ( .D(z_inst_pipe2[17]), .CK(clock), .Q(opt[17])
         );
  DFF_X1 z_inst_pipe3_reg_16_ ( .D(z_inst_pipe2[16]), .CK(clock), .Q(opt[16])
         );
  DFF_X1 z_inst_pipe3_reg_15_ ( .D(z_inst_pipe2[15]), .CK(clock), .Q(opt[15])
         );
  DFF_X1 z_inst_pipe3_reg_14_ ( .D(z_inst_pipe2[14]), .CK(clock), .Q(opt[14])
         );
  DFF_X1 z_inst_pipe3_reg_13_ ( .D(z_inst_pipe2[13]), .CK(clock), .Q(opt[13])
         );
  DFF_X1 z_inst_pipe3_reg_12_ ( .D(z_inst_pipe2[12]), .CK(clock), .Q(opt[12])
         );
  DFF_X1 z_inst_pipe3_reg_11_ ( .D(z_inst_pipe2[11]), .CK(clock), .Q(opt[11])
         );
  DFF_X1 z_inst_pipe3_reg_10_ ( .D(z_inst_pipe2[10]), .CK(clock), .Q(opt[10])
         );
  DFF_X1 z_inst_pipe3_reg_9_ ( .D(z_inst_pipe2[9]), .CK(clock), .Q(opt[9]) );
  DFF_X1 z_inst_pipe3_reg_8_ ( .D(z_inst_pipe2[8]), .CK(clock), .Q(opt[8]) );
  DFF_X1 z_inst_pipe3_reg_7_ ( .D(z_inst_pipe2[7]), .CK(clock), .Q(opt[7]) );
  DFF_X1 z_inst_pipe3_reg_6_ ( .D(z_inst_pipe2[6]), .CK(clock), .Q(opt[6]) );
  DFF_X1 z_inst_pipe3_reg_5_ ( .D(z_inst_pipe2[5]), .CK(clock), .Q(opt[5]) );
  DFF_X1 z_inst_pipe3_reg_4_ ( .D(z_inst_pipe2[4]), .CK(clock), .Q(opt[4]) );
  DFF_X1 z_inst_pipe3_reg_3_ ( .D(z_inst_pipe2[3]), .CK(clock), .Q(opt[3]) );
  DFF_X1 z_inst_pipe3_reg_2_ ( .D(z_inst_pipe2[2]), .CK(clock), .Q(opt[2]) );
  DFF_X1 z_inst_pipe3_reg_1_ ( .D(z_inst_pipe2[1]), .CK(clock), .Q(opt[1]) );
  DFF_X1 z_inst_pipe3_reg_0_ ( .D(z_inst_pipe2[0]), .CK(clock), .Q(opt[0]) );
  DFF_X1 status_inst_pipe3_reg_5_ ( .D(status_inst_pipe2[5]), .CK(clock), .Q(
        status[5]) );
  DFF_X1 status_inst_pipe3_reg_4_ ( .D(status_inst_pipe2[4]), .CK(clock), .Q(
        status[4]) );
  DFF_X1 status_inst_pipe3_reg_2_ ( .D(status_inst_pipe2[2]), .CK(clock), .Q(
        status[2]) );
  DFF_X1 status_inst_pipe3_reg_1_ ( .D(status_inst_pipe2[1]), .CK(clock), .Q(
        status[1]) );
  DFF_X1 status_inst_pipe3_reg_0_ ( .D(status_inst_pipe2[0]), .CK(clock), .Q(
        status[0]) );
endmodule


module fp_addsub_24_3_DW01_inc_1 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:2] carry;

  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[16]), .B(A[16]), .Z(SUM[16]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module fp_addsub_24_3_DW_leftsh_0 ( A, SH, B );
  input [20:0] A;
  input [4:0] SH;
  output [20:0] B;
  wire   n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358;

  INV_X4 U228 ( .A(SH[0]), .ZN(n277) );
  INV_X4 U229 ( .A(SH[1]), .ZN(n275) );
  INV_X4 U230 ( .A(SH[2]), .ZN(n271) );
  INV_X4 U231 ( .A(SH[3]), .ZN(n264) );
  INV_X4 U232 ( .A(n281), .ZN(n256) );
  INV_X4 U233 ( .A(n287), .ZN(n257) );
  INV_X4 U234 ( .A(n288), .ZN(n258) );
  INV_X4 U235 ( .A(n289), .ZN(n259) );
  INV_X4 U236 ( .A(n323), .ZN(n260) );
  INV_X4 U237 ( .A(n329), .ZN(n261) );
  INV_X4 U238 ( .A(n298), .ZN(n262) );
  INV_X4 U239 ( .A(n278), .ZN(n263) );
  INV_X4 U240 ( .A(n309), .ZN(n265) );
  INV_X4 U241 ( .A(n301), .ZN(n266) );
  INV_X4 U242 ( .A(n292), .ZN(n267) );
  INV_X4 U243 ( .A(n342), .ZN(n268) );
  INV_X4 U244 ( .A(n336), .ZN(n269) );
  INV_X4 U245 ( .A(n284), .ZN(n270) );
  INV_X4 U246 ( .A(n340), .ZN(n272) );
  INV_X4 U247 ( .A(n327), .ZN(n273) );
  INV_X4 U248 ( .A(n321), .ZN(n274) );
  INV_X4 U249 ( .A(n354), .ZN(n276) );
  NOR2_X1 U250 ( .A1(SH[4]), .A2(n263), .ZN(B[9]) );
  MUX2_X1 U251 ( .A(n279), .B(n280), .S(n264), .Z(n278) );
  NOR2_X1 U252 ( .A1(SH[4]), .A2(n256), .ZN(B[8]) );
  MUX2_X1 U253 ( .A(n282), .B(n283), .S(SH[3]), .Z(n281) );
  NOR3_X1 U254 ( .A1(n270), .A2(SH[4]), .A3(SH[3]), .ZN(B[7]) );
  NOR3_X1 U255 ( .A1(n285), .A2(SH[4]), .A3(SH[3]), .ZN(B[6]) );
  NOR3_X1 U256 ( .A1(n286), .A2(SH[4]), .A3(SH[3]), .ZN(B[5]) );
  NOR2_X1 U257 ( .A1(SH[4]), .A2(n257), .ZN(B[4]) );
  NOR2_X1 U258 ( .A1(SH[4]), .A2(n258), .ZN(B[3]) );
  NOR2_X1 U259 ( .A1(SH[4]), .A2(n259), .ZN(B[2]) );
  MUX2_X1 U260 ( .A(n290), .B(n287), .S(SH[4]), .Z(B[20]) );
  NOR2_X1 U261 ( .A1(n291), .A2(SH[3]), .ZN(n287) );
  MUX2_X1 U262 ( .A(n292), .B(n293), .S(n264), .Z(n290) );
  MUX2_X1 U263 ( .A(n294), .B(n295), .S(n271), .Z(n293) );
  MUX2_X1 U264 ( .A(n296), .B(n297), .S(n275), .Z(n295) );
  MUX2_X1 U265 ( .A(A[19]), .B(A[20]), .S(n277), .Z(n297) );
  NOR2_X1 U266 ( .A1(SH[4]), .A2(n298), .ZN(B[1]) );
  MUX2_X1 U267 ( .A(n299), .B(n288), .S(SH[4]), .Z(B[19]) );
  NOR2_X1 U268 ( .A1(n300), .A2(SH[3]), .ZN(n288) );
  MUX2_X1 U269 ( .A(n301), .B(n302), .S(n264), .Z(n299) );
  MUX2_X1 U270 ( .A(n303), .B(n304), .S(n271), .Z(n302) );
  MUX2_X1 U271 ( .A(n305), .B(n306), .S(n275), .Z(n304) );
  MUX2_X1 U272 ( .A(A[18]), .B(A[19]), .S(n277), .Z(n306) );
  MUX2_X1 U273 ( .A(n307), .B(n289), .S(SH[4]), .Z(B[18]) );
  NOR2_X1 U274 ( .A1(n308), .A2(SH[3]), .ZN(n289) );
  MUX2_X1 U275 ( .A(n309), .B(n310), .S(n264), .Z(n307) );
  MUX2_X1 U276 ( .A(n311), .B(n312), .S(n271), .Z(n310) );
  MUX2_X1 U277 ( .A(n313), .B(n296), .S(n275), .Z(n312) );
  MUX2_X1 U278 ( .A(A[18]), .B(A[17]), .S(SH[0]), .Z(n296) );
  MUX2_X1 U279 ( .A(n314), .B(n262), .S(SH[4]), .Z(B[17]) );
  NAND2_X1 U280 ( .A1(n279), .A2(n264), .ZN(n298) );
  NOR2_X1 U281 ( .A1(n315), .A2(SH[2]), .ZN(n279) );
  MUX2_X1 U282 ( .A(n280), .B(n316), .S(n264), .Z(n314) );
  MUX2_X1 U283 ( .A(n317), .B(n318), .S(n271), .Z(n316) );
  MUX2_X1 U284 ( .A(n319), .B(n305), .S(n275), .Z(n318) );
  MUX2_X1 U285 ( .A(A[17]), .B(A[16]), .S(SH[0]), .Z(n305) );
  MUX2_X1 U286 ( .A(n320), .B(n321), .S(SH[2]), .Z(n280) );
  MUX2_X1 U287 ( .A(n322), .B(n260), .S(SH[4]), .Z(B[16]) );
  MUX2_X1 U288 ( .A(n282), .B(n324), .S(n264), .Z(n322) );
  MUX2_X1 U289 ( .A(n325), .B(n294), .S(n271), .Z(n324) );
  MUX2_X1 U290 ( .A(n326), .B(n313), .S(n275), .Z(n294) );
  MUX2_X1 U291 ( .A(A[15]), .B(A[16]), .S(n277), .Z(n313) );
  MUX2_X1 U292 ( .A(n327), .B(n328), .S(n271), .Z(n282) );
  NOR2_X1 U293 ( .A1(SH[4]), .A2(n261), .ZN(B[15]) );
  MUX2_X1 U294 ( .A(n284), .B(n330), .S(n264), .Z(n329) );
  MUX2_X1 U295 ( .A(n331), .B(n303), .S(n271), .Z(n330) );
  MUX2_X1 U296 ( .A(n332), .B(n319), .S(n275), .Z(n303) );
  MUX2_X1 U297 ( .A(A[14]), .B(A[15]), .S(n277), .Z(n319) );
  MUX2_X1 U298 ( .A(n333), .B(n334), .S(n271), .Z(n284) );
  NOR2_X1 U299 ( .A1(SH[4]), .A2(n335), .ZN(B[14]) );
  MUX2_X1 U300 ( .A(n285), .B(n269), .S(n264), .Z(n335) );
  MUX2_X1 U301 ( .A(n337), .B(n311), .S(n271), .Z(n336) );
  MUX2_X1 U302 ( .A(n338), .B(n326), .S(n275), .Z(n311) );
  MUX2_X1 U303 ( .A(A[13]), .B(A[14]), .S(n277), .Z(n326) );
  MUX2_X1 U304 ( .A(n339), .B(n272), .S(n271), .Z(n285) );
  NOR2_X1 U305 ( .A1(SH[4]), .A2(n341), .ZN(B[13]) );
  MUX2_X1 U306 ( .A(n286), .B(n268), .S(n264), .Z(n341) );
  MUX2_X1 U307 ( .A(n320), .B(n317), .S(n271), .Z(n342) );
  MUX2_X1 U308 ( .A(n343), .B(n332), .S(n275), .Z(n317) );
  MUX2_X1 U309 ( .A(A[12]), .B(A[13]), .S(n277), .Z(n332) );
  MUX2_X1 U310 ( .A(n344), .B(n345), .S(n275), .Z(n320) );
  MUX2_X1 U311 ( .A(n315), .B(n274), .S(n271), .Z(n286) );
  MUX2_X1 U312 ( .A(n346), .B(n347), .S(n275), .Z(n321) );
  NAND2_X1 U313 ( .A1(n348), .A2(n275), .ZN(n315) );
  NOR2_X1 U314 ( .A1(SH[4]), .A2(n349), .ZN(B[12]) );
  MUX2_X1 U315 ( .A(n291), .B(n267), .S(n264), .Z(n349) );
  MUX2_X1 U316 ( .A(n328), .B(n325), .S(n271), .Z(n292) );
  MUX2_X1 U317 ( .A(n350), .B(n338), .S(n275), .Z(n325) );
  MUX2_X1 U318 ( .A(A[11]), .B(A[12]), .S(n277), .Z(n338) );
  MUX2_X1 U319 ( .A(n351), .B(n352), .S(n275), .Z(n328) );
  MUX2_X1 U320 ( .A(n353), .B(n273), .S(n271), .Z(n291) );
  MUX2_X1 U321 ( .A(n354), .B(n355), .S(n275), .Z(n327) );
  NOR2_X1 U322 ( .A1(SH[4]), .A2(n356), .ZN(B[11]) );
  MUX2_X1 U323 ( .A(n300), .B(n266), .S(n264), .Z(n356) );
  MUX2_X1 U324 ( .A(n334), .B(n331), .S(n271), .Z(n301) );
  MUX2_X1 U325 ( .A(n345), .B(n343), .S(n275), .Z(n331) );
  MUX2_X1 U326 ( .A(A[10]), .B(A[11]), .S(n277), .Z(n343) );
  MUX2_X1 U327 ( .A(A[8]), .B(A[9]), .S(n277), .Z(n345) );
  MUX2_X1 U328 ( .A(n347), .B(n344), .S(n275), .Z(n334) );
  MUX2_X1 U329 ( .A(A[6]), .B(A[7]), .S(n277), .Z(n344) );
  MUX2_X1 U330 ( .A(A[4]), .B(A[5]), .S(n277), .Z(n347) );
  NAND2_X1 U331 ( .A1(n333), .A2(n271), .ZN(n300) );
  MUX2_X1 U332 ( .A(n348), .B(n346), .S(n275), .Z(n333) );
  MUX2_X1 U333 ( .A(A[2]), .B(A[3]), .S(n277), .Z(n346) );
  MUX2_X1 U334 ( .A(A[0]), .B(A[1]), .S(n277), .Z(n348) );
  NOR2_X1 U335 ( .A1(SH[4]), .A2(n357), .ZN(B[10]) );
  MUX2_X1 U336 ( .A(n308), .B(n265), .S(n264), .Z(n357) );
  MUX2_X1 U337 ( .A(n340), .B(n337), .S(n271), .Z(n309) );
  MUX2_X1 U338 ( .A(n352), .B(n350), .S(n275), .Z(n337) );
  MUX2_X1 U339 ( .A(A[9]), .B(A[10]), .S(n277), .Z(n350) );
  MUX2_X1 U340 ( .A(A[7]), .B(A[8]), .S(n277), .Z(n352) );
  MUX2_X1 U341 ( .A(n355), .B(n351), .S(n275), .Z(n340) );
  MUX2_X1 U342 ( .A(A[5]), .B(A[6]), .S(n277), .Z(n351) );
  MUX2_X1 U343 ( .A(A[3]), .B(A[4]), .S(n277), .Z(n355) );
  OR2_X1 U344 ( .A1(n339), .A2(SH[2]), .ZN(n308) );
  MUX2_X1 U345 ( .A(n358), .B(n276), .S(n275), .Z(n339) );
  MUX2_X1 U346 ( .A(A[1]), .B(A[2]), .S(n277), .Z(n354) );
  NOR2_X1 U347 ( .A1(SH[4]), .A2(n323), .ZN(B[0]) );
  NAND2_X1 U348 ( .A1(n283), .A2(n264), .ZN(n323) );
  NOR2_X1 U349 ( .A1(n353), .A2(SH[2]), .ZN(n283) );
  OR2_X1 U350 ( .A1(n358), .A2(SH[1]), .ZN(n353) );
  NAND2_X1 U351 ( .A1(A[0]), .A2(n277), .ZN(n358) );
endmodule


module fp_addsub_24_3_DW_lzd_0 ( a, enc, dec );
  input [20:0] a;
  output [5:0] enc;
  output [20:0] dec;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  INV_X4 U1 ( .A(n21), .ZN(n1) );
  INV_X4 U2 ( .A(a[18]), .ZN(n2) );
  INV_X4 U3 ( .A(a[17]), .ZN(n3) );
  INV_X4 U4 ( .A(a[16]), .ZN(n4) );
  INV_X4 U5 ( .A(a[15]), .ZN(n5) );
  INV_X4 U6 ( .A(a[14]), .ZN(n6) );
  INV_X4 U7 ( .A(a[13]), .ZN(n7) );
  INV_X4 U8 ( .A(n23), .ZN(n8) );
  INV_X4 U9 ( .A(a[10]), .ZN(n9) );
  INV_X4 U10 ( .A(a[9]), .ZN(n10) );
  INV_X4 U11 ( .A(a[6]), .ZN(n11) );
  INV_X4 U12 ( .A(a[5]), .ZN(n12) );
  INV_X4 U13 ( .A(n32), .ZN(n13) );
  INV_X4 U14 ( .A(a[2]), .ZN(n14) );
  INV_X4 U15 ( .A(n33), .ZN(n15) );
  INV_X4 U16 ( .A(a[0]), .ZN(n16) );
  AND3_X1 U17 ( .A1(enc[4]), .A2(n16), .A3(n17), .ZN(enc[5]) );
  NOR3_X1 U18 ( .A1(n8), .A2(n18), .A3(n19), .ZN(enc[4]) );
  NOR2_X1 U19 ( .A1(n20), .A2(n19), .ZN(enc[3]) );
  NAND2_X1 U20 ( .A1(n21), .A2(n22), .ZN(n19) );
  AOI211_X1 U21 ( .C1(n17), .C2(n16), .A(n8), .B(n18), .ZN(n20) );
  AOI21_X1 U22 ( .B1(n22), .B2(n24), .A(n1), .ZN(enc[2]) );
  NOR4_X1 U23 ( .A1(a[17]), .A2(a[18]), .A3(a[19]), .A4(a[20]), .ZN(n21) );
  OAI21_X1 U24 ( .B1(n17), .B2(n18), .A(n23), .ZN(n24) );
  NOR4_X1 U25 ( .A1(a[10]), .A2(a[11]), .A3(a[12]), .A4(a[9]), .ZN(n23) );
  OR4_X1 U26 ( .A1(a[5]), .A2(a[6]), .A3(a[7]), .A4(a[8]), .ZN(n18) );
  NOR4_X1 U27 ( .A1(a[1]), .A2(a[2]), .A3(a[3]), .A4(a[4]), .ZN(n17) );
  NOR4_X1 U28 ( .A1(a[13]), .A2(a[14]), .A3(a[15]), .A4(a[16]), .ZN(n22) );
  AOI211_X1 U29 ( .C1(n25), .C2(n26), .A(a[20]), .B(a[19]), .ZN(enc[1]) );
  OAI211_X1 U30 ( .C1(n27), .C2(n28), .A(n5), .B(n4), .ZN(n26) );
  NAND2_X1 U31 ( .A1(n7), .A2(n6), .ZN(n28) );
  NOR3_X1 U32 ( .A1(n29), .A2(a[12]), .A3(a[11]), .ZN(n27) );
  NOR3_X1 U33 ( .A1(n30), .A2(a[9]), .A3(a[10]), .ZN(n29) );
  AOI211_X1 U34 ( .C1(n31), .C2(n13), .A(a[8]), .B(a[7]), .ZN(n30) );
  AOI211_X1 U35 ( .C1(n14), .C2(n33), .A(a[3]), .B(a[4]), .ZN(n32) );
  NOR2_X1 U36 ( .A1(a[6]), .A2(a[5]), .ZN(n31) );
  NOR2_X1 U37 ( .A1(a[18]), .A2(a[17]), .ZN(n25) );
  NOR2_X1 U38 ( .A1(a[20]), .A2(n34), .ZN(enc[0]) );
  AOI21_X1 U39 ( .B1(n35), .B2(n2), .A(a[19]), .ZN(n34) );
  OAI21_X1 U40 ( .B1(a[16]), .B2(n36), .A(n3), .ZN(n35) );
  AOI21_X1 U41 ( .B1(n37), .B2(n6), .A(a[15]), .ZN(n36) );
  OAI21_X1 U42 ( .B1(a[12]), .B2(n38), .A(n7), .ZN(n37) );
  AOI21_X1 U43 ( .B1(n39), .B2(n9), .A(a[11]), .ZN(n38) );
  OAI21_X1 U44 ( .B1(a[8]), .B2(n40), .A(n10), .ZN(n39) );
  AOI21_X1 U45 ( .B1(n41), .B2(n11), .A(a[7]), .ZN(n40) );
  OAI21_X1 U46 ( .B1(a[4]), .B2(n42), .A(n12), .ZN(n41) );
  AOI21_X1 U47 ( .B1(n15), .B2(n14), .A(a[3]), .ZN(n42) );
  NOR2_X1 U48 ( .A1(n16), .A2(a[1]), .ZN(n33) );
endmodule


module fp_addsub_24_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n5, n6;
  wire   [21:5] carry;

  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  AND2_X4 U1 ( .A1(B[3]), .A2(A[3]), .ZN(n1) );
  BUF_X4 U2 ( .A(B[2]), .Z(SUM[2]) );
  BUF_X4 U3 ( .A(B[1]), .Z(SUM[1]) );
  BUF_X4 U4 ( .A(B[0]), .Z(SUM[0]) );
  XNOR2_X2 U5 ( .A(B[21]), .B(n5), .ZN(SUM[21]) );
  INV_X4 U6 ( .A(carry[21]), .ZN(n5) );
  INV_X4 U7 ( .A(A[3]), .ZN(n6) );
  XNOR2_X2 U8 ( .A(B[3]), .B(n6), .ZN(SUM[3]) );
endmodule


module fp_addsub_24_3_DW_rightsh_0 ( A, DATA_TC, SH, B );
  input [19:0] A;
  input [5:0] SH;
  output [19:0] B;
  input DATA_TC;
  wire   n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365;

  INV_X2 U229 ( .A(SH[0]), .ZN(n258) );
  INV_X4 U230 ( .A(n264), .ZN(n263) );
  INV_X4 U231 ( .A(SH[4]), .ZN(n264) );
  INV_X4 U232 ( .A(n259), .ZN(n260) );
  INV_X4 U233 ( .A(SH[1]), .ZN(n259) );
  INV_X4 U234 ( .A(n261), .ZN(n262) );
  INV_X4 U235 ( .A(SH[3]), .ZN(n261) );
  INV_X4 U236 ( .A(n289), .ZN(n265) );
  INV_X4 U237 ( .A(n341), .ZN(n266) );
  INV_X4 U238 ( .A(n342), .ZN(n267) );
  INV_X4 U239 ( .A(n292), .ZN(n268) );
  INV_X4 U240 ( .A(n328), .ZN(n269) );
  INV_X4 U241 ( .A(n356), .ZN(n270) );
  INV_X4 U242 ( .A(n363), .ZN(n271) );
  INV_X4 U243 ( .A(n338), .ZN(n272) );
  INV_X4 U244 ( .A(n340), .ZN(n273) );
  INV_X4 U245 ( .A(n352), .ZN(n274) );
  INV_X4 U246 ( .A(n353), .ZN(n275) );
  INV_X4 U247 ( .A(n357), .ZN(n276) );
  INV_X4 U248 ( .A(n330), .ZN(n277) );
  INV_X4 U249 ( .A(A[13]), .ZN(n278) );
  INV_X4 U250 ( .A(A[12]), .ZN(n279) );
  INV_X4 U251 ( .A(A[8]), .ZN(n280) );
  INV_X4 U252 ( .A(A[9]), .ZN(n281) );
  INV_X4 U253 ( .A(A[10]), .ZN(n282) );
  INV_X4 U254 ( .A(A[11]), .ZN(n283) );
  INV_X4 U255 ( .A(A[6]), .ZN(n284) );
  INV_X4 U256 ( .A(A[7]), .ZN(n285) );
  INV_X4 U257 ( .A(A[14]), .ZN(n286) );
  NOR3_X1 U258 ( .A1(n287), .A2(SH[5]), .A3(n263), .ZN(B[9]) );
  MUX2_X1 U259 ( .A(n288), .B(n265), .S(n262), .Z(n287) );
  NOR3_X1 U260 ( .A1(n290), .A2(SH[5]), .A3(n263), .ZN(B[8]) );
  MUX2_X1 U261 ( .A(n291), .B(n268), .S(n262), .Z(n290) );
  NOR3_X1 U262 ( .A1(n293), .A2(SH[5]), .A3(n263), .ZN(B[7]) );
  MUX2_X1 U263 ( .A(n294), .B(n295), .S(n262), .Z(n293) );
  MUX2_X1 U264 ( .A(n296), .B(n297), .S(SH[2]), .Z(n294) );
  NOR3_X1 U265 ( .A1(n298), .A2(SH[5]), .A3(n263), .ZN(B[6]) );
  MUX2_X1 U266 ( .A(n299), .B(n300), .S(n262), .Z(n298) );
  MUX2_X1 U267 ( .A(n301), .B(n302), .S(SH[2]), .Z(n299) );
  NOR3_X1 U268 ( .A1(n303), .A2(SH[5]), .A3(n263), .ZN(B[5]) );
  MUX2_X1 U269 ( .A(n304), .B(n305), .S(n262), .Z(n303) );
  MUX2_X1 U270 ( .A(n306), .B(n307), .S(SH[2]), .Z(n304) );
  NOR3_X1 U271 ( .A1(n308), .A2(SH[5]), .A3(n263), .ZN(B[4]) );
  MUX2_X1 U272 ( .A(n309), .B(n310), .S(n262), .Z(n308) );
  MUX2_X1 U273 ( .A(n311), .B(n312), .S(SH[2]), .Z(n309) );
  NOR2_X1 U274 ( .A1(SH[5]), .A2(n313), .ZN(B[3]) );
  MUX2_X1 U275 ( .A(n314), .B(n315), .S(n263), .Z(n313) );
  MUX2_X1 U276 ( .A(n316), .B(n317), .S(n262), .Z(n314) );
  MUX2_X1 U277 ( .A(n318), .B(n296), .S(SH[2]), .Z(n316) );
  MUX2_X1 U278 ( .A(n319), .B(n320), .S(n260), .Z(n296) );
  MUX2_X1 U279 ( .A(n273), .B(n272), .S(n260), .Z(n318) );
  NOR2_X1 U280 ( .A1(SH[5]), .A2(n321), .ZN(B[2]) );
  MUX2_X1 U281 ( .A(n322), .B(n323), .S(n263), .Z(n321) );
  MUX2_X1 U282 ( .A(n324), .B(n325), .S(n262), .Z(n322) );
  MUX2_X1 U283 ( .A(n269), .B(n301), .S(SH[2]), .Z(n324) );
  MUX2_X1 U284 ( .A(n326), .B(n327), .S(n260), .Z(n301) );
  MUX2_X1 U285 ( .A(n329), .B(n330), .S(n260), .Z(n328) );
  NOR2_X1 U286 ( .A1(SH[5]), .A2(n331), .ZN(B[1]) );
  MUX2_X1 U287 ( .A(n332), .B(n333), .S(n263), .Z(n331) );
  MUX2_X1 U288 ( .A(n334), .B(n288), .S(n262), .Z(n332) );
  MUX2_X1 U289 ( .A(n307), .B(n335), .S(SH[2]), .Z(n288) );
  MUX2_X1 U290 ( .A(n320), .B(n336), .S(n260), .Z(n307) );
  MUX2_X1 U291 ( .A(n281), .B(n282), .S(SH[0]), .Z(n320) );
  MUX2_X1 U292 ( .A(n337), .B(n306), .S(SH[2]), .Z(n334) );
  MUX2_X1 U293 ( .A(n272), .B(n319), .S(n260), .Z(n306) );
  MUX2_X1 U294 ( .A(n285), .B(n280), .S(SH[0]), .Z(n319) );
  MUX2_X1 U295 ( .A(A[5]), .B(A[6]), .S(SH[0]), .Z(n338) );
  MUX2_X1 U296 ( .A(n339), .B(n273), .S(n260), .Z(n337) );
  MUX2_X1 U297 ( .A(A[3]), .B(A[4]), .S(SH[0]), .Z(n340) );
  NAND2_X1 U298 ( .A1(A[2]), .A2(SH[0]), .ZN(n339) );
  NOR3_X1 U299 ( .A1(n315), .A2(SH[5]), .A3(n263), .ZN(B[19]) );
  NAND2_X1 U300 ( .A1(n341), .A2(n261), .ZN(n315) );
  NOR3_X1 U301 ( .A1(n323), .A2(SH[5]), .A3(n263), .ZN(B[18]) );
  NAND2_X1 U302 ( .A1(n342), .A2(n261), .ZN(n323) );
  NOR3_X1 U303 ( .A1(n333), .A2(SH[5]), .A3(n263), .ZN(B[17]) );
  NAND2_X1 U304 ( .A1(n289), .A2(n261), .ZN(n333) );
  NOR2_X1 U305 ( .A1(n343), .A2(SH[2]), .ZN(n289) );
  NOR3_X1 U306 ( .A1(n344), .A2(SH[5]), .A3(n263), .ZN(B[16]) );
  NOR4_X1 U307 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n295), .ZN(B[15]) );
  MUX2_X1 U308 ( .A(n345), .B(n346), .S(SH[2]), .Z(n295) );
  NOR4_X1 U309 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n300), .ZN(B[14]) );
  MUX2_X1 U310 ( .A(n270), .B(n347), .S(SH[2]), .Z(n300) );
  NOR4_X1 U311 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n305), .ZN(B[13]) );
  MUX2_X1 U312 ( .A(n335), .B(n343), .S(SH[2]), .Z(n305) );
  MUX2_X1 U313 ( .A(n274), .B(n348), .S(n260), .Z(n343) );
  MUX2_X1 U314 ( .A(n349), .B(n275), .S(n260), .Z(n335) );
  NOR4_X1 U315 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n310), .ZN(B[12]) );
  MUX2_X1 U316 ( .A(n350), .B(n271), .S(SH[2]), .Z(n310) );
  NOR3_X1 U317 ( .A1(n351), .A2(SH[5]), .A3(n263), .ZN(B[11]) );
  MUX2_X1 U318 ( .A(n317), .B(n266), .S(n262), .Z(n351) );
  NOR2_X1 U319 ( .A1(n346), .A2(SH[2]), .ZN(n341) );
  OR2_X1 U320 ( .A1(n348), .A2(n260), .ZN(n346) );
  NAND2_X1 U321 ( .A1(A[19]), .A2(n258), .ZN(n348) );
  MUX2_X1 U322 ( .A(n297), .B(n345), .S(SH[2]), .Z(n317) );
  MUX2_X1 U323 ( .A(n275), .B(n274), .S(n260), .Z(n345) );
  MUX2_X1 U324 ( .A(A[17]), .B(A[18]), .S(SH[0]), .Z(n352) );
  MUX2_X1 U325 ( .A(A[15]), .B(A[16]), .S(SH[0]), .Z(n353) );
  MUX2_X1 U326 ( .A(n336), .B(n349), .S(n260), .Z(n297) );
  MUX2_X1 U327 ( .A(n278), .B(n286), .S(SH[0]), .Z(n349) );
  MUX2_X1 U328 ( .A(n283), .B(n279), .S(SH[0]), .Z(n336) );
  NOR3_X1 U329 ( .A1(n354), .A2(SH[5]), .A3(n263), .ZN(B[10]) );
  MUX2_X1 U330 ( .A(n325), .B(n267), .S(n262), .Z(n354) );
  NOR2_X1 U331 ( .A1(n347), .A2(SH[2]), .ZN(n342) );
  NAND2_X1 U332 ( .A1(n355), .A2(n259), .ZN(n347) );
  MUX2_X1 U333 ( .A(n302), .B(n270), .S(SH[2]), .Z(n325) );
  MUX2_X1 U334 ( .A(n357), .B(n358), .S(n260), .Z(n356) );
  MUX2_X1 U335 ( .A(n359), .B(n360), .S(n260), .Z(n302) );
  NOR2_X1 U336 ( .A1(SH[5]), .A2(n361), .ZN(B[0]) );
  MUX2_X1 U337 ( .A(n362), .B(n344), .S(n263), .Z(n361) );
  NAND2_X1 U338 ( .A1(n292), .A2(n261), .ZN(n344) );
  NOR2_X1 U339 ( .A1(n271), .A2(SH[2]), .ZN(n292) );
  MUX2_X1 U340 ( .A(n358), .B(n355), .S(n260), .Z(n363) );
  MUX2_X1 U341 ( .A(A[18]), .B(A[19]), .S(SH[0]), .Z(n355) );
  MUX2_X1 U342 ( .A(A[16]), .B(A[17]), .S(SH[0]), .Z(n358) );
  MUX2_X1 U343 ( .A(n364), .B(n291), .S(n262), .Z(n362) );
  MUX2_X1 U344 ( .A(n312), .B(n350), .S(SH[2]), .Z(n291) );
  MUX2_X1 U345 ( .A(n360), .B(n276), .S(n260), .Z(n350) );
  MUX2_X1 U346 ( .A(A[14]), .B(A[15]), .S(SH[0]), .Z(n357) );
  MUX2_X1 U347 ( .A(n279), .B(n278), .S(SH[0]), .Z(n360) );
  MUX2_X1 U348 ( .A(n327), .B(n359), .S(n260), .Z(n312) );
  MUX2_X1 U349 ( .A(n282), .B(n283), .S(SH[0]), .Z(n359) );
  MUX2_X1 U350 ( .A(n280), .B(n281), .S(SH[0]), .Z(n327) );
  MUX2_X1 U351 ( .A(n365), .B(n311), .S(SH[2]), .Z(n364) );
  MUX2_X1 U352 ( .A(n277), .B(n326), .S(n260), .Z(n311) );
  MUX2_X1 U353 ( .A(n284), .B(n285), .S(SH[0]), .Z(n326) );
  MUX2_X1 U354 ( .A(A[4]), .B(A[5]), .S(SH[0]), .Z(n330) );
  NAND2_X1 U355 ( .A1(n260), .A2(n329), .ZN(n365) );
  MUX2_X1 U356 ( .A(A[2]), .B(A[3]), .S(SH[0]), .Z(n329) );
endmodule


module fp_addsub_24_3_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n12, n13, n1, n2, n3, n4, n5, n6, n7, n8, n10;
  wire   [5:1] carry;

  FA_X1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .S(n12) );
  FA_X1 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  NAND2_X2 U1 ( .A1(B[0]), .A2(n1), .ZN(carry[1]) );
  XNOR2_X2 U2 ( .A(n3), .B(A[0]), .ZN(n13) );
  INV_X4 U3 ( .A(A[0]), .ZN(n1) );
  INV_X4 U4 ( .A(B[4]), .ZN(n2) );
  INV_X4 U5 ( .A(B[0]), .ZN(n3) );
  INV_X4 U6 ( .A(B[5]), .ZN(n4) );
  INV_X4 U7 ( .A(B[3]), .ZN(n5) );
  INV_X4 U8 ( .A(B[2]), .ZN(n6) );
  INV_X4 U9 ( .A(B[1]), .ZN(n7) );
  INV_X1 U10 ( .A(n12), .ZN(n8) );
  INV_X4 U11 ( .A(n8), .ZN(DIFF[5]) );
  INV_X1 U12 ( .A(n13), .ZN(n10) );
  INV_X4 U13 ( .A(n10), .ZN(DIFF[0]) );
endmodule


module fp_addsub_24_3_DW_cmp_1 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE
 );
  input [22:0] A;
  input [22:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992;

  INV_X4 U463 ( .A(n940), .ZN(n909) );
  INV_X4 U464 ( .A(n986), .ZN(n910) );
  INV_X4 U465 ( .A(n984), .ZN(n911) );
  INV_X4 U466 ( .A(B[21]), .ZN(n912) );
  INV_X4 U467 ( .A(B[20]), .ZN(n913) );
  INV_X4 U468 ( .A(n990), .ZN(n914) );
  INV_X4 U469 ( .A(B[19]), .ZN(n915) );
  INV_X4 U470 ( .A(n988), .ZN(n916) );
  INV_X4 U471 ( .A(B[16]), .ZN(n917) );
  INV_X4 U472 ( .A(n983), .ZN(n918) );
  INV_X4 U473 ( .A(B[15]), .ZN(n919) );
  INV_X4 U474 ( .A(B[13]), .ZN(n920) );
  INV_X4 U475 ( .A(n977), .ZN(n921) );
  INV_X4 U476 ( .A(B[11]), .ZN(n922) );
  INV_X4 U477 ( .A(B[9]), .ZN(n923) );
  INV_X4 U478 ( .A(n951), .ZN(n924) );
  INV_X4 U479 ( .A(B[7]), .ZN(n925) );
  INV_X4 U480 ( .A(B[5]), .ZN(n926) );
  INV_X4 U481 ( .A(B[3]), .ZN(n927) );
  INV_X4 U482 ( .A(B[2]), .ZN(n928) );
  INV_X4 U483 ( .A(B[1]), .ZN(n929) );
  INV_X4 U484 ( .A(A[22]), .ZN(n930) );
  INV_X4 U485 ( .A(A[18]), .ZN(n931) );
  INV_X4 U486 ( .A(A[17]), .ZN(n932) );
  INV_X4 U487 ( .A(A[14]), .ZN(n933) );
  INV_X4 U488 ( .A(A[12]), .ZN(n934) );
  INV_X4 U489 ( .A(A[10]), .ZN(n935) );
  INV_X4 U490 ( .A(A[8]), .ZN(n936) );
  INV_X4 U491 ( .A(A[6]), .ZN(n937) );
  INV_X4 U492 ( .A(A[4]), .ZN(n938) );
  INV_X4 U493 ( .A(A[1]), .ZN(n939) );
  OAI22_X1 U494 ( .A1(n940), .A2(n941), .B1(n942), .B2(n943), .ZN(GE_LT_GT_LE)
         );
  OAI211_X1 U495 ( .C1(n944), .C2(n945), .A(n946), .B(n914), .ZN(n943) );
  NAND2_X1 U496 ( .A1(n947), .A2(n948), .ZN(n945) );
  OAI22_X1 U497 ( .A1(n949), .A2(n950), .B1(n924), .B2(n949), .ZN(n948) );
  OAI21_X1 U498 ( .B1(A[5]), .B2(n926), .A(n952), .ZN(n950) );
  NAND3_X1 U499 ( .A1(n953), .A2(n938), .A3(B[4]), .ZN(n952) );
  OAI21_X1 U500 ( .B1(A[7]), .B2(n925), .A(n954), .ZN(n949) );
  NAND3_X1 U501 ( .A1(n955), .A2(n937), .A3(B[6]), .ZN(n954) );
  OR3_X1 U502 ( .A1(n956), .A2(n951), .A3(n957), .ZN(n947) );
  OAI221_X1 U503 ( .B1(B[4]), .B2(n938), .C1(n958), .C2(n959), .A(n953), .ZN(
        n957) );
  NAND2_X1 U504 ( .A1(A[5]), .A2(n926), .ZN(n953) );
  AOI21_X1 U505 ( .B1(A[2]), .B2(n928), .A(n960), .ZN(n958) );
  OAI21_X1 U506 ( .B1(B[6]), .B2(n937), .A(n955), .ZN(n951) );
  NAND2_X1 U507 ( .A1(A[7]), .A2(n925), .ZN(n955) );
  AOI221_X1 U508 ( .B1(B[1]), .B2(n939), .C1(n961), .C2(B[0]), .A(n959), .ZN(
        n956) );
  OAI21_X1 U509 ( .B1(A[3]), .B2(n927), .A(n962), .ZN(n959) );
  OR3_X1 U510 ( .A1(n960), .A2(A[2]), .A3(n928), .ZN(n962) );
  AND2_X1 U511 ( .A1(A[3]), .A2(n927), .ZN(n960) );
  AOI21_X1 U512 ( .B1(A[1]), .B2(n929), .A(A[0]), .ZN(n961) );
  OAI211_X1 U513 ( .C1(n963), .C2(n944), .A(n909), .B(n964), .ZN(n942) );
  AOI21_X1 U514 ( .B1(A[16]), .B2(n917), .A(n965), .ZN(n964) );
  OAI21_X1 U515 ( .B1(n966), .B2(n967), .A(n968), .ZN(n944) );
  OAI22_X1 U516 ( .A1(n969), .A2(n970), .B1(n918), .B2(n969), .ZN(n968) );
  OAI21_X1 U517 ( .B1(A[13]), .B2(n920), .A(n971), .ZN(n970) );
  NAND3_X1 U518 ( .A1(n972), .A2(n934), .A3(B[12]), .ZN(n971) );
  OAI21_X1 U519 ( .B1(A[15]), .B2(n919), .A(n973), .ZN(n969) );
  NAND3_X1 U520 ( .A1(n974), .A2(n933), .A3(B[14]), .ZN(n973) );
  OAI22_X1 U521 ( .A1(n975), .A2(n976), .B1(n921), .B2(n975), .ZN(n967) );
  OAI21_X1 U522 ( .B1(A[9]), .B2(n923), .A(n978), .ZN(n976) );
  NAND3_X1 U523 ( .A1(n979), .A2(n936), .A3(B[8]), .ZN(n978) );
  OAI21_X1 U524 ( .B1(A[11]), .B2(n922), .A(n980), .ZN(n975) );
  NAND3_X1 U525 ( .A1(n981), .A2(n935), .A3(B[10]), .ZN(n980) );
  NOR3_X1 U526 ( .A1(n982), .A2(n966), .A3(n977), .ZN(n963) );
  OAI21_X1 U527 ( .B1(B[10]), .B2(n935), .A(n981), .ZN(n977) );
  NAND2_X1 U528 ( .A1(A[11]), .A2(n922), .ZN(n981) );
  OAI211_X1 U529 ( .C1(B[12]), .C2(n934), .A(n972), .B(n918), .ZN(n966) );
  OAI21_X1 U530 ( .B1(B[14]), .B2(n933), .A(n974), .ZN(n983) );
  NAND2_X1 U531 ( .A1(A[15]), .A2(n919), .ZN(n974) );
  NAND2_X1 U532 ( .A1(A[13]), .A2(n920), .ZN(n972) );
  OAI21_X1 U533 ( .B1(B[8]), .B2(n936), .A(n979), .ZN(n982) );
  NAND2_X1 U534 ( .A1(A[9]), .A2(n923), .ZN(n979) );
  AOI221_X1 U535 ( .B1(B[22]), .B2(n930), .C1(n984), .C2(n985), .A(n910), .ZN(
        n941) );
  OAI221_X1 U536 ( .B1(n987), .B2(n914), .C1(n916), .C2(n987), .A(n946), .ZN(
        n986) );
  AOI21_X1 U537 ( .B1(n913), .B2(A[20]), .A(n911), .ZN(n946) );
  AOI22_X1 U538 ( .A1(B[17]), .A2(n932), .B1(n989), .B2(B[16]), .ZN(n988) );
  NOR2_X1 U539 ( .A1(A[16]), .A2(n965), .ZN(n989) );
  NOR2_X1 U540 ( .A1(n932), .A2(B[17]), .ZN(n965) );
  OAI21_X1 U541 ( .B1(B[18]), .B2(n931), .A(n991), .ZN(n990) );
  OAI21_X1 U542 ( .B1(A[19]), .B2(n915), .A(n992), .ZN(n987) );
  NAND3_X1 U543 ( .A1(n991), .A2(n931), .A3(B[18]), .ZN(n992) );
  NAND2_X1 U544 ( .A1(A[19]), .A2(n915), .ZN(n991) );
  OAI22_X1 U545 ( .A1(A[21]), .A2(n912), .B1(A[20]), .B2(n913), .ZN(n985) );
  NAND2_X1 U546 ( .A1(A[21]), .A2(n912), .ZN(n984) );
  NOR2_X1 U547 ( .A1(n930), .A2(B[22]), .ZN(n940) );
endmodule


module fp_addsub_24_3_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [20:1] carry;

  XNOR2_X2 U1 ( .A(A[21]), .B(n1), .ZN(SUM[21]) );
  XNOR2_X2 U2 ( .A(A[20]), .B(n2), .ZN(SUM[20]) );
  NAND2_X2 U3 ( .A1(A[20]), .A2(carry[20]), .ZN(n1) );
  XNOR2_X2 U4 ( .A(A[19]), .B(n3), .ZN(SUM[19]) );
  NAND2_X2 U5 ( .A1(A[19]), .A2(carry[19]), .ZN(n2) );
  INV_X4 U6 ( .A(n2), .ZN(carry[20]) );
  XNOR2_X2 U7 ( .A(A[18]), .B(n4), .ZN(SUM[18]) );
  NAND2_X2 U8 ( .A1(A[18]), .A2(carry[18]), .ZN(n3) );
  INV_X4 U9 ( .A(n3), .ZN(carry[19]) );
  XNOR2_X2 U10 ( .A(A[17]), .B(n5), .ZN(SUM[17]) );
  NAND2_X2 U11 ( .A1(A[17]), .A2(carry[17]), .ZN(n4) );
  INV_X4 U12 ( .A(n4), .ZN(carry[18]) );
  XNOR2_X2 U13 ( .A(A[16]), .B(n6), .ZN(SUM[16]) );
  NAND2_X2 U14 ( .A1(A[16]), .A2(carry[16]), .ZN(n5) );
  INV_X4 U15 ( .A(n5), .ZN(carry[17]) );
  XNOR2_X2 U16 ( .A(A[15]), .B(n7), .ZN(SUM[15]) );
  NAND2_X2 U17 ( .A1(A[15]), .A2(carry[15]), .ZN(n6) );
  INV_X4 U18 ( .A(n6), .ZN(carry[16]) );
  XNOR2_X2 U19 ( .A(A[14]), .B(n8), .ZN(SUM[14]) );
  NAND2_X2 U20 ( .A1(A[14]), .A2(carry[14]), .ZN(n7) );
  INV_X4 U21 ( .A(n7), .ZN(carry[15]) );
  XNOR2_X2 U22 ( .A(A[13]), .B(n9), .ZN(SUM[13]) );
  NAND2_X2 U23 ( .A1(A[13]), .A2(carry[13]), .ZN(n8) );
  INV_X4 U24 ( .A(n8), .ZN(carry[14]) );
  XNOR2_X2 U25 ( .A(A[12]), .B(n10), .ZN(SUM[12]) );
  NAND2_X2 U26 ( .A1(A[12]), .A2(carry[12]), .ZN(n9) );
  INV_X4 U27 ( .A(n9), .ZN(carry[13]) );
  XNOR2_X2 U28 ( .A(A[11]), .B(n11), .ZN(SUM[11]) );
  NAND2_X2 U29 ( .A1(A[11]), .A2(carry[11]), .ZN(n10) );
  INV_X4 U30 ( .A(n10), .ZN(carry[12]) );
  XNOR2_X2 U31 ( .A(A[10]), .B(n12), .ZN(SUM[10]) );
  NAND2_X2 U32 ( .A1(A[10]), .A2(carry[10]), .ZN(n11) );
  INV_X4 U33 ( .A(n11), .ZN(carry[11]) );
  XNOR2_X2 U34 ( .A(A[9]), .B(n13), .ZN(SUM[9]) );
  NAND2_X2 U35 ( .A1(A[9]), .A2(carry[9]), .ZN(n12) );
  INV_X4 U36 ( .A(n12), .ZN(carry[10]) );
  XNOR2_X2 U37 ( .A(A[8]), .B(n14), .ZN(SUM[8]) );
  NAND2_X2 U38 ( .A1(A[8]), .A2(carry[8]), .ZN(n13) );
  INV_X4 U39 ( .A(n13), .ZN(carry[9]) );
  XNOR2_X2 U40 ( .A(A[7]), .B(n15), .ZN(SUM[7]) );
  NAND2_X2 U41 ( .A1(A[7]), .A2(carry[7]), .ZN(n14) );
  INV_X4 U42 ( .A(n14), .ZN(carry[8]) );
  XNOR2_X2 U43 ( .A(A[6]), .B(n16), .ZN(SUM[6]) );
  NAND2_X2 U44 ( .A1(A[6]), .A2(carry[6]), .ZN(n15) );
  INV_X4 U45 ( .A(n15), .ZN(carry[7]) );
  XNOR2_X2 U46 ( .A(A[5]), .B(n17), .ZN(SUM[5]) );
  NAND2_X2 U47 ( .A1(A[5]), .A2(carry[5]), .ZN(n16) );
  INV_X4 U48 ( .A(n16), .ZN(carry[6]) );
  XNOR2_X2 U49 ( .A(A[4]), .B(n18), .ZN(SUM[4]) );
  NAND2_X2 U50 ( .A1(A[4]), .A2(carry[4]), .ZN(n17) );
  INV_X4 U51 ( .A(n17), .ZN(carry[5]) );
  XNOR2_X2 U52 ( .A(A[3]), .B(n19), .ZN(SUM[3]) );
  NAND2_X2 U53 ( .A1(A[3]), .A2(carry[3]), .ZN(n18) );
  INV_X4 U54 ( .A(n18), .ZN(carry[4]) );
  XNOR2_X2 U55 ( .A(A[2]), .B(n20), .ZN(SUM[2]) );
  NAND2_X2 U56 ( .A1(A[2]), .A2(carry[2]), .ZN(n19) );
  INV_X4 U57 ( .A(n19), .ZN(carry[3]) );
  XNOR2_X2 U58 ( .A(A[1]), .B(n22), .ZN(SUM[1]) );
  NAND2_X2 U59 ( .A1(A[1]), .A2(carry[1]), .ZN(n20) );
  INV_X4 U60 ( .A(n20), .ZN(carry[2]) );
  INV_X4 U61 ( .A(A[0]), .ZN(n21) );
  XNOR2_X2 U62 ( .A(B[0]), .B(n21), .ZN(SUM[0]) );
  NAND2_X2 U63 ( .A1(B[0]), .A2(A[0]), .ZN(n22) );
  INV_X4 U64 ( .A(n22), .ZN(carry[1]) );
endmodule


module fp_addsub_24_3_DW_fp_addsub_0 ( a, b, rnd, op, z, status );
  input [23:0] a;
  input [23:0] b;
  input [2:0] rnd;
  output [23:0] z;
  output [7:0] status;
  input op;
  wire   swap, sig_large_17_, sig_small_17_, exp_large_int_0_, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21;
  wire   [22:0] large_p;
  wire   [16:0] small_p;
  wire   [5:0] exp_small_int;
  wire   [5:0] mag_exp_diff;
  wire   [20:1] sig_small_shifted;
  wire   [21:0] sig_aligned2;
  wire   [21:0] adder_output;
  wire   [5:0] num_of_zeros;
  wire   [4:0] num_of_zeros_used;
  wire   [21:1] a_norm;
  wire   [16:0] frac1;
  wire   [6:1] E1;
  wire   [6:1] Elz;
  wire   [5:2] add_274_carry;
  wire   [6:1] sub_275_carry;

  fp_addsub_24_3_DW01_inc_1 add_271 ( .A(a_norm[20:4]), .SUM(frac1) );
  fp_addsub_24_3_DW_leftsh_0 sll_244 ( .A(adder_output[21:1]), .SH(
        num_of_zeros_used), .B(a_norm) );
  fp_addsub_24_3_DW_lzd_0 U1 ( .a(adder_output[21:1]), .enc(num_of_zeros), 
        .dec({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21}) );
  fp_addsub_24_3_DW01_add_0 add_233 ( .A({1'b0, sig_large_17_, large_p[16:0], 
        1'b0, 1'b0, 1'b0}), .B(sig_aligned2), .CI(1'b0), .SUM({N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119}) );
  fp_addsub_24_3_DW_rightsh_0 srl_222_lsb_trim ( .A({sig_small_17_, small_p, 
        1'b0, 1'b0}), .DATA_TC(1'b0), .SH({mag_exp_diff[5:3], n84, 
        mag_exp_diff[1:0]}), .B(sig_small_shifted) );
  fp_addsub_24_3_DW01_sub_1 sub_218 ( .A({large_p[22:18], exp_large_int_0_}), 
        .B(exp_small_int), .CI(1'b0), .DIFF(mag_exp_diff) );
  fp_addsub_24_3_DW_cmp_1 lt_176 ( .A(a[22:0]), .B(b[22:0]), .TC(1'b0), 
        .GE_LT(1'b1), .GE_GT_EQ(1'b0), .GE_LT_GT_LE(swap) );
  fp_addsub_24_3_DW01_add_1 add_233_2 ( .A({N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, sig_aligned2[21]}), .CI(1'b0), .SUM(adder_output) );
  HA_X1 add_274_U1_1_1 ( .A(large_p[18]), .B(large_p[17]), .CO(
        add_274_carry[2]), .S(E1[1]) );
  HA_X1 add_274_U1_1_2 ( .A(large_p[19]), .B(add_274_carry[2]), .CO(
        add_274_carry[3]), .S(E1[2]) );
  HA_X1 add_274_U1_1_3 ( .A(large_p[20]), .B(add_274_carry[3]), .CO(
        add_274_carry[4]), .S(E1[3]) );
  HA_X1 add_274_U1_1_4 ( .A(large_p[21]), .B(add_274_carry[4]), .CO(
        add_274_carry[5]), .S(E1[4]) );
  HA_X1 add_274_U1_1_5 ( .A(large_p[22]), .B(add_274_carry[5]), .CO(E1[6]), 
        .S(E1[5]) );
  FA_X1 sub_275_U2_1 ( .A(E1[1]), .B(n89), .CI(sub_275_carry[1]), .CO(
        sub_275_carry[2]), .S(Elz[1]) );
  FA_X1 sub_275_U2_2 ( .A(E1[2]), .B(n90), .CI(sub_275_carry[2]), .CO(
        sub_275_carry[3]), .S(Elz[2]) );
  FA_X1 sub_275_U2_3 ( .A(E1[3]), .B(n91), .CI(sub_275_carry[3]), .CO(
        sub_275_carry[4]), .S(Elz[3]) );
  FA_X1 sub_275_U2_4 ( .A(E1[4]), .B(n92), .CI(sub_275_carry[4]), .CO(
        sub_275_carry[5]), .S(Elz[4]) );
  INV_X1 U4 ( .A(swap), .ZN(n87) );
  AND2_X4 U5 ( .A1(n81), .A2(n82), .ZN(n77) );
  XOR2_X2 U6 ( .A(n88), .B(n141), .Z(n78) );
  MUX2_X2 U7 ( .A(large_p[21]), .B(num_of_zeros[4]), .S(N141), .Z(
        num_of_zeros_used[4]) );
  NAND2_X2 U9 ( .A1(sig_aligned2[21]), .A2(n231), .ZN(n209) );
  INV_X4 U10 ( .A(sig_aligned2[21]), .ZN(n129) );
  INV_X4 U11 ( .A(n85), .ZN(n84) );
  INV_X4 U12 ( .A(mag_exp_diff[2]), .ZN(n85) );
  NAND2_X2 U13 ( .A1(n79), .A2(n80), .ZN(sub_275_carry[6]) );
  XNOR2_X2 U14 ( .A(E1[5]), .B(sub_275_carry[5]), .ZN(Elz[5]) );
  INV_X4 U15 ( .A(E1[5]), .ZN(n79) );
  INV_X4 U16 ( .A(sub_275_carry[5]), .ZN(n80) );
  XNOR2_X2 U17 ( .A(E1[6]), .B(sub_275_carry[6]), .ZN(Elz[6]) );
  INV_X4 U18 ( .A(E1[6]), .ZN(n81) );
  INV_X4 U19 ( .A(sub_275_carry[6]), .ZN(n82) );
  NAND2_X2 U20 ( .A1(num_of_zeros_used[0]), .A2(large_p[17]), .ZN(
        sub_275_carry[1]) );
  AND4_X4 U21 ( .A1(n109), .A2(n186), .A3(n187), .A4(n188), .ZN(n147) );
  NOR3_X2 U22 ( .A1(status[2]), .A2(status[4]), .A3(n189), .ZN(n148) );
  OR2_X4 U23 ( .A1(n231), .A2(sig_aligned2[21]), .ZN(n83) );
  OR2_X4 U24 ( .A1(n231), .A2(sig_aligned2[21]), .ZN(n210) );
  INV_X4 U31 ( .A(num_of_zeros_used[0]), .ZN(n88) );
  INV_X4 U32 ( .A(num_of_zeros_used[1]), .ZN(n89) );
  INV_X4 U33 ( .A(num_of_zeros_used[2]), .ZN(n90) );
  INV_X4 U34 ( .A(num_of_zeros_used[3]), .ZN(n91) );
  INV_X4 U35 ( .A(num_of_zeros_used[4]), .ZN(n92) );
  AOI22_X1 U36 ( .A1(large_p[21]), .A2(n106), .B1(large_p[22]), .B2(n104), 
        .ZN(n102) );
  NOR2_X1 U37 ( .A1(n104), .A2(large_p[22]), .ZN(n101) );
  NAND2_X1 U38 ( .A1(num_of_zeros[3]), .A2(n140), .ZN(n95) );
  NAND3_X1 U39 ( .A1(n95), .A2(n107), .A3(large_p[19]), .ZN(n93) );
  OAI21_X1 U40 ( .B1(num_of_zeros[3]), .B2(n140), .A(n93), .ZN(n94) );
  OAI21_X1 U41 ( .B1(large_p[19]), .B2(n107), .A(n95), .ZN(n98) );
  AOI21_X1 U42 ( .B1(num_of_zeros[1]), .B2(n143), .A(num_of_zeros[0]), .ZN(n96) );
  AOI22_X1 U43 ( .A1(large_p[18]), .A2(n103), .B1(n96), .B2(exp_large_int_0_), 
        .ZN(n97) );
  AOI22_X1 U44 ( .A1(n108), .A2(n98), .B1(n97), .B2(n108), .ZN(n99) );
  OAI211_X1 U45 ( .C1(large_p[21]), .C2(n106), .A(n105), .B(n99), .ZN(n100) );
  OAI21_X1 U46 ( .B1(n102), .B2(n101), .A(n100), .ZN(N141) );
  INV_X4 U47 ( .A(num_of_zeros[1]), .ZN(n103) );
  INV_X4 U48 ( .A(num_of_zeros[5]), .ZN(n104) );
  INV_X4 U49 ( .A(n101), .ZN(n105) );
  INV_X4 U50 ( .A(num_of_zeros[4]), .ZN(n106) );
  INV_X4 U51 ( .A(num_of_zeros[2]), .ZN(n107) );
  INV_X4 U52 ( .A(n94), .ZN(n108) );
  INV_X4 U53 ( .A(n148), .ZN(n109) );
  INV_X4 U54 ( .A(status[4]), .ZN(n110) );
  INV_X4 U55 ( .A(n169), .ZN(n111) );
  INV_X4 U56 ( .A(n189), .ZN(n112) );
  INV_X4 U57 ( .A(a_norm[21]), .ZN(n113) );
  INV_X4 U58 ( .A(n171), .ZN(n114) );
  INV_X4 U59 ( .A(Elz[5]), .ZN(n115) );
  INV_X4 U60 ( .A(Elz[4]), .ZN(n116) );
  INV_X4 U61 ( .A(Elz[3]), .ZN(n117) );
  INV_X4 U62 ( .A(Elz[2]), .ZN(n118) );
  INV_X4 U63 ( .A(Elz[1]), .ZN(n119) );
  INV_X4 U64 ( .A(n172), .ZN(n120) );
  INV_X4 U65 ( .A(n234), .ZN(n121) );
  INV_X4 U66 ( .A(n246), .ZN(n122) );
  INV_X4 U67 ( .A(n247), .ZN(n123) );
  INV_X4 U68 ( .A(n242), .ZN(n124) );
  INV_X4 U69 ( .A(n244), .ZN(n125) );
  INV_X4 U70 ( .A(n236), .ZN(n126) );
  INV_X4 U71 ( .A(n238), .ZN(n127) );
  INV_X4 U72 ( .A(n243), .ZN(n128) );
  INV_X4 U73 ( .A(n177), .ZN(n130) );
  INV_X4 U74 ( .A(n203), .ZN(n131) );
  INV_X4 U75 ( .A(n200), .ZN(n132) );
  INV_X4 U76 ( .A(small_p[2]), .ZN(n133) );
  INV_X4 U77 ( .A(n240), .ZN(n134) );
  INV_X4 U78 ( .A(n158), .ZN(n135) );
  INV_X4 U79 ( .A(sig_large_17_), .ZN(n136) );
  INV_X4 U80 ( .A(n191), .ZN(n137) );
  INV_X4 U81 ( .A(large_p[21]), .ZN(n138) );
  INV_X4 U82 ( .A(large_p[22]), .ZN(n139) );
  INV_X4 U83 ( .A(large_p[20]), .ZN(n140) );
  INV_X4 U84 ( .A(large_p[17]), .ZN(n141) );
  INV_X4 U85 ( .A(large_p[19]), .ZN(n142) );
  INV_X4 U86 ( .A(large_p[18]), .ZN(n143) );
  INV_X4 U87 ( .A(n202), .ZN(n144) );
  INV_X4 U88 ( .A(a[23]), .ZN(n145) );
  INV_X1 U89 ( .A(n146), .ZN(z[9]) );
  AOI22_X1 U90 ( .A1(a_norm[13]), .A2(n147), .B1(frac1[9]), .B2(n148), .ZN(
        n146) );
  INV_X1 U91 ( .A(n149), .ZN(z[8]) );
  AOI22_X1 U92 ( .A1(a_norm[12]), .A2(n147), .B1(frac1[8]), .B2(n148), .ZN(
        n149) );
  INV_X1 U93 ( .A(n150), .ZN(z[7]) );
  AOI22_X1 U94 ( .A1(a_norm[11]), .A2(n147), .B1(frac1[7]), .B2(n148), .ZN(
        n150) );
  INV_X1 U95 ( .A(n151), .ZN(z[6]) );
  AOI22_X1 U96 ( .A1(a_norm[10]), .A2(n147), .B1(frac1[6]), .B2(n148), .ZN(
        n151) );
  INV_X1 U97 ( .A(n152), .ZN(z[5]) );
  AOI22_X1 U98 ( .A1(a_norm[9]), .A2(n147), .B1(frac1[5]), .B2(n148), .ZN(n152) );
  INV_X1 U99 ( .A(n153), .ZN(z[4]) );
  AOI22_X1 U100 ( .A1(a_norm[8]), .A2(n147), .B1(frac1[4]), .B2(n148), .ZN(
        n153) );
  INV_X1 U101 ( .A(n154), .ZN(z[3]) );
  AOI22_X1 U102 ( .A1(a_norm[7]), .A2(n147), .B1(frac1[3]), .B2(n148), .ZN(
        n154) );
  INV_X1 U103 ( .A(n155), .ZN(z[2]) );
  AOI22_X1 U104 ( .A1(a_norm[6]), .A2(n147), .B1(frac1[2]), .B2(n148), .ZN(
        n155) );
  NOR4_X1 U105 ( .A1(status[2]), .A2(n120), .A3(n156), .A4(n157), .ZN(z[23])
         );
  NOR2_X1 U106 ( .A1(n158), .A2(n129), .ZN(n156) );
  OAI221_X1 U107 ( .B1(n139), .B2(n159), .C1(n160), .C2(n115), .A(n161), .ZN(
        z[22]) );
  NAND2_X1 U108 ( .A1(E1[5]), .A2(n162), .ZN(n161) );
  OAI221_X1 U109 ( .B1(n138), .B2(n159), .C1(n160), .C2(n116), .A(n163), .ZN(
        z[21]) );
  NAND2_X1 U110 ( .A1(E1[4]), .A2(n162), .ZN(n163) );
  OAI221_X1 U111 ( .B1(n140), .B2(n159), .C1(n160), .C2(n117), .A(n164), .ZN(
        z[20]) );
  NAND2_X1 U112 ( .A1(E1[3]), .A2(n162), .ZN(n164) );
  INV_X1 U113 ( .A(n165), .ZN(z[1]) );
  AOI22_X1 U114 ( .A1(a_norm[5]), .A2(n147), .B1(frac1[1]), .B2(n148), .ZN(
        n165) );
  OAI221_X1 U115 ( .B1(n142), .B2(n159), .C1(n160), .C2(n118), .A(n166), .ZN(
        z[19]) );
  NAND2_X1 U116 ( .A1(E1[2]), .A2(n162), .ZN(n166) );
  OAI221_X1 U117 ( .B1(n143), .B2(n159), .C1(n160), .C2(n119), .A(n167), .ZN(
        z[18]) );
  NAND2_X1 U118 ( .A1(E1[1]), .A2(n162), .ZN(n167) );
  OAI221_X1 U119 ( .B1(n141), .B2(n159), .C1(n160), .C2(n78), .A(n168), .ZN(
        z[17]) );
  NAND2_X1 U120 ( .A1(n141), .A2(n162), .ZN(n168) );
  AND2_X1 U121 ( .A1(n169), .A2(n170), .ZN(n162) );
  OAI211_X1 U122 ( .C1(n135), .C2(n171), .A(n172), .B(n173), .ZN(n160) );
  NOR2_X1 U123 ( .A1(n113), .A2(n170), .ZN(n173) );
  NAND2_X1 U124 ( .A1(n111), .A2(n170), .ZN(n159) );
  NAND3_X1 U125 ( .A1(n130), .A2(sig_aligned2[21]), .A3(n174), .ZN(n170) );
  AOI21_X1 U126 ( .B1(adder_output[2]), .B2(n175), .A(n136), .ZN(n174) );
  OAI22_X1 U127 ( .A1(sig_large_17_), .A2(n113), .B1(n176), .B2(n177), .ZN(
        n169) );
  INV_X1 U128 ( .A(n178), .ZN(z[16]) );
  AOI22_X1 U129 ( .A1(a_norm[20]), .A2(n147), .B1(frac1[16]), .B2(n148), .ZN(
        n178) );
  INV_X1 U130 ( .A(n179), .ZN(z[15]) );
  AOI22_X1 U131 ( .A1(a_norm[19]), .A2(n147), .B1(frac1[15]), .B2(n148), .ZN(
        n179) );
  INV_X1 U132 ( .A(n180), .ZN(z[14]) );
  AOI22_X1 U133 ( .A1(a_norm[18]), .A2(n147), .B1(frac1[14]), .B2(n148), .ZN(
        n180) );
  INV_X1 U134 ( .A(n181), .ZN(z[13]) );
  AOI22_X1 U135 ( .A1(a_norm[17]), .A2(n147), .B1(frac1[13]), .B2(n148), .ZN(
        n181) );
  INV_X1 U136 ( .A(n182), .ZN(z[12]) );
  AOI22_X1 U137 ( .A1(a_norm[16]), .A2(n147), .B1(frac1[12]), .B2(n148), .ZN(
        n182) );
  INV_X1 U138 ( .A(n183), .ZN(z[11]) );
  AOI22_X1 U139 ( .A1(a_norm[15]), .A2(n147), .B1(frac1[11]), .B2(n148), .ZN(
        n183) );
  INV_X1 U140 ( .A(n184), .ZN(z[10]) );
  AOI22_X1 U141 ( .A1(a_norm[14]), .A2(n147), .B1(frac1[10]), .B2(n148), .ZN(
        n184) );
  INV_X1 U142 ( .A(n185), .ZN(z[0]) );
  AOI221_X1 U143 ( .B1(n147), .B2(a_norm[4]), .C1(n148), .C2(frac1[0]), .A(
        status[2]), .ZN(n185) );
  NOR3_X1 U144 ( .A1(n135), .A2(status[4]), .A3(status[2]), .ZN(n188) );
  OAI21_X1 U145 ( .B1(n190), .B2(n177), .A(n110), .ZN(status[5]) );
  NOR4_X1 U146 ( .A1(adder_output[0]), .A2(a_norm[3]), .A3(a_norm[2]), .A4(
        a_norm[1]), .ZN(n190) );
  OAI21_X1 U147 ( .B1(status[2]), .B2(n186), .A(n110), .ZN(status[1]) );
  NOR3_X1 U148 ( .A1(n191), .A2(n176), .A3(n177), .ZN(status[4]) );
  AOI21_X1 U149 ( .B1(adder_output[20]), .B2(n175), .A(adder_output[21]), .ZN(
        n176) );
  NOR4_X1 U150 ( .A1(n192), .A2(n193), .A3(n194), .A4(n195), .ZN(n175) );
  NAND4_X1 U151 ( .A1(adder_output[5]), .A2(adder_output[4]), .A3(n196), .A4(
        n197), .ZN(n195) );
  AND4_X1 U152 ( .A1(adder_output[9]), .A2(adder_output[8]), .A3(
        adder_output[7]), .A4(adder_output[6]), .ZN(n197) );
  AND3_X1 U153 ( .A1(adder_output[19]), .A2(adder_output[18]), .A3(
        adder_output[3]), .ZN(n196) );
  NAND4_X1 U154 ( .A1(adder_output[17]), .A2(adder_output[16]), .A3(
        adder_output[15]), .A4(adder_output[14]), .ZN(n194) );
  NAND2_X1 U155 ( .A1(adder_output[13]), .A2(adder_output[12]), .ZN(n193) );
  NAND3_X1 U156 ( .A1(adder_output[10]), .A2(n112), .A3(adder_output[11]), 
        .ZN(n192) );
  NAND2_X1 U157 ( .A1(a_norm[3]), .A2(n198), .ZN(n189) );
  OR4_X1 U158 ( .A1(a_norm[1]), .A2(a_norm[2]), .A3(a_norm[4]), .A4(
        adder_output[0]), .ZN(n198) );
  OAI21_X1 U159 ( .B1(n129), .B2(n199), .A(n130), .ZN(status[2]) );
  OAI21_X1 U160 ( .B1(n187), .B2(n177), .A(n158), .ZN(status[0]) );
  OAI21_X1 U161 ( .B1(n200), .B2(n199), .A(n201), .ZN(n177) );
  NAND3_X1 U162 ( .A1(large_p[17]), .A2(n202), .A3(n137), .ZN(n201) );
  NAND4_X1 U163 ( .A1(exp_small_int[2]), .A2(n203), .A3(exp_small_int[1]), 
        .A4(n204), .ZN(n199) );
  AND3_X1 U164 ( .A1(exp_small_int[4]), .A2(exp_small_int[3]), .A3(
        exp_small_int[5]), .ZN(n204) );
  AOI21_X1 U165 ( .B1(sig_large_17_), .B2(n114), .A(n120), .ZN(n187) );
  NAND4_X1 U166 ( .A1(num_of_zeros[4]), .A2(num_of_zeros[3]), .A3(
        num_of_zeros[5]), .A4(n205), .ZN(n172) );
  AND3_X1 U167 ( .A1(num_of_zeros[2]), .A2(num_of_zeros[0]), .A3(
        num_of_zeros[1]), .ZN(n205) );
  NOR2_X1 U168 ( .A1(n206), .A2(n77), .ZN(n171) );
  AND4_X1 U169 ( .A1(n119), .A2(n118), .A3(n78), .A4(n207), .ZN(n206) );
  NOR4_X1 U170 ( .A1(Elz[6]), .A2(Elz[5]), .A3(Elz[4]), .A4(Elz[3]), .ZN(n207)
         );
  NAND2_X1 U171 ( .A1(n208), .A2(n209), .ZN(sig_aligned2[9]) );
  MUX2_X1 U172 ( .A(n129), .B(n210), .S(sig_small_shifted[9]), .Z(n208) );
  NAND2_X1 U173 ( .A1(n211), .A2(n209), .ZN(sig_aligned2[8]) );
  MUX2_X1 U174 ( .A(n129), .B(n83), .S(sig_small_shifted[8]), .Z(n211) );
  NAND2_X1 U175 ( .A1(n212), .A2(n209), .ZN(sig_aligned2[7]) );
  MUX2_X1 U176 ( .A(n129), .B(n210), .S(sig_small_shifted[7]), .Z(n212) );
  NAND2_X1 U177 ( .A1(n213), .A2(n209), .ZN(sig_aligned2[6]) );
  MUX2_X1 U178 ( .A(n129), .B(n83), .S(sig_small_shifted[6]), .Z(n213) );
  NAND2_X1 U179 ( .A1(n214), .A2(n209), .ZN(sig_aligned2[5]) );
  MUX2_X1 U180 ( .A(n129), .B(n210), .S(sig_small_shifted[5]), .Z(n214) );
  NAND2_X1 U181 ( .A1(n215), .A2(n209), .ZN(sig_aligned2[4]) );
  MUX2_X1 U182 ( .A(n129), .B(n83), .S(sig_small_shifted[4]), .Z(n215) );
  NAND2_X1 U183 ( .A1(n216), .A2(n209), .ZN(sig_aligned2[3]) );
  MUX2_X1 U184 ( .A(n129), .B(n210), .S(sig_small_shifted[3]), .Z(n216) );
  NAND2_X1 U185 ( .A1(n217), .A2(n209), .ZN(sig_aligned2[2]) );
  MUX2_X1 U186 ( .A(n129), .B(n83), .S(sig_small_shifted[2]), .Z(n217) );
  NAND2_X1 U187 ( .A1(n218), .A2(n209), .ZN(sig_aligned2[20]) );
  MUX2_X1 U188 ( .A(n129), .B(n210), .S(sig_small_shifted[20]), .Z(n218) );
  NAND2_X1 U189 ( .A1(n219), .A2(n209), .ZN(sig_aligned2[1]) );
  MUX2_X1 U190 ( .A(n129), .B(n83), .S(sig_small_shifted[1]), .Z(n219) );
  NAND2_X1 U191 ( .A1(n220), .A2(n209), .ZN(sig_aligned2[19]) );
  MUX2_X1 U192 ( .A(n129), .B(n210), .S(sig_small_shifted[19]), .Z(n220) );
  NAND2_X1 U193 ( .A1(n221), .A2(n209), .ZN(sig_aligned2[18]) );
  MUX2_X1 U194 ( .A(n129), .B(n83), .S(sig_small_shifted[18]), .Z(n221) );
  NAND2_X1 U195 ( .A1(n222), .A2(n209), .ZN(sig_aligned2[17]) );
  MUX2_X1 U196 ( .A(n129), .B(n210), .S(sig_small_shifted[17]), .Z(n222) );
  NAND2_X1 U197 ( .A1(n223), .A2(n209), .ZN(sig_aligned2[16]) );
  MUX2_X1 U198 ( .A(n129), .B(n83), .S(sig_small_shifted[16]), .Z(n223) );
  NAND2_X1 U199 ( .A1(n224), .A2(n209), .ZN(sig_aligned2[15]) );
  MUX2_X1 U200 ( .A(n129), .B(n210), .S(sig_small_shifted[15]), .Z(n224) );
  NAND2_X1 U201 ( .A1(n225), .A2(n209), .ZN(sig_aligned2[14]) );
  MUX2_X1 U202 ( .A(n129), .B(n83), .S(sig_small_shifted[14]), .Z(n225) );
  NAND2_X1 U203 ( .A1(n226), .A2(n209), .ZN(sig_aligned2[13]) );
  MUX2_X1 U204 ( .A(n129), .B(n210), .S(sig_small_shifted[13]), .Z(n226) );
  NAND2_X1 U205 ( .A1(n227), .A2(n209), .ZN(sig_aligned2[12]) );
  MUX2_X1 U206 ( .A(n129), .B(n83), .S(sig_small_shifted[12]), .Z(n227) );
  NAND2_X1 U207 ( .A1(n228), .A2(n209), .ZN(sig_aligned2[11]) );
  MUX2_X1 U208 ( .A(n129), .B(n210), .S(sig_small_shifted[11]), .Z(n228) );
  NAND2_X1 U209 ( .A1(n229), .A2(n209), .ZN(sig_aligned2[10]) );
  MUX2_X1 U210 ( .A(n129), .B(n210), .S(sig_small_shifted[10]), .Z(n229) );
  NAND2_X1 U211 ( .A1(n230), .A2(n209), .ZN(sig_aligned2[0]) );
  MUX2_X1 U212 ( .A(n83), .B(n129), .S(n232), .Z(n230) );
  AOI221_X1 U213 ( .B1(mag_exp_diff[1]), .B2(n122), .C1(mag_exp_diff[3]), .C2(
        n233), .A(n121), .ZN(n232) );
  AOI221_X1 U214 ( .B1(n235), .B2(n84), .C1(n126), .C2(mag_exp_diff[4]), .A(
        mag_exp_diff[5]), .ZN(n234) );
  AOI21_X1 U215 ( .B1(small_p[14]), .B2(n127), .A(n237), .ZN(n236) );
  OAI21_X1 U216 ( .B1(n133), .B2(n238), .A(n239), .ZN(n235) );
  NAND3_X1 U217 ( .A1(n239), .A2(n240), .A3(n241), .ZN(n233) );
  AOI222_X1 U218 ( .A1(small_p[6]), .A2(n127), .B1(n84), .B2(n125), .C1(
        mag_exp_diff[1]), .C2(n124), .ZN(n241) );
  AOI221_X1 U219 ( .B1(n128), .B2(n84), .C1(small_p[8]), .C2(mag_exp_diff[0]), 
        .A(small_p[7]), .ZN(n242) );
  AOI21_X1 U220 ( .B1(mag_exp_diff[0]), .B2(small_p[12]), .A(small_p[11]), 
        .ZN(n243) );
  AOI21_X1 U221 ( .B1(n127), .B2(small_p[10]), .A(n245), .ZN(n244) );
  NOR2_X1 U222 ( .A1(mag_exp_diff[1]), .A2(mag_exp_diff[0]), .ZN(n238) );
  NOR3_X1 U223 ( .A1(small_p[0]), .A2(mag_exp_diff[4]), .A3(small_p[1]), .ZN(
        n239) );
  AOI222_X1 U224 ( .A1(small_p[3]), .A2(n84), .B1(n123), .B2(mag_exp_diff[0]), 
        .C1(small_p[15]), .C2(mag_exp_diff[4]), .ZN(n246) );
  AOI221_X1 U225 ( .B1(n84), .B2(small_p[4]), .C1(mag_exp_diff[4]), .C2(
        small_p[16]), .A(small_p[0]), .ZN(n247) );
  NAND2_X1 U226 ( .A1(n248), .A2(n186), .ZN(n231) );
  NAND3_X1 U227 ( .A1(n137), .A2(large_p[17]), .A3(n144), .ZN(n186) );
  NAND4_X1 U228 ( .A1(large_p[18]), .A2(large_p[19]), .A3(n249), .A4(
        large_p[21]), .ZN(n191) );
  NOR2_X1 U229 ( .A1(n140), .A2(n139), .ZN(n249) );
  MUX2_X1 U230 ( .A(large_p[20]), .B(num_of_zeros[3]), .S(N141), .Z(
        num_of_zeros_used[3]) );
  MUX2_X1 U231 ( .A(large_p[19]), .B(num_of_zeros[2]), .S(N141), .Z(
        num_of_zeros_used[2]) );
  MUX2_X1 U232 ( .A(large_p[18]), .B(num_of_zeros[1]), .S(N141), .Z(
        num_of_zeros_used[1]) );
  MUX2_X1 U233 ( .A(exp_large_int_0_), .B(num_of_zeros[0]), .S(N141), .Z(
        num_of_zeros_used[0]) );
  NAND3_X1 U234 ( .A1(n248), .A2(sig_small_17_), .A3(n131), .ZN(
        exp_small_int[0]) );
  NAND2_X1 U235 ( .A1(n250), .A2(n132), .ZN(sig_small_17_) );
  NAND2_X1 U236 ( .A1(n200), .A2(n250), .ZN(n248) );
  NOR4_X1 U237 ( .A1(exp_small_int[1]), .A2(exp_small_int[2]), .A3(n203), .A4(
        n251), .ZN(n250) );
  OR3_X1 U238 ( .A1(exp_small_int[3]), .A2(exp_small_int[5]), .A3(
        exp_small_int[4]), .ZN(n251) );
  MUX2_X1 U239 ( .A(b[21]), .B(a[21]), .S(n86), .Z(exp_small_int[4]) );
  MUX2_X1 U240 ( .A(b[22]), .B(a[22]), .S(n86), .Z(exp_small_int[5]) );
  MUX2_X1 U241 ( .A(b[20]), .B(a[20]), .S(n86), .Z(exp_small_int[3]) );
  MUX2_X1 U242 ( .A(b[17]), .B(a[17]), .S(n86), .Z(n203) );
  MUX2_X1 U243 ( .A(b[19]), .B(a[19]), .S(n86), .Z(exp_small_int[2]) );
  MUX2_X1 U244 ( .A(b[18]), .B(a[18]), .S(n86), .Z(exp_small_int[1]) );
  NOR4_X1 U245 ( .A1(small_p[16]), .A2(n237), .A3(small_p[15]), .A4(
        small_p[14]), .ZN(n200) );
  MUX2_X1 U246 ( .A(b[14]), .B(a[14]), .S(n86), .Z(small_p[14]) );
  MUX2_X1 U247 ( .A(b[15]), .B(a[15]), .S(n86), .Z(small_p[15]) );
  NAND2_X1 U248 ( .A1(n252), .A2(n253), .ZN(n237) );
  NOR4_X1 U249 ( .A1(small_p[0]), .A2(small_p[1]), .A3(small_p[10]), .A4(
        small_p[11]), .ZN(n253) );
  MUX2_X1 U250 ( .A(b[11]), .B(a[11]), .S(n86), .Z(small_p[11]) );
  MUX2_X1 U251 ( .A(b[10]), .B(a[10]), .S(n86), .Z(small_p[10]) );
  MUX2_X1 U252 ( .A(b[1]), .B(a[1]), .S(n86), .Z(small_p[1]) );
  MUX2_X1 U253 ( .A(b[0]), .B(a[0]), .S(n86), .Z(small_p[0]) );
  NOR4_X1 U254 ( .A1(small_p[12]), .A2(small_p[13]), .A3(n134), .A4(n245), 
        .ZN(n252) );
  OR4_X1 U255 ( .A1(small_p[9]), .A2(small_p[8]), .A3(small_p[7]), .A4(
        small_p[6]), .ZN(n245) );
  MUX2_X1 U256 ( .A(b[6]), .B(a[6]), .S(n86), .Z(small_p[6]) );
  MUX2_X1 U257 ( .A(b[7]), .B(a[7]), .S(swap), .Z(small_p[7]) );
  MUX2_X1 U258 ( .A(b[8]), .B(a[8]), .S(n86), .Z(small_p[8]) );
  MUX2_X1 U259 ( .A(b[9]), .B(a[9]), .S(n86), .Z(small_p[9]) );
  NOR4_X1 U260 ( .A1(small_p[5]), .A2(small_p[4]), .A3(small_p[3]), .A4(
        small_p[2]), .ZN(n240) );
  MUX2_X1 U261 ( .A(b[2]), .B(a[2]), .S(n86), .Z(small_p[2]) );
  MUX2_X1 U262 ( .A(b[3]), .B(a[3]), .S(n86), .Z(small_p[3]) );
  MUX2_X1 U263 ( .A(b[4]), .B(a[4]), .S(n86), .Z(small_p[4]) );
  MUX2_X1 U264 ( .A(b[5]), .B(a[5]), .S(n86), .Z(small_p[5]) );
  MUX2_X1 U265 ( .A(b[13]), .B(a[13]), .S(n86), .Z(small_p[13]) );
  MUX2_X1 U266 ( .A(b[12]), .B(a[12]), .S(n86), .Z(small_p[12]) );
  MUX2_X1 U267 ( .A(b[16]), .B(a[16]), .S(n86), .Z(small_p[16]) );
  NAND3_X1 U268 ( .A1(n158), .A2(sig_large_17_), .A3(n141), .ZN(
        exp_large_int_0_) );
  NAND2_X1 U269 ( .A1(n254), .A2(n202), .ZN(sig_large_17_) );
  NAND2_X1 U270 ( .A1(n144), .A2(n254), .ZN(n158) );
  AND4_X1 U271 ( .A1(n143), .A2(n142), .A3(n141), .A4(n255), .ZN(n254) );
  NOR3_X1 U272 ( .A1(large_p[20]), .A2(large_p[22]), .A3(large_p[21]), .ZN(
        n255) );
  MUX2_X1 U273 ( .A(a[21]), .B(b[21]), .S(n86), .Z(large_p[21]) );
  MUX2_X1 U274 ( .A(a[22]), .B(b[22]), .S(n86), .Z(large_p[22]) );
  MUX2_X1 U275 ( .A(a[20]), .B(b[20]), .S(n86), .Z(large_p[20]) );
  MUX2_X1 U276 ( .A(a[17]), .B(b[17]), .S(n86), .Z(large_p[17]) );
  MUX2_X1 U277 ( .A(a[19]), .B(b[19]), .S(n86), .Z(large_p[19]) );
  MUX2_X1 U278 ( .A(a[18]), .B(b[18]), .S(n86), .Z(large_p[18]) );
  NAND3_X1 U279 ( .A1(n256), .A2(n257), .A3(n258), .ZN(n202) );
  NOR4_X1 U280 ( .A1(n259), .A2(n260), .A3(large_p[3]), .A4(large_p[4]), .ZN(
        n258) );
  MUX2_X1 U281 ( .A(a[4]), .B(b[4]), .S(n86), .Z(large_p[4]) );
  MUX2_X1 U282 ( .A(a[3]), .B(b[3]), .S(n86), .Z(large_p[3]) );
  OR3_X1 U283 ( .A1(large_p[1]), .A2(large_p[0]), .A3(large_p[2]), .ZN(n260)
         );
  MUX2_X1 U284 ( .A(a[2]), .B(b[2]), .S(n86), .Z(large_p[2]) );
  MUX2_X1 U285 ( .A(a[0]), .B(b[0]), .S(n86), .Z(large_p[0]) );
  MUX2_X1 U286 ( .A(a[1]), .B(b[1]), .S(n86), .Z(large_p[1]) );
  OR4_X1 U287 ( .A1(large_p[8]), .A2(large_p[7]), .A3(large_p[6]), .A4(
        large_p[5]), .ZN(n259) );
  MUX2_X1 U288 ( .A(a[5]), .B(b[5]), .S(n86), .Z(large_p[5]) );
  MUX2_X1 U289 ( .A(a[6]), .B(b[6]), .S(n86), .Z(large_p[6]) );
  MUX2_X1 U290 ( .A(a[7]), .B(b[7]), .S(n86), .Z(large_p[7]) );
  MUX2_X1 U291 ( .A(a[8]), .B(b[8]), .S(n86), .Z(large_p[8]) );
  NOR4_X1 U292 ( .A1(large_p[9]), .A2(large_p[10]), .A3(large_p[11]), .A4(
        large_p[12]), .ZN(n257) );
  MUX2_X1 U293 ( .A(a[12]), .B(b[12]), .S(n86), .Z(large_p[12]) );
  MUX2_X1 U294 ( .A(a[11]), .B(b[11]), .S(n86), .Z(large_p[11]) );
  MUX2_X1 U295 ( .A(a[10]), .B(b[10]), .S(n86), .Z(large_p[10]) );
  MUX2_X1 U296 ( .A(a[9]), .B(b[9]), .S(swap), .Z(large_p[9]) );
  NOR4_X1 U297 ( .A1(large_p[13]), .A2(large_p[14]), .A3(large_p[15]), .A4(
        large_p[16]), .ZN(n256) );
  MUX2_X1 U298 ( .A(a[16]), .B(b[16]), .S(swap), .Z(large_p[16]) );
  MUX2_X1 U299 ( .A(a[15]), .B(b[15]), .S(swap), .Z(large_p[15]) );
  MUX2_X1 U300 ( .A(a[14]), .B(b[14]), .S(swap), .Z(large_p[14]) );
  MUX2_X1 U301 ( .A(a[13]), .B(b[13]), .S(swap), .Z(large_p[13]) );
  XOR2_X1 U302 ( .A(n261), .B(n157), .Z(sig_aligned2[21]) );
  MUX2_X1 U303 ( .A(n145), .B(n262), .S(swap), .Z(n157) );
  MUX2_X1 U304 ( .A(n262), .B(n145), .S(swap), .Z(n261) );
  XNOR2_X1 U305 ( .A(b[23]), .B(op), .ZN(n262) );
  INV_X8 U8 ( .A(n87), .ZN(n86) );
endmodule


module fp_addsub_24_3 ( in1, in2, mode, opt, clock, status );
  input [23:0] in1;
  input [23:0] in2;
  output [23:0] opt;
  output [7:0] status;
  input mode, clock;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [23:0] z_inst_internal;
  wire   [5:0] status_inst_internal;
  wire   [23:0] z_inst_pipe1;
  wire   [5:0] status_inst_pipe1;
  wire   [23:0] z_inst_pipe2;
  wire   [5:0] status_inst_pipe2;
  assign status[7] = 1'b0;
  assign status[6] = 1'b0;
  assign status[3] = 1'b0;

  fp_addsub_24_3_DW_fp_addsub_0 U1 ( .a(in1), .b(in2), .rnd({1'b0, 1'b0, 1'b0}), .op(mode), .z(z_inst_internal), .status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, status_inst_internal[5:4], 
        SYNOPSYS_UNCONNECTED_3, status_inst_internal[2:0]}) );
  DFF_X1 status_inst_pipe1_reg_5_ ( .D(status_inst_internal[5]), .CK(clock), 
        .Q(status_inst_pipe1[5]) );
  DFF_X1 status_inst_pipe2_reg_5_ ( .D(status_inst_pipe1[5]), .CK(clock), .Q(
        status_inst_pipe2[5]) );
  DFF_X1 status_inst_pipe1_reg_4_ ( .D(status_inst_internal[4]), .CK(clock), 
        .Q(status_inst_pipe1[4]) );
  DFF_X1 status_inst_pipe2_reg_4_ ( .D(status_inst_pipe1[4]), .CK(clock), .Q(
        status_inst_pipe2[4]) );
  DFF_X1 status_inst_pipe1_reg_2_ ( .D(status_inst_internal[2]), .CK(clock), 
        .Q(status_inst_pipe1[2]) );
  DFF_X1 status_inst_pipe2_reg_2_ ( .D(status_inst_pipe1[2]), .CK(clock), .Q(
        status_inst_pipe2[2]) );
  DFF_X1 status_inst_pipe1_reg_1_ ( .D(status_inst_internal[1]), .CK(clock), 
        .Q(status_inst_pipe1[1]) );
  DFF_X1 status_inst_pipe2_reg_1_ ( .D(status_inst_pipe1[1]), .CK(clock), .Q(
        status_inst_pipe2[1]) );
  DFF_X1 status_inst_pipe1_reg_0_ ( .D(status_inst_internal[0]), .CK(clock), 
        .Q(status_inst_pipe1[0]) );
  DFF_X1 status_inst_pipe2_reg_0_ ( .D(status_inst_pipe1[0]), .CK(clock), .Q(
        status_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe1_reg_23_ ( .D(z_inst_internal[23]), .CK(clock), .Q(
        z_inst_pipe1[23]) );
  DFF_X1 z_inst_pipe2_reg_23_ ( .D(z_inst_pipe1[23]), .CK(clock), .Q(
        z_inst_pipe2[23]) );
  DFF_X1 z_inst_pipe1_reg_22_ ( .D(z_inst_internal[22]), .CK(clock), .Q(
        z_inst_pipe1[22]) );
  DFF_X1 z_inst_pipe2_reg_22_ ( .D(z_inst_pipe1[22]), .CK(clock), .Q(
        z_inst_pipe2[22]) );
  DFF_X1 z_inst_pipe1_reg_21_ ( .D(z_inst_internal[21]), .CK(clock), .Q(
        z_inst_pipe1[21]) );
  DFF_X1 z_inst_pipe2_reg_21_ ( .D(z_inst_pipe1[21]), .CK(clock), .Q(
        z_inst_pipe2[21]) );
  DFF_X1 z_inst_pipe1_reg_20_ ( .D(z_inst_internal[20]), .CK(clock), .Q(
        z_inst_pipe1[20]) );
  DFF_X1 z_inst_pipe2_reg_20_ ( .D(z_inst_pipe1[20]), .CK(clock), .Q(
        z_inst_pipe2[20]) );
  DFF_X1 z_inst_pipe1_reg_19_ ( .D(z_inst_internal[19]), .CK(clock), .Q(
        z_inst_pipe1[19]) );
  DFF_X1 z_inst_pipe2_reg_19_ ( .D(z_inst_pipe1[19]), .CK(clock), .Q(
        z_inst_pipe2[19]) );
  DFF_X1 z_inst_pipe1_reg_18_ ( .D(z_inst_internal[18]), .CK(clock), .Q(
        z_inst_pipe1[18]) );
  DFF_X1 z_inst_pipe2_reg_18_ ( .D(z_inst_pipe1[18]), .CK(clock), .Q(
        z_inst_pipe2[18]) );
  DFF_X1 z_inst_pipe1_reg_17_ ( .D(z_inst_internal[17]), .CK(clock), .Q(
        z_inst_pipe1[17]) );
  DFF_X1 z_inst_pipe2_reg_17_ ( .D(z_inst_pipe1[17]), .CK(clock), .Q(
        z_inst_pipe2[17]) );
  DFF_X1 z_inst_pipe1_reg_16_ ( .D(z_inst_internal[16]), .CK(clock), .Q(
        z_inst_pipe1[16]) );
  DFF_X1 z_inst_pipe2_reg_16_ ( .D(z_inst_pipe1[16]), .CK(clock), .Q(
        z_inst_pipe2[16]) );
  DFF_X1 z_inst_pipe1_reg_15_ ( .D(z_inst_internal[15]), .CK(clock), .Q(
        z_inst_pipe1[15]) );
  DFF_X1 z_inst_pipe2_reg_15_ ( .D(z_inst_pipe1[15]), .CK(clock), .Q(
        z_inst_pipe2[15]) );
  DFF_X1 z_inst_pipe1_reg_14_ ( .D(z_inst_internal[14]), .CK(clock), .Q(
        z_inst_pipe1[14]) );
  DFF_X1 z_inst_pipe2_reg_14_ ( .D(z_inst_pipe1[14]), .CK(clock), .Q(
        z_inst_pipe2[14]) );
  DFF_X1 z_inst_pipe1_reg_13_ ( .D(z_inst_internal[13]), .CK(clock), .Q(
        z_inst_pipe1[13]) );
  DFF_X1 z_inst_pipe2_reg_13_ ( .D(z_inst_pipe1[13]), .CK(clock), .Q(
        z_inst_pipe2[13]) );
  DFF_X1 z_inst_pipe1_reg_12_ ( .D(z_inst_internal[12]), .CK(clock), .Q(
        z_inst_pipe1[12]) );
  DFF_X1 z_inst_pipe2_reg_12_ ( .D(z_inst_pipe1[12]), .CK(clock), .Q(
        z_inst_pipe2[12]) );
  DFF_X1 z_inst_pipe1_reg_11_ ( .D(z_inst_internal[11]), .CK(clock), .Q(
        z_inst_pipe1[11]) );
  DFF_X1 z_inst_pipe2_reg_11_ ( .D(z_inst_pipe1[11]), .CK(clock), .Q(
        z_inst_pipe2[11]) );
  DFF_X1 z_inst_pipe1_reg_10_ ( .D(z_inst_internal[10]), .CK(clock), .Q(
        z_inst_pipe1[10]) );
  DFF_X1 z_inst_pipe2_reg_10_ ( .D(z_inst_pipe1[10]), .CK(clock), .Q(
        z_inst_pipe2[10]) );
  DFF_X1 z_inst_pipe1_reg_9_ ( .D(z_inst_internal[9]), .CK(clock), .Q(
        z_inst_pipe1[9]) );
  DFF_X1 z_inst_pipe2_reg_9_ ( .D(z_inst_pipe1[9]), .CK(clock), .Q(
        z_inst_pipe2[9]) );
  DFF_X1 z_inst_pipe1_reg_8_ ( .D(z_inst_internal[8]), .CK(clock), .Q(
        z_inst_pipe1[8]) );
  DFF_X1 z_inst_pipe2_reg_8_ ( .D(z_inst_pipe1[8]), .CK(clock), .Q(
        z_inst_pipe2[8]) );
  DFF_X1 z_inst_pipe1_reg_7_ ( .D(z_inst_internal[7]), .CK(clock), .Q(
        z_inst_pipe1[7]) );
  DFF_X1 z_inst_pipe2_reg_7_ ( .D(z_inst_pipe1[7]), .CK(clock), .Q(
        z_inst_pipe2[7]) );
  DFF_X1 z_inst_pipe1_reg_6_ ( .D(z_inst_internal[6]), .CK(clock), .Q(
        z_inst_pipe1[6]) );
  DFF_X1 z_inst_pipe2_reg_6_ ( .D(z_inst_pipe1[6]), .CK(clock), .Q(
        z_inst_pipe2[6]) );
  DFF_X1 z_inst_pipe1_reg_5_ ( .D(z_inst_internal[5]), .CK(clock), .Q(
        z_inst_pipe1[5]) );
  DFF_X1 z_inst_pipe2_reg_5_ ( .D(z_inst_pipe1[5]), .CK(clock), .Q(
        z_inst_pipe2[5]) );
  DFF_X1 z_inst_pipe1_reg_4_ ( .D(z_inst_internal[4]), .CK(clock), .Q(
        z_inst_pipe1[4]) );
  DFF_X1 z_inst_pipe2_reg_4_ ( .D(z_inst_pipe1[4]), .CK(clock), .Q(
        z_inst_pipe2[4]) );
  DFF_X1 z_inst_pipe1_reg_3_ ( .D(z_inst_internal[3]), .CK(clock), .Q(
        z_inst_pipe1[3]) );
  DFF_X1 z_inst_pipe2_reg_3_ ( .D(z_inst_pipe1[3]), .CK(clock), .Q(
        z_inst_pipe2[3]) );
  DFF_X1 z_inst_pipe1_reg_2_ ( .D(z_inst_internal[2]), .CK(clock), .Q(
        z_inst_pipe1[2]) );
  DFF_X1 z_inst_pipe2_reg_2_ ( .D(z_inst_pipe1[2]), .CK(clock), .Q(
        z_inst_pipe2[2]) );
  DFF_X1 z_inst_pipe1_reg_1_ ( .D(z_inst_internal[1]), .CK(clock), .Q(
        z_inst_pipe1[1]) );
  DFF_X1 z_inst_pipe2_reg_1_ ( .D(z_inst_pipe1[1]), .CK(clock), .Q(
        z_inst_pipe2[1]) );
  DFF_X1 z_inst_pipe1_reg_0_ ( .D(z_inst_internal[0]), .CK(clock), .Q(
        z_inst_pipe1[0]) );
  DFF_X1 z_inst_pipe2_reg_0_ ( .D(z_inst_pipe1[0]), .CK(clock), .Q(
        z_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe3_reg_23_ ( .D(z_inst_pipe2[23]), .CK(clock), .Q(opt[23])
         );
  DFF_X1 z_inst_pipe3_reg_22_ ( .D(z_inst_pipe2[22]), .CK(clock), .Q(opt[22])
         );
  DFF_X1 z_inst_pipe3_reg_21_ ( .D(z_inst_pipe2[21]), .CK(clock), .Q(opt[21])
         );
  DFF_X1 z_inst_pipe3_reg_20_ ( .D(z_inst_pipe2[20]), .CK(clock), .Q(opt[20])
         );
  DFF_X1 z_inst_pipe3_reg_19_ ( .D(z_inst_pipe2[19]), .CK(clock), .Q(opt[19])
         );
  DFF_X1 z_inst_pipe3_reg_18_ ( .D(z_inst_pipe2[18]), .CK(clock), .Q(opt[18])
         );
  DFF_X1 z_inst_pipe3_reg_17_ ( .D(z_inst_pipe2[17]), .CK(clock), .Q(opt[17])
         );
  DFF_X1 z_inst_pipe3_reg_16_ ( .D(z_inst_pipe2[16]), .CK(clock), .Q(opt[16])
         );
  DFF_X1 z_inst_pipe3_reg_15_ ( .D(z_inst_pipe2[15]), .CK(clock), .Q(opt[15])
         );
  DFF_X1 z_inst_pipe3_reg_14_ ( .D(z_inst_pipe2[14]), .CK(clock), .Q(opt[14])
         );
  DFF_X1 z_inst_pipe3_reg_13_ ( .D(z_inst_pipe2[13]), .CK(clock), .Q(opt[13])
         );
  DFF_X1 z_inst_pipe3_reg_12_ ( .D(z_inst_pipe2[12]), .CK(clock), .Q(opt[12])
         );
  DFF_X1 z_inst_pipe3_reg_11_ ( .D(z_inst_pipe2[11]), .CK(clock), .Q(opt[11])
         );
  DFF_X1 z_inst_pipe3_reg_10_ ( .D(z_inst_pipe2[10]), .CK(clock), .Q(opt[10])
         );
  DFF_X1 z_inst_pipe3_reg_9_ ( .D(z_inst_pipe2[9]), .CK(clock), .Q(opt[9]) );
  DFF_X1 z_inst_pipe3_reg_8_ ( .D(z_inst_pipe2[8]), .CK(clock), .Q(opt[8]) );
  DFF_X1 z_inst_pipe3_reg_7_ ( .D(z_inst_pipe2[7]), .CK(clock), .Q(opt[7]) );
  DFF_X1 z_inst_pipe3_reg_6_ ( .D(z_inst_pipe2[6]), .CK(clock), .Q(opt[6]) );
  DFF_X1 z_inst_pipe3_reg_5_ ( .D(z_inst_pipe2[5]), .CK(clock), .Q(opt[5]) );
  DFF_X1 z_inst_pipe3_reg_4_ ( .D(z_inst_pipe2[4]), .CK(clock), .Q(opt[4]) );
  DFF_X1 z_inst_pipe3_reg_3_ ( .D(z_inst_pipe2[3]), .CK(clock), .Q(opt[3]) );
  DFF_X1 z_inst_pipe3_reg_2_ ( .D(z_inst_pipe2[2]), .CK(clock), .Q(opt[2]) );
  DFF_X1 z_inst_pipe3_reg_1_ ( .D(z_inst_pipe2[1]), .CK(clock), .Q(opt[1]) );
  DFF_X1 z_inst_pipe3_reg_0_ ( .D(z_inst_pipe2[0]), .CK(clock), .Q(opt[0]) );
  DFF_X1 status_inst_pipe3_reg_5_ ( .D(status_inst_pipe2[5]), .CK(clock), .Q(
        status[5]) );
  DFF_X1 status_inst_pipe3_reg_4_ ( .D(status_inst_pipe2[4]), .CK(clock), .Q(
        status[4]) );
  DFF_X1 status_inst_pipe3_reg_2_ ( .D(status_inst_pipe2[2]), .CK(clock), .Q(
        status[2]) );
  DFF_X1 status_inst_pipe3_reg_1_ ( .D(status_inst_pipe2[1]), .CK(clock), .Q(
        status[1]) );
  DFF_X1 status_inst_pipe3_reg_0_ ( .D(status_inst_pipe2[0]), .CK(clock), .Q(
        status[0]) );
endmodule


module addsub_cplx_2 ( in1, in2, mode, op );
  input [47:0] in1;
  input [47:0] in2;
  output [47:0] op;
  input mode;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16;

  fp_addsub_24_4 Addr_r ( .in1(in1[47:24]), .in2(in2[47:24]), .mode(mode), 
        .opt(op[47:24]), .clock(1'b0), .status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
  fp_addsub_24_3 Addr_i ( .in1(in1[23:0]), .in2(in2[23:0]), .mode(mode), .opt(
        op[23:0]), .clock(1'b0), .status({SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}) );
endmodule


module fp_addsub_24_2_DW01_inc_1 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;

  wire   [16:2] carry;

  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[16]), .B(A[16]), .Z(SUM[16]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module fp_addsub_24_2_DW_leftsh_0 ( A, SH, B );
  input [20:0] A;
  input [4:0] SH;
  output [20:0] B;
  wire   n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358;

  INV_X4 U228 ( .A(SH[0]), .ZN(n285) );
  INV_X4 U229 ( .A(SH[1]), .ZN(n284) );
  INV_X4 U230 ( .A(SH[2]), .ZN(n281) );
  INV_X4 U231 ( .A(SH[3]), .ZN(n260) );
  NOR2_X1 U232 ( .A1(SH[4]), .A2(n256), .ZN(B[9]) );
  INV_X1 U233 ( .A(n257), .ZN(n256) );
  MUX2_X1 U234 ( .A(n258), .B(n259), .S(n260), .Z(n257) );
  NOR2_X1 U235 ( .A1(SH[4]), .A2(n261), .ZN(B[8]) );
  INV_X1 U236 ( .A(n262), .ZN(n261) );
  MUX2_X1 U237 ( .A(n263), .B(n264), .S(SH[3]), .Z(n262) );
  NOR3_X1 U238 ( .A1(n265), .A2(SH[4]), .A3(SH[3]), .ZN(B[7]) );
  INV_X1 U239 ( .A(n266), .ZN(n265) );
  NOR3_X1 U240 ( .A1(n267), .A2(SH[4]), .A3(SH[3]), .ZN(B[6]) );
  NOR3_X1 U241 ( .A1(n268), .A2(SH[4]), .A3(SH[3]), .ZN(B[5]) );
  NOR2_X1 U242 ( .A1(SH[4]), .A2(n269), .ZN(B[4]) );
  INV_X1 U243 ( .A(n270), .ZN(n269) );
  NOR2_X1 U244 ( .A1(SH[4]), .A2(n271), .ZN(B[3]) );
  INV_X1 U245 ( .A(n272), .ZN(n271) );
  NOR2_X1 U246 ( .A1(SH[4]), .A2(n273), .ZN(B[2]) );
  INV_X1 U247 ( .A(n274), .ZN(n273) );
  MUX2_X1 U248 ( .A(n275), .B(n270), .S(SH[4]), .Z(B[20]) );
  NOR2_X1 U249 ( .A1(n276), .A2(SH[3]), .ZN(n270) );
  MUX2_X1 U250 ( .A(n277), .B(n278), .S(n260), .Z(n275) );
  MUX2_X1 U251 ( .A(n279), .B(n280), .S(n281), .Z(n278) );
  MUX2_X1 U252 ( .A(n282), .B(n283), .S(n284), .Z(n280) );
  MUX2_X1 U253 ( .A(A[19]), .B(A[20]), .S(n285), .Z(n283) );
  NOR2_X1 U254 ( .A1(SH[4]), .A2(n286), .ZN(B[1]) );
  MUX2_X1 U255 ( .A(n287), .B(n272), .S(SH[4]), .Z(B[19]) );
  NOR2_X1 U256 ( .A1(n288), .A2(SH[3]), .ZN(n272) );
  MUX2_X1 U257 ( .A(n289), .B(n290), .S(n260), .Z(n287) );
  MUX2_X1 U258 ( .A(n291), .B(n292), .S(n281), .Z(n290) );
  MUX2_X1 U259 ( .A(n293), .B(n294), .S(n284), .Z(n292) );
  MUX2_X1 U260 ( .A(A[18]), .B(A[19]), .S(n285), .Z(n294) );
  MUX2_X1 U261 ( .A(n295), .B(n274), .S(SH[4]), .Z(B[18]) );
  NOR2_X1 U262 ( .A1(n296), .A2(SH[3]), .ZN(n274) );
  MUX2_X1 U263 ( .A(n297), .B(n298), .S(n260), .Z(n295) );
  MUX2_X1 U264 ( .A(n299), .B(n300), .S(n281), .Z(n298) );
  MUX2_X1 U265 ( .A(n301), .B(n282), .S(n284), .Z(n300) );
  MUX2_X1 U266 ( .A(A[18]), .B(A[17]), .S(SH[0]), .Z(n282) );
  MUX2_X1 U267 ( .A(n302), .B(n303), .S(SH[4]), .Z(B[17]) );
  INV_X1 U268 ( .A(n286), .ZN(n303) );
  NAND2_X1 U269 ( .A1(n258), .A2(n260), .ZN(n286) );
  NOR2_X1 U270 ( .A1(n304), .A2(SH[2]), .ZN(n258) );
  MUX2_X1 U271 ( .A(n259), .B(n305), .S(n260), .Z(n302) );
  MUX2_X1 U272 ( .A(n306), .B(n307), .S(n281), .Z(n305) );
  MUX2_X1 U273 ( .A(n308), .B(n293), .S(n284), .Z(n307) );
  MUX2_X1 U274 ( .A(A[17]), .B(A[16]), .S(SH[0]), .Z(n293) );
  MUX2_X1 U275 ( .A(n309), .B(n310), .S(SH[2]), .Z(n259) );
  MUX2_X1 U276 ( .A(n311), .B(n312), .S(SH[4]), .Z(B[16]) );
  INV_X1 U277 ( .A(n313), .ZN(n312) );
  MUX2_X1 U278 ( .A(n263), .B(n314), .S(n260), .Z(n311) );
  MUX2_X1 U279 ( .A(n315), .B(n279), .S(n281), .Z(n314) );
  MUX2_X1 U280 ( .A(n316), .B(n301), .S(n284), .Z(n279) );
  MUX2_X1 U281 ( .A(A[15]), .B(A[16]), .S(n285), .Z(n301) );
  MUX2_X1 U282 ( .A(n317), .B(n318), .S(n281), .Z(n263) );
  NOR2_X1 U283 ( .A1(SH[4]), .A2(n319), .ZN(B[15]) );
  INV_X1 U284 ( .A(n320), .ZN(n319) );
  MUX2_X1 U285 ( .A(n266), .B(n321), .S(n260), .Z(n320) );
  MUX2_X1 U286 ( .A(n322), .B(n291), .S(n281), .Z(n321) );
  MUX2_X1 U287 ( .A(n323), .B(n308), .S(n284), .Z(n291) );
  MUX2_X1 U288 ( .A(A[14]), .B(A[15]), .S(n285), .Z(n308) );
  MUX2_X1 U289 ( .A(n324), .B(n325), .S(n281), .Z(n266) );
  NOR2_X1 U290 ( .A1(SH[4]), .A2(n326), .ZN(B[14]) );
  MUX2_X1 U291 ( .A(n267), .B(n327), .S(n260), .Z(n326) );
  INV_X1 U292 ( .A(n328), .ZN(n327) );
  MUX2_X1 U293 ( .A(n329), .B(n299), .S(n281), .Z(n328) );
  MUX2_X1 U294 ( .A(n330), .B(n316), .S(n284), .Z(n299) );
  MUX2_X1 U295 ( .A(A[13]), .B(A[14]), .S(n285), .Z(n316) );
  MUX2_X1 U296 ( .A(n331), .B(n332), .S(n281), .Z(n267) );
  INV_X1 U297 ( .A(n333), .ZN(n332) );
  NOR2_X1 U298 ( .A1(SH[4]), .A2(n334), .ZN(B[13]) );
  MUX2_X1 U299 ( .A(n268), .B(n335), .S(n260), .Z(n334) );
  INV_X1 U300 ( .A(n336), .ZN(n335) );
  MUX2_X1 U301 ( .A(n309), .B(n306), .S(n281), .Z(n336) );
  MUX2_X1 U302 ( .A(n337), .B(n323), .S(n284), .Z(n306) );
  MUX2_X1 U303 ( .A(A[12]), .B(A[13]), .S(n285), .Z(n323) );
  MUX2_X1 U304 ( .A(n338), .B(n339), .S(n284), .Z(n309) );
  MUX2_X1 U305 ( .A(n304), .B(n340), .S(n281), .Z(n268) );
  INV_X1 U306 ( .A(n310), .ZN(n340) );
  MUX2_X1 U307 ( .A(n341), .B(n342), .S(n284), .Z(n310) );
  NAND2_X1 U308 ( .A1(n343), .A2(n284), .ZN(n304) );
  NOR2_X1 U309 ( .A1(SH[4]), .A2(n344), .ZN(B[12]) );
  MUX2_X1 U310 ( .A(n276), .B(n345), .S(n260), .Z(n344) );
  INV_X1 U311 ( .A(n277), .ZN(n345) );
  MUX2_X1 U312 ( .A(n318), .B(n315), .S(n281), .Z(n277) );
  MUX2_X1 U313 ( .A(n346), .B(n330), .S(n284), .Z(n315) );
  MUX2_X1 U314 ( .A(A[11]), .B(A[12]), .S(n285), .Z(n330) );
  MUX2_X1 U315 ( .A(n347), .B(n348), .S(n284), .Z(n318) );
  MUX2_X1 U316 ( .A(n349), .B(n350), .S(n281), .Z(n276) );
  INV_X1 U317 ( .A(n317), .ZN(n350) );
  MUX2_X1 U318 ( .A(n351), .B(n352), .S(n284), .Z(n317) );
  NOR2_X1 U319 ( .A1(SH[4]), .A2(n353), .ZN(B[11]) );
  MUX2_X1 U320 ( .A(n288), .B(n354), .S(n260), .Z(n353) );
  INV_X1 U321 ( .A(n289), .ZN(n354) );
  MUX2_X1 U322 ( .A(n325), .B(n322), .S(n281), .Z(n289) );
  MUX2_X1 U323 ( .A(n339), .B(n337), .S(n284), .Z(n322) );
  MUX2_X1 U324 ( .A(A[10]), .B(A[11]), .S(n285), .Z(n337) );
  MUX2_X1 U325 ( .A(A[8]), .B(A[9]), .S(n285), .Z(n339) );
  MUX2_X1 U326 ( .A(n342), .B(n338), .S(n284), .Z(n325) );
  MUX2_X1 U327 ( .A(A[6]), .B(A[7]), .S(n285), .Z(n338) );
  MUX2_X1 U328 ( .A(A[4]), .B(A[5]), .S(n285), .Z(n342) );
  NAND2_X1 U329 ( .A1(n324), .A2(n281), .ZN(n288) );
  MUX2_X1 U330 ( .A(n343), .B(n341), .S(n284), .Z(n324) );
  MUX2_X1 U331 ( .A(A[2]), .B(A[3]), .S(n285), .Z(n341) );
  MUX2_X1 U332 ( .A(A[0]), .B(A[1]), .S(n285), .Z(n343) );
  NOR2_X1 U333 ( .A1(SH[4]), .A2(n355), .ZN(B[10]) );
  MUX2_X1 U334 ( .A(n296), .B(n356), .S(n260), .Z(n355) );
  INV_X1 U335 ( .A(n297), .ZN(n356) );
  MUX2_X1 U336 ( .A(n333), .B(n329), .S(n281), .Z(n297) );
  MUX2_X1 U337 ( .A(n348), .B(n346), .S(n284), .Z(n329) );
  MUX2_X1 U338 ( .A(A[9]), .B(A[10]), .S(n285), .Z(n346) );
  MUX2_X1 U339 ( .A(A[7]), .B(A[8]), .S(n285), .Z(n348) );
  MUX2_X1 U340 ( .A(n352), .B(n347), .S(n284), .Z(n333) );
  MUX2_X1 U341 ( .A(A[5]), .B(A[6]), .S(n285), .Z(n347) );
  MUX2_X1 U342 ( .A(A[3]), .B(A[4]), .S(n285), .Z(n352) );
  OR2_X1 U343 ( .A1(n331), .A2(SH[2]), .ZN(n296) );
  MUX2_X1 U344 ( .A(n357), .B(n358), .S(n284), .Z(n331) );
  INV_X1 U345 ( .A(n351), .ZN(n358) );
  MUX2_X1 U346 ( .A(A[1]), .B(A[2]), .S(n285), .Z(n351) );
  NOR2_X1 U347 ( .A1(SH[4]), .A2(n313), .ZN(B[0]) );
  NAND2_X1 U348 ( .A1(n264), .A2(n260), .ZN(n313) );
  NOR2_X1 U349 ( .A1(n349), .A2(SH[2]), .ZN(n264) );
  OR2_X1 U350 ( .A1(n357), .A2(SH[1]), .ZN(n349) );
  NAND2_X1 U351 ( .A1(A[0]), .A2(n285), .ZN(n357) );
endmodule


module fp_addsub_24_2_DW_lzd_0 ( a, enc, dec );
  input [20:0] a;
  output [5:0] enc;
  output [20:0] dec;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  AND3_X1 U1 ( .A1(enc[4]), .A2(n1), .A3(n2), .ZN(enc[5]) );
  NOR3_X1 U2 ( .A1(n3), .A2(n4), .A3(n5), .ZN(enc[4]) );
  NOR2_X1 U3 ( .A1(n6), .A2(n5), .ZN(enc[3]) );
  NAND2_X1 U4 ( .A1(n7), .A2(n8), .ZN(n5) );
  AOI211_X1 U5 ( .C1(n2), .C2(n1), .A(n3), .B(n4), .ZN(n6) );
  INV_X1 U6 ( .A(n9), .ZN(n3) );
  AOI21_X1 U7 ( .B1(n8), .B2(n10), .A(n11), .ZN(enc[2]) );
  INV_X1 U8 ( .A(n7), .ZN(n11) );
  NOR4_X1 U9 ( .A1(a[17]), .A2(a[18]), .A3(a[19]), .A4(a[20]), .ZN(n7) );
  OAI21_X1 U10 ( .B1(n2), .B2(n4), .A(n9), .ZN(n10) );
  NOR4_X1 U11 ( .A1(a[10]), .A2(a[11]), .A3(a[12]), .A4(a[9]), .ZN(n9) );
  OR4_X1 U12 ( .A1(a[5]), .A2(a[6]), .A3(a[7]), .A4(a[8]), .ZN(n4) );
  NOR4_X1 U13 ( .A1(a[1]), .A2(a[2]), .A3(a[3]), .A4(a[4]), .ZN(n2) );
  NOR4_X1 U14 ( .A1(a[13]), .A2(a[14]), .A3(a[15]), .A4(a[16]), .ZN(n8) );
  AOI211_X1 U15 ( .C1(n12), .C2(n13), .A(a[20]), .B(a[19]), .ZN(enc[1]) );
  OAI211_X1 U16 ( .C1(n14), .C2(n15), .A(n16), .B(n17), .ZN(n13) );
  INV_X1 U17 ( .A(a[16]), .ZN(n17) );
  INV_X1 U18 ( .A(a[15]), .ZN(n16) );
  NAND2_X1 U19 ( .A1(n18), .A2(n19), .ZN(n15) );
  NOR3_X1 U20 ( .A1(n20), .A2(a[12]), .A3(a[11]), .ZN(n14) );
  NOR3_X1 U21 ( .A1(n21), .A2(a[9]), .A3(a[10]), .ZN(n20) );
  AOI211_X1 U22 ( .C1(n22), .C2(n23), .A(a[8]), .B(a[7]), .ZN(n21) );
  INV_X1 U23 ( .A(n24), .ZN(n23) );
  AOI211_X1 U24 ( .C1(n25), .C2(n26), .A(a[3]), .B(a[4]), .ZN(n24) );
  NOR2_X1 U25 ( .A1(a[6]), .A2(a[5]), .ZN(n22) );
  NOR2_X1 U26 ( .A1(a[18]), .A2(a[17]), .ZN(n12) );
  NOR2_X1 U27 ( .A1(a[20]), .A2(n27), .ZN(enc[0]) );
  AOI21_X1 U28 ( .B1(n28), .B2(n29), .A(a[19]), .ZN(n27) );
  INV_X1 U29 ( .A(a[18]), .ZN(n29) );
  OAI21_X1 U30 ( .B1(a[16]), .B2(n30), .A(n31), .ZN(n28) );
  INV_X1 U31 ( .A(a[17]), .ZN(n31) );
  AOI21_X1 U32 ( .B1(n32), .B2(n19), .A(a[15]), .ZN(n30) );
  INV_X1 U33 ( .A(a[14]), .ZN(n19) );
  OAI21_X1 U34 ( .B1(a[12]), .B2(n33), .A(n18), .ZN(n32) );
  INV_X1 U35 ( .A(a[13]), .ZN(n18) );
  AOI21_X1 U36 ( .B1(n34), .B2(n35), .A(a[11]), .ZN(n33) );
  INV_X1 U37 ( .A(a[10]), .ZN(n35) );
  OAI21_X1 U38 ( .B1(a[8]), .B2(n36), .A(n37), .ZN(n34) );
  INV_X1 U39 ( .A(a[9]), .ZN(n37) );
  AOI21_X1 U40 ( .B1(n38), .B2(n39), .A(a[7]), .ZN(n36) );
  INV_X1 U41 ( .A(a[6]), .ZN(n39) );
  OAI21_X1 U42 ( .B1(a[4]), .B2(n40), .A(n41), .ZN(n38) );
  INV_X1 U43 ( .A(a[5]), .ZN(n41) );
  AOI21_X1 U44 ( .B1(n42), .B2(n25), .A(a[3]), .ZN(n40) );
  INV_X1 U45 ( .A(a[2]), .ZN(n25) );
  INV_X1 U46 ( .A(n26), .ZN(n42) );
  NOR2_X1 U47 ( .A1(n1), .A2(a[1]), .ZN(n26) );
  INV_X1 U48 ( .A(a[0]), .ZN(n1) );
endmodule


module fp_addsub_24_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n6;
  wire   [21:4] carry;

  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  INV_X4 U1 ( .A(A[3]), .ZN(n1) );
  XNOR2_X2 U2 ( .A(B[3]), .B(n1), .ZN(SUM[3]) );
  NAND2_X2 U3 ( .A1(B[3]), .A2(A[3]), .ZN(n2) );
  INV_X4 U4 ( .A(n2), .ZN(carry[4]) );
  BUF_X4 U5 ( .A(B[2]), .Z(SUM[2]) );
  BUF_X4 U6 ( .A(B[1]), .Z(SUM[1]) );
  BUF_X4 U7 ( .A(B[0]), .Z(SUM[0]) );
  XNOR2_X2 U8 ( .A(B[21]), .B(n6), .ZN(SUM[21]) );
  INV_X4 U9 ( .A(carry[21]), .ZN(n6) );
endmodule


module fp_addsub_24_2_DW_rightsh_0 ( A, DATA_TC, SH, B );
  input [19:0] A;
  input [5:0] SH;
  output [19:0] B;
  input DATA_TC;
  wire   n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365;

  INV_X2 U229 ( .A(SH[0]), .ZN(n258) );
  INV_X4 U230 ( .A(n264), .ZN(n263) );
  INV_X4 U231 ( .A(SH[4]), .ZN(n264) );
  INV_X4 U232 ( .A(n259), .ZN(n260) );
  INV_X4 U233 ( .A(SH[1]), .ZN(n259) );
  INV_X4 U234 ( .A(n261), .ZN(n262) );
  INV_X4 U235 ( .A(SH[3]), .ZN(n261) );
  NOR3_X1 U236 ( .A1(n265), .A2(SH[5]), .A3(n263), .ZN(B[9]) );
  MUX2_X1 U237 ( .A(n266), .B(n267), .S(n262), .Z(n265) );
  INV_X1 U238 ( .A(n268), .ZN(n267) );
  NOR3_X1 U239 ( .A1(n269), .A2(SH[5]), .A3(n263), .ZN(B[8]) );
  MUX2_X1 U240 ( .A(n270), .B(n271), .S(n262), .Z(n269) );
  INV_X1 U241 ( .A(n272), .ZN(n271) );
  NOR3_X1 U242 ( .A1(n273), .A2(SH[5]), .A3(n263), .ZN(B[7]) );
  MUX2_X1 U243 ( .A(n274), .B(n275), .S(n262), .Z(n273) );
  MUX2_X1 U244 ( .A(n276), .B(n277), .S(SH[2]), .Z(n274) );
  NOR3_X1 U245 ( .A1(n278), .A2(SH[5]), .A3(n263), .ZN(B[6]) );
  MUX2_X1 U246 ( .A(n279), .B(n280), .S(n262), .Z(n278) );
  MUX2_X1 U247 ( .A(n281), .B(n282), .S(SH[2]), .Z(n279) );
  NOR3_X1 U248 ( .A1(n283), .A2(SH[5]), .A3(n263), .ZN(B[5]) );
  MUX2_X1 U249 ( .A(n284), .B(n285), .S(n262), .Z(n283) );
  MUX2_X1 U250 ( .A(n286), .B(n287), .S(SH[2]), .Z(n284) );
  NOR3_X1 U251 ( .A1(n288), .A2(SH[5]), .A3(n263), .ZN(B[4]) );
  MUX2_X1 U252 ( .A(n289), .B(n290), .S(n262), .Z(n288) );
  MUX2_X1 U253 ( .A(n291), .B(n292), .S(SH[2]), .Z(n289) );
  NOR2_X1 U254 ( .A1(SH[5]), .A2(n293), .ZN(B[3]) );
  MUX2_X1 U255 ( .A(n294), .B(n295), .S(n263), .Z(n293) );
  MUX2_X1 U256 ( .A(n296), .B(n297), .S(n262), .Z(n294) );
  MUX2_X1 U257 ( .A(n298), .B(n276), .S(SH[2]), .Z(n296) );
  MUX2_X1 U258 ( .A(n299), .B(n300), .S(n260), .Z(n276) );
  MUX2_X1 U259 ( .A(n301), .B(n302), .S(n260), .Z(n298) );
  NOR2_X1 U260 ( .A1(SH[5]), .A2(n303), .ZN(B[2]) );
  MUX2_X1 U261 ( .A(n304), .B(n305), .S(n263), .Z(n303) );
  MUX2_X1 U262 ( .A(n306), .B(n307), .S(n262), .Z(n304) );
  MUX2_X1 U263 ( .A(n308), .B(n281), .S(SH[2]), .Z(n306) );
  MUX2_X1 U264 ( .A(n309), .B(n310), .S(n260), .Z(n281) );
  INV_X1 U265 ( .A(n311), .ZN(n308) );
  MUX2_X1 U266 ( .A(n312), .B(n313), .S(n260), .Z(n311) );
  NOR2_X1 U267 ( .A1(SH[5]), .A2(n314), .ZN(B[1]) );
  MUX2_X1 U268 ( .A(n315), .B(n316), .S(n263), .Z(n314) );
  MUX2_X1 U269 ( .A(n317), .B(n266), .S(n262), .Z(n315) );
  MUX2_X1 U270 ( .A(n287), .B(n318), .S(SH[2]), .Z(n266) );
  MUX2_X1 U271 ( .A(n300), .B(n319), .S(n260), .Z(n287) );
  MUX2_X1 U272 ( .A(n320), .B(n321), .S(SH[0]), .Z(n300) );
  MUX2_X1 U273 ( .A(n322), .B(n286), .S(SH[2]), .Z(n317) );
  MUX2_X1 U274 ( .A(n302), .B(n299), .S(n260), .Z(n286) );
  MUX2_X1 U275 ( .A(n323), .B(n324), .S(SH[0]), .Z(n299) );
  INV_X1 U276 ( .A(n325), .ZN(n302) );
  MUX2_X1 U277 ( .A(A[5]), .B(A[6]), .S(SH[0]), .Z(n325) );
  MUX2_X1 U278 ( .A(n326), .B(n301), .S(n260), .Z(n322) );
  INV_X1 U279 ( .A(n327), .ZN(n301) );
  MUX2_X1 U280 ( .A(A[3]), .B(A[4]), .S(SH[0]), .Z(n327) );
  NAND2_X1 U281 ( .A1(A[2]), .A2(SH[0]), .ZN(n326) );
  NOR3_X1 U282 ( .A1(n295), .A2(SH[5]), .A3(n263), .ZN(B[19]) );
  NAND2_X1 U283 ( .A1(n328), .A2(n261), .ZN(n295) );
  NOR3_X1 U284 ( .A1(n305), .A2(SH[5]), .A3(n263), .ZN(B[18]) );
  NAND2_X1 U285 ( .A1(n329), .A2(n261), .ZN(n305) );
  NOR3_X1 U286 ( .A1(n316), .A2(SH[5]), .A3(n263), .ZN(B[17]) );
  NAND2_X1 U287 ( .A1(n268), .A2(n261), .ZN(n316) );
  NOR2_X1 U288 ( .A1(n330), .A2(SH[2]), .ZN(n268) );
  NOR3_X1 U289 ( .A1(n331), .A2(SH[5]), .A3(n263), .ZN(B[16]) );
  NOR4_X1 U290 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n275), .ZN(B[15]) );
  MUX2_X1 U291 ( .A(n332), .B(n333), .S(SH[2]), .Z(n275) );
  NOR4_X1 U292 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n280), .ZN(B[14]) );
  MUX2_X1 U293 ( .A(n334), .B(n335), .S(SH[2]), .Z(n280) );
  NOR4_X1 U294 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n285), .ZN(B[13]) );
  MUX2_X1 U295 ( .A(n318), .B(n330), .S(SH[2]), .Z(n285) );
  MUX2_X1 U296 ( .A(n336), .B(n337), .S(n260), .Z(n330) );
  MUX2_X1 U297 ( .A(n338), .B(n339), .S(n260), .Z(n318) );
  NOR4_X1 U298 ( .A1(SH[5]), .A2(n263), .A3(n262), .A4(n290), .ZN(B[12]) );
  MUX2_X1 U299 ( .A(n340), .B(n341), .S(SH[2]), .Z(n290) );
  NOR3_X1 U300 ( .A1(n342), .A2(SH[5]), .A3(n263), .ZN(B[11]) );
  MUX2_X1 U301 ( .A(n297), .B(n343), .S(n262), .Z(n342) );
  INV_X1 U302 ( .A(n328), .ZN(n343) );
  NOR2_X1 U303 ( .A1(n333), .A2(SH[2]), .ZN(n328) );
  OR2_X1 U304 ( .A1(n337), .A2(n260), .ZN(n333) );
  NAND2_X1 U305 ( .A1(A[19]), .A2(n258), .ZN(n337) );
  MUX2_X1 U306 ( .A(n277), .B(n332), .S(SH[2]), .Z(n297) );
  MUX2_X1 U307 ( .A(n339), .B(n336), .S(n260), .Z(n332) );
  INV_X1 U308 ( .A(n344), .ZN(n336) );
  MUX2_X1 U309 ( .A(A[17]), .B(A[18]), .S(SH[0]), .Z(n344) );
  INV_X1 U310 ( .A(n345), .ZN(n339) );
  MUX2_X1 U311 ( .A(A[15]), .B(A[16]), .S(SH[0]), .Z(n345) );
  MUX2_X1 U312 ( .A(n319), .B(n338), .S(n260), .Z(n277) );
  MUX2_X1 U313 ( .A(n346), .B(n347), .S(SH[0]), .Z(n338) );
  INV_X1 U314 ( .A(A[14]), .ZN(n347) );
  MUX2_X1 U315 ( .A(n348), .B(n349), .S(SH[0]), .Z(n319) );
  NOR3_X1 U316 ( .A1(n350), .A2(SH[5]), .A3(n263), .ZN(B[10]) );
  MUX2_X1 U317 ( .A(n307), .B(n351), .S(n262), .Z(n350) );
  INV_X1 U318 ( .A(n329), .ZN(n351) );
  NOR2_X1 U319 ( .A1(n335), .A2(SH[2]), .ZN(n329) );
  NAND2_X1 U320 ( .A1(n352), .A2(n259), .ZN(n335) );
  MUX2_X1 U321 ( .A(n282), .B(n334), .S(SH[2]), .Z(n307) );
  INV_X1 U322 ( .A(n353), .ZN(n334) );
  MUX2_X1 U323 ( .A(n354), .B(n355), .S(n260), .Z(n353) );
  MUX2_X1 U324 ( .A(n356), .B(n357), .S(n260), .Z(n282) );
  NOR2_X1 U325 ( .A1(SH[5]), .A2(n358), .ZN(B[0]) );
  MUX2_X1 U326 ( .A(n359), .B(n331), .S(n263), .Z(n358) );
  NAND2_X1 U327 ( .A1(n272), .A2(n261), .ZN(n331) );
  NOR2_X1 U328 ( .A1(n341), .A2(SH[2]), .ZN(n272) );
  INV_X1 U329 ( .A(n360), .ZN(n341) );
  MUX2_X1 U330 ( .A(n355), .B(n352), .S(n260), .Z(n360) );
  MUX2_X1 U331 ( .A(A[18]), .B(A[19]), .S(SH[0]), .Z(n352) );
  MUX2_X1 U332 ( .A(A[16]), .B(A[17]), .S(SH[0]), .Z(n355) );
  MUX2_X1 U333 ( .A(n361), .B(n270), .S(n262), .Z(n359) );
  MUX2_X1 U334 ( .A(n292), .B(n340), .S(SH[2]), .Z(n270) );
  MUX2_X1 U335 ( .A(n357), .B(n362), .S(n260), .Z(n340) );
  INV_X1 U336 ( .A(n354), .ZN(n362) );
  MUX2_X1 U337 ( .A(A[14]), .B(A[15]), .S(SH[0]), .Z(n354) );
  MUX2_X1 U338 ( .A(n349), .B(n346), .S(SH[0]), .Z(n357) );
  INV_X1 U339 ( .A(A[13]), .ZN(n346) );
  INV_X1 U340 ( .A(A[12]), .ZN(n349) );
  MUX2_X1 U341 ( .A(n310), .B(n356), .S(n260), .Z(n292) );
  MUX2_X1 U342 ( .A(n321), .B(n348), .S(SH[0]), .Z(n356) );
  INV_X1 U343 ( .A(A[11]), .ZN(n348) );
  INV_X1 U344 ( .A(A[10]), .ZN(n321) );
  MUX2_X1 U345 ( .A(n324), .B(n320), .S(SH[0]), .Z(n310) );
  INV_X1 U346 ( .A(A[9]), .ZN(n320) );
  INV_X1 U347 ( .A(A[8]), .ZN(n324) );
  MUX2_X1 U348 ( .A(n363), .B(n291), .S(SH[2]), .Z(n361) );
  MUX2_X1 U349 ( .A(n364), .B(n309), .S(n260), .Z(n291) );
  MUX2_X1 U350 ( .A(n365), .B(n323), .S(SH[0]), .Z(n309) );
  INV_X1 U351 ( .A(A[7]), .ZN(n323) );
  INV_X1 U352 ( .A(A[6]), .ZN(n365) );
  INV_X1 U353 ( .A(n313), .ZN(n364) );
  MUX2_X1 U354 ( .A(A[4]), .B(A[5]), .S(SH[0]), .Z(n313) );
  NAND2_X1 U355 ( .A1(n260), .A2(n312), .ZN(n363) );
  MUX2_X1 U356 ( .A(A[2]), .B(A[3]), .S(SH[0]), .Z(n312) );
endmodule


module fp_addsub_24_2_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n6, n7, n1, n2, n4;
  wire   [5:1] carry;
  wire   [5:0] B_not;

  FA_X1 U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .S(n6) );
  FA_X1 U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  FA_X1 U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  FA_X1 U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  FA_X1 U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  NAND2_X2 U1 ( .A1(B[0]), .A2(n1), .ZN(carry[1]) );
  XNOR2_X2 U2 ( .A(B_not[0]), .B(A[0]), .ZN(n7) );
  INV_X4 U3 ( .A(A[0]), .ZN(n1) );
  INV_X1 U4 ( .A(B[5]), .ZN(B_not[5]) );
  INV_X1 U5 ( .A(B[4]), .ZN(B_not[4]) );
  INV_X1 U6 ( .A(B[3]), .ZN(B_not[3]) );
  INV_X1 U7 ( .A(B[2]), .ZN(B_not[2]) );
  INV_X1 U8 ( .A(B[1]), .ZN(B_not[1]) );
  INV_X1 U9 ( .A(B[0]), .ZN(B_not[0]) );
  INV_X1 U10 ( .A(n6), .ZN(n2) );
  INV_X4 U11 ( .A(n2), .ZN(DIFF[5]) );
  INV_X1 U12 ( .A(n7), .ZN(n4) );
  INV_X4 U13 ( .A(n4), .ZN(DIFF[0]) );
endmodule


module fp_addsub_24_2_DW_cmp_1 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE
 );
  input [22:0] A;
  input [22:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992;

  INV_X4 U463 ( .A(B[21]), .ZN(n909) );
  INV_X4 U464 ( .A(B[20]), .ZN(n910) );
  INV_X4 U465 ( .A(B[19]), .ZN(n911) );
  INV_X4 U466 ( .A(B[16]), .ZN(n912) );
  INV_X4 U467 ( .A(B[15]), .ZN(n913) );
  INV_X4 U468 ( .A(B[13]), .ZN(n914) );
  INV_X4 U469 ( .A(B[11]), .ZN(n915) );
  INV_X4 U470 ( .A(B[9]), .ZN(n916) );
  INV_X4 U471 ( .A(B[7]), .ZN(n917) );
  INV_X4 U472 ( .A(B[5]), .ZN(n918) );
  INV_X4 U473 ( .A(B[3]), .ZN(n919) );
  INV_X4 U474 ( .A(B[2]), .ZN(n920) );
  INV_X4 U475 ( .A(B[1]), .ZN(n921) );
  OAI22_X1 U476 ( .A1(n922), .A2(n923), .B1(n924), .B2(n925), .ZN(GE_LT_GT_LE)
         );
  OAI211_X1 U477 ( .C1(n926), .C2(n927), .A(n928), .B(n929), .ZN(n925) );
  NAND2_X1 U478 ( .A1(n930), .A2(n931), .ZN(n927) );
  OAI22_X1 U479 ( .A1(n932), .A2(n933), .B1(n934), .B2(n932), .ZN(n931) );
  INV_X1 U480 ( .A(n935), .ZN(n934) );
  OAI21_X1 U481 ( .B1(A[5]), .B2(n918), .A(n936), .ZN(n933) );
  NAND3_X1 U482 ( .A1(n937), .A2(n938), .A3(B[4]), .ZN(n936) );
  OAI21_X1 U483 ( .B1(A[7]), .B2(n917), .A(n939), .ZN(n932) );
  NAND3_X1 U484 ( .A1(n940), .A2(n941), .A3(B[6]), .ZN(n939) );
  OR3_X1 U485 ( .A1(n942), .A2(n935), .A3(n943), .ZN(n930) );
  OAI221_X1 U486 ( .B1(B[4]), .B2(n938), .C1(n944), .C2(n945), .A(n937), .ZN(
        n943) );
  NAND2_X1 U487 ( .A1(A[5]), .A2(n918), .ZN(n937) );
  AOI21_X1 U488 ( .B1(A[2]), .B2(n920), .A(n946), .ZN(n944) );
  INV_X1 U489 ( .A(A[4]), .ZN(n938) );
  OAI21_X1 U490 ( .B1(B[6]), .B2(n941), .A(n940), .ZN(n935) );
  NAND2_X1 U491 ( .A1(A[7]), .A2(n917), .ZN(n940) );
  INV_X1 U492 ( .A(A[6]), .ZN(n941) );
  AOI221_X1 U493 ( .B1(B[1]), .B2(n947), .C1(n948), .C2(B[0]), .A(n945), .ZN(
        n942) );
  OAI21_X1 U494 ( .B1(A[3]), .B2(n919), .A(n949), .ZN(n945) );
  OR3_X1 U495 ( .A1(n946), .A2(A[2]), .A3(n920), .ZN(n949) );
  AND2_X1 U496 ( .A1(A[3]), .A2(n919), .ZN(n946) );
  AOI21_X1 U497 ( .B1(A[1]), .B2(n921), .A(A[0]), .ZN(n948) );
  INV_X1 U498 ( .A(A[1]), .ZN(n947) );
  OAI211_X1 U499 ( .C1(n950), .C2(n926), .A(n951), .B(n952), .ZN(n924) );
  AOI21_X1 U500 ( .B1(A[16]), .B2(n912), .A(n953), .ZN(n952) );
  INV_X1 U501 ( .A(n922), .ZN(n951) );
  OAI21_X1 U502 ( .B1(n954), .B2(n955), .A(n956), .ZN(n926) );
  OAI22_X1 U503 ( .A1(n957), .A2(n958), .B1(n959), .B2(n957), .ZN(n956) );
  OAI21_X1 U504 ( .B1(A[13]), .B2(n914), .A(n960), .ZN(n958) );
  NAND3_X1 U505 ( .A1(n961), .A2(n962), .A3(B[12]), .ZN(n960) );
  OAI21_X1 U506 ( .B1(A[15]), .B2(n913), .A(n963), .ZN(n957) );
  NAND3_X1 U507 ( .A1(n964), .A2(n965), .A3(B[14]), .ZN(n963) );
  OAI22_X1 U508 ( .A1(n966), .A2(n967), .B1(n968), .B2(n966), .ZN(n955) );
  INV_X1 U509 ( .A(n969), .ZN(n968) );
  OAI21_X1 U510 ( .B1(A[9]), .B2(n916), .A(n970), .ZN(n967) );
  NAND3_X1 U511 ( .A1(n971), .A2(n972), .A3(B[8]), .ZN(n970) );
  OAI21_X1 U512 ( .B1(A[11]), .B2(n915), .A(n973), .ZN(n966) );
  NAND3_X1 U513 ( .A1(n974), .A2(n975), .A3(B[10]), .ZN(n973) );
  NOR3_X1 U514 ( .A1(n976), .A2(n954), .A3(n969), .ZN(n950) );
  OAI21_X1 U515 ( .B1(B[10]), .B2(n975), .A(n974), .ZN(n969) );
  NAND2_X1 U516 ( .A1(A[11]), .A2(n915), .ZN(n974) );
  INV_X1 U517 ( .A(A[10]), .ZN(n975) );
  OAI211_X1 U518 ( .C1(B[12]), .C2(n962), .A(n961), .B(n959), .ZN(n954) );
  INV_X1 U519 ( .A(n977), .ZN(n959) );
  OAI21_X1 U520 ( .B1(B[14]), .B2(n965), .A(n964), .ZN(n977) );
  NAND2_X1 U521 ( .A1(A[15]), .A2(n913), .ZN(n964) );
  INV_X1 U522 ( .A(A[14]), .ZN(n965) );
  NAND2_X1 U523 ( .A1(A[13]), .A2(n914), .ZN(n961) );
  INV_X1 U524 ( .A(A[12]), .ZN(n962) );
  OAI21_X1 U525 ( .B1(B[8]), .B2(n972), .A(n971), .ZN(n976) );
  NAND2_X1 U526 ( .A1(A[9]), .A2(n916), .ZN(n971) );
  INV_X1 U527 ( .A(A[8]), .ZN(n972) );
  AOI221_X1 U528 ( .B1(B[22]), .B2(n978), .C1(n979), .C2(n980), .A(n981), .ZN(
        n923) );
  INV_X1 U529 ( .A(n982), .ZN(n981) );
  OAI221_X1 U530 ( .B1(n983), .B2(n929), .C1(n984), .C2(n983), .A(n928), .ZN(
        n982) );
  AOI21_X1 U531 ( .B1(n910), .B2(A[20]), .A(n985), .ZN(n928) );
  INV_X1 U532 ( .A(n979), .ZN(n985) );
  INV_X1 U533 ( .A(n986), .ZN(n984) );
  AOI22_X1 U534 ( .A1(B[17]), .A2(n987), .B1(n988), .B2(B[16]), .ZN(n986) );
  NOR2_X1 U535 ( .A1(A[16]), .A2(n953), .ZN(n988) );
  NOR2_X1 U536 ( .A1(n987), .A2(B[17]), .ZN(n953) );
  INV_X1 U537 ( .A(A[17]), .ZN(n987) );
  INV_X1 U538 ( .A(n989), .ZN(n929) );
  OAI21_X1 U539 ( .B1(B[18]), .B2(n990), .A(n991), .ZN(n989) );
  OAI21_X1 U540 ( .B1(A[19]), .B2(n911), .A(n992), .ZN(n983) );
  NAND3_X1 U541 ( .A1(n991), .A2(n990), .A3(B[18]), .ZN(n992) );
  INV_X1 U542 ( .A(A[18]), .ZN(n990) );
  NAND2_X1 U543 ( .A1(A[19]), .A2(n911), .ZN(n991) );
  OAI22_X1 U544 ( .A1(A[21]), .A2(n909), .B1(A[20]), .B2(n910), .ZN(n980) );
  NAND2_X1 U545 ( .A1(A[21]), .A2(n909), .ZN(n979) );
  NOR2_X1 U546 ( .A1(n978), .A2(B[22]), .ZN(n922) );
  INV_X1 U547 ( .A(A[22]), .ZN(n978) );
endmodule


module fp_addsub_24_2_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [20:1] carry;

  XNOR2_X2 U1 ( .A(A[21]), .B(n1), .ZN(SUM[21]) );
  XNOR2_X2 U2 ( .A(A[20]), .B(n2), .ZN(SUM[20]) );
  NAND2_X2 U3 ( .A1(A[20]), .A2(carry[20]), .ZN(n1) );
  XNOR2_X2 U4 ( .A(A[19]), .B(n3), .ZN(SUM[19]) );
  NAND2_X2 U5 ( .A1(A[19]), .A2(carry[19]), .ZN(n2) );
  INV_X4 U6 ( .A(n2), .ZN(carry[20]) );
  XNOR2_X2 U7 ( .A(A[18]), .B(n4), .ZN(SUM[18]) );
  NAND2_X2 U8 ( .A1(A[18]), .A2(carry[18]), .ZN(n3) );
  INV_X4 U9 ( .A(n3), .ZN(carry[19]) );
  XNOR2_X2 U10 ( .A(A[17]), .B(n5), .ZN(SUM[17]) );
  NAND2_X2 U11 ( .A1(A[17]), .A2(carry[17]), .ZN(n4) );
  INV_X4 U12 ( .A(n4), .ZN(carry[18]) );
  XNOR2_X2 U13 ( .A(A[16]), .B(n6), .ZN(SUM[16]) );
  NAND2_X2 U14 ( .A1(A[16]), .A2(carry[16]), .ZN(n5) );
  INV_X4 U15 ( .A(n5), .ZN(carry[17]) );
  XNOR2_X2 U16 ( .A(A[15]), .B(n7), .ZN(SUM[15]) );
  NAND2_X2 U17 ( .A1(A[15]), .A2(carry[15]), .ZN(n6) );
  INV_X4 U18 ( .A(n6), .ZN(carry[16]) );
  XNOR2_X2 U19 ( .A(A[14]), .B(n8), .ZN(SUM[14]) );
  NAND2_X2 U20 ( .A1(A[14]), .A2(carry[14]), .ZN(n7) );
  INV_X4 U21 ( .A(n7), .ZN(carry[15]) );
  XNOR2_X2 U22 ( .A(A[13]), .B(n9), .ZN(SUM[13]) );
  NAND2_X2 U23 ( .A1(A[13]), .A2(carry[13]), .ZN(n8) );
  INV_X4 U24 ( .A(n8), .ZN(carry[14]) );
  XNOR2_X2 U25 ( .A(A[12]), .B(n10), .ZN(SUM[12]) );
  NAND2_X2 U26 ( .A1(A[12]), .A2(carry[12]), .ZN(n9) );
  INV_X4 U27 ( .A(n9), .ZN(carry[13]) );
  XNOR2_X2 U28 ( .A(A[11]), .B(n11), .ZN(SUM[11]) );
  NAND2_X2 U29 ( .A1(A[11]), .A2(carry[11]), .ZN(n10) );
  INV_X4 U30 ( .A(n10), .ZN(carry[12]) );
  XNOR2_X2 U31 ( .A(A[10]), .B(n12), .ZN(SUM[10]) );
  NAND2_X2 U32 ( .A1(A[10]), .A2(carry[10]), .ZN(n11) );
  INV_X4 U33 ( .A(n11), .ZN(carry[11]) );
  XNOR2_X2 U34 ( .A(A[9]), .B(n13), .ZN(SUM[9]) );
  NAND2_X2 U35 ( .A1(A[9]), .A2(carry[9]), .ZN(n12) );
  INV_X4 U36 ( .A(n12), .ZN(carry[10]) );
  XNOR2_X2 U37 ( .A(A[8]), .B(n14), .ZN(SUM[8]) );
  NAND2_X2 U38 ( .A1(A[8]), .A2(carry[8]), .ZN(n13) );
  INV_X4 U39 ( .A(n13), .ZN(carry[9]) );
  XNOR2_X2 U40 ( .A(A[7]), .B(n15), .ZN(SUM[7]) );
  NAND2_X2 U41 ( .A1(A[7]), .A2(carry[7]), .ZN(n14) );
  INV_X4 U42 ( .A(n14), .ZN(carry[8]) );
  XNOR2_X2 U43 ( .A(A[6]), .B(n16), .ZN(SUM[6]) );
  NAND2_X2 U44 ( .A1(A[6]), .A2(carry[6]), .ZN(n15) );
  INV_X4 U45 ( .A(n15), .ZN(carry[7]) );
  XNOR2_X2 U46 ( .A(A[5]), .B(n17), .ZN(SUM[5]) );
  NAND2_X2 U47 ( .A1(A[5]), .A2(carry[5]), .ZN(n16) );
  INV_X4 U48 ( .A(n16), .ZN(carry[6]) );
  XNOR2_X2 U49 ( .A(A[4]), .B(n18), .ZN(SUM[4]) );
  NAND2_X2 U50 ( .A1(A[4]), .A2(carry[4]), .ZN(n17) );
  INV_X4 U51 ( .A(n17), .ZN(carry[5]) );
  XNOR2_X2 U52 ( .A(A[3]), .B(n19), .ZN(SUM[3]) );
  NAND2_X2 U53 ( .A1(A[3]), .A2(carry[3]), .ZN(n18) );
  INV_X4 U54 ( .A(n18), .ZN(carry[4]) );
  XNOR2_X2 U55 ( .A(A[2]), .B(n20), .ZN(SUM[2]) );
  NAND2_X2 U56 ( .A1(A[2]), .A2(carry[2]), .ZN(n19) );
  INV_X4 U57 ( .A(n19), .ZN(carry[3]) );
  XNOR2_X2 U58 ( .A(A[1]), .B(n22), .ZN(SUM[1]) );
  NAND2_X2 U59 ( .A1(A[1]), .A2(carry[1]), .ZN(n20) );
  INV_X4 U60 ( .A(n20), .ZN(carry[2]) );
  INV_X4 U61 ( .A(A[0]), .ZN(n21) );
  XNOR2_X2 U62 ( .A(B[0]), .B(n21), .ZN(SUM[0]) );
  NAND2_X2 U63 ( .A1(B[0]), .A2(A[0]), .ZN(n22) );
  INV_X4 U64 ( .A(n22), .ZN(carry[1]) );
endmodule


module fp_addsub_24_2_DW_fp_addsub_0 ( a, b, rnd, op, z, status );
  input [23:0] a;
  input [23:0] b;
  input [2:0] rnd;
  output [23:0] z;
  output [7:0] status;
  input op;
  wire   swap, sig_large_17_, sig_small_17_, exp_large_int_0_, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21;
  wire   [22:0] large_p;
  wire   [16:0] small_p;
  wire   [5:0] exp_small_int;
  wire   [5:0] mag_exp_diff;
  wire   [20:1] sig_small_shifted;
  wire   [21:0] sig_aligned2;
  wire   [21:0] adder_output;
  wire   [5:0] num_of_zeros;
  wire   [4:0] num_of_zeros_used;
  wire   [21:1] a_norm;
  wire   [16:0] frac1;
  wire   [6:1] E1;
  wire   [6:1] Elz;
  wire   [5:2] add_274_carry;
  wire   [4:0] sub_275_B_not;
  wire   [6:1] sub_275_carry;

  fp_addsub_24_2_DW01_inc_1 add_271 ( .A(a_norm[20:4]), .SUM(frac1) );
  fp_addsub_24_2_DW_leftsh_0 sll_244 ( .A(adder_output[21:1]), .SH(
        num_of_zeros_used), .B(a_norm) );
  fp_addsub_24_2_DW_lzd_0 U1 ( .a(adder_output[21:1]), .enc(num_of_zeros), 
        .dec({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21}) );
  fp_addsub_24_2_DW01_add_0 add_233 ( .A({1'b0, sig_large_17_, large_p[16:0], 
        1'b0, 1'b0, 1'b0}), .B(sig_aligned2), .CI(1'b0), .SUM({N140, N139, 
        N138, N137, N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119}) );
  fp_addsub_24_2_DW_rightsh_0 srl_222_lsb_trim ( .A({sig_small_17_, small_p, 
        1'b0, 1'b0}), .DATA_TC(1'b0), .SH({mag_exp_diff[5:3], n84, 
        mag_exp_diff[1:0]}), .B(sig_small_shifted) );
  fp_addsub_24_2_DW01_sub_1 sub_218 ( .A({large_p[22:18], exp_large_int_0_}), 
        .B(exp_small_int), .CI(1'b0), .DIFF(mag_exp_diff) );
  fp_addsub_24_2_DW_cmp_1 lt_176 ( .A(a[22:0]), .B(b[22:0]), .TC(1'b0), 
        .GE_LT(1'b1), .GE_GT_EQ(1'b0), .GE_LT_GT_LE(swap) );
  fp_addsub_24_2_DW01_add_1 add_233_2 ( .A({N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, sig_aligned2[21]}), .CI(1'b0), .SUM(adder_output) );
  HA_X1 add_274_U1_1_1 ( .A(large_p[18]), .B(large_p[17]), .CO(
        add_274_carry[2]), .S(E1[1]) );
  HA_X1 add_274_U1_1_2 ( .A(large_p[19]), .B(add_274_carry[2]), .CO(
        add_274_carry[3]), .S(E1[2]) );
  HA_X1 add_274_U1_1_3 ( .A(large_p[20]), .B(add_274_carry[3]), .CO(
        add_274_carry[4]), .S(E1[3]) );
  HA_X1 add_274_U1_1_4 ( .A(large_p[21]), .B(add_274_carry[4]), .CO(
        add_274_carry[5]), .S(E1[4]) );
  HA_X1 add_274_U1_1_5 ( .A(large_p[22]), .B(add_274_carry[5]), .CO(E1[6]), 
        .S(E1[5]) );
  FA_X1 sub_275_U2_1 ( .A(E1[1]), .B(sub_275_B_not[1]), .CI(sub_275_carry[1]), 
        .CO(sub_275_carry[2]), .S(Elz[1]) );
  FA_X1 sub_275_U2_2 ( .A(E1[2]), .B(sub_275_B_not[2]), .CI(sub_275_carry[2]), 
        .CO(sub_275_carry[3]), .S(Elz[2]) );
  FA_X1 sub_275_U2_3 ( .A(E1[3]), .B(sub_275_B_not[3]), .CI(sub_275_carry[3]), 
        .CO(sub_275_carry[4]), .S(Elz[3]) );
  FA_X1 sub_275_U2_4 ( .A(E1[4]), .B(sub_275_B_not[4]), .CI(sub_275_carry[4]), 
        .CO(sub_275_carry[5]), .S(Elz[4]) );
  INV_X1 U4 ( .A(swap), .ZN(n87) );
  XOR2_X2 U5 ( .A(sub_275_B_not[0]), .B(n138), .Z(n77) );
  AND2_X4 U6 ( .A1(n81), .A2(n82), .ZN(n78) );
  MUX2_X2 U7 ( .A(large_p[21]), .B(num_of_zeros[4]), .S(N141), .Z(
        num_of_zeros_used[4]) );
  NAND2_X2 U9 ( .A1(sig_aligned2[21]), .A2(n212), .ZN(n190) );
  INV_X4 U10 ( .A(sig_aligned2[21]), .ZN(n118) );
  INV_X4 U11 ( .A(n85), .ZN(n84) );
  INV_X4 U12 ( .A(mag_exp_diff[2]), .ZN(n85) );
  NAND2_X2 U13 ( .A1(n79), .A2(n80), .ZN(sub_275_carry[6]) );
  XNOR2_X2 U14 ( .A(E1[5]), .B(sub_275_carry[5]), .ZN(Elz[5]) );
  INV_X4 U15 ( .A(E1[5]), .ZN(n79) );
  INV_X4 U16 ( .A(sub_275_carry[5]), .ZN(n80) );
  XNOR2_X2 U17 ( .A(E1[6]), .B(sub_275_carry[6]), .ZN(Elz[6]) );
  INV_X4 U18 ( .A(E1[6]), .ZN(n81) );
  INV_X4 U19 ( .A(sub_275_carry[6]), .ZN(n82) );
  NAND2_X2 U20 ( .A1(num_of_zeros_used[0]), .A2(large_p[17]), .ZN(
        sub_275_carry[1]) );
  AND4_X4 U21 ( .A1(n162), .A2(n163), .A3(n164), .A4(n165), .ZN(n105) );
  NOR3_X2 U22 ( .A1(status[2]), .A2(status[4]), .A3(n166), .ZN(n106) );
  OR2_X4 U23 ( .A1(n212), .A2(sig_aligned2[21]), .ZN(n83) );
  OR2_X4 U24 ( .A1(n212), .A2(sig_aligned2[21]), .ZN(n191) );
  INV_X1 U31 ( .A(num_of_zeros_used[0]), .ZN(sub_275_B_not[0]) );
  INV_X1 U32 ( .A(num_of_zeros_used[1]), .ZN(sub_275_B_not[1]) );
  INV_X1 U33 ( .A(num_of_zeros_used[2]), .ZN(sub_275_B_not[2]) );
  INV_X1 U34 ( .A(num_of_zeros_used[3]), .ZN(sub_275_B_not[3]) );
  INV_X1 U35 ( .A(num_of_zeros_used[4]), .ZN(sub_275_B_not[4]) );
  INV_X1 U36 ( .A(num_of_zeros[4]), .ZN(n100) );
  INV_X1 U37 ( .A(num_of_zeros[5]), .ZN(n88) );
  AOI22_X1 U38 ( .A1(large_p[21]), .A2(n100), .B1(large_p[22]), .B2(n88), .ZN(
        n103) );
  NOR2_X1 U39 ( .A1(n88), .A2(large_p[22]), .ZN(n102) );
  INV_X1 U40 ( .A(n102), .ZN(n99) );
  NAND2_X1 U41 ( .A1(num_of_zeros[3]), .A2(n128), .ZN(n91) );
  INV_X1 U42 ( .A(num_of_zeros[2]), .ZN(n92) );
  NAND3_X1 U43 ( .A1(n91), .A2(n92), .A3(large_p[19]), .ZN(n89) );
  OAI21_X1 U44 ( .B1(num_of_zeros[3]), .B2(n128), .A(n89), .ZN(n90) );
  INV_X1 U45 ( .A(n90), .ZN(n97) );
  OAI21_X1 U46 ( .B1(large_p[19]), .B2(n92), .A(n91), .ZN(n96) );
  INV_X1 U47 ( .A(num_of_zeros[1]), .ZN(n94) );
  AOI21_X1 U48 ( .B1(num_of_zeros[1]), .B2(n135), .A(num_of_zeros[0]), .ZN(n93) );
  AOI22_X1 U49 ( .A1(large_p[18]), .A2(n94), .B1(n93), .B2(exp_large_int_0_), 
        .ZN(n95) );
  AOI22_X1 U50 ( .A1(n97), .A2(n96), .B1(n95), .B2(n97), .ZN(n98) );
  OAI211_X1 U51 ( .C1(large_p[21]), .C2(n100), .A(n99), .B(n98), .ZN(n101) );
  OAI21_X1 U52 ( .B1(n103), .B2(n102), .A(n101), .ZN(N141) );
  INV_X1 U53 ( .A(n104), .ZN(z[9]) );
  AOI22_X1 U54 ( .A1(a_norm[13]), .A2(n105), .B1(frac1[9]), .B2(n106), .ZN(
        n104) );
  INV_X1 U55 ( .A(n107), .ZN(z[8]) );
  AOI22_X1 U56 ( .A1(a_norm[12]), .A2(n105), .B1(frac1[8]), .B2(n106), .ZN(
        n107) );
  INV_X1 U57 ( .A(n108), .ZN(z[7]) );
  AOI22_X1 U58 ( .A1(a_norm[11]), .A2(n105), .B1(frac1[7]), .B2(n106), .ZN(
        n108) );
  INV_X1 U59 ( .A(n109), .ZN(z[6]) );
  AOI22_X1 U60 ( .A1(a_norm[10]), .A2(n105), .B1(frac1[6]), .B2(n106), .ZN(
        n109) );
  INV_X1 U61 ( .A(n110), .ZN(z[5]) );
  AOI22_X1 U62 ( .A1(a_norm[9]), .A2(n105), .B1(frac1[5]), .B2(n106), .ZN(n110) );
  INV_X1 U63 ( .A(n111), .ZN(z[4]) );
  AOI22_X1 U64 ( .A1(a_norm[8]), .A2(n105), .B1(frac1[4]), .B2(n106), .ZN(n111) );
  INV_X1 U65 ( .A(n112), .ZN(z[3]) );
  AOI22_X1 U66 ( .A1(a_norm[7]), .A2(n105), .B1(frac1[3]), .B2(n106), .ZN(n112) );
  INV_X1 U67 ( .A(n113), .ZN(z[2]) );
  AOI22_X1 U68 ( .A1(a_norm[6]), .A2(n105), .B1(frac1[2]), .B2(n106), .ZN(n113) );
  NOR4_X1 U69 ( .A1(status[2]), .A2(n114), .A3(n115), .A4(n116), .ZN(z[23]) );
  NOR2_X1 U70 ( .A1(n117), .A2(n118), .ZN(n115) );
  OAI221_X1 U71 ( .B1(n119), .B2(n120), .C1(n121), .C2(n122), .A(n123), .ZN(
        z[22]) );
  NAND2_X1 U72 ( .A1(E1[5]), .A2(n124), .ZN(n123) );
  INV_X1 U73 ( .A(Elz[5]), .ZN(n122) );
  OAI221_X1 U74 ( .B1(n125), .B2(n120), .C1(n121), .C2(n126), .A(n127), .ZN(
        z[21]) );
  NAND2_X1 U75 ( .A1(E1[4]), .A2(n124), .ZN(n127) );
  INV_X1 U76 ( .A(Elz[4]), .ZN(n126) );
  INV_X1 U77 ( .A(large_p[21]), .ZN(n125) );
  OAI221_X1 U78 ( .B1(n128), .B2(n120), .C1(n121), .C2(n129), .A(n130), .ZN(
        z[20]) );
  NAND2_X1 U79 ( .A1(E1[3]), .A2(n124), .ZN(n130) );
  INV_X1 U80 ( .A(Elz[3]), .ZN(n129) );
  INV_X1 U81 ( .A(n131), .ZN(z[1]) );
  AOI22_X1 U82 ( .A1(a_norm[5]), .A2(n105), .B1(frac1[1]), .B2(n106), .ZN(n131) );
  OAI221_X1 U83 ( .B1(n132), .B2(n120), .C1(n121), .C2(n133), .A(n134), .ZN(
        z[19]) );
  NAND2_X1 U84 ( .A1(E1[2]), .A2(n124), .ZN(n134) );
  OAI221_X1 U85 ( .B1(n135), .B2(n120), .C1(n121), .C2(n136), .A(n137), .ZN(
        z[18]) );
  NAND2_X1 U86 ( .A1(E1[1]), .A2(n124), .ZN(n137) );
  OAI221_X1 U87 ( .B1(n138), .B2(n120), .C1(n121), .C2(n77), .A(n139), .ZN(
        z[17]) );
  NAND2_X1 U88 ( .A1(n138), .A2(n124), .ZN(n139) );
  AND2_X1 U89 ( .A1(n140), .A2(n141), .ZN(n124) );
  OAI211_X1 U90 ( .C1(n142), .C2(n143), .A(n144), .B(n145), .ZN(n121) );
  NOR2_X1 U91 ( .A1(n146), .A2(n141), .ZN(n145) );
  NAND2_X1 U92 ( .A1(n147), .A2(n141), .ZN(n120) );
  NAND3_X1 U93 ( .A1(n148), .A2(sig_aligned2[21]), .A3(n149), .ZN(n141) );
  AOI21_X1 U94 ( .B1(adder_output[2]), .B2(n150), .A(n151), .ZN(n149) );
  INV_X1 U95 ( .A(sig_large_17_), .ZN(n151) );
  INV_X1 U96 ( .A(n140), .ZN(n147) );
  OAI22_X1 U97 ( .A1(sig_large_17_), .A2(n146), .B1(n152), .B2(n153), .ZN(n140) );
  INV_X1 U98 ( .A(a_norm[21]), .ZN(n146) );
  INV_X1 U99 ( .A(n154), .ZN(z[16]) );
  AOI22_X1 U100 ( .A1(a_norm[20]), .A2(n105), .B1(frac1[16]), .B2(n106), .ZN(
        n154) );
  INV_X1 U101 ( .A(n155), .ZN(z[15]) );
  AOI22_X1 U102 ( .A1(a_norm[19]), .A2(n105), .B1(frac1[15]), .B2(n106), .ZN(
        n155) );
  INV_X1 U103 ( .A(n156), .ZN(z[14]) );
  AOI22_X1 U104 ( .A1(a_norm[18]), .A2(n105), .B1(frac1[14]), .B2(n106), .ZN(
        n156) );
  INV_X1 U105 ( .A(n157), .ZN(z[13]) );
  AOI22_X1 U106 ( .A1(a_norm[17]), .A2(n105), .B1(frac1[13]), .B2(n106), .ZN(
        n157) );
  INV_X1 U107 ( .A(n158), .ZN(z[12]) );
  AOI22_X1 U108 ( .A1(a_norm[16]), .A2(n105), .B1(frac1[12]), .B2(n106), .ZN(
        n158) );
  INV_X1 U109 ( .A(n159), .ZN(z[11]) );
  AOI22_X1 U110 ( .A1(a_norm[15]), .A2(n105), .B1(frac1[11]), .B2(n106), .ZN(
        n159) );
  INV_X1 U111 ( .A(n160), .ZN(z[10]) );
  AOI22_X1 U112 ( .A1(a_norm[14]), .A2(n105), .B1(frac1[10]), .B2(n106), .ZN(
        n160) );
  INV_X1 U113 ( .A(n161), .ZN(z[0]) );
  AOI221_X1 U114 ( .B1(n105), .B2(a_norm[4]), .C1(n106), .C2(frac1[0]), .A(
        status[2]), .ZN(n161) );
  NOR3_X1 U115 ( .A1(n142), .A2(status[4]), .A3(status[2]), .ZN(n165) );
  INV_X1 U116 ( .A(n117), .ZN(n142) );
  INV_X1 U117 ( .A(n106), .ZN(n162) );
  OAI21_X1 U118 ( .B1(n167), .B2(n153), .A(n168), .ZN(status[5]) );
  NOR4_X1 U119 ( .A1(adder_output[0]), .A2(a_norm[3]), .A3(a_norm[2]), .A4(
        a_norm[1]), .ZN(n167) );
  OAI21_X1 U120 ( .B1(status[2]), .B2(n163), .A(n168), .ZN(status[1]) );
  INV_X1 U121 ( .A(status[4]), .ZN(n168) );
  NOR3_X1 U122 ( .A1(n169), .A2(n152), .A3(n153), .ZN(status[4]) );
  AOI21_X1 U123 ( .B1(adder_output[20]), .B2(n150), .A(adder_output[21]), .ZN(
        n152) );
  NOR4_X1 U124 ( .A1(n170), .A2(n171), .A3(n172), .A4(n173), .ZN(n150) );
  NAND4_X1 U125 ( .A1(adder_output[5]), .A2(adder_output[4]), .A3(n174), .A4(
        n175), .ZN(n173) );
  AND4_X1 U126 ( .A1(adder_output[9]), .A2(adder_output[8]), .A3(
        adder_output[7]), .A4(adder_output[6]), .ZN(n175) );
  AND3_X1 U127 ( .A1(adder_output[19]), .A2(adder_output[18]), .A3(
        adder_output[3]), .ZN(n174) );
  NAND4_X1 U128 ( .A1(adder_output[17]), .A2(adder_output[16]), .A3(
        adder_output[15]), .A4(adder_output[14]), .ZN(n172) );
  NAND2_X1 U129 ( .A1(adder_output[13]), .A2(adder_output[12]), .ZN(n171) );
  NAND3_X1 U130 ( .A1(adder_output[10]), .A2(n176), .A3(adder_output[11]), 
        .ZN(n170) );
  INV_X1 U131 ( .A(n166), .ZN(n176) );
  NAND2_X1 U132 ( .A1(a_norm[3]), .A2(n177), .ZN(n166) );
  OR4_X1 U133 ( .A1(a_norm[1]), .A2(a_norm[2]), .A3(a_norm[4]), .A4(
        adder_output[0]), .ZN(n177) );
  OAI21_X1 U134 ( .B1(n118), .B2(n178), .A(n148), .ZN(status[2]) );
  INV_X1 U135 ( .A(n153), .ZN(n148) );
  OAI21_X1 U136 ( .B1(n164), .B2(n153), .A(n117), .ZN(status[0]) );
  OAI21_X1 U137 ( .B1(n179), .B2(n178), .A(n180), .ZN(n153) );
  NAND3_X1 U138 ( .A1(large_p[17]), .A2(n181), .A3(n182), .ZN(n180) );
  NAND4_X1 U139 ( .A1(exp_small_int[2]), .A2(n183), .A3(exp_small_int[1]), 
        .A4(n184), .ZN(n178) );
  AND3_X1 U140 ( .A1(exp_small_int[4]), .A2(exp_small_int[3]), .A3(
        exp_small_int[5]), .ZN(n184) );
  AOI21_X1 U141 ( .B1(sig_large_17_), .B2(n185), .A(n114), .ZN(n164) );
  INV_X1 U142 ( .A(n144), .ZN(n114) );
  NAND4_X1 U143 ( .A1(num_of_zeros[4]), .A2(num_of_zeros[3]), .A3(
        num_of_zeros[5]), .A4(n186), .ZN(n144) );
  AND3_X1 U144 ( .A1(num_of_zeros[2]), .A2(num_of_zeros[0]), .A3(
        num_of_zeros[1]), .ZN(n186) );
  INV_X1 U145 ( .A(n143), .ZN(n185) );
  NOR2_X1 U146 ( .A1(n187), .A2(n78), .ZN(n143) );
  AND4_X1 U147 ( .A1(n136), .A2(n133), .A3(n77), .A4(n188), .ZN(n187) );
  NOR4_X1 U148 ( .A1(Elz[6]), .A2(Elz[5]), .A3(Elz[4]), .A4(Elz[3]), .ZN(n188)
         );
  INV_X1 U149 ( .A(Elz[2]), .ZN(n133) );
  INV_X1 U150 ( .A(Elz[1]), .ZN(n136) );
  NAND2_X1 U151 ( .A1(n189), .A2(n190), .ZN(sig_aligned2[9]) );
  MUX2_X1 U152 ( .A(n118), .B(n191), .S(sig_small_shifted[9]), .Z(n189) );
  NAND2_X1 U153 ( .A1(n192), .A2(n190), .ZN(sig_aligned2[8]) );
  MUX2_X1 U154 ( .A(n118), .B(n83), .S(sig_small_shifted[8]), .Z(n192) );
  NAND2_X1 U155 ( .A1(n193), .A2(n190), .ZN(sig_aligned2[7]) );
  MUX2_X1 U156 ( .A(n118), .B(n191), .S(sig_small_shifted[7]), .Z(n193) );
  NAND2_X1 U157 ( .A1(n194), .A2(n190), .ZN(sig_aligned2[6]) );
  MUX2_X1 U158 ( .A(n118), .B(n83), .S(sig_small_shifted[6]), .Z(n194) );
  NAND2_X1 U159 ( .A1(n195), .A2(n190), .ZN(sig_aligned2[5]) );
  MUX2_X1 U160 ( .A(n118), .B(n191), .S(sig_small_shifted[5]), .Z(n195) );
  NAND2_X1 U161 ( .A1(n196), .A2(n190), .ZN(sig_aligned2[4]) );
  MUX2_X1 U162 ( .A(n118), .B(n83), .S(sig_small_shifted[4]), .Z(n196) );
  NAND2_X1 U163 ( .A1(n197), .A2(n190), .ZN(sig_aligned2[3]) );
  MUX2_X1 U164 ( .A(n118), .B(n191), .S(sig_small_shifted[3]), .Z(n197) );
  NAND2_X1 U165 ( .A1(n198), .A2(n190), .ZN(sig_aligned2[2]) );
  MUX2_X1 U166 ( .A(n118), .B(n83), .S(sig_small_shifted[2]), .Z(n198) );
  NAND2_X1 U167 ( .A1(n199), .A2(n190), .ZN(sig_aligned2[20]) );
  MUX2_X1 U168 ( .A(n118), .B(n191), .S(sig_small_shifted[20]), .Z(n199) );
  NAND2_X1 U169 ( .A1(n200), .A2(n190), .ZN(sig_aligned2[1]) );
  MUX2_X1 U170 ( .A(n118), .B(n83), .S(sig_small_shifted[1]), .Z(n200) );
  NAND2_X1 U171 ( .A1(n201), .A2(n190), .ZN(sig_aligned2[19]) );
  MUX2_X1 U172 ( .A(n118), .B(n191), .S(sig_small_shifted[19]), .Z(n201) );
  NAND2_X1 U173 ( .A1(n202), .A2(n190), .ZN(sig_aligned2[18]) );
  MUX2_X1 U174 ( .A(n118), .B(n83), .S(sig_small_shifted[18]), .Z(n202) );
  NAND2_X1 U175 ( .A1(n203), .A2(n190), .ZN(sig_aligned2[17]) );
  MUX2_X1 U176 ( .A(n118), .B(n191), .S(sig_small_shifted[17]), .Z(n203) );
  NAND2_X1 U177 ( .A1(n204), .A2(n190), .ZN(sig_aligned2[16]) );
  MUX2_X1 U178 ( .A(n118), .B(n83), .S(sig_small_shifted[16]), .Z(n204) );
  NAND2_X1 U179 ( .A1(n205), .A2(n190), .ZN(sig_aligned2[15]) );
  MUX2_X1 U180 ( .A(n118), .B(n191), .S(sig_small_shifted[15]), .Z(n205) );
  NAND2_X1 U181 ( .A1(n206), .A2(n190), .ZN(sig_aligned2[14]) );
  MUX2_X1 U182 ( .A(n118), .B(n83), .S(sig_small_shifted[14]), .Z(n206) );
  NAND2_X1 U183 ( .A1(n207), .A2(n190), .ZN(sig_aligned2[13]) );
  MUX2_X1 U184 ( .A(n118), .B(n191), .S(sig_small_shifted[13]), .Z(n207) );
  NAND2_X1 U185 ( .A1(n208), .A2(n190), .ZN(sig_aligned2[12]) );
  MUX2_X1 U186 ( .A(n118), .B(n83), .S(sig_small_shifted[12]), .Z(n208) );
  NAND2_X1 U187 ( .A1(n209), .A2(n190), .ZN(sig_aligned2[11]) );
  MUX2_X1 U188 ( .A(n118), .B(n191), .S(sig_small_shifted[11]), .Z(n209) );
  NAND2_X1 U189 ( .A1(n210), .A2(n190), .ZN(sig_aligned2[10]) );
  MUX2_X1 U190 ( .A(n118), .B(n191), .S(sig_small_shifted[10]), .Z(n210) );
  NAND2_X1 U191 ( .A1(n211), .A2(n190), .ZN(sig_aligned2[0]) );
  MUX2_X1 U192 ( .A(n83), .B(n118), .S(n213), .Z(n211) );
  AOI221_X1 U193 ( .B1(mag_exp_diff[1]), .B2(n214), .C1(mag_exp_diff[3]), .C2(
        n215), .A(n216), .ZN(n213) );
  INV_X1 U194 ( .A(n217), .ZN(n216) );
  AOI221_X1 U195 ( .B1(n218), .B2(n84), .C1(n219), .C2(mag_exp_diff[4]), .A(
        mag_exp_diff[5]), .ZN(n217) );
  INV_X1 U196 ( .A(n220), .ZN(n219) );
  AOI21_X1 U197 ( .B1(small_p[14]), .B2(n221), .A(n222), .ZN(n220) );
  OAI21_X1 U198 ( .B1(n223), .B2(n224), .A(n225), .ZN(n218) );
  INV_X1 U199 ( .A(small_p[2]), .ZN(n223) );
  NAND3_X1 U200 ( .A1(n225), .A2(n226), .A3(n227), .ZN(n215) );
  AOI222_X1 U201 ( .A1(small_p[6]), .A2(n221), .B1(n84), .B2(n228), .C1(
        mag_exp_diff[1]), .C2(n229), .ZN(n227) );
  INV_X1 U202 ( .A(n230), .ZN(n229) );
  AOI221_X1 U203 ( .B1(n231), .B2(n84), .C1(small_p[8]), .C2(mag_exp_diff[0]), 
        .A(small_p[7]), .ZN(n230) );
  INV_X1 U204 ( .A(n232), .ZN(n231) );
  AOI21_X1 U205 ( .B1(mag_exp_diff[0]), .B2(small_p[12]), .A(small_p[11]), 
        .ZN(n232) );
  INV_X1 U206 ( .A(n233), .ZN(n228) );
  AOI21_X1 U207 ( .B1(n221), .B2(small_p[10]), .A(n234), .ZN(n233) );
  INV_X1 U208 ( .A(n224), .ZN(n221) );
  NOR2_X1 U209 ( .A1(mag_exp_diff[1]), .A2(mag_exp_diff[0]), .ZN(n224) );
  NOR3_X1 U210 ( .A1(small_p[0]), .A2(mag_exp_diff[4]), .A3(small_p[1]), .ZN(
        n225) );
  INV_X1 U211 ( .A(n235), .ZN(n214) );
  AOI222_X1 U212 ( .A1(small_p[3]), .A2(n84), .B1(n236), .B2(mag_exp_diff[0]), 
        .C1(small_p[15]), .C2(mag_exp_diff[4]), .ZN(n235) );
  INV_X1 U213 ( .A(n237), .ZN(n236) );
  AOI221_X1 U214 ( .B1(n84), .B2(small_p[4]), .C1(mag_exp_diff[4]), .C2(
        small_p[16]), .A(small_p[0]), .ZN(n237) );
  NAND2_X1 U215 ( .A1(n238), .A2(n163), .ZN(n212) );
  NAND3_X1 U216 ( .A1(n182), .A2(large_p[17]), .A3(n239), .ZN(n163) );
  INV_X1 U217 ( .A(n169), .ZN(n182) );
  NAND4_X1 U218 ( .A1(large_p[18]), .A2(large_p[19]), .A3(n240), .A4(
        large_p[21]), .ZN(n169) );
  NOR2_X1 U219 ( .A1(n128), .A2(n119), .ZN(n240) );
  INV_X1 U220 ( .A(large_p[22]), .ZN(n119) );
  INV_X1 U221 ( .A(large_p[20]), .ZN(n128) );
  MUX2_X1 U222 ( .A(large_p[20]), .B(num_of_zeros[3]), .S(N141), .Z(
        num_of_zeros_used[3]) );
  MUX2_X1 U223 ( .A(large_p[19]), .B(num_of_zeros[2]), .S(N141), .Z(
        num_of_zeros_used[2]) );
  MUX2_X1 U224 ( .A(large_p[18]), .B(num_of_zeros[1]), .S(N141), .Z(
        num_of_zeros_used[1]) );
  MUX2_X1 U225 ( .A(exp_large_int_0_), .B(num_of_zeros[0]), .S(N141), .Z(
        num_of_zeros_used[0]) );
  NAND3_X1 U226 ( .A1(n238), .A2(sig_small_17_), .A3(n241), .ZN(
        exp_small_int[0]) );
  INV_X1 U227 ( .A(n183), .ZN(n241) );
  NAND2_X1 U228 ( .A1(n242), .A2(n243), .ZN(sig_small_17_) );
  INV_X1 U229 ( .A(n179), .ZN(n243) );
  NAND2_X1 U230 ( .A1(n179), .A2(n242), .ZN(n238) );
  NOR4_X1 U231 ( .A1(exp_small_int[1]), .A2(exp_small_int[2]), .A3(n183), .A4(
        n244), .ZN(n242) );
  OR3_X1 U232 ( .A1(exp_small_int[3]), .A2(exp_small_int[5]), .A3(
        exp_small_int[4]), .ZN(n244) );
  MUX2_X1 U233 ( .A(b[21]), .B(a[21]), .S(n86), .Z(exp_small_int[4]) );
  MUX2_X1 U234 ( .A(b[22]), .B(a[22]), .S(n86), .Z(exp_small_int[5]) );
  MUX2_X1 U235 ( .A(b[20]), .B(a[20]), .S(n86), .Z(exp_small_int[3]) );
  MUX2_X1 U236 ( .A(b[17]), .B(a[17]), .S(n86), .Z(n183) );
  MUX2_X1 U237 ( .A(b[19]), .B(a[19]), .S(n86), .Z(exp_small_int[2]) );
  MUX2_X1 U238 ( .A(b[18]), .B(a[18]), .S(n86), .Z(exp_small_int[1]) );
  NOR4_X1 U239 ( .A1(small_p[16]), .A2(n222), .A3(small_p[15]), .A4(
        small_p[14]), .ZN(n179) );
  MUX2_X1 U240 ( .A(b[14]), .B(a[14]), .S(n86), .Z(small_p[14]) );
  MUX2_X1 U241 ( .A(b[15]), .B(a[15]), .S(n86), .Z(small_p[15]) );
  NAND2_X1 U242 ( .A1(n245), .A2(n246), .ZN(n222) );
  NOR4_X1 U243 ( .A1(small_p[0]), .A2(small_p[1]), .A3(small_p[10]), .A4(
        small_p[11]), .ZN(n246) );
  MUX2_X1 U244 ( .A(b[11]), .B(a[11]), .S(n86), .Z(small_p[11]) );
  MUX2_X1 U245 ( .A(b[10]), .B(a[10]), .S(n86), .Z(small_p[10]) );
  MUX2_X1 U246 ( .A(b[1]), .B(a[1]), .S(n86), .Z(small_p[1]) );
  MUX2_X1 U247 ( .A(b[0]), .B(a[0]), .S(n86), .Z(small_p[0]) );
  NOR4_X1 U248 ( .A1(small_p[12]), .A2(small_p[13]), .A3(n247), .A4(n234), 
        .ZN(n245) );
  OR4_X1 U249 ( .A1(small_p[9]), .A2(small_p[8]), .A3(small_p[7]), .A4(
        small_p[6]), .ZN(n234) );
  MUX2_X1 U250 ( .A(b[6]), .B(a[6]), .S(n86), .Z(small_p[6]) );
  MUX2_X1 U251 ( .A(b[7]), .B(a[7]), .S(swap), .Z(small_p[7]) );
  MUX2_X1 U252 ( .A(b[8]), .B(a[8]), .S(n86), .Z(small_p[8]) );
  MUX2_X1 U253 ( .A(b[9]), .B(a[9]), .S(n86), .Z(small_p[9]) );
  INV_X1 U254 ( .A(n226), .ZN(n247) );
  NOR4_X1 U255 ( .A1(small_p[5]), .A2(small_p[4]), .A3(small_p[3]), .A4(
        small_p[2]), .ZN(n226) );
  MUX2_X1 U256 ( .A(b[2]), .B(a[2]), .S(n86), .Z(small_p[2]) );
  MUX2_X1 U257 ( .A(b[3]), .B(a[3]), .S(n86), .Z(small_p[3]) );
  MUX2_X1 U258 ( .A(b[4]), .B(a[4]), .S(n86), .Z(small_p[4]) );
  MUX2_X1 U259 ( .A(b[5]), .B(a[5]), .S(n86), .Z(small_p[5]) );
  MUX2_X1 U260 ( .A(b[13]), .B(a[13]), .S(n86), .Z(small_p[13]) );
  MUX2_X1 U261 ( .A(b[12]), .B(a[12]), .S(n86), .Z(small_p[12]) );
  MUX2_X1 U262 ( .A(b[16]), .B(a[16]), .S(n86), .Z(small_p[16]) );
  NAND3_X1 U263 ( .A1(n117), .A2(sig_large_17_), .A3(n138), .ZN(
        exp_large_int_0_) );
  NAND2_X1 U264 ( .A1(n248), .A2(n181), .ZN(sig_large_17_) );
  NAND2_X1 U265 ( .A1(n239), .A2(n248), .ZN(n117) );
  AND4_X1 U266 ( .A1(n135), .A2(n132), .A3(n138), .A4(n249), .ZN(n248) );
  NOR3_X1 U267 ( .A1(large_p[20]), .A2(large_p[22]), .A3(large_p[21]), .ZN(
        n249) );
  MUX2_X1 U268 ( .A(a[21]), .B(b[21]), .S(n86), .Z(large_p[21]) );
  MUX2_X1 U269 ( .A(a[22]), .B(b[22]), .S(n86), .Z(large_p[22]) );
  MUX2_X1 U270 ( .A(a[20]), .B(b[20]), .S(n86), .Z(large_p[20]) );
  INV_X1 U271 ( .A(large_p[17]), .ZN(n138) );
  MUX2_X1 U272 ( .A(a[17]), .B(b[17]), .S(n86), .Z(large_p[17]) );
  INV_X1 U273 ( .A(large_p[19]), .ZN(n132) );
  MUX2_X1 U274 ( .A(a[19]), .B(b[19]), .S(n86), .Z(large_p[19]) );
  INV_X1 U275 ( .A(large_p[18]), .ZN(n135) );
  MUX2_X1 U276 ( .A(a[18]), .B(b[18]), .S(n86), .Z(large_p[18]) );
  INV_X1 U277 ( .A(n181), .ZN(n239) );
  NAND3_X1 U278 ( .A1(n250), .A2(n251), .A3(n252), .ZN(n181) );
  NOR4_X1 U279 ( .A1(n253), .A2(n254), .A3(large_p[3]), .A4(large_p[4]), .ZN(
        n252) );
  MUX2_X1 U280 ( .A(a[4]), .B(b[4]), .S(n86), .Z(large_p[4]) );
  MUX2_X1 U281 ( .A(a[3]), .B(b[3]), .S(n86), .Z(large_p[3]) );
  OR3_X1 U282 ( .A1(large_p[1]), .A2(large_p[0]), .A3(large_p[2]), .ZN(n254)
         );
  MUX2_X1 U283 ( .A(a[2]), .B(b[2]), .S(n86), .Z(large_p[2]) );
  MUX2_X1 U284 ( .A(a[0]), .B(b[0]), .S(n86), .Z(large_p[0]) );
  MUX2_X1 U285 ( .A(a[1]), .B(b[1]), .S(n86), .Z(large_p[1]) );
  OR4_X1 U286 ( .A1(large_p[8]), .A2(large_p[7]), .A3(large_p[6]), .A4(
        large_p[5]), .ZN(n253) );
  MUX2_X1 U287 ( .A(a[5]), .B(b[5]), .S(n86), .Z(large_p[5]) );
  MUX2_X1 U288 ( .A(a[6]), .B(b[6]), .S(n86), .Z(large_p[6]) );
  MUX2_X1 U289 ( .A(a[7]), .B(b[7]), .S(n86), .Z(large_p[7]) );
  MUX2_X1 U290 ( .A(a[8]), .B(b[8]), .S(n86), .Z(large_p[8]) );
  NOR4_X1 U291 ( .A1(large_p[9]), .A2(large_p[10]), .A3(large_p[11]), .A4(
        large_p[12]), .ZN(n251) );
  MUX2_X1 U292 ( .A(a[12]), .B(b[12]), .S(n86), .Z(large_p[12]) );
  MUX2_X1 U293 ( .A(a[11]), .B(b[11]), .S(n86), .Z(large_p[11]) );
  MUX2_X1 U294 ( .A(a[10]), .B(b[10]), .S(n86), .Z(large_p[10]) );
  MUX2_X1 U295 ( .A(a[9]), .B(b[9]), .S(swap), .Z(large_p[9]) );
  NOR4_X1 U296 ( .A1(large_p[13]), .A2(large_p[14]), .A3(large_p[15]), .A4(
        large_p[16]), .ZN(n250) );
  MUX2_X1 U297 ( .A(a[16]), .B(b[16]), .S(swap), .Z(large_p[16]) );
  MUX2_X1 U298 ( .A(a[15]), .B(b[15]), .S(swap), .Z(large_p[15]) );
  MUX2_X1 U299 ( .A(a[14]), .B(b[14]), .S(swap), .Z(large_p[14]) );
  MUX2_X1 U300 ( .A(a[13]), .B(b[13]), .S(swap), .Z(large_p[13]) );
  XOR2_X1 U301 ( .A(n255), .B(n116), .Z(sig_aligned2[21]) );
  MUX2_X1 U302 ( .A(n256), .B(n257), .S(swap), .Z(n116) );
  MUX2_X1 U303 ( .A(n257), .B(n256), .S(swap), .Z(n255) );
  INV_X1 U304 ( .A(a[23]), .ZN(n256) );
  XNOR2_X1 U305 ( .A(b[23]), .B(op), .ZN(n257) );
  INV_X8 U8 ( .A(n87), .ZN(n86) );
endmodule


module fp_addsub_24_2 ( in1, in2, mode, opt, clock, status );
  input [23:0] in1;
  input [23:0] in2;
  output [23:0] opt;
  output [7:0] status;
  input mode, clock;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [23:0] z_inst_internal;
  wire   [5:0] status_inst_internal;
  wire   [23:0] z_inst_pipe1;
  wire   [5:0] status_inst_pipe1;
  wire   [23:0] z_inst_pipe2;
  wire   [5:0] status_inst_pipe2;
  assign status[7] = 1'b0;
  assign status[6] = 1'b0;
  assign status[3] = 1'b0;

  fp_addsub_24_2_DW_fp_addsub_0 U1 ( .a(in1), .b(in2), .rnd({1'b0, 1'b0, 1'b0}), .op(mode), .z(z_inst_internal), .status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, status_inst_internal[5:4], 
        SYNOPSYS_UNCONNECTED_3, status_inst_internal[2:0]}) );
  DFF_X1 status_inst_pipe1_reg_5_ ( .D(status_inst_internal[5]), .CK(clock), 
        .Q(status_inst_pipe1[5]) );
  DFF_X1 status_inst_pipe2_reg_5_ ( .D(status_inst_pipe1[5]), .CK(clock), .Q(
        status_inst_pipe2[5]) );
  DFF_X1 status_inst_pipe1_reg_4_ ( .D(status_inst_internal[4]), .CK(clock), 
        .Q(status_inst_pipe1[4]) );
  DFF_X1 status_inst_pipe2_reg_4_ ( .D(status_inst_pipe1[4]), .CK(clock), .Q(
        status_inst_pipe2[4]) );
  DFF_X1 status_inst_pipe1_reg_2_ ( .D(status_inst_internal[2]), .CK(clock), 
        .Q(status_inst_pipe1[2]) );
  DFF_X1 status_inst_pipe2_reg_2_ ( .D(status_inst_pipe1[2]), .CK(clock), .Q(
        status_inst_pipe2[2]) );
  DFF_X1 status_inst_pipe1_reg_1_ ( .D(status_inst_internal[1]), .CK(clock), 
        .Q(status_inst_pipe1[1]) );
  DFF_X1 status_inst_pipe2_reg_1_ ( .D(status_inst_pipe1[1]), .CK(clock), .Q(
        status_inst_pipe2[1]) );
  DFF_X1 status_inst_pipe1_reg_0_ ( .D(status_inst_internal[0]), .CK(clock), 
        .Q(status_inst_pipe1[0]) );
  DFF_X1 status_inst_pipe2_reg_0_ ( .D(status_inst_pipe1[0]), .CK(clock), .Q(
        status_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe1_reg_23_ ( .D(z_inst_internal[23]), .CK(clock), .Q(
        z_inst_pipe1[23]) );
  DFF_X1 z_inst_pipe2_reg_23_ ( .D(z_inst_pipe1[23]), .CK(clock), .Q(
        z_inst_pipe2[23]) );
  DFF_X1 z_inst_pipe1_reg_22_ ( .D(z_inst_internal[22]), .CK(clock), .Q(
        z_inst_pipe1[22]) );
  DFF_X1 z_inst_pipe2_reg_22_ ( .D(z_inst_pipe1[22]), .CK(clock), .Q(
        z_inst_pipe2[22]) );
  DFF_X1 z_inst_pipe1_reg_21_ ( .D(z_inst_internal[21]), .CK(clock), .Q(
        z_inst_pipe1[21]) );
  DFF_X1 z_inst_pipe2_reg_21_ ( .D(z_inst_pipe1[21]), .CK(clock), .Q(
        z_inst_pipe2[21]) );
  DFF_X1 z_inst_pipe1_reg_20_ ( .D(z_inst_internal[20]), .CK(clock), .Q(
        z_inst_pipe1[20]) );
  DFF_X1 z_inst_pipe2_reg_20_ ( .D(z_inst_pipe1[20]), .CK(clock), .Q(
        z_inst_pipe2[20]) );
  DFF_X1 z_inst_pipe1_reg_19_ ( .D(z_inst_internal[19]), .CK(clock), .Q(
        z_inst_pipe1[19]) );
  DFF_X1 z_inst_pipe2_reg_19_ ( .D(z_inst_pipe1[19]), .CK(clock), .Q(
        z_inst_pipe2[19]) );
  DFF_X1 z_inst_pipe1_reg_18_ ( .D(z_inst_internal[18]), .CK(clock), .Q(
        z_inst_pipe1[18]) );
  DFF_X1 z_inst_pipe2_reg_18_ ( .D(z_inst_pipe1[18]), .CK(clock), .Q(
        z_inst_pipe2[18]) );
  DFF_X1 z_inst_pipe1_reg_17_ ( .D(z_inst_internal[17]), .CK(clock), .Q(
        z_inst_pipe1[17]) );
  DFF_X1 z_inst_pipe2_reg_17_ ( .D(z_inst_pipe1[17]), .CK(clock), .Q(
        z_inst_pipe2[17]) );
  DFF_X1 z_inst_pipe1_reg_16_ ( .D(z_inst_internal[16]), .CK(clock), .Q(
        z_inst_pipe1[16]) );
  DFF_X1 z_inst_pipe2_reg_16_ ( .D(z_inst_pipe1[16]), .CK(clock), .Q(
        z_inst_pipe2[16]) );
  DFF_X1 z_inst_pipe1_reg_15_ ( .D(z_inst_internal[15]), .CK(clock), .Q(
        z_inst_pipe1[15]) );
  DFF_X1 z_inst_pipe2_reg_15_ ( .D(z_inst_pipe1[15]), .CK(clock), .Q(
        z_inst_pipe2[15]) );
  DFF_X1 z_inst_pipe1_reg_14_ ( .D(z_inst_internal[14]), .CK(clock), .Q(
        z_inst_pipe1[14]) );
  DFF_X1 z_inst_pipe2_reg_14_ ( .D(z_inst_pipe1[14]), .CK(clock), .Q(
        z_inst_pipe2[14]) );
  DFF_X1 z_inst_pipe1_reg_13_ ( .D(z_inst_internal[13]), .CK(clock), .Q(
        z_inst_pipe1[13]) );
  DFF_X1 z_inst_pipe2_reg_13_ ( .D(z_inst_pipe1[13]), .CK(clock), .Q(
        z_inst_pipe2[13]) );
  DFF_X1 z_inst_pipe1_reg_12_ ( .D(z_inst_internal[12]), .CK(clock), .Q(
        z_inst_pipe1[12]) );
  DFF_X1 z_inst_pipe2_reg_12_ ( .D(z_inst_pipe1[12]), .CK(clock), .Q(
        z_inst_pipe2[12]) );
  DFF_X1 z_inst_pipe1_reg_11_ ( .D(z_inst_internal[11]), .CK(clock), .Q(
        z_inst_pipe1[11]) );
  DFF_X1 z_inst_pipe2_reg_11_ ( .D(z_inst_pipe1[11]), .CK(clock), .Q(
        z_inst_pipe2[11]) );
  DFF_X1 z_inst_pipe1_reg_10_ ( .D(z_inst_internal[10]), .CK(clock), .Q(
        z_inst_pipe1[10]) );
  DFF_X1 z_inst_pipe2_reg_10_ ( .D(z_inst_pipe1[10]), .CK(clock), .Q(
        z_inst_pipe2[10]) );
  DFF_X1 z_inst_pipe1_reg_9_ ( .D(z_inst_internal[9]), .CK(clock), .Q(
        z_inst_pipe1[9]) );
  DFF_X1 z_inst_pipe2_reg_9_ ( .D(z_inst_pipe1[9]), .CK(clock), .Q(
        z_inst_pipe2[9]) );
  DFF_X1 z_inst_pipe1_reg_8_ ( .D(z_inst_internal[8]), .CK(clock), .Q(
        z_inst_pipe1[8]) );
  DFF_X1 z_inst_pipe2_reg_8_ ( .D(z_inst_pipe1[8]), .CK(clock), .Q(
        z_inst_pipe2[8]) );
  DFF_X1 z_inst_pipe1_reg_7_ ( .D(z_inst_internal[7]), .CK(clock), .Q(
        z_inst_pipe1[7]) );
  DFF_X1 z_inst_pipe2_reg_7_ ( .D(z_inst_pipe1[7]), .CK(clock), .Q(
        z_inst_pipe2[7]) );
  DFF_X1 z_inst_pipe1_reg_6_ ( .D(z_inst_internal[6]), .CK(clock), .Q(
        z_inst_pipe1[6]) );
  DFF_X1 z_inst_pipe2_reg_6_ ( .D(z_inst_pipe1[6]), .CK(clock), .Q(
        z_inst_pipe2[6]) );
  DFF_X1 z_inst_pipe1_reg_5_ ( .D(z_inst_internal[5]), .CK(clock), .Q(
        z_inst_pipe1[5]) );
  DFF_X1 z_inst_pipe2_reg_5_ ( .D(z_inst_pipe1[5]), .CK(clock), .Q(
        z_inst_pipe2[5]) );
  DFF_X1 z_inst_pipe1_reg_4_ ( .D(z_inst_internal[4]), .CK(clock), .Q(
        z_inst_pipe1[4]) );
  DFF_X1 z_inst_pipe2_reg_4_ ( .D(z_inst_pipe1[4]), .CK(clock), .Q(
        z_inst_pipe2[4]) );
  DFF_X1 z_inst_pipe1_reg_3_ ( .D(z_inst_internal[3]), .CK(clock), .Q(
        z_inst_pipe1[3]) );
  DFF_X1 z_inst_pipe2_reg_3_ ( .D(z_inst_pipe1[3]), .CK(clock), .Q(
        z_inst_pipe2[3]) );
  DFF_X1 z_inst_pipe1_reg_2_ ( .D(z_inst_internal[2]), .CK(clock), .Q(
        z_inst_pipe1[2]) );
  DFF_X1 z_inst_pipe2_reg_2_ ( .D(z_inst_pipe1[2]), .CK(clock), .Q(
        z_inst_pipe2[2]) );
  DFF_X1 z_inst_pipe1_reg_1_ ( .D(z_inst_internal[1]), .CK(clock), .Q(
        z_inst_pipe1[1]) );
  DFF_X1 z_inst_pipe2_reg_1_ ( .D(z_inst_pipe1[1]), .CK(clock), .Q(
        z_inst_pipe2[1]) );
  DFF_X1 z_inst_pipe1_reg_0_ ( .D(z_inst_internal[0]), .CK(clock), .Q(
        z_inst_pipe1[0]) );
  DFF_X1 z_inst_pipe2_reg_0_ ( .D(z_inst_pipe1[0]), .CK(clock), .Q(
        z_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe3_reg_23_ ( .D(z_inst_pipe2[23]), .CK(clock), .Q(opt[23])
         );
  DFF_X1 z_inst_pipe3_reg_22_ ( .D(z_inst_pipe2[22]), .CK(clock), .Q(opt[22])
         );
  DFF_X1 z_inst_pipe3_reg_21_ ( .D(z_inst_pipe2[21]), .CK(clock), .Q(opt[21])
         );
  DFF_X1 z_inst_pipe3_reg_20_ ( .D(z_inst_pipe2[20]), .CK(clock), .Q(opt[20])
         );
  DFF_X1 z_inst_pipe3_reg_19_ ( .D(z_inst_pipe2[19]), .CK(clock), .Q(opt[19])
         );
  DFF_X1 z_inst_pipe3_reg_18_ ( .D(z_inst_pipe2[18]), .CK(clock), .Q(opt[18])
         );
  DFF_X1 z_inst_pipe3_reg_17_ ( .D(z_inst_pipe2[17]), .CK(clock), .Q(opt[17])
         );
  DFF_X1 z_inst_pipe3_reg_16_ ( .D(z_inst_pipe2[16]), .CK(clock), .Q(opt[16])
         );
  DFF_X1 z_inst_pipe3_reg_15_ ( .D(z_inst_pipe2[15]), .CK(clock), .Q(opt[15])
         );
  DFF_X1 z_inst_pipe3_reg_14_ ( .D(z_inst_pipe2[14]), .CK(clock), .Q(opt[14])
         );
  DFF_X1 z_inst_pipe3_reg_13_ ( .D(z_inst_pipe2[13]), .CK(clock), .Q(opt[13])
         );
  DFF_X1 z_inst_pipe3_reg_12_ ( .D(z_inst_pipe2[12]), .CK(clock), .Q(opt[12])
         );
  DFF_X1 z_inst_pipe3_reg_11_ ( .D(z_inst_pipe2[11]), .CK(clock), .Q(opt[11])
         );
  DFF_X1 z_inst_pipe3_reg_10_ ( .D(z_inst_pipe2[10]), .CK(clock), .Q(opt[10])
         );
  DFF_X1 z_inst_pipe3_reg_9_ ( .D(z_inst_pipe2[9]), .CK(clock), .Q(opt[9]) );
  DFF_X1 z_inst_pipe3_reg_8_ ( .D(z_inst_pipe2[8]), .CK(clock), .Q(opt[8]) );
  DFF_X1 z_inst_pipe3_reg_7_ ( .D(z_inst_pipe2[7]), .CK(clock), .Q(opt[7]) );
  DFF_X1 z_inst_pipe3_reg_6_ ( .D(z_inst_pipe2[6]), .CK(clock), .Q(opt[6]) );
  DFF_X1 z_inst_pipe3_reg_5_ ( .D(z_inst_pipe2[5]), .CK(clock), .Q(opt[5]) );
  DFF_X1 z_inst_pipe3_reg_4_ ( .D(z_inst_pipe2[4]), .CK(clock), .Q(opt[4]) );
  DFF_X1 z_inst_pipe3_reg_3_ ( .D(z_inst_pipe2[3]), .CK(clock), .Q(opt[3]) );
  DFF_X1 z_inst_pipe3_reg_2_ ( .D(z_inst_pipe2[2]), .CK(clock), .Q(opt[2]) );
  DFF_X1 z_inst_pipe3_reg_1_ ( .D(z_inst_pipe2[1]), .CK(clock), .Q(opt[1]) );
  DFF_X1 z_inst_pipe3_reg_0_ ( .D(z_inst_pipe2[0]), .CK(clock), .Q(opt[0]) );
  DFF_X1 status_inst_pipe3_reg_5_ ( .D(status_inst_pipe2[5]), .CK(clock), .Q(
        status[5]) );
  DFF_X1 status_inst_pipe3_reg_4_ ( .D(status_inst_pipe2[4]), .CK(clock), .Q(
        status[4]) );
  DFF_X1 status_inst_pipe3_reg_2_ ( .D(status_inst_pipe2[2]), .CK(clock), .Q(
        status[2]) );
  DFF_X1 status_inst_pipe3_reg_1_ ( .D(status_inst_pipe2[1]), .CK(clock), .Q(
        status[1]) );
  DFF_X1 status_inst_pipe3_reg_0_ ( .D(status_inst_pipe2[0]), .CK(clock), .Q(
        status[0]) );
endmodule


module fp_addsub_24_0 ( in1, in2, mode, opt, clock, status );
  input [23:0] in1;
  input [23:0] in2;
  output [23:0] opt;
  output [7:0] status;
  input mode, clock;
  wire   U1_n46, U1_Elz_1_, U1_Elz_2_, U1_Elz_3_, U1_Elz_4_, U1_Elz_5_,
         U1_Elz_6_, U1_E1_1_, U1_E1_2_, U1_E1_3_, U1_E1_4_, U1_E1_5_,
         U1_a_norm_5_, U1_a_norm_6_, U1_a_norm_7_, U1_a_norm_8_, U1_a_norm_10_,
         U1_a_norm_11_, U1_a_norm_12_, U1_a_norm_14_, U1_a_norm_15_,
         U1_a_norm_16_, U1_adder_output_0_, U1_adder_output_1_,
         U1_adder_output_2_, U1_adder_output_3_, U1_adder_output_4_,
         U1_adder_output_5_, U1_adder_output_6_, U1_adder_output_7_,
         U1_adder_output_8_, U1_adder_output_9_, U1_adder_output_10_,
         U1_adder_output_11_, U1_adder_output_12_, U1_adder_output_13_,
         U1_adder_output_14_, U1_adder_output_15_, U1_adder_output_16_,
         U1_adder_output_17_, U1_adder_output_18_, U1_adder_output_19_,
         U1_adder_output_20_, U1_N140, U1_N139, U1_N138, U1_N137, U1_N136,
         U1_N135, U1_N134, U1_N133, U1_N132, U1_N131, U1_N130, U1_N129,
         U1_N128, U1_N127, U1_N126, U1_N125, U1_N124, U1_N123, U1_N122,
         U1_sig_aligned2_0_, U1_sig_aligned2_1_, U1_sig_aligned2_2_,
         U1_sig_aligned2_3_, U1_sig_aligned2_4_, U1_sig_aligned2_5_,
         U1_sig_aligned2_6_, U1_sig_aligned2_7_, U1_sig_aligned2_8_,
         U1_sig_aligned2_9_, U1_sig_aligned2_10_, U1_sig_aligned2_11_,
         U1_sig_aligned2_12_, U1_sig_aligned2_13_, U1_sig_aligned2_14_,
         U1_sig_aligned2_15_, U1_sig_aligned2_16_, U1_sig_aligned2_17_,
         U1_sig_aligned2_18_, U1_sig_aligned2_19_, U1_sig_aligned2_20_,
         U1_mag_exp_diff_0_, U1_mag_exp_diff_1_, U1_mag_exp_diff_2_,
         U1_mag_exp_diff_3_, U1_mag_exp_diff_4_, U1_mag_exp_diff_5_,
         U1_exp_large_int_0_, U1_exp_large_int_5_, U1_N40, U1_N39, U1_N38,
         U1_N37, U1_N35, U1_N34, U1_N33, U1_N32, U1_N31, U1_N30, U1_N29,
         U1_N28, U1_N27, U1_status_0_, U1_status_1_, U1_status_4, U1_status_5,
         U1_z_23_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617;
  wire   [23:0] z_inst_pipe1;
  wire   [5:0] status_inst_pipe1;
  wire   [23:0] z_inst_pipe2;
  wire   [5:0] status_inst_pipe2;
  wire   [1:20] U1_add_233_2_carry;
  wire   [1:5] U1_sub_218_carry;
  wire   [5:21] U1_add_233_carry;
  wire   [2:16] U1_add_271_carry;
  wire   [2:6] U1_add_274_carry;
  wire   [1:7] U1_sub_275_carry;
  wire   [15:1] U1_frac1;
  assign status[7] = 1'b0;
  assign status[6] = 1'b0;
  assign status[3] = 1'b0;

  FA_X1 U1_sub_275_U2_4 ( .A(U1_E1_4_), .B(n52), .CI(U1_sub_275_carry[4]), 
        .CO(U1_sub_275_carry[5]), .S(U1_Elz_4_) );
  FA_X1 U1_sub_275_U2_3 ( .A(U1_E1_3_), .B(n51), .CI(U1_sub_275_carry[3]), 
        .CO(U1_sub_275_carry[4]), .S(U1_Elz_3_) );
  FA_X1 U1_sub_275_U2_2 ( .A(U1_E1_2_), .B(n49), .CI(U1_sub_275_carry[2]), 
        .CO(U1_sub_275_carry[3]), .S(U1_Elz_2_) );
  FA_X1 U1_sub_275_U2_1 ( .A(U1_E1_1_), .B(n571), .CI(U1_sub_275_carry[1]), 
        .CO(U1_sub_275_carry[2]), .S(U1_Elz_1_) );
  HA_X1 U1_add_274_U1_1_5 ( .A(U1_exp_large_int_5_), .B(U1_add_274_carry[5]), 
        .CO(U1_add_274_carry[6]), .S(U1_E1_5_) );
  HA_X1 U1_add_274_U1_1_4 ( .A(n123), .B(U1_add_274_carry[4]), .CO(
        U1_add_274_carry[5]), .S(U1_E1_4_) );
  HA_X1 U1_add_274_U1_1_3 ( .A(n122), .B(U1_add_274_carry[3]), .CO(
        U1_add_274_carry[4]), .S(U1_E1_3_) );
  HA_X1 U1_add_274_U1_1_2 ( .A(n121), .B(U1_add_274_carry[2]), .CO(
        U1_add_274_carry[3]), .S(U1_E1_2_) );
  HA_X1 U1_add_274_U1_1_1 ( .A(n120), .B(n174), .CO(U1_add_274_carry[2]), .S(
        U1_E1_1_) );
  HA_X1 U1_add_271_U1_1_15 ( .A(n27), .B(U1_add_271_carry[15]), .CO(
        U1_add_271_carry[16]), .S(U1_frac1[15]) );
  HA_X1 U1_add_271_U1_1_14 ( .A(n29), .B(U1_add_271_carry[14]), .CO(
        U1_add_271_carry[15]), .S(U1_frac1[14]) );
  HA_X1 U1_add_271_U1_1_13 ( .A(n38), .B(U1_add_271_carry[13]), .CO(
        U1_add_271_carry[14]), .S(U1_frac1[13]) );
  HA_X1 U1_add_271_U1_1_12 ( .A(U1_a_norm_16_), .B(U1_add_271_carry[12]), .CO(
        U1_add_271_carry[13]), .S(U1_frac1[12]) );
  HA_X1 U1_add_271_U1_1_11 ( .A(U1_a_norm_15_), .B(U1_add_271_carry[11]), .CO(
        U1_add_271_carry[12]), .S(U1_frac1[11]) );
  HA_X1 U1_add_271_U1_1_10 ( .A(U1_a_norm_14_), .B(U1_add_271_carry[10]), .CO(
        U1_add_271_carry[11]), .S(U1_frac1[10]) );
  HA_X1 U1_add_271_U1_1_9 ( .A(n37), .B(U1_add_271_carry[9]), .CO(
        U1_add_271_carry[10]), .S(U1_frac1[9]) );
  HA_X1 U1_add_271_U1_1_8 ( .A(U1_a_norm_12_), .B(U1_add_271_carry[8]), .CO(
        U1_add_271_carry[9]), .S(U1_frac1[8]) );
  HA_X1 U1_add_271_U1_1_7 ( .A(U1_a_norm_11_), .B(U1_add_271_carry[7]), .CO(
        U1_add_271_carry[8]), .S(U1_frac1[7]) );
  HA_X1 U1_add_271_U1_1_6 ( .A(U1_a_norm_10_), .B(U1_add_271_carry[6]), .CO(
        U1_add_271_carry[7]), .S(U1_frac1[6]) );
  HA_X1 U1_add_271_U1_1_5 ( .A(n39), .B(U1_add_271_carry[5]), .CO(
        U1_add_271_carry[6]), .S(U1_frac1[5]) );
  HA_X1 U1_add_271_U1_1_4 ( .A(U1_a_norm_8_), .B(U1_add_271_carry[4]), .CO(
        U1_add_271_carry[5]), .S(U1_frac1[4]) );
  HA_X1 U1_add_271_U1_1_3 ( .A(U1_a_norm_7_), .B(U1_add_271_carry[3]), .CO(
        U1_add_271_carry[4]), .S(U1_frac1[3]) );
  HA_X1 U1_add_271_U1_1_2 ( .A(U1_a_norm_6_), .B(U1_add_271_carry[2]), .CO(
        U1_add_271_carry[3]), .S(U1_frac1[2]) );
  HA_X1 U1_add_271_U1_1_1 ( .A(U1_a_norm_5_), .B(n34), .CO(U1_add_271_carry[2]), .S(U1_frac1[1]) );
  FA_X1 U1_add_233_U1_20 ( .A(n577), .B(U1_sig_aligned2_20_), .CI(
        U1_add_233_carry[20]), .CO(U1_add_233_carry[21]), .S(U1_N139) );
  FA_X1 U1_add_233_U1_19 ( .A(n118), .B(U1_sig_aligned2_19_), .CI(
        U1_add_233_carry[19]), .CO(U1_add_233_carry[20]), .S(U1_N138) );
  FA_X1 U1_add_233_U1_18 ( .A(n117), .B(U1_sig_aligned2_18_), .CI(
        U1_add_233_carry[18]), .CO(U1_add_233_carry[19]), .S(U1_N137) );
  FA_X1 U1_add_233_U1_17 ( .A(n116), .B(U1_sig_aligned2_17_), .CI(
        U1_add_233_carry[17]), .CO(U1_add_233_carry[18]), .S(U1_N136) );
  FA_X1 U1_add_233_U1_16 ( .A(U1_N40), .B(U1_sig_aligned2_16_), .CI(
        U1_add_233_carry[16]), .CO(U1_add_233_carry[17]), .S(U1_N135) );
  FA_X1 U1_add_233_U1_15 ( .A(U1_N39), .B(U1_sig_aligned2_15_), .CI(
        U1_add_233_carry[15]), .CO(U1_add_233_carry[16]), .S(U1_N134) );
  FA_X1 U1_add_233_U1_14 ( .A(U1_N38), .B(U1_sig_aligned2_14_), .CI(
        U1_add_233_carry[14]), .CO(U1_add_233_carry[15]), .S(U1_N133) );
  FA_X1 U1_add_233_U1_13 ( .A(U1_N37), .B(U1_sig_aligned2_13_), .CI(
        U1_add_233_carry[13]), .CO(U1_add_233_carry[14]), .S(U1_N132) );
  FA_X1 U1_add_233_U1_12 ( .A(n115), .B(U1_sig_aligned2_12_), .CI(
        U1_add_233_carry[12]), .CO(U1_add_233_carry[13]), .S(U1_N131) );
  FA_X1 U1_add_233_U1_11 ( .A(U1_N35), .B(U1_sig_aligned2_11_), .CI(
        U1_add_233_carry[11]), .CO(U1_add_233_carry[12]), .S(U1_N130) );
  FA_X1 U1_add_233_U1_10 ( .A(U1_N34), .B(U1_sig_aligned2_10_), .CI(
        U1_add_233_carry[10]), .CO(U1_add_233_carry[11]), .S(U1_N129) );
  FA_X1 U1_add_233_U1_9 ( .A(U1_N33), .B(U1_sig_aligned2_9_), .CI(
        U1_add_233_carry[9]), .CO(U1_add_233_carry[10]), .S(U1_N128) );
  FA_X1 U1_add_233_U1_8 ( .A(U1_N32), .B(U1_sig_aligned2_8_), .CI(
        U1_add_233_carry[8]), .CO(U1_add_233_carry[9]), .S(U1_N127) );
  FA_X1 U1_add_233_U1_7 ( .A(U1_N31), .B(U1_sig_aligned2_7_), .CI(
        U1_add_233_carry[7]), .CO(U1_add_233_carry[8]), .S(U1_N126) );
  FA_X1 U1_add_233_U1_6 ( .A(U1_N30), .B(U1_sig_aligned2_6_), .CI(
        U1_add_233_carry[6]), .CO(U1_add_233_carry[7]), .S(U1_N125) );
  FA_X1 U1_add_233_U1_5 ( .A(U1_N29), .B(U1_sig_aligned2_5_), .CI(
        U1_add_233_carry[5]), .CO(U1_add_233_carry[6]), .S(U1_N124) );
  FA_X1 U1_add_233_U1_4 ( .A(U1_N28), .B(U1_sig_aligned2_4_), .CI(n169), .CO(
        U1_add_233_carry[5]), .S(U1_N123) );
  FA_X1 U1_sub_218_U2_5 ( .A(U1_exp_large_int_5_), .B(n140), .CI(
        U1_sub_218_carry[5]), .S(U1_mag_exp_diff_5_) );
  FA_X1 U1_sub_218_U2_4 ( .A(n123), .B(n572), .CI(U1_sub_218_carry[4]), .CO(
        U1_sub_218_carry[5]), .S(U1_mag_exp_diff_4_) );
  FA_X1 U1_sub_218_U2_3 ( .A(n122), .B(n573), .CI(U1_sub_218_carry[3]), .CO(
        U1_sub_218_carry[4]), .S(U1_mag_exp_diff_3_) );
  FA_X1 U1_sub_218_U2_2 ( .A(n121), .B(n574), .CI(U1_sub_218_carry[2]), .CO(
        U1_sub_218_carry[3]), .S(U1_mag_exp_diff_2_) );
  FA_X1 U1_sub_218_U2_1 ( .A(n120), .B(n575), .CI(U1_sub_218_carry[1]), .CO(
        U1_sub_218_carry[2]), .S(U1_mag_exp_diff_1_) );
  DFF_X1 status_inst_pipe1_reg_5_ ( .D(U1_status_5), .CK(clock), .Q(
        status_inst_pipe1[5]) );
  DFF_X1 status_inst_pipe2_reg_5_ ( .D(status_inst_pipe1[5]), .CK(clock), .Q(
        status_inst_pipe2[5]) );
  DFF_X1 status_inst_pipe1_reg_4_ ( .D(U1_status_4), .CK(clock), .Q(
        status_inst_pipe1[4]) );
  DFF_X1 status_inst_pipe2_reg_4_ ( .D(status_inst_pipe1[4]), .CK(clock), .Q(
        status_inst_pipe2[4]) );
  DFF_X1 status_inst_pipe1_reg_2_ ( .D(n79), .CK(clock), .Q(
        status_inst_pipe1[2]) );
  DFF_X1 status_inst_pipe2_reg_2_ ( .D(status_inst_pipe1[2]), .CK(clock), .Q(
        status_inst_pipe2[2]) );
  DFF_X1 status_inst_pipe1_reg_1_ ( .D(U1_status_1_), .CK(clock), .Q(
        status_inst_pipe1[1]) );
  DFF_X1 status_inst_pipe2_reg_1_ ( .D(status_inst_pipe1[1]), .CK(clock), .Q(
        status_inst_pipe2[1]) );
  DFF_X1 status_inst_pipe1_reg_0_ ( .D(U1_status_0_), .CK(clock), .Q(
        status_inst_pipe1[0]) );
  DFF_X1 status_inst_pipe2_reg_0_ ( .D(status_inst_pipe1[0]), .CK(clock), .Q(
        status_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe1_reg_23_ ( .D(U1_z_23_), .CK(clock), .Q(z_inst_pipe1[23])
         );
  DFF_X1 z_inst_pipe2_reg_23_ ( .D(z_inst_pipe1[23]), .CK(clock), .Q(
        z_inst_pipe2[23]) );
  DFF_X1 z_inst_pipe1_reg_22_ ( .D(n565), .CK(clock), .Q(z_inst_pipe1[22]) );
  DFF_X1 z_inst_pipe2_reg_22_ ( .D(z_inst_pipe1[22]), .CK(clock), .Q(
        z_inst_pipe2[22]) );
  DFF_X1 z_inst_pipe1_reg_21_ ( .D(n566), .CK(clock), .Q(z_inst_pipe1[21]) );
  DFF_X1 z_inst_pipe2_reg_21_ ( .D(z_inst_pipe1[21]), .CK(clock), .Q(
        z_inst_pipe2[21]) );
  DFF_X1 z_inst_pipe1_reg_20_ ( .D(n567), .CK(clock), .Q(z_inst_pipe1[20]) );
  DFF_X1 z_inst_pipe2_reg_20_ ( .D(z_inst_pipe1[20]), .CK(clock), .Q(
        z_inst_pipe2[20]) );
  DFF_X1 z_inst_pipe1_reg_19_ ( .D(n568), .CK(clock), .Q(z_inst_pipe1[19]) );
  DFF_X1 z_inst_pipe2_reg_19_ ( .D(z_inst_pipe1[19]), .CK(clock), .Q(
        z_inst_pipe2[19]) );
  DFF_X1 z_inst_pipe1_reg_18_ ( .D(n569), .CK(clock), .Q(z_inst_pipe1[18]) );
  DFF_X1 z_inst_pipe2_reg_18_ ( .D(z_inst_pipe1[18]), .CK(clock), .Q(
        z_inst_pipe2[18]) );
  DFF_X1 z_inst_pipe1_reg_17_ ( .D(n570), .CK(clock), .Q(z_inst_pipe1[17]) );
  DFF_X1 z_inst_pipe2_reg_17_ ( .D(z_inst_pipe1[17]), .CK(clock), .Q(
        z_inst_pipe2[17]) );
  DFF_X1 z_inst_pipe1_reg_16_ ( .D(n561), .CK(clock), .Q(z_inst_pipe1[16]) );
  DFF_X1 z_inst_pipe2_reg_16_ ( .D(z_inst_pipe1[16]), .CK(clock), .Q(
        z_inst_pipe2[16]) );
  DFF_X1 z_inst_pipe1_reg_15_ ( .D(n13), .CK(clock), .Q(z_inst_pipe1[15]) );
  DFF_X1 z_inst_pipe2_reg_15_ ( .D(z_inst_pipe1[15]), .CK(clock), .Q(
        z_inst_pipe2[15]) );
  DFF_X1 z_inst_pipe1_reg_14_ ( .D(n12), .CK(clock), .Q(z_inst_pipe1[14]) );
  DFF_X1 z_inst_pipe2_reg_14_ ( .D(z_inst_pipe1[14]), .CK(clock), .Q(
        z_inst_pipe2[14]) );
  DFF_X1 z_inst_pipe1_reg_13_ ( .D(n11), .CK(clock), .Q(z_inst_pipe1[13]) );
  DFF_X1 z_inst_pipe2_reg_13_ ( .D(z_inst_pipe1[13]), .CK(clock), .Q(
        z_inst_pipe2[13]) );
  DFF_X1 z_inst_pipe1_reg_12_ ( .D(n10), .CK(clock), .Q(z_inst_pipe1[12]) );
  DFF_X1 z_inst_pipe2_reg_12_ ( .D(z_inst_pipe1[12]), .CK(clock), .Q(
        z_inst_pipe2[12]) );
  DFF_X1 z_inst_pipe1_reg_11_ ( .D(n9), .CK(clock), .Q(z_inst_pipe1[11]) );
  DFF_X1 z_inst_pipe2_reg_11_ ( .D(z_inst_pipe1[11]), .CK(clock), .Q(
        z_inst_pipe2[11]) );
  DFF_X1 z_inst_pipe1_reg_10_ ( .D(n8), .CK(clock), .Q(z_inst_pipe1[10]) );
  DFF_X1 z_inst_pipe2_reg_10_ ( .D(z_inst_pipe1[10]), .CK(clock), .Q(
        z_inst_pipe2[10]) );
  DFF_X1 z_inst_pipe1_reg_9_ ( .D(n562), .CK(clock), .Q(z_inst_pipe1[9]) );
  DFF_X1 z_inst_pipe2_reg_9_ ( .D(z_inst_pipe1[9]), .CK(clock), .Q(
        z_inst_pipe2[9]) );
  DFF_X1 z_inst_pipe1_reg_8_ ( .D(n7), .CK(clock), .Q(z_inst_pipe1[8]) );
  DFF_X1 z_inst_pipe2_reg_8_ ( .D(z_inst_pipe1[8]), .CK(clock), .Q(
        z_inst_pipe2[8]) );
  DFF_X1 z_inst_pipe1_reg_7_ ( .D(n6), .CK(clock), .Q(z_inst_pipe1[7]) );
  DFF_X1 z_inst_pipe2_reg_7_ ( .D(z_inst_pipe1[7]), .CK(clock), .Q(
        z_inst_pipe2[7]) );
  DFF_X1 z_inst_pipe1_reg_6_ ( .D(n5), .CK(clock), .Q(z_inst_pipe1[6]) );
  DFF_X1 z_inst_pipe2_reg_6_ ( .D(z_inst_pipe1[6]), .CK(clock), .Q(
        z_inst_pipe2[6]) );
  DFF_X1 z_inst_pipe1_reg_5_ ( .D(n563), .CK(clock), .Q(z_inst_pipe1[5]) );
  DFF_X1 z_inst_pipe2_reg_5_ ( .D(z_inst_pipe1[5]), .CK(clock), .Q(
        z_inst_pipe2[5]) );
  DFF_X1 z_inst_pipe1_reg_4_ ( .D(n4), .CK(clock), .Q(z_inst_pipe1[4]) );
  DFF_X1 z_inst_pipe2_reg_4_ ( .D(z_inst_pipe1[4]), .CK(clock), .Q(
        z_inst_pipe2[4]) );
  DFF_X1 z_inst_pipe1_reg_3_ ( .D(n3), .CK(clock), .Q(z_inst_pipe1[3]) );
  DFF_X1 z_inst_pipe2_reg_3_ ( .D(z_inst_pipe1[3]), .CK(clock), .Q(
        z_inst_pipe2[3]) );
  DFF_X1 z_inst_pipe1_reg_2_ ( .D(n2), .CK(clock), .Q(z_inst_pipe1[2]) );
  DFF_X1 z_inst_pipe2_reg_2_ ( .D(z_inst_pipe1[2]), .CK(clock), .Q(
        z_inst_pipe2[2]) );
  DFF_X1 z_inst_pipe1_reg_1_ ( .D(n1), .CK(clock), .Q(z_inst_pipe1[1]) );
  DFF_X1 z_inst_pipe2_reg_1_ ( .D(z_inst_pipe1[1]), .CK(clock), .Q(
        z_inst_pipe2[1]) );
  DFF_X1 z_inst_pipe1_reg_0_ ( .D(n564), .CK(clock), .Q(z_inst_pipe1[0]) );
  DFF_X1 z_inst_pipe2_reg_0_ ( .D(z_inst_pipe1[0]), .CK(clock), .Q(
        z_inst_pipe2[0]) );
  DFF_X1 z_inst_pipe3_reg_23_ ( .D(z_inst_pipe2[23]), .CK(clock), .Q(opt[23])
         );
  DFF_X1 z_inst_pipe3_reg_22_ ( .D(z_inst_pipe2[22]), .CK(clock), .Q(opt[22])
         );
  DFF_X1 z_inst_pipe3_reg_21_ ( .D(z_inst_pipe2[21]), .CK(clock), .Q(opt[21])
         );
  DFF_X1 z_inst_pipe3_reg_20_ ( .D(z_inst_pipe2[20]), .CK(clock), .Q(opt[20])
         );
  DFF_X1 z_inst_pipe3_reg_19_ ( .D(z_inst_pipe2[19]), .CK(clock), .Q(opt[19])
         );
  DFF_X1 z_inst_pipe3_reg_18_ ( .D(z_inst_pipe2[18]), .CK(clock), .Q(opt[18])
         );
  DFF_X1 z_inst_pipe3_reg_17_ ( .D(z_inst_pipe2[17]), .CK(clock), .Q(opt[17])
         );
  DFF_X1 z_inst_pipe3_reg_16_ ( .D(z_inst_pipe2[16]), .CK(clock), .Q(opt[16])
         );
  DFF_X1 z_inst_pipe3_reg_15_ ( .D(z_inst_pipe2[15]), .CK(clock), .Q(opt[15])
         );
  DFF_X1 z_inst_pipe3_reg_14_ ( .D(z_inst_pipe2[14]), .CK(clock), .Q(opt[14])
         );
  DFF_X1 z_inst_pipe3_reg_13_ ( .D(z_inst_pipe2[13]), .CK(clock), .Q(opt[13])
         );
  DFF_X1 z_inst_pipe3_reg_12_ ( .D(z_inst_pipe2[12]), .CK(clock), .Q(opt[12])
         );
  DFF_X1 z_inst_pipe3_reg_11_ ( .D(z_inst_pipe2[11]), .CK(clock), .Q(opt[11])
         );
  DFF_X1 z_inst_pipe3_reg_10_ ( .D(z_inst_pipe2[10]), .CK(clock), .Q(opt[10])
         );
  DFF_X1 z_inst_pipe3_reg_9_ ( .D(z_inst_pipe2[9]), .CK(clock), .Q(opt[9]) );
  DFF_X1 z_inst_pipe3_reg_8_ ( .D(z_inst_pipe2[8]), .CK(clock), .Q(opt[8]) );
  DFF_X1 z_inst_pipe3_reg_7_ ( .D(z_inst_pipe2[7]), .CK(clock), .Q(opt[7]) );
  DFF_X1 z_inst_pipe3_reg_6_ ( .D(z_inst_pipe2[6]), .CK(clock), .Q(opt[6]) );
  DFF_X1 z_inst_pipe3_reg_5_ ( .D(z_inst_pipe2[5]), .CK(clock), .Q(opt[5]) );
  DFF_X1 z_inst_pipe3_reg_4_ ( .D(z_inst_pipe2[4]), .CK(clock), .Q(opt[4]) );
  DFF_X1 z_inst_pipe3_reg_3_ ( .D(z_inst_pipe2[3]), .CK(clock), .Q(opt[3]) );
  DFF_X1 z_inst_pipe3_reg_2_ ( .D(z_inst_pipe2[2]), .CK(clock), .Q(opt[2]) );
  DFF_X1 z_inst_pipe3_reg_1_ ( .D(z_inst_pipe2[1]), .CK(clock), .Q(opt[1]) );
  DFF_X1 z_inst_pipe3_reg_0_ ( .D(z_inst_pipe2[0]), .CK(clock), .Q(opt[0]) );
  DFF_X1 status_inst_pipe3_reg_5_ ( .D(status_inst_pipe2[5]), .CK(clock), .Q(
        status[5]) );
  DFF_X1 status_inst_pipe3_reg_4_ ( .D(status_inst_pipe2[4]), .CK(clock), .Q(
        status[4]) );
  DFF_X1 status_inst_pipe3_reg_2_ ( .D(status_inst_pipe2[2]), .CK(clock), .Q(
        status[2]) );
  DFF_X1 status_inst_pipe3_reg_1_ ( .D(status_inst_pipe2[1]), .CK(clock), .Q(
        status[1]) );
  DFF_X1 status_inst_pipe3_reg_0_ ( .D(status_inst_pipe2[0]), .CK(clock), .Q(
        status[0]) );
  NAND3_X2 U8 ( .A1(n15), .A2(n187), .A3(U1_add_271_carry[16]), .ZN(n188) );
  OAI221_X2 U11 ( .B1(U1_adder_output_19_), .B2(n196), .C1(U1_adder_output_18_), .C2(n197), .A(n198), .ZN(n195) );
  OAI22_X2 U20 ( .A1(n207), .A2(n19), .B1(n208), .B2(n209), .ZN(n562) );
  OAI22_X2 U24 ( .A1(n207), .A2(n21), .B1(n208), .B2(n213), .ZN(n563) );
  OAI221_X2 U29 ( .B1(n208), .B2(n218), .C1(n34), .C2(n207), .A(n219), .ZN(
        n564) );
  NAND4_X2 U30 ( .A1(n207), .A2(n220), .A3(n221), .A4(n222), .ZN(n208) );
  AND3_X2 U31 ( .A1(n223), .A2(n16), .A3(n219), .ZN(n222) );
  NAND3_X2 U32 ( .A1(n219), .A2(n16), .A3(n224), .ZN(n207) );
  OAI221_X2 U33 ( .B1(n145), .B2(n225), .C1(n24), .C2(n41), .A(n226), .ZN(n565) );
  NAND2_X2 U34 ( .A1(U1_E1_5_), .A2(n227), .ZN(n226) );
  OAI221_X2 U35 ( .B1(n228), .B2(n225), .C1(n24), .C2(n42), .A(n229), .ZN(n566) );
  NAND2_X2 U36 ( .A1(U1_E1_4_), .A2(n227), .ZN(n229) );
  OAI221_X2 U37 ( .B1(n230), .B2(n225), .C1(n24), .C2(n43), .A(n231), .ZN(n567) );
  NAND2_X2 U38 ( .A1(U1_E1_3_), .A2(n227), .ZN(n231) );
  OAI221_X2 U39 ( .B1(n232), .B2(n225), .C1(n24), .C2(n44), .A(n233), .ZN(n568) );
  NAND2_X2 U40 ( .A1(U1_E1_2_), .A2(n227), .ZN(n233) );
  OAI221_X2 U41 ( .B1(n234), .B2(n225), .C1(n24), .C2(n45), .A(n235), .ZN(n569) );
  NAND2_X2 U42 ( .A1(U1_E1_1_), .A2(n227), .ZN(n235) );
  NOR2_X2 U43 ( .A1(n17), .A2(n23), .ZN(n227) );
  NAND2_X2 U44 ( .A1(n17), .A2(n236), .ZN(n225) );
  OAI22_X2 U45 ( .A1(n23), .A2(n237), .B1(n24), .B2(n168), .ZN(n570) );
  XOR2_X2 U47 ( .A(n174), .B(n17), .Z(n237) );
  OAI22_X2 U48 ( .A1(n577), .A2(n242), .B1(n244), .B2(n245), .ZN(n243) );
  OAI221_X2 U49 ( .B1(n51), .B2(n246), .C1(n52), .C2(n247), .A(n248), .ZN(n242) );
  OAI221_X2 U51 ( .B1(U1_adder_output_20_), .B2(n196), .C1(U1_adder_output_19_), .C2(n197), .A(n251), .ZN(n250) );
  NOR2_X2 U54 ( .A1(n255), .A2(n245), .ZN(n254) );
  NOR2_X2 U55 ( .A1(n137), .A2(n138), .ZN(n576) );
  NOR4_X2 U56 ( .A1(n79), .A2(n240), .A3(n256), .A4(n257), .ZN(U1_z_23_) );
  NOR2_X2 U57 ( .A1(n223), .A2(n255), .ZN(n257) );
  NOR3_X2 U61 ( .A1(n261), .A2(n244), .A3(n245), .ZN(U1_status_4) );
  NAND4_X2 U63 ( .A1(n262), .A2(n263), .A3(n264), .A4(n265), .ZN(n253) );
  NOR4_X2 U64 ( .A1(n266), .A2(n267), .A3(n75), .A4(n74), .ZN(n265) );
  NAND3_X2 U65 ( .A1(U1_adder_output_19_), .A2(U1_adder_output_18_), .A3(
        U1_adder_output_3_), .ZN(n267) );
  NAND4_X2 U66 ( .A1(U1_adder_output_9_), .A2(U1_adder_output_8_), .A3(
        U1_adder_output_7_), .A4(U1_adder_output_6_), .ZN(n266) );
  NOR4_X2 U67 ( .A1(n63), .A2(n62), .A3(n61), .A4(n60), .ZN(n264) );
  AND3_X2 U68 ( .A1(U1_adder_output_11_), .A2(n224), .A3(U1_adder_output_10_), 
        .ZN(n263) );
  AOI221_X2 U70 ( .B1(n50), .B2(n268), .C1(n48), .C2(n30), .A(
        U1_adder_output_0_), .ZN(n260) );
  NOR2_X2 U71 ( .A1(n65), .A2(n64), .ZN(n262) );
  NOR2_X2 U72 ( .A1(n245), .A2(n269), .ZN(n219) );
  AND4_X2 U73 ( .A1(n138), .A2(n139), .A3(n80), .A4(n270), .ZN(n269) );
  NOR4_X2 U74 ( .A1(n140), .A2(n572), .A3(n573), .A4(n574), .ZN(n270) );
  NAND2_X2 U76 ( .A1(n138), .A2(n139), .ZN(n274) );
  NAND4_X2 U77 ( .A1(n143), .A2(n142), .A3(n141), .A4(n271), .ZN(n272) );
  NOR3_X2 U79 ( .A1(n276), .A2(n277), .A3(n278), .ZN(n240) );
  NAND2_X2 U80 ( .A1(U1_sub_275_carry[7]), .A2(n279), .ZN(n239) );
  NAND4_X2 U81 ( .A1(n45), .A2(n44), .A3(n168), .A4(n280), .ZN(n279) );
  NOR4_X2 U82 ( .A1(U1_Elz_6_), .A2(U1_Elz_5_), .A3(U1_Elz_4_), .A4(U1_Elz_3_), 
        .ZN(n280) );
  XOR2_X2 U83 ( .A(n80), .B(n281), .Z(U1_sig_aligned2_9_) );
  XOR2_X2 U85 ( .A(n285), .B(n80), .Z(U1_sig_aligned2_8_) );
  OAI221_X2 U87 ( .B1(n92), .B2(n290), .C1(n291), .C2(n255), .A(n292), .ZN(
        U1_sig_aligned2_7_) );
  AOI221_X2 U88 ( .B1(n293), .B2(n294), .C1(n295), .C2(n296), .A(n297), .ZN(
        n291) );
  OAI221_X2 U90 ( .B1(n290), .B2(n90), .C1(n300), .C2(n255), .A(n292), .ZN(
        U1_sig_aligned2_6_) );
  OAI221_X2 U93 ( .B1(n290), .B2(n89), .C1(n308), .C2(n255), .A(n292), .ZN(
        U1_sig_aligned2_5_) );
  OAI221_X2 U96 ( .B1(n290), .B2(n311), .C1(n83), .C2(n255), .A(n292), .ZN(
        U1_sig_aligned2_4_) );
  AOI221_X2 U98 ( .B1(n306), .B2(n287), .C1(n294), .C2(n286), .A(
        U1_mag_exp_diff_5_), .ZN(n314) );
  OAI221_X2 U99 ( .B1(n315), .B2(n316), .C1(n317), .C2(n318), .A(n319), .ZN(
        n286) );
  NOR2_X2 U101 ( .A1(n100), .A2(U1_mag_exp_diff_3_), .ZN(n294) );
  OAI221_X2 U103 ( .B1(n322), .B2(n323), .C1(n130), .C2(n324), .A(n325), .ZN(
        n321) );
  NOR2_X2 U105 ( .A1(n100), .A2(n99), .ZN(n296) );
  OAI221_X2 U106 ( .B1(n290), .B2(n327), .C1(n84), .C2(n255), .A(n292), .ZN(
        U1_sig_aligned2_3_) );
  OAI221_X2 U107 ( .B1(n328), .B2(n326), .C1(n298), .C2(n100), .A(n329), .ZN(
        n327) );
  AOI221_X2 U108 ( .B1(n306), .B2(n293), .C1(U1_mag_exp_diff_4_), .C2(n330), 
        .A(U1_mag_exp_diff_5_), .ZN(n329) );
  NAND2_X2 U109 ( .A1(n302), .A2(n107), .ZN(n330) );
  NOR2_X2 U110 ( .A1(n99), .A2(U1_mag_exp_diff_2_), .ZN(n306) );
  OAI221_X2 U112 ( .B1(n323), .B2(n317), .C1(n324), .C2(n322), .A(n332), .ZN(
        n331) );
  NAND2_X2 U114 ( .A1(n302), .A2(n96), .ZN(n326) );
  AOI221_X2 U115 ( .B1(n111), .B2(n128), .C1(n108), .C2(n124), .A(n333), .ZN(
        n328) );
  OAI22_X2 U116 ( .A1(n334), .A2(n318), .B1(n130), .B2(n316), .ZN(n333) );
  XOR2_X2 U117 ( .A(n335), .B(n80), .Z(U1_sig_aligned2_2_) );
  OAI221_X2 U118 ( .B1(n86), .B2(n301), .C1(n336), .C2(n85), .A(n337), .ZN(
        n335) );
  OAI221_X2 U121 ( .B1(n315), .B2(n323), .C1(n342), .C2(n324), .A(n343), .ZN(
        n301) );
  OAI221_X2 U123 ( .B1(n290), .B2(n344), .C1(n88), .C2(n255), .A(n292), .ZN(
        U1_sig_aligned2_20_) );
  NAND2_X2 U124 ( .A1(n312), .A2(n299), .ZN(n344) );
  AND3_X2 U125 ( .A1(n108), .A2(n345), .A3(n302), .ZN(n312) );
  XOR2_X2 U126 ( .A(n346), .B(n80), .Z(U1_sig_aligned2_1_) );
  OAI221_X2 U127 ( .B1(n87), .B2(n282), .C1(n86), .C2(n309), .A(n347), .ZN(
        n346) );
  NAND3_X2 U129 ( .A1(n302), .A2(n114), .A3(U1_mag_exp_diff_4_), .ZN(n340) );
  NOR2_X2 U130 ( .A1(U1_mag_exp_diff_2_), .A2(U1_mag_exp_diff_3_), .ZN(n302)
         );
  OAI22_X2 U131 ( .A1(n351), .A2(n323), .B1(n124), .B2(n318), .ZN(n349) );
  OAI221_X2 U132 ( .B1(n342), .B2(n316), .C1(n322), .C2(n318), .A(n352), .ZN(
        n309) );
  OAI221_X2 U134 ( .B1(n317), .B2(n316), .C1(n353), .C2(n318), .A(n354), .ZN(
        n282) );
  XOR2_X2 U136 ( .A(n356), .B(n255), .Z(U1_sig_aligned2_19_) );
  NAND2_X2 U137 ( .A1(n348), .A2(n107), .ZN(n356) );
  XOR2_X2 U138 ( .A(n357), .B(n255), .Z(U1_sig_aligned2_18_) );
  NAND2_X2 U139 ( .A1(n106), .A2(n348), .ZN(n357) );
  XOR2_X2 U140 ( .A(n358), .B(n255), .Z(U1_sig_aligned2_17_) );
  XOR2_X2 U141 ( .A(n359), .B(n80), .Z(U1_sig_aligned2_16_) );
  NOR2_X2 U142 ( .A1(n360), .A2(n289), .ZN(n359) );
  XOR2_X2 U145 ( .A(n255), .B(n363), .Z(U1_sig_aligned2_15_) );
  XOR2_X2 U147 ( .A(n255), .B(n366), .Z(U1_sig_aligned2_14_) );
  XOR2_X2 U149 ( .A(n80), .B(n367), .Z(U1_sig_aligned2_13_) );
  OAI22_X2 U150 ( .A1(n86), .A2(n283), .B1(n85), .B2(n284), .ZN(n367) );
  OAI221_X2 U151 ( .B1(n368), .B2(n316), .C1(n369), .C2(n318), .A(n370), .ZN(
        n284) );
  OAI221_X2 U153 ( .B1(n345), .B2(n323), .C1(n136), .C2(n324), .A(n372), .ZN(
        n283) );
  XOR2_X2 U155 ( .A(n375), .B(n80), .Z(U1_sig_aligned2_12_) );
  OAI221_X2 U156 ( .B1(n86), .B2(n103), .C1(n85), .C2(n287), .A(n376), .ZN(
        n375) );
  NAND3_X2 U157 ( .A1(n108), .A2(n345), .A3(n338), .ZN(n376) );
  OAI221_X2 U158 ( .B1(n132), .B2(n316), .C1(n368), .C2(n318), .A(n377), .ZN(
        n287) );
  AOI221_X2 U160 ( .B1(n378), .B2(n109), .C1(n373), .C2(n104), .A(n379), .ZN(
        n361) );
  OAI22_X2 U161 ( .A1(n323), .A2(n135), .B1(n324), .B2(n380), .ZN(n379) );
  XOR2_X2 U162 ( .A(n80), .B(n381), .Z(U1_sig_aligned2_11_) );
  AOI221_X2 U164 ( .B1(n373), .B2(n111), .C1(n133), .C2(n108), .A(n382), .ZN(
        n365) );
  OAI22_X2 U165 ( .A1(n316), .A2(n380), .B1(n318), .B2(n136), .ZN(n382) );
  OAI221_X2 U167 ( .B1(n368), .B2(n323), .C1(n353), .C2(n324), .A(n383), .ZN(
        n293) );
  XOR2_X2 U169 ( .A(n255), .B(n384), .Z(U1_sig_aligned2_10_) );
  NOR2_X2 U171 ( .A1(n100), .A2(n360), .ZN(n364) );
  OAI221_X2 U172 ( .B1(n136), .B2(n323), .C1(n368), .C2(n324), .A(n385), .ZN(
        n307) );
  NOR2_X2 U174 ( .A1(n288), .A2(U1_mag_exp_diff_2_), .ZN(n338) );
  NAND3_X2 U175 ( .A1(n114), .A2(n299), .A3(U1_mag_exp_diff_3_), .ZN(n288) );
  OAI221_X2 U176 ( .B1(n345), .B2(n110), .C1(n135), .C2(n112), .A(n386), .ZN(
        n304) );
  NAND4_X2 U178 ( .A1(n575), .A2(n574), .A3(n275), .A4(n387), .ZN(n345) );
  NOR3_X2 U179 ( .A1(n142), .A2(n271), .A3(n141), .ZN(n387) );
  NOR2_X2 U180 ( .A1(n360), .A2(U1_mag_exp_diff_2_), .ZN(n348) );
  NAND3_X2 U181 ( .A1(n299), .A2(n99), .A3(n114), .ZN(n360) );
  NOR2_X2 U182 ( .A1(U1_mag_exp_diff_5_), .A2(U1_mag_exp_diff_4_), .ZN(n299)
         );
  OAI221_X2 U183 ( .B1(n132), .B2(n323), .C1(n317), .C2(n324), .A(n388), .ZN(
        n305) );
  NAND2_X2 U186 ( .A1(U1_mag_exp_diff_0_), .A2(n110), .ZN(n316) );
  OAI221_X2 U187 ( .B1(n93), .B2(n290), .C1(n255), .C2(n389), .A(n292), .ZN(
        U1_sig_aligned2_0_) );
  NAND2_X2 U188 ( .A1(n80), .A2(n390), .ZN(n292) );
  NAND2_X2 U189 ( .A1(n114), .A2(n255), .ZN(n290) );
  NAND2_X2 U190 ( .A1(n391), .A2(n220), .ZN(n390) );
  NAND3_X2 U191 ( .A1(n120), .A2(n121), .A3(n393), .ZN(n261) );
  NOR3_X2 U192 ( .A1(n230), .A2(n228), .A3(n145), .ZN(n393) );
  NAND4_X2 U193 ( .A1(n275), .A2(n575), .A3(n273), .A4(n394), .ZN(n391) );
  NOR4_X2 U194 ( .A1(n271), .A2(n141), .A3(n142), .A4(n143), .ZN(n394) );
  OAI22_X2 U198 ( .A1(n595), .A2(n146), .B1(n597), .B2(n596), .ZN(n271) );
  AND4_X2 U199 ( .A1(n396), .A2(n374), .A3(n373), .A4(n378), .ZN(n273) );
  OAI221_X2 U202 ( .B1(n124), .B2(n323), .C1(n397), .C2(n99), .A(n398), .ZN(
        n389) );
  AOI221_X2 U203 ( .B1(U1_mag_exp_diff_4_), .B2(n399), .C1(U1_mag_exp_diff_2_), 
        .C2(n400), .A(U1_mag_exp_diff_5_), .ZN(n398) );
  OAI221_X2 U204 ( .B1(n127), .B2(n323), .C1(n129), .C2(n108), .A(n401), .ZN(
        n400) );
  NOR4_X2 U210 ( .A1(n406), .A2(n407), .A3(n341), .A4(n130), .ZN(n405) );
  NOR4_X2 U211 ( .A1(n132), .A2(n368), .A3(n369), .A4(n380), .ZN(n404) );
  OAI22_X2 U212 ( .A1(n595), .A2(n151), .B1(n604), .B2(n596), .ZN(n380) );
  OAI22_X2 U215 ( .A1(n131), .A2(n323), .B1(n409), .B2(n100), .ZN(n408) );
  NAND4_X2 U217 ( .A1(n355), .A2(n131), .A3(n126), .A4(n125), .ZN(n407) );
  OAI22_X2 U219 ( .A1(n371), .A2(n108), .B1(n133), .B2(n323), .ZN(n410) );
  OAI22_X2 U220 ( .A1(n595), .A2(n152), .B1(n605), .B2(n395), .ZN(n369) );
  OAI22_X2 U222 ( .A1(n595), .A2(n153), .B1(n606), .B2(n395), .ZN(n368) );
  OAI22_X2 U223 ( .A1(n595), .A2(n155), .B1(n609), .B2(n596), .ZN(n353) );
  NAND3_X2 U225 ( .A1(n124), .A2(n96), .A3(n351), .ZN(n402) );
  NAND4_X2 U227 ( .A1(n320), .A2(n127), .A3(n128), .A4(n129), .ZN(n406) );
  OAI22_X2 U228 ( .A1(n595), .A2(n162), .B1(n615), .B2(n596), .ZN(n334) );
  OAI22_X2 U229 ( .A1(n595), .A2(n161), .B1(n614), .B2(n395), .ZN(n342) );
  OAI22_X2 U230 ( .A1(n595), .A2(n160), .B1(n613), .B2(n395), .ZN(n322) );
  OAI22_X2 U232 ( .A1(n595), .A2(n156), .B1(n610), .B2(n395), .ZN(n317) );
  OAI22_X2 U233 ( .A1(n595), .A2(n158), .B1(n611), .B2(n395), .ZN(n315) );
  OAI22_X2 U236 ( .A1(n595), .A2(n164), .B1(n617), .B2(n395), .ZN(n341) );
  XOR2_X2 U237 ( .A(n412), .B(n256), .Z(n255) );
  XOR2_X2 U239 ( .A(in2[23]), .B(mode), .Z(n413) );
  OAI22_X2 U240 ( .A1(n595), .A2(n81), .B1(n414), .B2(n395), .ZN(n412) );
  XNOR2_X2 U241 ( .A(in2[23]), .B(mode), .ZN(n414) );
  OAI221_X2 U242 ( .B1(n415), .B2(n416), .C1(n51), .C2(n268), .A(n52), .ZN(
        n213) );
  AOI221_X2 U243 ( .B1(n192), .B2(n417), .C1(n418), .C2(n49), .A(n419), .ZN(
        U1_a_norm_8_) );
  AOI221_X2 U244 ( .B1(n192), .B2(n26), .C1(n420), .C2(n49), .A(n419), .ZN(
        U1_a_norm_7_) );
  AOI221_X2 U245 ( .B1(n192), .B2(n421), .C1(n422), .C2(n49), .A(n419), .ZN(
        U1_a_norm_6_) );
  NAND2_X2 U246 ( .A1(n48), .A2(n35), .ZN(n218) );
  OAI221_X2 U249 ( .B1(U1_adder_output_18_), .B2(n196), .C1(
        U1_adder_output_17_), .C2(n197), .A(n429), .ZN(n428) );
  OAI221_X2 U253 ( .B1(U1_adder_output_17_), .B2(n196), .C1(
        U1_adder_output_16_), .C2(n197), .A(n435), .ZN(n434) );
  NOR2_X2 U255 ( .A1(n192), .A2(n51), .ZN(n193) );
  NOR2_X2 U259 ( .A1(n440), .A2(n192), .ZN(n268) );
  OAI221_X2 U260 ( .B1(U1_adder_output_16_), .B2(n196), .C1(
        U1_adder_output_15_), .C2(n197), .A(n441), .ZN(n252) );
  NAND2_X2 U262 ( .A1(n49), .A2(n50), .ZN(n259) );
  NAND3_X2 U263 ( .A1(n442), .A2(n192), .A3(n50), .ZN(n438) );
  NAND2_X2 U264 ( .A1(n52), .A2(n51), .ZN(n419) );
  OAI22_X2 U268 ( .A1(n51), .A2(n36), .B1(n448), .B2(n416), .ZN(n191) );
  AOI221_X2 U269 ( .B1(n593), .B2(n61), .C1(n200), .C2(n64), .A(n449), .ZN(
        n448) );
  OAI22_X2 U270 ( .A1(U1_adder_output_14_), .A2(n197), .B1(U1_adder_output_15_), .B2(n196), .ZN(n449) );
  OAI22_X2 U273 ( .A1(n51), .A2(n32), .B1(n451), .B2(n416), .ZN(n426) );
  AOI221_X2 U274 ( .B1(n199), .B2(n62), .C1(n200), .C2(n65), .A(n452), .ZN(
        n451) );
  OAI22_X2 U275 ( .A1(U1_adder_output_13_), .A2(n197), .B1(U1_adder_output_14_), .B2(n196), .ZN(n452) );
  NOR2_X2 U278 ( .A1(n416), .A2(n49), .ZN(n446) );
  OAI22_X2 U279 ( .A1(n51), .A2(n31), .B1(n454), .B2(n416), .ZN(n432) );
  AOI221_X2 U280 ( .B1(n199), .B2(n63), .C1(n200), .C2(n66), .A(n455), .ZN(
        n454) );
  OAI22_X2 U281 ( .A1(U1_adder_output_12_), .A2(n197), .B1(U1_adder_output_13_), .B2(n196), .ZN(n455) );
  OAI221_X2 U282 ( .B1(n246), .B2(n416), .C1(n51), .C2(n247), .A(n52), .ZN(
        n209) );
  NAND2_X2 U284 ( .A1(n593), .A2(U1_adder_output_1_), .ZN(n440) );
  OAI221_X2 U285 ( .B1(U1_adder_output_4_), .B2(n196), .C1(U1_adder_output_3_), 
        .C2(n197), .A(n456), .ZN(n444) );
  OAI221_X2 U288 ( .B1(U1_adder_output_8_), .B2(n196), .C1(U1_adder_output_7_), 
        .C2(n197), .A(n457), .ZN(n443) );
  OAI221_X2 U290 ( .B1(U1_adder_output_12_), .B2(n196), .C1(
        U1_adder_output_11_), .C2(n197), .A(n458), .ZN(n442) );
  AOI221_X2 U292 ( .B1(n194), .B2(n459), .C1(n417), .C2(n416), .A(n460), .ZN(
        U1_a_norm_12_) );
  OAI221_X2 U294 ( .B1(U1_adder_output_7_), .B2(n196), .C1(U1_adder_output_6_), 
        .C2(n197), .A(n462), .ZN(n418) );
  OAI221_X2 U296 ( .B1(U1_adder_output_3_), .B2(n196), .C1(U1_adder_output_2_), 
        .C2(n197), .A(n463), .ZN(n417) );
  OAI221_X2 U298 ( .B1(U1_adder_output_11_), .B2(n196), .C1(
        U1_adder_output_10_), .C2(n197), .A(n464), .ZN(n194) );
  AOI221_X2 U300 ( .B1(n427), .B2(n459), .C1(n416), .C2(n26), .A(n465), .ZN(
        U1_a_norm_11_) );
  OAI221_X2 U302 ( .B1(U1_adder_output_6_), .B2(n196), .C1(U1_adder_output_5_), 
        .C2(n197), .A(n466), .ZN(n420) );
  OAI22_X2 U305 ( .A1(n47), .A2(U1_adder_output_2_), .B1(n571), .B2(
        U1_adder_output_1_), .ZN(n467) );
  OAI221_X2 U306 ( .B1(U1_adder_output_10_), .B2(n196), .C1(U1_adder_output_9_), .C2(n197), .A(n468), .ZN(n427) );
  AOI221_X2 U308 ( .B1(n433), .B2(n459), .C1(n416), .C2(n421), .A(n469), .ZN(
        U1_a_norm_10_) );
  NOR2_X2 U310 ( .A1(n436), .A2(n447), .ZN(n461) );
  NOR2_X2 U311 ( .A1(n51), .A2(n49), .ZN(n447) );
  OAI22_X2 U312 ( .A1(n470), .A2(n276), .B1(n228), .B2(n53), .ZN(n436) );
  OAI221_X2 U313 ( .B1(U1_adder_output_5_), .B2(n196), .C1(U1_adder_output_4_), 
        .C2(n197), .A(n471), .ZN(n422) );
  OAI221_X2 U315 ( .B1(U1_adder_output_2_), .B2(n472), .C1(U1_adder_output_1_), 
        .C2(n47), .A(n571), .ZN(n421) );
  NOR2_X2 U316 ( .A1(n192), .A2(n416), .ZN(n459) );
  OAI22_X2 U317 ( .A1(n470), .A2(n473), .B1(n230), .B2(n53), .ZN(n416) );
  OAI22_X2 U318 ( .A1(n470), .A2(n277), .B1(n232), .B2(n53), .ZN(n192) );
  OAI221_X2 U319 ( .B1(U1_adder_output_9_), .B2(n196), .C1(U1_adder_output_8_), 
        .C2(n197), .A(n474), .ZN(n433) );
  OAI22_X2 U323 ( .A1(n470), .A2(n278), .B1(n82), .B2(n53), .ZN(n472) );
  AOI221_X2 U334 ( .B1(n276), .B2(n485), .C1(U1_exp_large_int_5_), .C2(n486), 
        .A(n54), .ZN(n470) );
  OAI221_X2 U336 ( .B1(n230), .B2(n489), .C1(n490), .C2(n491), .A(n492), .ZN(
        n485) );
  NAND3_X2 U337 ( .A1(n277), .A2(n473), .A3(n121), .ZN(n492) );
  OAI22_X2 U338 ( .A1(n122), .A2(n473), .B1(n121), .B2(n277), .ZN(n491) );
  NAND2_X2 U342 ( .A1(n59), .A2(n58), .ZN(n496) );
  NAND2_X2 U345 ( .A1(n67), .A2(n66), .ZN(n500) );
  NAND2_X2 U348 ( .A1(U1_adder_output_1_), .A2(n77), .ZN(n484) );
  NOR2_X2 U349 ( .A1(U1_adder_output_7_), .A2(U1_adder_output_6_), .ZN(n501)
         );
  NOR2_X2 U350 ( .A1(U1_adder_output_15_), .A2(U1_adder_output_14_), .ZN(n497)
         );
  NAND3_X2 U351 ( .A1(n577), .A2(n578), .A3(n223), .ZN(U1_exp_large_int_0_) );
  NAND4_X2 U352 ( .A1(n578), .A2(n234), .A3(n113), .A4(n503), .ZN(n223) );
  NAND4_X2 U353 ( .A1(n578), .A2(n234), .A3(n392), .A4(n503), .ZN(n577) );
  NOR4_X2 U354 ( .A1(U1_exp_large_int_5_), .A2(n123), .A3(n122), .A4(n121), 
        .ZN(n503) );
  NAND3_X2 U355 ( .A1(n504), .A2(n505), .A3(n506), .ZN(n392) );
  NOR4_X2 U356 ( .A1(n507), .A2(n508), .A3(U1_N40), .A4(U1_N39), .ZN(n506) );
  NAND3_X2 U357 ( .A1(n509), .A2(n510), .A3(n511), .ZN(n508) );
  NOR4_X2 U358 ( .A1(U1_N34), .A2(U1_N33), .A3(U1_N32), .A4(U1_N31), .ZN(n505)
         );
  NOR4_X2 U359 ( .A1(U1_N30), .A2(U1_N29), .A3(U1_N28), .A4(U1_N27), .ZN(n504)
         );
  NAND2_X2 U361 ( .A1(n512), .A2(n513), .ZN(n473) );
  NAND2_X2 U363 ( .A1(n515), .A2(n516), .ZN(n277) );
  NAND3_X2 U364 ( .A1(n517), .A2(n63), .A3(n518), .ZN(n516) );
  NAND4_X2 U366 ( .A1(n77), .A2(n76), .A3(n75), .A4(n74), .ZN(n488) );
  NAND3_X2 U367 ( .A1(n514), .A2(n68), .A3(n512), .ZN(n276) );
  AND3_X2 U368 ( .A1(n515), .A2(n63), .A3(n518), .ZN(n512) );
  NOR3_X2 U369 ( .A1(U1_adder_output_15_), .A2(U1_adder_output_17_), .A3(
        U1_adder_output_16_), .ZN(n518) );
  NOR4_X2 U370 ( .A1(U1_adder_output_18_), .A2(U1_adder_output_19_), .A3(
        U1_adder_output_20_), .A4(U1_n46), .ZN(n515) );
  NAND4_X2 U371 ( .A1(n72), .A2(n71), .A3(n70), .A4(n69), .ZN(n519) );
  NOR4_X2 U372 ( .A1(U1_adder_output_10_), .A2(U1_adder_output_11_), .A3(
        U1_adder_output_12_), .A4(U1_adder_output_13_), .ZN(n514) );
  NAND2_X2 U373 ( .A1(n597), .A2(n146), .ZN(U1_exp_large_int_5_) );
  OAI22_X2 U382 ( .A1(n595), .A2(n604), .B1(n151), .B2(n395), .ZN(U1_N40) );
  OAI22_X2 U383 ( .A1(n595), .A2(n605), .B1(n152), .B2(n395), .ZN(U1_N39) );
  OAI22_X2 U384 ( .A1(n595), .A2(n606), .B1(n153), .B2(n395), .ZN(U1_N38) );
  OAI22_X2 U385 ( .A1(n595), .A2(n607), .B1(n154), .B2(n395), .ZN(U1_N37) );
  OAI22_X2 U387 ( .A1(n595), .A2(n609), .B1(n155), .B2(n596), .ZN(U1_N35) );
  OAI22_X2 U388 ( .A1(n595), .A2(n610), .B1(n156), .B2(n395), .ZN(U1_N34) );
  OAI22_X2 U389 ( .A1(n595), .A2(n611), .B1(n158), .B2(n596), .ZN(U1_N33) );
  OAI22_X2 U390 ( .A1(n595), .A2(n612), .B1(n159), .B2(n596), .ZN(U1_N32) );
  OAI22_X2 U391 ( .A1(n595), .A2(n613), .B1(n160), .B2(n596), .ZN(U1_N31) );
  OAI22_X2 U392 ( .A1(n595), .A2(n614), .B1(n161), .B2(n596), .ZN(U1_N30) );
  OAI22_X2 U393 ( .A1(n595), .A2(n615), .B1(n162), .B2(n596), .ZN(U1_N29) );
  OAI22_X2 U394 ( .A1(n595), .A2(n616), .B1(n163), .B2(n596), .ZN(U1_N28) );
  OAI22_X2 U395 ( .A1(n595), .A2(n617), .B1(n395), .B2(n164), .ZN(U1_N27) );
  NAND4_X2 U398 ( .A1(n148), .A2(n524), .A3(n525), .A4(n526), .ZN(n521) );
  NOR3_X2 U401 ( .A1(n603), .A2(in1[14]), .A3(n532), .ZN(n531) );
  OAI22_X2 U402 ( .A1(in1[13]), .A2(n604), .B1(in1[12]), .B2(n605), .ZN(n530)
         );
  AOI221_X2 U404 ( .B1(n604), .B2(in1[13]), .C1(n603), .C2(in1[14]), .A(n532), 
        .ZN(n529) );
  NOR3_X2 U407 ( .A1(n607), .A2(in1[10]), .A3(n539), .ZN(n538) );
  OAI22_X2 U408 ( .A1(in1[9]), .A2(n608), .B1(in1[8]), .B2(n609), .ZN(n537) );
  OAI221_X2 U409 ( .B1(in2[8]), .B2(n155), .C1(n540), .C2(n541), .A(n536), 
        .ZN(n534) );
  AOI221_X2 U410 ( .B1(n607), .B2(in1[10]), .C1(n608), .C2(in1[9]), .A(n539), 
        .ZN(n536) );
  NOR2_X2 U411 ( .A1(n153), .A2(in2[11]), .ZN(n539) );
  OAI221_X2 U414 ( .B1(in1[3]), .B2(n614), .C1(n545), .C2(n546), .A(n547), 
        .ZN(n543) );
  NAND3_X2 U415 ( .A1(n548), .A2(n162), .A3(in2[2]), .ZN(n547) );
  OAI22_X2 U416 ( .A1(in2[2]), .A2(n162), .B1(n549), .B2(n163), .ZN(n546) );
  NAND2_X2 U418 ( .A1(in1[3]), .A2(n614), .ZN(n548) );
  NOR2_X2 U419 ( .A1(n617), .A2(in1[0]), .ZN(n549) );
  NAND3_X2 U421 ( .A1(n553), .A2(n158), .A3(in2[6]), .ZN(n552) );
  OAI221_X2 U422 ( .B1(in2[5]), .B2(n159), .C1(in2[6]), .C2(n158), .A(n553), 
        .ZN(n544) );
  NAND2_X2 U423 ( .A1(in1[7]), .A2(n610), .ZN(n553) );
  OAI221_X2 U426 ( .B1(n555), .B2(n554), .C1(in1[21]), .C2(n598), .A(n556), 
        .ZN(n523) );
  NAND3_X2 U427 ( .A1(n557), .A2(n149), .A3(in2[20]), .ZN(n556) );
  NAND2_X2 U429 ( .A1(in1[21]), .A2(n598), .ZN(n557) );
  AOI221_X2 U430 ( .B1(in2[19]), .B2(n150), .C1(n524), .C2(n558), .A(n559), 
        .ZN(n555) );
  NOR3_X2 U431 ( .A1(n599), .A2(in1[18]), .A3(n560), .ZN(n559) );
  OAI22_X2 U432 ( .A1(in1[17]), .A2(n600), .B1(in1[16]), .B2(n601), .ZN(n558)
         );
  AOI221_X2 U433 ( .B1(n600), .B2(in1[17]), .C1(n599), .C2(in1[18]), .A(n560), 
        .ZN(n524) );
  NOR2_X2 U434 ( .A1(n150), .A2(in2[19]), .ZN(n560) );
  INV_X4 U435 ( .A(n217), .ZN(n1) );
  INV_X4 U436 ( .A(n216), .ZN(n2) );
  INV_X4 U437 ( .A(n215), .ZN(n3) );
  INV_X4 U438 ( .A(n214), .ZN(n4) );
  INV_X4 U439 ( .A(n212), .ZN(n5) );
  INV_X4 U440 ( .A(n211), .ZN(n6) );
  INV_X4 U441 ( .A(n210), .ZN(n7) );
  INV_X4 U442 ( .A(n206), .ZN(n8) );
  INV_X4 U443 ( .A(n205), .ZN(n9) );
  INV_X4 U444 ( .A(n204), .ZN(n10) );
  INV_X4 U445 ( .A(n203), .ZN(n11) );
  INV_X4 U446 ( .A(n202), .ZN(n12) );
  INV_X4 U447 ( .A(n201), .ZN(n13) );
  INV_X4 U450 ( .A(U1_status_4), .ZN(n16) );
  INV_X4 U451 ( .A(n243), .ZN(n17) );
  INV_X4 U452 ( .A(U1_add_271_carry[16]), .ZN(n18) );
  INV_X4 U453 ( .A(U1_frac1[9]), .ZN(n19) );
  INV_X4 U454 ( .A(n450), .ZN(n20) );
  INV_X4 U455 ( .A(U1_frac1[5]), .ZN(n21) );
  INV_X4 U456 ( .A(n253), .ZN(n22) );
  INV_X4 U457 ( .A(n236), .ZN(n23) );
  INV_X4 U458 ( .A(n238), .ZN(n24) );
  INV_X4 U459 ( .A(n258), .ZN(n25) );
  INV_X4 U460 ( .A(n424), .ZN(n26) );
  INV_X4 U461 ( .A(n423), .ZN(n27) );
  INV_X4 U462 ( .A(n453), .ZN(n28) );
  INV_X4 U463 ( .A(n430), .ZN(n29) );
  INV_X4 U464 ( .A(n421), .ZN(n30) );
  INV_X4 U465 ( .A(n422), .ZN(n31) );
  INV_X4 U466 ( .A(n420), .ZN(n32) );
  INV_X4 U467 ( .A(n445), .ZN(n33) );
  INV_X4 U468 ( .A(n218), .ZN(n34) );
  INV_X4 U469 ( .A(n417), .ZN(n35) );
  INV_X4 U470 ( .A(n418), .ZN(n36) );
  INV_X4 U471 ( .A(n209), .ZN(n37) );
  INV_X4 U472 ( .A(n437), .ZN(n38) );
  INV_X4 U473 ( .A(n213), .ZN(n39) );
  INV_X4 U474 ( .A(n268), .ZN(n40) );
  INV_X4 U475 ( .A(U1_Elz_5_), .ZN(n41) );
  INV_X4 U476 ( .A(U1_Elz_4_), .ZN(n42) );
  INV_X4 U477 ( .A(U1_Elz_3_), .ZN(n43) );
  INV_X4 U478 ( .A(U1_Elz_2_), .ZN(n44) );
  INV_X4 U479 ( .A(U1_Elz_1_), .ZN(n45) );
  INV_X4 U481 ( .A(n472), .ZN(n47) );
  INV_X4 U482 ( .A(n259), .ZN(n48) );
  INV_X4 U484 ( .A(n419), .ZN(n50) );
  INV_X4 U486 ( .A(n436), .ZN(n52) );
  INV_X4 U487 ( .A(n470), .ZN(n53) );
  INV_X4 U488 ( .A(n487), .ZN(n54) );
  INV_X4 U489 ( .A(n493), .ZN(n55) );
  INV_X4 U490 ( .A(U1_n46), .ZN(n56) );
  INV_X4 U491 ( .A(U1_adder_output_20_), .ZN(n57) );
  INV_X4 U492 ( .A(U1_adder_output_19_), .ZN(n58) );
  INV_X4 U493 ( .A(U1_adder_output_18_), .ZN(n59) );
  INV_X4 U494 ( .A(U1_adder_output_17_), .ZN(n60) );
  INV_X4 U495 ( .A(U1_adder_output_16_), .ZN(n61) );
  INV_X4 U496 ( .A(U1_adder_output_15_), .ZN(n62) );
  INV_X4 U497 ( .A(U1_adder_output_14_), .ZN(n63) );
  INV_X4 U498 ( .A(U1_adder_output_13_), .ZN(n64) );
  INV_X4 U499 ( .A(U1_adder_output_12_), .ZN(n65) );
  INV_X4 U500 ( .A(U1_adder_output_11_), .ZN(n66) );
  INV_X4 U501 ( .A(U1_adder_output_10_), .ZN(n67) );
  INV_X4 U502 ( .A(n519), .ZN(n68) );
  INV_X4 U503 ( .A(U1_adder_output_9_), .ZN(n69) );
  INV_X4 U504 ( .A(U1_adder_output_8_), .ZN(n70) );
  INV_X4 U505 ( .A(U1_adder_output_7_), .ZN(n71) );
  INV_X4 U506 ( .A(U1_adder_output_6_), .ZN(n72) );
  INV_X4 U507 ( .A(n488), .ZN(n73) );
  INV_X4 U508 ( .A(U1_adder_output_5_), .ZN(n74) );
  INV_X4 U509 ( .A(U1_adder_output_4_), .ZN(n75) );
  INV_X4 U510 ( .A(U1_adder_output_3_), .ZN(n76) );
  INV_X4 U511 ( .A(U1_adder_output_2_), .ZN(n77) );
  INV_X4 U512 ( .A(U1_adder_output_1_), .ZN(n78) );
  INV_X4 U513 ( .A(n219), .ZN(n79) );
  INV_X4 U515 ( .A(in1[23]), .ZN(n81) );
  INV_X4 U516 ( .A(U1_exp_large_int_0_), .ZN(n82) );
  INV_X4 U517 ( .A(n311), .ZN(n83) );
  INV_X4 U518 ( .A(n327), .ZN(n84) );
  INV_X4 U519 ( .A(n348), .ZN(n85) );
  INV_X4 U520 ( .A(n364), .ZN(n86) );
  INV_X4 U521 ( .A(n338), .ZN(n87) );
  INV_X4 U522 ( .A(n344), .ZN(n88) );
  INV_X4 U523 ( .A(n308), .ZN(n89) );
  INV_X4 U524 ( .A(n300), .ZN(n90) );
  INV_X4 U525 ( .A(n299), .ZN(n91) );
  INV_X4 U526 ( .A(n291), .ZN(n92) );
  INV_X4 U527 ( .A(n389), .ZN(n93) );
  INV_X4 U528 ( .A(n411), .ZN(n94) );
  INV_X4 U529 ( .A(n326), .ZN(n95) );
  INV_X4 U530 ( .A(U1_mag_exp_diff_4_), .ZN(n96) );
  INV_X4 U531 ( .A(n310), .ZN(n97) );
  INV_X4 U532 ( .A(n303), .ZN(n98) );
  INV_X4 U533 ( .A(U1_mag_exp_diff_3_), .ZN(n99) );
  INV_X4 U534 ( .A(U1_mag_exp_diff_2_), .ZN(n100) );
  INV_X4 U535 ( .A(n305), .ZN(n101) );
  INV_X4 U536 ( .A(n307), .ZN(n102) );
  INV_X4 U537 ( .A(n361), .ZN(n103) );
  INV_X4 U539 ( .A(n365), .ZN(n105) );
  INV_X4 U540 ( .A(n304), .ZN(n106) );
  INV_X4 U541 ( .A(n295), .ZN(n107) );
  INV_X4 U544 ( .A(U1_mag_exp_diff_1_), .ZN(n110) );
  INV_X4 U546 ( .A(U1_mag_exp_diff_0_), .ZN(n112) );
  INV_X4 U547 ( .A(n392), .ZN(n113) );
  INV_X4 U548 ( .A(n390), .ZN(n114) );
  INV_X4 U549 ( .A(n520), .ZN(n115) );
  INV_X4 U550 ( .A(n511), .ZN(n116) );
  INV_X4 U551 ( .A(n509), .ZN(n117) );
  INV_X4 U552 ( .A(n510), .ZN(n118) );
  INV_X4 U554 ( .A(n234), .ZN(n120) );
  INV_X4 U555 ( .A(n232), .ZN(n121) );
  INV_X4 U556 ( .A(n230), .ZN(n122) );
  INV_X4 U557 ( .A(n228), .ZN(n123) );
  INV_X4 U558 ( .A(n341), .ZN(n124) );
  INV_X4 U559 ( .A(n315), .ZN(n125) );
  INV_X4 U560 ( .A(n317), .ZN(n126) );
  INV_X4 U561 ( .A(n322), .ZN(n127) );
  INV_X4 U562 ( .A(n342), .ZN(n128) );
  INV_X4 U563 ( .A(n334), .ZN(n129) );
  INV_X4 U564 ( .A(n351), .ZN(n130) );
  INV_X4 U565 ( .A(n353), .ZN(n131) );
  INV_X4 U566 ( .A(n371), .ZN(n132) );
  INV_X4 U567 ( .A(n369), .ZN(n133) );
  INV_X4 U568 ( .A(n380), .ZN(n134) );
  INV_X4 U569 ( .A(n374), .ZN(n135) );
  INV_X4 U570 ( .A(n378), .ZN(n136) );
  INV_X4 U571 ( .A(n345), .ZN(n137) );
  INV_X4 U572 ( .A(n275), .ZN(n138) );
  INV_X4 U573 ( .A(n575), .ZN(n139) );
  INV_X4 U574 ( .A(n271), .ZN(n140) );
  INV_X4 U575 ( .A(n572), .ZN(n141) );
  INV_X4 U576 ( .A(n573), .ZN(n142) );
  INV_X4 U577 ( .A(n574), .ZN(n143) );
  INV_X4 U579 ( .A(U1_exp_large_int_5_), .ZN(n145) );
  INV_X4 U580 ( .A(in1[22]), .ZN(n146) );
  INV_X4 U581 ( .A(n523), .ZN(n147) );
  INV_X4 U582 ( .A(n554), .ZN(n148) );
  INV_X4 U583 ( .A(in1[20]), .ZN(n149) );
  INV_X4 U584 ( .A(in1[19]), .ZN(n150) );
  INV_X4 U585 ( .A(in1[13]), .ZN(n151) );
  INV_X4 U586 ( .A(in1[12]), .ZN(n152) );
  INV_X4 U587 ( .A(in1[11]), .ZN(n153) );
  INV_X4 U588 ( .A(in1[10]), .ZN(n154) );
  INV_X4 U589 ( .A(in1[8]), .ZN(n155) );
  INV_X4 U590 ( .A(in1[7]), .ZN(n156) );
  INV_X4 U591 ( .A(n544), .ZN(n157) );
  INV_X4 U592 ( .A(in1[6]), .ZN(n158) );
  INV_X4 U593 ( .A(in1[5]), .ZN(n159) );
  INV_X4 U594 ( .A(in1[4]), .ZN(n160) );
  INV_X4 U595 ( .A(in1[3]), .ZN(n161) );
  INV_X4 U596 ( .A(in1[2]), .ZN(n162) );
  INV_X4 U597 ( .A(in1[1]), .ZN(n163) );
  INV_X4 U598 ( .A(in1[0]), .ZN(n164) );
  OR2_X1 U620 ( .A1(n242), .A2(n236), .ZN(n241) );
  AND2_X1 U621 ( .A1(n192), .A2(n252), .ZN(n249) );
  OAI33_X1 U622 ( .A1(n272), .A2(n273), .A3(n274), .B1(n261), .B2(n578), .B3(
        n113), .ZN(n245) );
  OAI33_X1 U623 ( .A1(n307), .A2(n288), .A3(n100), .B1(n340), .B2(
        U1_mag_exp_diff_5_), .B3(n304), .ZN(n339) );
  OAI33_X1 U624 ( .A1(n284), .A2(n288), .A3(n100), .B1(n340), .B2(
        U1_mag_exp_diff_5_), .B3(n283), .ZN(n350) );
  OR2_X1 U625 ( .A1(n85), .A2(n283), .ZN(n358) );
  OR3_X1 U626 ( .A1(n261), .A2(n578), .A3(n392), .ZN(n220) );
  AND2_X1 U627 ( .A1(n404), .A2(n405), .ZN(n396) );
  AND2_X1 U628 ( .A1(n247), .A2(n50), .ZN(U1_a_norm_5_) );
  AND2_X1 U631 ( .A1(n58), .A2(n476), .ZN(n475) );
  OR3_X1 U632 ( .A1(n276), .A2(U1_adder_output_1_), .A3(n488), .ZN(n486) );
  OR4_X1 U633 ( .A1(U1_N35), .A2(n115), .A3(U1_N37), .A4(U1_N38), .ZN(n507) );
  AND2_X1 U634 ( .A1(in1[15]), .A2(n602), .ZN(n532) );
  AND2_X1 U635 ( .A1(n163), .A2(n549), .ZN(n550) );
  XOR2_X2 U15 ( .A(n47), .B(n578), .Z(n168) );
  AND2_X4 U16 ( .A1(U1_sig_aligned2_3_), .A2(U1_N27), .ZN(n169) );
  AOI22_X2 U17 ( .A1(n199), .A2(n65), .B1(n200), .B2(n69), .ZN(n464) );
  AOI22_X2 U18 ( .A1(n593), .A2(n66), .B1(n200), .B2(n70), .ZN(n468) );
  AOI22_X2 U19 ( .A1(n199), .A2(n60), .B1(n200), .B2(n63), .ZN(n441) );
  AOI22_X2 U21 ( .A1(n594), .A2(n71), .B1(n200), .B2(n75), .ZN(n466) );
  AOI22_X2 U22 ( .A1(n594), .A2(n70), .B1(n200), .B2(n74), .ZN(n462) );
  AOI211_X2 U23 ( .C1(n218), .C2(n260), .A(n259), .B(n26), .ZN(n224) );
  AOI22_X2 U25 ( .A1(n593), .A2(n59), .B1(n200), .B2(n62), .ZN(n435) );
  AOI22_X2 U26 ( .A1(n594), .A2(n58), .B1(n200), .B2(n61), .ZN(n429) );
  AOI22_X2 U27 ( .A1(n199), .A2(n56), .B1(n200), .B2(n59), .ZN(n251) );
  OAI21_X2 U28 ( .B1(n73), .B2(n519), .A(n514), .ZN(n517) );
  OAI211_X2 U46 ( .C1(U1_adder_output_3_), .C2(n484), .A(n75), .B(n74), .ZN(
        n502) );
  AOI21_X2 U50 ( .B1(n22), .B2(U1_adder_output_20_), .A(U1_n46), .ZN(n244) );
  INV_X4 U52 ( .A(n316), .ZN(n109) );
  INV_X4 U53 ( .A(n324), .ZN(n108) );
  AOI22_X2 U58 ( .A1(n15), .A2(U1_frac1[1]), .B1(n14), .B2(U1_a_norm_5_), .ZN(
        n217) );
  AOI22_X2 U59 ( .A1(n593), .A2(n75), .B1(n200), .B2(n78), .ZN(n463) );
  AOI22_X2 U60 ( .A1(n594), .A2(n67), .B1(n200), .B2(n71), .ZN(n474) );
  AOI22_X2 U62 ( .A1(n593), .A2(n69), .B1(n200), .B2(n72), .ZN(n457) );
  AOI22_X2 U69 ( .A1(n594), .A2(n74), .B1(n200), .B2(n77), .ZN(n456) );
  AOI22_X2 U75 ( .A1(n199), .A2(n64), .B1(n200), .B2(n67), .ZN(n458) );
  AOI22_X2 U78 ( .A1(n199), .A2(n72), .B1(n200), .B2(n76), .ZN(n471) );
  AOI211_X2 U84 ( .C1(n76), .C2(n594), .A(n200), .B(n467), .ZN(n424) );
  NAND2_X2 U86 ( .A1(n571), .A2(n472), .ZN(n196) );
  NAND2_X2 U89 ( .A1(n110), .A2(n112), .ZN(n324) );
  OAI211_X2 U91 ( .C1(n495), .C2(n496), .A(n57), .B(n56), .ZN(n493) );
  AOI211_X2 U92 ( .C1(n497), .C2(n498), .A(U1_adder_output_17_), .B(
        U1_adder_output_16_), .ZN(n495) );
  OAI211_X2 U94 ( .C1(n499), .C2(n500), .A(n65), .B(n64), .ZN(n498) );
  AOI211_X2 U95 ( .C1(n501), .C2(n502), .A(U1_adder_output_9_), .B(
        U1_adder_output_8_), .ZN(n499) );
  INV_X4 U97 ( .A(n207), .ZN(n15) );
  INV_X4 U100 ( .A(n208), .ZN(n14) );
  OAI211_X2 U102 ( .C1(U1_adder_output_1_), .C2(n488), .A(n68), .B(n514), .ZN(
        n513) );
  OAI21_X2 U104 ( .B1(n475), .B2(U1_adder_output_20_), .A(n56), .ZN(n278) );
  OAI21_X2 U111 ( .B1(n477), .B2(U1_adder_output_17_), .A(n59), .ZN(n476) );
  AOI21_X2 U113 ( .B1(n62), .B2(n478), .A(U1_adder_output_16_), .ZN(n477) );
  OAI21_X2 U119 ( .B1(n483), .B2(U1_adder_output_5_), .A(n72), .ZN(n482) );
  AOI21_X2 U120 ( .B1(n76), .B2(n484), .A(U1_adder_output_4_), .ZN(n483) );
  OAI21_X2 U122 ( .B1(n479), .B2(U1_adder_output_13_), .A(n63), .ZN(n478) );
  AOI21_X2 U128 ( .B1(n66), .B2(n480), .A(U1_adder_output_12_), .ZN(n479) );
  OAI21_X2 U133 ( .B1(n481), .B2(U1_adder_output_9_), .A(n67), .ZN(n480) );
  AOI21_X2 U135 ( .B1(n71), .B2(n482), .A(U1_adder_output_8_), .ZN(n481) );
  OAI21_X2 U143 ( .B1(n186), .B2(n187), .A(n188), .ZN(n561) );
  AOI21_X2 U144 ( .B1(n15), .B2(n18), .A(n14), .ZN(n186) );
  OAI211_X2 U146 ( .C1(n52), .C2(n35), .A(n189), .B(n190), .ZN(n187) );
  INV_X4 U148 ( .A(n318), .ZN(n104) );
  INV_X4 U152 ( .A(n323), .ZN(n111) );
  NOR2_X2 U154 ( .A1(n47), .A2(n571), .ZN(n200) );
  AOI22_X2 U159 ( .A1(n15), .A2(U1_frac1[2]), .B1(n14), .B2(U1_a_norm_6_), 
        .ZN(n216) );
  AOI22_X2 U163 ( .A1(n15), .A2(U1_frac1[3]), .B1(n14), .B2(U1_a_norm_7_), 
        .ZN(n215) );
  AOI22_X2 U166 ( .A1(n15), .A2(U1_frac1[4]), .B1(n14), .B2(U1_a_norm_8_), 
        .ZN(n214) );
  AOI22_X2 U168 ( .A1(n15), .A2(U1_frac1[6]), .B1(n14), .B2(U1_a_norm_10_), 
        .ZN(n212) );
  AOI22_X2 U170 ( .A1(n15), .A2(U1_frac1[7]), .B1(n14), .B2(U1_a_norm_11_), 
        .ZN(n211) );
  AOI22_X2 U173 ( .A1(n15), .A2(U1_frac1[8]), .B1(n14), .B2(U1_a_norm_12_), 
        .ZN(n210) );
  AOI22_X2 U177 ( .A1(n15), .A2(U1_frac1[10]), .B1(n14), .B2(U1_a_norm_14_), 
        .ZN(n206) );
  AOI22_X2 U184 ( .A1(n15), .A2(U1_frac1[11]), .B1(n14), .B2(U1_a_norm_15_), 
        .ZN(n205) );
  AOI22_X2 U185 ( .A1(n15), .A2(U1_frac1[12]), .B1(n14), .B2(U1_a_norm_16_), 
        .ZN(n204) );
  AOI22_X2 U195 ( .A1(n15), .A2(U1_frac1[13]), .B1(n14), .B2(n38), .ZN(n203)
         );
  AOI22_X2 U196 ( .A1(n15), .A2(U1_frac1[14]), .B1(n14), .B2(n29), .ZN(n202)
         );
  AOI22_X2 U197 ( .A1(n15), .A2(U1_frac1[15]), .B1(n27), .B2(n14), .ZN(n201)
         );
  OAI21_X2 U200 ( .B1(n485), .B2(n276), .A(n123), .ZN(n487) );
  AOI22_X2 U201 ( .A1(n109), .A2(n133), .B1(n104), .B2(n134), .ZN(n385) );
  OAI21_X2 U205 ( .B1(n31), .B2(n49), .A(n461), .ZN(n469) );
  OAI21_X2 U206 ( .B1(n32), .B2(n49), .A(n461), .ZN(n465) );
  OAI21_X2 U207 ( .B1(n36), .B2(n49), .A(n461), .ZN(n460) );
  AOI211_X2 U208 ( .C1(n324), .C2(n315), .A(n94), .B(n408), .ZN(n397) );
  AOI22_X2 U209 ( .A1(n109), .A2(n129), .B1(n104), .B2(n128), .ZN(n325) );
  AOI22_X2 U213 ( .A1(n249), .A2(n50), .B1(n48), .B2(n250), .ZN(n248) );
  AOI222_X1 U214 ( .A1(n191), .A2(n192), .B1(n193), .B2(n194), .C1(n48), .C2(
        n195), .ZN(n190) );
  AOI22_X2 U216 ( .A1(n593), .A2(n57), .B1(n200), .B2(n60), .ZN(n198) );
  AOI22_X2 U218 ( .A1(n53), .A2(n55), .B1(n120), .B2(n470), .ZN(n571) );
  AOI211_X2 U221 ( .C1(n432), .C2(n49), .A(n436), .B(n28), .ZN(U1_a_norm_14_)
         );
  AOI22_X2 U224 ( .A1(n446), .A2(n433), .B1(n447), .B2(n421), .ZN(n453) );
  AOI211_X2 U226 ( .C1(n426), .C2(n49), .A(n436), .B(n20), .ZN(U1_a_norm_15_)
         );
  AOI22_X2 U231 ( .A1(n446), .A2(n427), .B1(n447), .B2(n26), .ZN(n450) );
  AOI211_X2 U234 ( .C1(n191), .C2(n49), .A(n436), .B(n33), .ZN(U1_a_norm_16_)
         );
  AOI22_X2 U235 ( .A1(n446), .A2(n194), .B1(n447), .B2(n417), .ZN(n445) );
  AOI22_X2 U238 ( .A1(n436), .A2(n416), .B1(n436), .B2(n192), .ZN(n189) );
  NAND2_X2 U247 ( .A1(U1_mag_exp_diff_1_), .A2(U1_mag_exp_diff_0_), .ZN(n323)
         );
  AOI22_X2 U248 ( .A1(n135), .A2(n108), .B1(n345), .B2(n109), .ZN(n295) );
  AOI22_X2 U250 ( .A1(n443), .A2(n49), .B1(n192), .B2(n444), .ZN(n415) );
  OAI21_X2 U251 ( .B1(n221), .B2(n245), .A(n223), .ZN(U1_status_0_) );
  OAI21_X1 U252 ( .B1(n25), .B2(n245), .A(n16), .ZN(U1_status_5) );
  OAI21_X2 U254 ( .B1(n26), .B2(n259), .A(n260), .ZN(n258) );
  AOI22_X2 U256 ( .A1(n444), .A2(n49), .B1(n192), .B2(n440), .ZN(n247) );
  AOI21_X2 U257 ( .B1(n101), .B2(n338), .A(n339), .ZN(n337) );
  AOI222_X1 U258 ( .A1(n111), .A2(n334), .B1(n109), .B2(n341), .C1(n104), .C2(
        n130), .ZN(n336) );
  AOI22_X2 U261 ( .A1(n442), .A2(n49), .B1(n192), .B2(n443), .ZN(n246) );
  AOI21_X2 U265 ( .B1(n577), .B2(n239), .A(n240), .ZN(n221) );
  OAI211_X2 U266 ( .C1(n253), .C2(n77), .A(n577), .B(n254), .ZN(n236) );
  NAND2_X2 U267 ( .A1(U1_mag_exp_diff_1_), .A2(n112), .ZN(n318) );
  OAI211_X2 U271 ( .C1(n312), .C2(n96), .A(n313), .B(n314), .ZN(n311) );
  AOI22_X2 U272 ( .A1(n296), .A2(n103), .B1(n95), .B2(n321), .ZN(n313) );
  OAI21_X2 U276 ( .B1(U1_mag_exp_diff_2_), .B2(n361), .A(n362), .ZN(n289) );
  OAI21_X2 U277 ( .B1(n137), .B2(n324), .A(U1_mag_exp_diff_2_), .ZN(n362) );
  AOI211_X2 U283 ( .C1(n301), .C2(n302), .A(n91), .B(n98), .ZN(n300) );
  AOI222_X1 U286 ( .A1(n101), .A2(n348), .B1(n106), .B2(n338), .C1(n102), .C2(
        n364), .ZN(n384) );
  AOI22_X2 U287 ( .A1(n364), .A2(n107), .B1(n365), .B2(n348), .ZN(n363) );
  AOI211_X2 U289 ( .C1(n309), .C2(n302), .A(n91), .B(n97), .ZN(n308) );
  OAI222_X2 U291 ( .A1(n85), .A2(n282), .B1(n87), .B2(n283), .C1(n86), .C2(
        n284), .ZN(n281) );
  OAI222_X2 U293 ( .A1(n293), .A2(n85), .B1(n87), .B2(n295), .C1(n105), .C2(
        n86), .ZN(n381) );
  AOI22_X2 U295 ( .A1(n106), .A2(n364), .B1(n102), .B2(n348), .ZN(n366) );
  AOI21_X2 U297 ( .B1(U1_mag_exp_diff_1_), .B2(n342), .A(n402), .ZN(n401) );
  OAI21_X2 U299 ( .B1(n298), .B2(U1_mag_exp_diff_2_), .A(n299), .ZN(n297) );
  OAI21_X2 U301 ( .B1(n79), .B2(n220), .A(n16), .ZN(U1_status_1_) );
  AOI211_X2 U303 ( .C1(n223), .C2(n239), .A(n240), .B(n241), .ZN(n238) );
  INV_X4 U304 ( .A(n192), .ZN(n49) );
  OAI211_X2 U307 ( .C1(n51), .C2(n415), .A(n438), .B(n439), .ZN(n437) );
  AOI22_X2 U309 ( .A1(n48), .A2(n252), .B1(n40), .B2(n436), .ZN(n439) );
  OAI211_X2 U314 ( .C1(n52), .C2(n424), .A(n189), .B(n425), .ZN(n423) );
  AOI222_X1 U320 ( .A1(n426), .A2(n192), .B1(n193), .B2(n427), .C1(n48), .C2(
        n428), .ZN(n425) );
  OAI211_X2 U321 ( .C1(n52), .C2(n30), .A(n189), .B(n431), .ZN(n430) );
  AOI222_X1 U322 ( .A1(n432), .A2(n192), .B1(n193), .B2(n433), .C1(n48), .C2(
        n434), .ZN(n431) );
  AOI222_X1 U324 ( .A1(n296), .A2(n283), .B1(n294), .B2(n282), .C1(n306), .C2(
        n284), .ZN(n310) );
  AOI222_X1 U325 ( .A1(n296), .A2(n304), .B1(n294), .B2(n305), .C1(n306), .C2(
        n307), .ZN(n303) );
  INV_X4 U326 ( .A(n255), .ZN(n80) );
  INV_X4 U327 ( .A(n416), .ZN(n51) );
  INV_X4 U328 ( .A(n595), .ZN(n596) );
  AOI211_X2 U329 ( .C1(n317), .C2(U1_mag_exp_diff_1_), .A(n406), .B(n402), 
        .ZN(n411) );
  AOI22_X2 U331 ( .A1(n109), .A2(n373), .B1(n104), .B2(n374), .ZN(n372) );
  AOI22_X2 U332 ( .A1(n111), .A2(n134), .B1(n108), .B2(n371), .ZN(n370) );
  AOI22_X2 U333 ( .A1(n111), .A2(n355), .B1(n108), .B2(n125), .ZN(n354) );
  AOI22_X2 U335 ( .A1(n111), .A2(n133), .B1(n108), .B2(n355), .ZN(n377) );
  AOI22_X2 U339 ( .A1(n109), .A2(n355), .B1(n104), .B2(n371), .ZN(n383) );
  AOI21_X2 U340 ( .B1(n108), .B2(n373), .A(n111), .ZN(n386) );
  AOI22_X2 U341 ( .A1(n109), .A2(n131), .B1(n104), .B2(n355), .ZN(n388) );
  AOI22_X2 U343 ( .A1(n109), .A2(n127), .B1(n104), .B2(n320), .ZN(n343) );
  AOI22_X2 U344 ( .A1(n111), .A2(n320), .B1(n108), .B2(n129), .ZN(n352) );
  AOI22_X2 U346 ( .A1(n111), .A2(n131), .B1(n108), .B2(n320), .ZN(n319) );
  OAI21_X2 U347 ( .B1(U1_exp_large_int_0_), .B2(n493), .A(n494), .ZN(n490) );
  AOI21_X2 U360 ( .B1(n121), .B2(n277), .A(n473), .ZN(n489) );
  AOI211_X2 U362 ( .C1(U1_mag_exp_diff_1_), .C2(n368), .A(n410), .B(n407), 
        .ZN(n409) );
  OAI211_X2 U365 ( .C1(n373), .C2(n110), .A(n396), .B(n403), .ZN(n399) );
  AOI22_X2 U374 ( .A1(n111), .A2(n135), .B1(n324), .B2(n136), .ZN(n403) );
  AOI22_X2 U375 ( .A1(n105), .A2(U1_mag_exp_diff_3_), .B1(n99), .B2(n331), 
        .ZN(n298) );
  AOI22_X2 U376 ( .A1(n125), .A2(n104), .B1(n320), .B2(n109), .ZN(n332) );
  AOI21_X2 U377 ( .B1(n348), .B2(n349), .A(n350), .ZN(n347) );
  OAI222_X2 U378 ( .A1(n85), .A2(n286), .B1(n86), .B2(n287), .C1(n288), .C2(
        n289), .ZN(n285) );
  OAI21_X2 U379 ( .B1(n55), .B2(n82), .A(n234), .ZN(n494) );
  AOI22_X2 U380 ( .A1(n596), .A2(in1[9]), .B1(in2[9]), .B2(n595), .ZN(n355) );
  AOI22_X2 U381 ( .A1(n596), .A2(in1[5]), .B1(in2[5]), .B2(n595), .ZN(n320) );
  AOI22_X2 U386 ( .A1(n596), .A2(in1[15]), .B1(in2[15]), .B2(n595), .ZN(n373)
         );
  AOI22_X2 U396 ( .A1(n596), .A2(in2[17]), .B1(in1[17]), .B2(n595), .ZN(n578)
         );
  AOI22_X2 U397 ( .A1(n596), .A2(in1[19]), .B1(in2[19]), .B2(n595), .ZN(n574)
         );
  AOI22_X2 U399 ( .A1(n596), .A2(in1[18]), .B1(in2[18]), .B2(n595), .ZN(n575)
         );
  AOI22_X2 U400 ( .A1(n596), .A2(in1[10]), .B1(in2[10]), .B2(n595), .ZN(n371)
         );
  AOI22_X2 U403 ( .A1(n596), .A2(in2[18]), .B1(in1[18]), .B2(n595), .ZN(n234)
         );
  AOI22_X2 U405 ( .A1(n596), .A2(in1[21]), .B1(in2[21]), .B2(n595), .ZN(n572)
         );
  AOI22_X2 U406 ( .A1(n596), .A2(in2[20]), .B1(in1[20]), .B2(n595), .ZN(n230)
         );
  AOI22_X2 U412 ( .A1(n395), .A2(in1[20]), .B1(in2[20]), .B2(n595), .ZN(n573)
         );
  AOI22_X2 U413 ( .A1(n596), .A2(in2[21]), .B1(in1[21]), .B2(n595), .ZN(n228)
         );
  AOI22_X2 U417 ( .A1(n596), .A2(in1[16]), .B1(in2[16]), .B2(n595), .ZN(n374)
         );
  AOI22_X2 U420 ( .A1(n596), .A2(in1[17]), .B1(in2[17]), .B2(n595), .ZN(n275)
         );
  AOI22_X2 U424 ( .A1(n596), .A2(in2[19]), .B1(in1[19]), .B2(n595), .ZN(n232)
         );
  AOI22_X2 U425 ( .A1(n596), .A2(in1[1]), .B1(n595), .B2(in2[1]), .ZN(n351) );
  AOI22_X2 U428 ( .A1(n596), .A2(in1[14]), .B1(in2[14]), .B2(n595), .ZN(n378)
         );
  AOI22_X2 U448 ( .A1(n596), .A2(n413), .B1(in1[23]), .B2(n595), .ZN(n256) );
  AOI22_X2 U449 ( .A1(n395), .A2(in2[15]), .B1(in1[15]), .B2(n595), .ZN(n509)
         );
  AOI22_X2 U480 ( .A1(n395), .A2(in2[16]), .B1(in1[16]), .B2(n595), .ZN(n510)
         );
  AOI22_X2 U483 ( .A1(n395), .A2(in2[14]), .B1(in1[14]), .B2(n595), .ZN(n511)
         );
  OAI211_X2 U485 ( .C1(in1[15]), .C2(n602), .A(n527), .B(n528), .ZN(n526) );
  AOI22_X2 U514 ( .A1(in1[16]), .A2(n601), .B1(in1[22]), .B2(n597), .ZN(n525)
         );
  OAI211_X2 U538 ( .C1(in2[12]), .C2(n152), .A(n533), .B(n529), .ZN(n527) );
  OAI211_X2 U542 ( .C1(in1[11]), .C2(n606), .A(n534), .B(n535), .ZN(n533) );
  AOI21_X2 U543 ( .B1(n536), .B2(n537), .A(n538), .ZN(n535) );
  AOI21_X2 U545 ( .B1(n529), .B2(n530), .A(n531), .ZN(n528) );
  OAI21_X2 U553 ( .B1(in2[20]), .B2(n149), .A(n557), .ZN(n554) );
  OAI21_X2 U578 ( .B1(n523), .B2(n146), .A(in2[22]), .ZN(n522) );
  OAI21_X2 U599 ( .B1(in1[7]), .B2(n610), .A(n542), .ZN(n541) );
  OAI211_X2 U600 ( .C1(in2[4]), .C2(n160), .A(n543), .B(n157), .ZN(n542) );
  OAI21_X2 U601 ( .B1(n551), .B2(n544), .A(n552), .ZN(n540) );
  AOI22_X2 U602 ( .A1(in2[4]), .A2(n160), .B1(in2[5]), .B2(n159), .ZN(n551) );
  OAI21_X2 U603 ( .B1(in2[1]), .B2(n550), .A(n548), .ZN(n545) );
  AOI22_X2 U604 ( .A1(n395), .A2(in2[9]), .B1(in1[9]), .B2(n595), .ZN(n520) );
  OAI211_X2 U605 ( .C1(in1[22]), .C2(n147), .A(n521), .B(n522), .ZN(n395) );
  NAND2_X2 U606 ( .A1(n170), .A2(n171), .ZN(U1_sub_275_carry[7]) );
  XNOR2_X2 U607 ( .A(U1_add_274_carry[6]), .B(U1_sub_275_carry[6]), .ZN(
        U1_Elz_6_) );
  INV_X4 U608 ( .A(U1_add_274_carry[6]), .ZN(n170) );
  INV_X4 U609 ( .A(U1_sub_275_carry[6]), .ZN(n171) );
  NAND2_X2 U610 ( .A1(n172), .A2(n173), .ZN(U1_sub_275_carry[6]) );
  XNOR2_X2 U611 ( .A(U1_E1_5_), .B(U1_sub_275_carry[5]), .ZN(U1_Elz_5_) );
  INV_X4 U612 ( .A(U1_E1_5_), .ZN(n172) );
  INV_X4 U613 ( .A(U1_sub_275_carry[5]), .ZN(n173) );
  NAND2_X2 U614 ( .A1(n472), .A2(n174), .ZN(U1_sub_275_carry[1]) );
  INV_X4 U615 ( .A(n578), .ZN(n174) );
  NAND2_X2 U616 ( .A1(n175), .A2(n82), .ZN(U1_sub_218_carry[1]) );
  XNOR2_X2 U617 ( .A(n576), .B(U1_exp_large_int_0_), .ZN(U1_mag_exp_diff_0_)
         );
  INV_X4 U618 ( .A(n576), .ZN(n175) );
  XNOR2_X2 U619 ( .A(n80), .B(n176), .ZN(U1_N140) );
  INV_X4 U629 ( .A(U1_add_233_carry[21]), .ZN(n176) );
  XNOR2_X2 U630 ( .A(U1_N140), .B(n177), .ZN(U1_n46) );
  XNOR2_X2 U636 ( .A(U1_N139), .B(n178), .ZN(U1_adder_output_20_) );
  NAND2_X2 U637 ( .A1(U1_add_233_2_carry[20]), .A2(U1_N139), .ZN(n177) );
  XNOR2_X2 U638 ( .A(U1_N138), .B(n179), .ZN(U1_adder_output_19_) );
  NAND2_X2 U639 ( .A1(U1_add_233_2_carry[19]), .A2(U1_N138), .ZN(n178) );
  INV_X4 U640 ( .A(n178), .ZN(U1_add_233_2_carry[20]) );
  XNOR2_X2 U641 ( .A(U1_N137), .B(n180), .ZN(U1_adder_output_18_) );
  NAND2_X2 U642 ( .A1(U1_add_233_2_carry[18]), .A2(U1_N137), .ZN(n179) );
  INV_X4 U643 ( .A(n179), .ZN(U1_add_233_2_carry[19]) );
  XNOR2_X2 U644 ( .A(U1_N136), .B(n181), .ZN(U1_adder_output_17_) );
  NAND2_X2 U645 ( .A1(U1_add_233_2_carry[17]), .A2(U1_N136), .ZN(n180) );
  INV_X4 U646 ( .A(n180), .ZN(U1_add_233_2_carry[18]) );
  XNOR2_X2 U647 ( .A(U1_N135), .B(n182), .ZN(U1_adder_output_16_) );
  NAND2_X2 U648 ( .A1(U1_add_233_2_carry[16]), .A2(U1_N135), .ZN(n181) );
  INV_X4 U649 ( .A(n181), .ZN(U1_add_233_2_carry[17]) );
  XNOR2_X2 U650 ( .A(U1_N134), .B(n183), .ZN(U1_adder_output_15_) );
  NAND2_X2 U651 ( .A1(U1_add_233_2_carry[15]), .A2(U1_N134), .ZN(n182) );
  INV_X4 U652 ( .A(n182), .ZN(U1_add_233_2_carry[16]) );
  XNOR2_X2 U653 ( .A(U1_N133), .B(n184), .ZN(U1_adder_output_14_) );
  NAND2_X2 U654 ( .A1(U1_add_233_2_carry[14]), .A2(U1_N133), .ZN(n183) );
  INV_X4 U655 ( .A(n183), .ZN(U1_add_233_2_carry[15]) );
  XNOR2_X2 U656 ( .A(U1_N132), .B(n185), .ZN(U1_adder_output_13_) );
  NAND2_X2 U657 ( .A1(U1_add_233_2_carry[13]), .A2(U1_N132), .ZN(n184) );
  INV_X4 U658 ( .A(n184), .ZN(U1_add_233_2_carry[14]) );
  XNOR2_X2 U659 ( .A(U1_N131), .B(n579), .ZN(U1_adder_output_12_) );
  NAND2_X2 U660 ( .A1(U1_add_233_2_carry[12]), .A2(U1_N131), .ZN(n185) );
  INV_X4 U661 ( .A(n185), .ZN(U1_add_233_2_carry[13]) );
  XNOR2_X2 U662 ( .A(U1_N130), .B(n580), .ZN(U1_adder_output_11_) );
  NAND2_X2 U663 ( .A1(U1_add_233_2_carry[11]), .A2(U1_N130), .ZN(n579) );
  INV_X4 U664 ( .A(n579), .ZN(U1_add_233_2_carry[12]) );
  XNOR2_X2 U665 ( .A(U1_N129), .B(n581), .ZN(U1_adder_output_10_) );
  NAND2_X2 U666 ( .A1(U1_add_233_2_carry[10]), .A2(U1_N129), .ZN(n580) );
  INV_X4 U667 ( .A(n580), .ZN(U1_add_233_2_carry[11]) );
  XNOR2_X2 U668 ( .A(U1_N128), .B(n582), .ZN(U1_adder_output_9_) );
  NAND2_X2 U669 ( .A1(U1_add_233_2_carry[9]), .A2(U1_N128), .ZN(n581) );
  INV_X4 U670 ( .A(n581), .ZN(U1_add_233_2_carry[10]) );
  XNOR2_X2 U671 ( .A(U1_N127), .B(n583), .ZN(U1_adder_output_8_) );
  NAND2_X2 U672 ( .A1(U1_add_233_2_carry[8]), .A2(U1_N127), .ZN(n582) );
  INV_X4 U673 ( .A(n582), .ZN(U1_add_233_2_carry[9]) );
  XNOR2_X2 U674 ( .A(U1_N126), .B(n584), .ZN(U1_adder_output_7_) );
  NAND2_X2 U675 ( .A1(U1_add_233_2_carry[7]), .A2(U1_N126), .ZN(n583) );
  INV_X4 U676 ( .A(n583), .ZN(U1_add_233_2_carry[8]) );
  XNOR2_X2 U677 ( .A(U1_N125), .B(n585), .ZN(U1_adder_output_6_) );
  NAND2_X2 U678 ( .A1(U1_add_233_2_carry[6]), .A2(U1_N125), .ZN(n584) );
  INV_X4 U679 ( .A(n584), .ZN(U1_add_233_2_carry[7]) );
  XNOR2_X2 U680 ( .A(U1_N124), .B(n586), .ZN(U1_adder_output_5_) );
  NAND2_X2 U681 ( .A1(U1_add_233_2_carry[5]), .A2(U1_N124), .ZN(n585) );
  INV_X4 U682 ( .A(n585), .ZN(U1_add_233_2_carry[6]) );
  XNOR2_X2 U683 ( .A(U1_N123), .B(n587), .ZN(U1_adder_output_4_) );
  NAND2_X2 U684 ( .A1(U1_add_233_2_carry[4]), .A2(U1_N123), .ZN(n586) );
  INV_X4 U685 ( .A(n586), .ZN(U1_add_233_2_carry[5]) );
  XNOR2_X2 U686 ( .A(U1_N122), .B(n588), .ZN(U1_adder_output_3_) );
  NAND2_X2 U687 ( .A1(U1_add_233_2_carry[3]), .A2(U1_N122), .ZN(n587) );
  INV_X4 U688 ( .A(n587), .ZN(U1_add_233_2_carry[4]) );
  XNOR2_X2 U689 ( .A(U1_sig_aligned2_2_), .B(n589), .ZN(U1_adder_output_2_) );
  NAND2_X2 U690 ( .A1(U1_add_233_2_carry[2]), .A2(U1_sig_aligned2_2_), .ZN(
        n588) );
  INV_X4 U691 ( .A(n588), .ZN(U1_add_233_2_carry[3]) );
  XNOR2_X2 U692 ( .A(U1_sig_aligned2_1_), .B(n591), .ZN(U1_adder_output_1_) );
  NAND2_X2 U693 ( .A1(U1_add_233_2_carry[1]), .A2(U1_sig_aligned2_1_), .ZN(
        n589) );
  INV_X4 U694 ( .A(n589), .ZN(U1_add_233_2_carry[2]) );
  INV_X4 U695 ( .A(U1_sig_aligned2_0_), .ZN(n590) );
  XNOR2_X2 U696 ( .A(n80), .B(n590), .ZN(U1_adder_output_0_) );
  NAND2_X2 U697 ( .A1(U1_sig_aligned2_0_), .A2(n80), .ZN(n591) );
  INV_X4 U698 ( .A(n591), .ZN(U1_add_233_2_carry[1]) );
  INV_X4 U699 ( .A(U1_N27), .ZN(n592) );
  XNOR2_X2 U700 ( .A(U1_sig_aligned2_3_), .B(n592), .ZN(U1_N122) );
  OR2_X4 U701 ( .A1(n472), .A2(n571), .ZN(n197) );
  AND2_X4 U702 ( .A1(n571), .A2(n47), .ZN(n593) );
  AND2_X4 U703 ( .A1(n571), .A2(n47), .ZN(n594) );
  AND2_X4 U704 ( .A1(n571), .A2(n47), .ZN(n199) );
  INV_X4 U705 ( .A(in2[22]), .ZN(n597) );
  INV_X4 U706 ( .A(in2[21]), .ZN(n598) );
  INV_X4 U707 ( .A(in2[18]), .ZN(n599) );
  INV_X4 U708 ( .A(in2[17]), .ZN(n600) );
  INV_X4 U709 ( .A(in2[16]), .ZN(n601) );
  INV_X4 U710 ( .A(in2[15]), .ZN(n602) );
  INV_X4 U711 ( .A(in2[14]), .ZN(n603) );
  INV_X4 U712 ( .A(in2[13]), .ZN(n604) );
  INV_X4 U713 ( .A(in2[12]), .ZN(n605) );
  INV_X4 U714 ( .A(in2[11]), .ZN(n606) );
  INV_X4 U715 ( .A(in2[10]), .ZN(n607) );
  INV_X4 U716 ( .A(in2[9]), .ZN(n608) );
  INV_X4 U717 ( .A(in2[8]), .ZN(n609) );
  INV_X4 U718 ( .A(in2[7]), .ZN(n610) );
  INV_X4 U719 ( .A(in2[6]), .ZN(n611) );
  INV_X4 U720 ( .A(in2[5]), .ZN(n612) );
  INV_X4 U721 ( .A(in2[4]), .ZN(n613) );
  INV_X4 U722 ( .A(in2[3]), .ZN(n614) );
  INV_X4 U723 ( .A(in2[2]), .ZN(n615) );
  INV_X4 U724 ( .A(in2[1]), .ZN(n616) );
  INV_X4 U725 ( .A(in2[0]), .ZN(n617) );
  INV_X8 U4 ( .A(n395), .ZN(n595) );
endmodule


module addsub_cplx_0 ( in1, in2, mode, op );
  input [47:0] in1;
  input [47:0] in2;
  output [47:0] op;
  input mode;
  wire   SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16;

  fp_addsub_24_2 Addr_r ( .in1(in1[47:24]), .in2(in2[47:24]), .mode(mode), 
        .opt(op[47:24]), .clock(1'b0), .status({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
  fp_addsub_24_0 Addr_i ( .in1(in1[23:0]), .in2(in2[23:0]), .mode(mode), .opt(
        op[23:0]), .clock(1'b0), .status({SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}) );
endmodule


module accum_pipe ( input_YV, opt, sel_sum_cycle, clock, reset );
  input [47:0] input_YV;
  output [47:0] opt;
  input sel_sum_cycle, clock, reset;
  wire   n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, U4_Z_0, U4_Z_1, U4_Z_2, U4_Z_3, U4_Z_4,
         U4_Z_5, U4_Z_6, U4_Z_7, U4_Z_8, U4_Z_9, U4_Z_10, U4_Z_11, U4_Z_12,
         U4_Z_13, U4_Z_14, U4_Z_15, U4_Z_16, U4_Z_17, U4_Z_18, U4_Z_19,
         U4_Z_20, U4_Z_21, U4_Z_22, U4_Z_23, U4_Z_24, U4_Z_25, U4_Z_26,
         U4_Z_27, U4_Z_28, U4_Z_29, U4_Z_30, U4_Z_31, U4_Z_32, U4_Z_33,
         U4_Z_34, U4_Z_35, U4_Z_36, U4_Z_37, U4_Z_38, U4_Z_39, U4_Z_40,
         U4_Z_41, U4_Z_42, U4_Z_43, U4_Z_44, U4_Z_45, U4_Z_46, U4_Z_47, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37,
         SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39,
         SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41,
         SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43,
         SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45,
         SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47,
         SYNOPSYS_UNCONNECTED_48;
  wire   [48:1] n;

  addsub_cplx_1 u__tmp111 ( .in1(input_YV), .in2({n338, n337, n336, n335, n334, 
        n333, n332, n331, n330, n329, n328, n327, n326, n325, n324, n323, n322, 
        n321, n320, n319, n318, n317, n316, n315, n314, n313, n312, n311, n310, 
        n309, n308, n307, n306, n305, n304, n303, n302, n301, n300, n299, n298, 
        n297, n296, n295, n294, n293, n292, n291}), .mode(1'b0), .op({n193, 
        n192, n191, n190, n189, n188, n187, n186, n185, n184, n183, n182, n181, 
        n180, n179, n178, n177, n176, n175, n174, n173, n172, n171, n170, n169, 
        n168, n167, n166, n165, n164, n163, n162, n161, n160, n159, n158, n157, 
        n156, n155, n154, n153, n152, n151, n150, n149, n148, n147, n146}) );
  addsub_cplx_2 u__tmp112 ( .in1({n289, n288, n287, n286, n285, n284, n283, 
        n282, n281, n280, n279, n278, n277, n276, n275, n274, n273, n272, n271, 
        n270, n269, n268, n267, n266, n265, n264, n263, n262, n261, n260, n259, 
        n258, n257, n256, n255, n254, n253, n252, n251, n250, n249, n248, n247, 
        n246, n245, n244, n243, n242}), .in2({n193, n192, n191, n190, n189, 
        n188, n187, n186, n185, n184, n183, n182, n181, n180, n179, n178, n177, 
        n176, n175, n174, n173, n172, n171, n170, n169, n168, n167, n166, n165, 
        n164, n163, n162, n161, n160, n159, n158, n157, n156, n155, n154, n153, 
        n152, n151, n150, n149, n148, n147, n146}), .mode(1'b0), .op({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, 
        SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, 
        SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, 
        SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, 
        SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39, 
        SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, 
        SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, 
        SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, 
        SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, 
        SYNOPSYS_UNCONNECTED_48}) );
  addsub_cplx_0 u__tmp113 ( .in1({U4_Z_47, U4_Z_46, U4_Z_45, U4_Z_44, U4_Z_43, 
        U4_Z_42, U4_Z_41, U4_Z_40, U4_Z_39, U4_Z_38, U4_Z_37, U4_Z_36, U4_Z_35, 
        U4_Z_34, U4_Z_33, U4_Z_32, U4_Z_31, U4_Z_30, U4_Z_29, U4_Z_28, U4_Z_27, 
        U4_Z_26, U4_Z_25, U4_Z_24, U4_Z_23, U4_Z_22, U4_Z_21, U4_Z_20, U4_Z_19, 
        U4_Z_18, U4_Z_17, U4_Z_16, U4_Z_15, U4_Z_14, U4_Z_13, U4_Z_12, U4_Z_11, 
        U4_Z_10, U4_Z_9, U4_Z_8, U4_Z_7, U4_Z_6, U4_Z_5, U4_Z_4, U4_Z_3, 
        U4_Z_2, U4_Z_1, U4_Z_0}), .in2(n), .mode(1'b0), .op(n) );
  DFFR_X1 input_pipe1_reg_47_ ( .D(input_YV[47]), .CK(clock), .RN(n453), .Q(
        n338) );
  DFFR_X1 input_pipe1_reg_46_ ( .D(input_YV[46]), .CK(clock), .RN(n444), .Q(
        n337) );
  DFFR_X1 input_pipe1_reg_45_ ( .D(input_YV[45]), .CK(clock), .RN(n445), .Q(
        n336) );
  DFFR_X1 input_pipe1_reg_44_ ( .D(input_YV[44]), .CK(clock), .RN(n446), .Q(
        n335) );
  DFFR_X1 input_pipe1_reg_43_ ( .D(input_YV[43]), .CK(clock), .RN(n447), .Q(
        n334) );
  DFFR_X1 input_pipe1_reg_42_ ( .D(input_YV[42]), .CK(clock), .RN(n448), .Q(
        n333) );
  DFFR_X1 input_pipe1_reg_41_ ( .D(input_YV[41]), .CK(clock), .RN(n449), .Q(
        n332) );
  DFFR_X1 input_pipe1_reg_40_ ( .D(input_YV[40]), .CK(clock), .RN(n450), .Q(
        n331) );
  DFFR_X1 input_pipe1_reg_39_ ( .D(input_YV[39]), .CK(clock), .RN(n451), .Q(
        n330) );
  DFFR_X1 input_pipe1_reg_38_ ( .D(input_YV[38]), .CK(clock), .RN(n452), .Q(
        n329) );
  DFFR_X1 input_pipe1_reg_37_ ( .D(input_YV[37]), .CK(clock), .RN(n453), .Q(
        n328) );
  DFFR_X1 input_pipe1_reg_36_ ( .D(input_YV[36]), .CK(clock), .RN(n444), .Q(
        n327) );
  DFFR_X1 input_pipe1_reg_35_ ( .D(input_YV[35]), .CK(clock), .RN(n447), .Q(
        n326) );
  DFFR_X1 input_pipe1_reg_34_ ( .D(input_YV[34]), .CK(clock), .RN(n448), .Q(
        n325) );
  DFFR_X1 input_pipe1_reg_33_ ( .D(input_YV[33]), .CK(clock), .RN(n449), .Q(
        n324) );
  DFFR_X1 input_pipe1_reg_32_ ( .D(input_YV[32]), .CK(clock), .RN(n450), .Q(
        n323) );
  DFFR_X1 input_pipe1_reg_31_ ( .D(input_YV[31]), .CK(clock), .RN(n451), .Q(
        n322) );
  DFFR_X1 input_pipe1_reg_30_ ( .D(input_YV[30]), .CK(clock), .RN(n452), .Q(
        n321) );
  DFFR_X1 input_pipe1_reg_29_ ( .D(input_YV[29]), .CK(clock), .RN(n453), .Q(
        n320) );
  DFFR_X1 input_pipe1_reg_28_ ( .D(input_YV[28]), .CK(clock), .RN(n444), .Q(
        n319) );
  DFFR_X1 input_pipe1_reg_27_ ( .D(input_YV[27]), .CK(clock), .RN(n445), .Q(
        n318) );
  DFFR_X1 input_pipe1_reg_26_ ( .D(input_YV[26]), .CK(clock), .RN(n446), .Q(
        n317) );
  DFFR_X1 input_pipe1_reg_25_ ( .D(input_YV[25]), .CK(clock), .RN(n447), .Q(
        n316) );
  DFFR_X1 input_pipe1_reg_24_ ( .D(input_YV[24]), .CK(clock), .RN(n448), .Q(
        n315) );
  DFFR_X1 input_pipe1_reg_23_ ( .D(input_YV[23]), .CK(clock), .RN(n451), .Q(
        n314) );
  DFFR_X1 input_pipe1_reg_22_ ( .D(input_YV[22]), .CK(clock), .RN(n452), .Q(
        n313) );
  DFFR_X1 input_pipe1_reg_21_ ( .D(input_YV[21]), .CK(clock), .RN(n453), .Q(
        n312) );
  DFFR_X1 input_pipe1_reg_20_ ( .D(input_YV[20]), .CK(clock), .RN(n444), .Q(
        n311) );
  DFFR_X1 input_pipe1_reg_19_ ( .D(input_YV[19]), .CK(clock), .RN(n445), .Q(
        n310) );
  DFFR_X1 input_pipe1_reg_18_ ( .D(input_YV[18]), .CK(clock), .RN(n446), .Q(
        n309) );
  DFFR_X1 input_pipe1_reg_17_ ( .D(input_YV[17]), .CK(clock), .RN(n447), .Q(
        n308) );
  DFFR_X1 input_pipe1_reg_16_ ( .D(input_YV[16]), .CK(clock), .RN(n448), .Q(
        n307) );
  DFFR_X1 input_pipe1_reg_15_ ( .D(input_YV[15]), .CK(clock), .RN(n449), .Q(
        n306) );
  DFFR_X1 input_pipe1_reg_14_ ( .D(input_YV[14]), .CK(clock), .RN(n450), .Q(
        n305) );
  DFFR_X1 input_pipe1_reg_13_ ( .D(input_YV[13]), .CK(clock), .RN(n451), .Q(
        n304) );
  DFFR_X1 input_pipe1_reg_12_ ( .D(input_YV[12]), .CK(clock), .RN(n452), .Q(
        n303) );
  DFFR_X1 input_pipe1_reg_11_ ( .D(input_YV[11]), .CK(clock), .RN(n449), .Q(
        n302) );
  DFFR_X1 input_pipe1_reg_10_ ( .D(input_YV[10]), .CK(clock), .RN(n450), .Q(
        n301) );
  DFFR_X1 input_pipe1_reg_9_ ( .D(input_YV[9]), .CK(clock), .RN(n451), .Q(n300) );
  DFFR_X1 input_pipe1_reg_8_ ( .D(input_YV[8]), .CK(clock), .RN(n452), .Q(n299) );
  DFFR_X1 input_pipe1_reg_7_ ( .D(input_YV[7]), .CK(clock), .RN(n453), .Q(n298) );
  DFFR_X1 input_pipe1_reg_6_ ( .D(input_YV[6]), .CK(clock), .RN(n444), .Q(n297) );
  DFFR_X1 input_pipe1_reg_5_ ( .D(input_YV[5]), .CK(clock), .RN(n445), .Q(n296) );
  DFFR_X1 input_pipe1_reg_4_ ( .D(input_YV[4]), .CK(clock), .RN(n446), .Q(n295) );
  DFFR_X1 input_pipe1_reg_3_ ( .D(input_YV[3]), .CK(clock), .RN(n447), .Q(n294) );
  DFFR_X1 input_pipe1_reg_2_ ( .D(input_YV[2]), .CK(clock), .RN(n448), .Q(n293) );
  DFFR_X1 input_pipe1_reg_1_ ( .D(input_YV[1]), .CK(clock), .RN(n449), .Q(n292) );
  DFFR_X1 input_pipe1_reg_0_ ( .D(input_YV[0]), .CK(clock), .RN(n450), .Q(n291) );
  DFFR_X1 input_pipe2_reg_47_ ( .D(n338), .CK(clock), .RN(n452), .Q(n241) );
  DFFR_X1 input_pipe3_reg_47_ ( .D(n241), .CK(clock), .RN(n453), .Q(n289) );
  DFFR_X1 input_pipe2_reg_46_ ( .D(n337), .CK(clock), .RN(n444), .Q(n240) );
  DFFR_X1 input_pipe3_reg_46_ ( .D(n240), .CK(clock), .RN(n445), .Q(n288) );
  DFFR_X1 input_pipe2_reg_45_ ( .D(n336), .CK(clock), .RN(n446), .Q(n239) );
  DFFR_X1 input_pipe3_reg_45_ ( .D(n239), .CK(clock), .RN(n447), .Q(n287) );
  DFFR_X1 input_pipe2_reg_44_ ( .D(n335), .CK(clock), .RN(n448), .Q(n238) );
  DFFR_X1 input_pipe3_reg_44_ ( .D(n238), .CK(clock), .RN(n449), .Q(n286) );
  DFFR_X1 input_pipe2_reg_43_ ( .D(n334), .CK(clock), .RN(n450), .Q(n237) );
  DFFR_X1 input_pipe3_reg_43_ ( .D(n237), .CK(clock), .RN(n451), .Q(n285) );
  DFFR_X1 input_pipe2_reg_42_ ( .D(n333), .CK(clock), .RN(n452), .Q(n236) );
  DFFR_X1 input_pipe3_reg_42_ ( .D(n236), .CK(clock), .RN(n453), .Q(n284) );
  DFFR_X1 input_pipe2_reg_41_ ( .D(n332), .CK(clock), .RN(n445), .Q(n235) );
  DFFR_X1 input_pipe3_reg_41_ ( .D(n235), .CK(clock), .RN(n446), .Q(n283) );
  DFFR_X1 input_pipe2_reg_40_ ( .D(n331), .CK(clock), .RN(n447), .Q(n234) );
  DFFR_X1 input_pipe3_reg_40_ ( .D(n234), .CK(clock), .RN(n448), .Q(n282) );
  DFFR_X1 input_pipe2_reg_39_ ( .D(n330), .CK(clock), .RN(n449), .Q(n233) );
  DFFR_X1 input_pipe3_reg_39_ ( .D(n233), .CK(clock), .RN(n450), .Q(n281) );
  DFFR_X1 input_pipe2_reg_38_ ( .D(n329), .CK(clock), .RN(n451), .Q(n232) );
  DFFR_X1 input_pipe3_reg_38_ ( .D(n232), .CK(clock), .RN(n452), .Q(n280) );
  DFFR_X1 input_pipe2_reg_37_ ( .D(n328), .CK(clock), .RN(n453), .Q(n231) );
  DFFR_X1 input_pipe3_reg_37_ ( .D(n231), .CK(clock), .RN(n444), .Q(n279) );
  DFFR_X1 input_pipe2_reg_36_ ( .D(n327), .CK(clock), .RN(n445), .Q(n230) );
  DFFR_X1 input_pipe3_reg_36_ ( .D(n230), .CK(clock), .RN(n446), .Q(n278) );
  DFFR_X1 input_pipe2_reg_35_ ( .D(n326), .CK(clock), .RN(n450), .Q(n229) );
  DFFR_X1 input_pipe3_reg_35_ ( .D(n229), .CK(clock), .RN(n451), .Q(n277) );
  DFFR_X1 input_pipe2_reg_34_ ( .D(n325), .CK(clock), .RN(n452), .Q(n228) );
  DFFR_X1 input_pipe3_reg_34_ ( .D(n228), .CK(clock), .RN(n453), .Q(n276) );
  DFFR_X1 input_pipe2_reg_33_ ( .D(n324), .CK(clock), .RN(n444), .Q(n227) );
  DFFR_X1 input_pipe3_reg_33_ ( .D(n227), .CK(clock), .RN(n445), .Q(n275) );
  DFFR_X1 input_pipe2_reg_32_ ( .D(n323), .CK(clock), .RN(n446), .Q(n226) );
  DFFR_X1 input_pipe3_reg_32_ ( .D(n226), .CK(clock), .RN(n447), .Q(n274) );
  DFFR_X1 input_pipe2_reg_31_ ( .D(n322), .CK(clock), .RN(n448), .Q(n225) );
  DFFR_X1 input_pipe3_reg_31_ ( .D(n225), .CK(clock), .RN(n449), .Q(n273) );
  DFFR_X1 input_pipe2_reg_30_ ( .D(n321), .CK(clock), .RN(n450), .Q(n224) );
  DFFR_X1 input_pipe3_reg_30_ ( .D(n224), .CK(clock), .RN(n451), .Q(n272) );
  DFFR_X1 input_pipe2_reg_29_ ( .D(n320), .CK(clock), .RN(n444), .Q(n223) );
  DFFR_X1 input_pipe3_reg_29_ ( .D(n223), .CK(clock), .RN(n445), .Q(n271) );
  DFFR_X1 input_pipe2_reg_28_ ( .D(n319), .CK(clock), .RN(n446), .Q(n222) );
  DFFR_X1 input_pipe3_reg_28_ ( .D(n222), .CK(clock), .RN(n447), .Q(n270) );
  DFFR_X1 input_pipe2_reg_27_ ( .D(n318), .CK(clock), .RN(n448), .Q(n221) );
  DFFR_X1 input_pipe3_reg_27_ ( .D(n221), .CK(clock), .RN(n449), .Q(n269) );
  DFFR_X1 input_pipe2_reg_26_ ( .D(n317), .CK(clock), .RN(n450), .Q(n220) );
  DFFR_X1 input_pipe3_reg_26_ ( .D(n220), .CK(clock), .RN(n451), .Q(n268) );
  DFFR_X1 input_pipe2_reg_25_ ( .D(n316), .CK(clock), .RN(n452), .Q(n219) );
  DFFR_X1 input_pipe3_reg_25_ ( .D(n219), .CK(clock), .RN(n453), .Q(n267) );
  DFFR_X1 input_pipe2_reg_24_ ( .D(n315), .CK(clock), .RN(n444), .Q(n218) );
  DFFR_X1 input_pipe3_reg_24_ ( .D(n218), .CK(clock), .RN(n445), .Q(n266) );
  DFFR_X1 input_pipe2_reg_23_ ( .D(n314), .CK(clock), .RN(n449), .Q(n217) );
  DFFR_X1 input_pipe3_reg_23_ ( .D(n217), .CK(clock), .RN(n450), .Q(n265) );
  DFFR_X1 input_pipe2_reg_22_ ( .D(n313), .CK(clock), .RN(n451), .Q(n216) );
  DFFR_X1 input_pipe3_reg_22_ ( .D(n216), .CK(clock), .RN(n452), .Q(n264) );
  DFFR_X1 input_pipe2_reg_21_ ( .D(n312), .CK(clock), .RN(n453), .Q(n215) );
  DFFR_X1 input_pipe3_reg_21_ ( .D(n215), .CK(clock), .RN(n444), .Q(n263) );
  DFFR_X1 input_pipe2_reg_20_ ( .D(n311), .CK(clock), .RN(n445), .Q(n214) );
  DFFR_X1 input_pipe3_reg_20_ ( .D(n214), .CK(clock), .RN(n446), .Q(n262) );
  DFFR_X1 input_pipe2_reg_19_ ( .D(n310), .CK(clock), .RN(n447), .Q(n213) );
  DFFR_X1 input_pipe3_reg_19_ ( .D(n213), .CK(clock), .RN(n448), .Q(n261) );
  DFFR_X1 input_pipe2_reg_18_ ( .D(n309), .CK(clock), .RN(n449), .Q(n212) );
  DFFR_X1 input_pipe3_reg_18_ ( .D(n212), .CK(clock), .RN(n450), .Q(n260) );
  DFFR_X1 input_pipe2_reg_17_ ( .D(n308), .CK(clock), .RN(n445), .Q(n211) );
  DFFR_X1 input_pipe3_reg_17_ ( .D(n211), .CK(clock), .RN(n446), .Q(n259) );
  DFFR_X1 input_pipe2_reg_16_ ( .D(n307), .CK(clock), .RN(n447), .Q(n210) );
  DFFR_X1 input_pipe3_reg_16_ ( .D(n210), .CK(clock), .RN(n448), .Q(n258) );
  DFFR_X1 input_pipe2_reg_15_ ( .D(n306), .CK(clock), .RN(n449), .Q(n209) );
  DFFR_X1 input_pipe3_reg_15_ ( .D(n209), .CK(clock), .RN(n450), .Q(n257) );
  DFFR_X1 input_pipe2_reg_14_ ( .D(n305), .CK(clock), .RN(n451), .Q(n208) );
  DFFR_X1 input_pipe3_reg_14_ ( .D(n208), .CK(clock), .RN(n452), .Q(n256) );
  DFFR_X1 input_pipe2_reg_13_ ( .D(n304), .CK(clock), .RN(n453), .Q(n207) );
  DFFR_X1 input_pipe3_reg_13_ ( .D(n207), .CK(clock), .RN(n444), .Q(n255) );
  DFFR_X1 input_pipe2_reg_12_ ( .D(n303), .CK(clock), .RN(n445), .Q(n206) );
  DFFR_X1 input_pipe3_reg_12_ ( .D(n206), .CK(clock), .RN(n446), .Q(n254) );
  DFFR_X1 input_pipe2_reg_11_ ( .D(n302), .CK(clock), .RN(n449), .Q(n205) );
  DFFR_X1 input_pipe3_reg_11_ ( .D(n205), .CK(clock), .RN(n444), .Q(n253) );
  DFFR_X1 input_pipe2_reg_10_ ( .D(n301), .CK(clock), .RN(n452), .Q(n204) );
  DFFR_X1 input_pipe3_reg_10_ ( .D(n204), .CK(clock), .RN(n446), .Q(n252) );
  DFFR_X1 input_pipe2_reg_9_ ( .D(n300), .CK(clock), .RN(n445), .Q(n203) );
  DFFR_X1 input_pipe3_reg_9_ ( .D(n203), .CK(clock), .RN(n447), .Q(n251) );
  DFFR_X1 input_pipe2_reg_8_ ( .D(n299), .CK(clock), .RN(n453), .Q(n202) );
  DFFR_X1 input_pipe3_reg_8_ ( .D(n202), .CK(clock), .RN(n444), .Q(n250) );
  DFFR_X1 input_pipe2_reg_7_ ( .D(n298), .CK(clock), .RN(n453), .Q(n201) );
  DFFR_X1 input_pipe3_reg_7_ ( .D(n201), .CK(clock), .RN(n445), .Q(n249) );
  DFFR_X1 input_pipe2_reg_6_ ( .D(n297), .CK(clock), .RN(n447), .Q(n200) );
  DFFR_X1 input_pipe3_reg_6_ ( .D(n200), .CK(clock), .RN(n451), .Q(n248) );
  DFFR_X1 input_pipe2_reg_5_ ( .D(n296), .CK(clock), .RN(n450), .Q(n199) );
  DFFR_X1 input_pipe3_reg_5_ ( .D(n199), .CK(clock), .RN(n447), .Q(n247) );
  DFFR_X1 input_pipe2_reg_4_ ( .D(n295), .CK(clock), .RN(n446), .Q(n198) );
  DFFR_X1 input_pipe3_reg_4_ ( .D(n198), .CK(clock), .RN(n448), .Q(n246) );
  DFFR_X1 input_pipe2_reg_3_ ( .D(n294), .CK(clock), .RN(n444), .Q(n197) );
  DFFR_X1 input_pipe3_reg_3_ ( .D(n197), .CK(clock), .RN(n446), .Q(n245) );
  DFFR_X1 input_pipe2_reg_2_ ( .D(n293), .CK(clock), .RN(n448), .Q(n196) );
  DFFR_X1 input_pipe3_reg_2_ ( .D(n196), .CK(clock), .RN(n452), .Q(n244) );
  DFFR_X1 input_pipe2_reg_1_ ( .D(n292), .CK(clock), .RN(n449), .Q(n195) );
  DFFR_X1 input_pipe3_reg_1_ ( .D(n195), .CK(clock), .RN(n453), .Q(n243) );
  DFFR_X1 input_pipe2_reg_0_ ( .D(n291), .CK(clock), .RN(n448), .Q(n194) );
  DFFR_X1 input_pipe3_reg_0_ ( .D(n194), .CK(clock), .RN(n451), .Q(n242) );
  NOR2_X2 U3 ( .A1(sel_sum_cycle), .A2(n394), .ZN(U4_Z_0) );
  INV_X4 U4 ( .A(U4_Z_0), .ZN(n394) );
  NOR2_X2 U5 ( .A1(sel_sum_cycle), .A2(n395), .ZN(U4_Z_1) );
  INV_X4 U6 ( .A(U4_Z_1), .ZN(n395) );
  NOR2_X2 U7 ( .A1(sel_sum_cycle), .A2(n396), .ZN(U4_Z_2) );
  INV_X4 U8 ( .A(U4_Z_2), .ZN(n396) );
  NOR2_X2 U9 ( .A1(sel_sum_cycle), .A2(n397), .ZN(U4_Z_3) );
  INV_X4 U10 ( .A(U4_Z_3), .ZN(n397) );
  NOR2_X2 U11 ( .A1(sel_sum_cycle), .A2(n398), .ZN(U4_Z_4) );
  INV_X4 U12 ( .A(U4_Z_4), .ZN(n398) );
  NOR2_X2 U13 ( .A1(sel_sum_cycle), .A2(n399), .ZN(U4_Z_5) );
  INV_X4 U14 ( .A(U4_Z_5), .ZN(n399) );
  NOR2_X2 U15 ( .A1(sel_sum_cycle), .A2(n400), .ZN(U4_Z_6) );
  INV_X4 U16 ( .A(U4_Z_6), .ZN(n400) );
  NOR2_X2 U17 ( .A1(sel_sum_cycle), .A2(n401), .ZN(U4_Z_7) );
  INV_X4 U18 ( .A(U4_Z_7), .ZN(n401) );
  NOR2_X2 U19 ( .A1(sel_sum_cycle), .A2(n402), .ZN(U4_Z_8) );
  INV_X4 U20 ( .A(U4_Z_8), .ZN(n402) );
  NOR2_X2 U21 ( .A1(sel_sum_cycle), .A2(n403), .ZN(U4_Z_9) );
  INV_X4 U22 ( .A(U4_Z_9), .ZN(n403) );
  NOR2_X2 U23 ( .A1(sel_sum_cycle), .A2(n404), .ZN(U4_Z_10) );
  INV_X4 U24 ( .A(U4_Z_10), .ZN(n404) );
  NOR2_X2 U25 ( .A1(n442), .A2(n405), .ZN(U4_Z_11) );
  INV_X4 U26 ( .A(U4_Z_11), .ZN(n405) );
  NOR2_X2 U27 ( .A1(n442), .A2(n406), .ZN(U4_Z_12) );
  INV_X4 U28 ( .A(U4_Z_12), .ZN(n406) );
  NOR2_X2 U29 ( .A1(sel_sum_cycle), .A2(n407), .ZN(U4_Z_13) );
  INV_X4 U30 ( .A(U4_Z_13), .ZN(n407) );
  NOR2_X2 U31 ( .A1(n442), .A2(n408), .ZN(U4_Z_14) );
  INV_X4 U32 ( .A(U4_Z_14), .ZN(n408) );
  NOR2_X2 U33 ( .A1(n442), .A2(n409), .ZN(U4_Z_15) );
  INV_X4 U34 ( .A(U4_Z_15), .ZN(n409) );
  NOR2_X2 U35 ( .A1(sel_sum_cycle), .A2(n410), .ZN(U4_Z_16) );
  INV_X4 U36 ( .A(U4_Z_16), .ZN(n410) );
  NOR2_X2 U37 ( .A1(n442), .A2(n411), .ZN(U4_Z_17) );
  INV_X4 U38 ( .A(U4_Z_17), .ZN(n411) );
  NOR2_X2 U39 ( .A1(n442), .A2(n412), .ZN(U4_Z_18) );
  INV_X4 U40 ( .A(U4_Z_18), .ZN(n412) );
  NOR2_X2 U41 ( .A1(n442), .A2(n413), .ZN(U4_Z_19) );
  INV_X4 U42 ( .A(U4_Z_19), .ZN(n413) );
  NOR2_X2 U43 ( .A1(n442), .A2(n414), .ZN(U4_Z_20) );
  INV_X4 U44 ( .A(U4_Z_20), .ZN(n414) );
  NOR2_X2 U45 ( .A1(n442), .A2(n415), .ZN(U4_Z_21) );
  INV_X4 U46 ( .A(U4_Z_21), .ZN(n415) );
  NOR2_X2 U47 ( .A1(n442), .A2(n416), .ZN(U4_Z_22) );
  INV_X4 U48 ( .A(U4_Z_22), .ZN(n416) );
  NOR2_X2 U49 ( .A1(n442), .A2(n417), .ZN(U4_Z_23) );
  INV_X4 U50 ( .A(U4_Z_23), .ZN(n417) );
  NOR2_X2 U51 ( .A1(n442), .A2(n418), .ZN(U4_Z_24) );
  INV_X4 U52 ( .A(U4_Z_24), .ZN(n418) );
  NOR2_X2 U53 ( .A1(n442), .A2(n419), .ZN(U4_Z_25) );
  INV_X4 U54 ( .A(U4_Z_25), .ZN(n419) );
  NOR2_X2 U55 ( .A1(n442), .A2(n420), .ZN(U4_Z_26) );
  INV_X4 U56 ( .A(U4_Z_26), .ZN(n420) );
  NOR2_X2 U57 ( .A1(n442), .A2(n421), .ZN(U4_Z_27) );
  INV_X4 U58 ( .A(U4_Z_27), .ZN(n421) );
  NOR2_X2 U59 ( .A1(n442), .A2(n422), .ZN(U4_Z_28) );
  INV_X4 U60 ( .A(U4_Z_28), .ZN(n422) );
  NOR2_X2 U61 ( .A1(n442), .A2(n423), .ZN(U4_Z_29) );
  INV_X4 U62 ( .A(U4_Z_29), .ZN(n423) );
  NOR2_X2 U63 ( .A1(n442), .A2(n424), .ZN(U4_Z_30) );
  INV_X4 U64 ( .A(U4_Z_30), .ZN(n424) );
  NOR2_X2 U65 ( .A1(n442), .A2(n425), .ZN(U4_Z_31) );
  INV_X4 U66 ( .A(U4_Z_31), .ZN(n425) );
  NOR2_X2 U67 ( .A1(n442), .A2(n426), .ZN(U4_Z_32) );
  INV_X4 U68 ( .A(U4_Z_32), .ZN(n426) );
  NOR2_X2 U69 ( .A1(n442), .A2(n427), .ZN(U4_Z_33) );
  INV_X4 U70 ( .A(U4_Z_33), .ZN(n427) );
  NOR2_X2 U71 ( .A1(n442), .A2(n428), .ZN(U4_Z_34) );
  INV_X4 U72 ( .A(U4_Z_34), .ZN(n428) );
  NOR2_X2 U73 ( .A1(n442), .A2(n429), .ZN(U4_Z_35) );
  INV_X4 U74 ( .A(U4_Z_35), .ZN(n429) );
  NOR2_X2 U75 ( .A1(n442), .A2(n430), .ZN(U4_Z_36) );
  INV_X4 U76 ( .A(U4_Z_36), .ZN(n430) );
  NOR2_X2 U77 ( .A1(n442), .A2(n431), .ZN(U4_Z_37) );
  INV_X4 U78 ( .A(U4_Z_37), .ZN(n431) );
  NOR2_X2 U79 ( .A1(n442), .A2(n432), .ZN(U4_Z_38) );
  INV_X4 U80 ( .A(U4_Z_38), .ZN(n432) );
  NOR2_X2 U81 ( .A1(n442), .A2(n433), .ZN(U4_Z_39) );
  INV_X4 U82 ( .A(U4_Z_39), .ZN(n433) );
  NOR2_X2 U83 ( .A1(n442), .A2(n434), .ZN(U4_Z_40) );
  INV_X4 U84 ( .A(U4_Z_40), .ZN(n434) );
  NOR2_X2 U85 ( .A1(n442), .A2(n435), .ZN(U4_Z_41) );
  INV_X4 U86 ( .A(U4_Z_41), .ZN(n435) );
  NOR2_X2 U87 ( .A1(n442), .A2(n436), .ZN(U4_Z_42) );
  INV_X4 U88 ( .A(U4_Z_42), .ZN(n436) );
  NOR2_X2 U89 ( .A1(n442), .A2(n437), .ZN(U4_Z_43) );
  INV_X4 U90 ( .A(U4_Z_43), .ZN(n437) );
  NOR2_X2 U91 ( .A1(n442), .A2(n438), .ZN(U4_Z_44) );
  INV_X4 U92 ( .A(U4_Z_44), .ZN(n438) );
  NOR2_X2 U93 ( .A1(n442), .A2(n439), .ZN(U4_Z_45) );
  INV_X4 U94 ( .A(U4_Z_45), .ZN(n439) );
  NOR2_X2 U95 ( .A1(n442), .A2(n440), .ZN(U4_Z_46) );
  INV_X4 U96 ( .A(U4_Z_46), .ZN(n440) );
  NOR2_X2 U97 ( .A1(n442), .A2(n441), .ZN(U4_Z_47) );
  INV_X4 U98 ( .A(U4_Z_47), .ZN(n441) );
  INV_X4 U102 ( .A(n454), .ZN(n447) );
  INV_X4 U103 ( .A(n454), .ZN(n448) );
  INV_X4 U104 ( .A(n454), .ZN(n449) );
  INV_X4 U105 ( .A(n454), .ZN(n450) );
  INV_X4 U106 ( .A(n454), .ZN(n451) );
  INV_X4 U107 ( .A(n454), .ZN(n452) );
  INV_X4 U109 ( .A(n443), .ZN(n442) );
  INV_X4 U111 ( .A(reset), .ZN(n454) );
  INV_X1 U99 ( .A(sel_sum_cycle), .ZN(n443) );
  INV_X8 U100 ( .A(n454), .ZN(n444) );
  INV_X8 U101 ( .A(n454), .ZN(n453) );
  INV_X8 U108 ( .A(n454), .ZN(n446) );
  INV_X8 U110 ( .A(n454), .ZN(n445) );
endmodule

