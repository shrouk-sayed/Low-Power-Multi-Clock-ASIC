/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 16:44:22 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module reg_file_WIDTH8_DEPTH16_ADDR4_test_1 ( WrData, Address, WrEn, RdEn, clk, 
        rst, RdData, RdData_VLD, REG0, REG1, REG2, REG3, test_si, test_so, 
        test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, clk, rst, test_si, test_se;
  output RdData_VLD, test_so;
  wire   N11, N12, N13, N14, \Reg_File[4][7] , \Reg_File[4][6] ,
         \Reg_File[4][5] , \Reg_File[4][4] , \Reg_File[4][3] ,
         \Reg_File[4][2] , \Reg_File[4][1] , \Reg_File[4][0] ,
         \Reg_File[5][7] , \Reg_File[5][6] , \Reg_File[5][5] ,
         \Reg_File[5][4] , \Reg_File[5][3] , \Reg_File[5][2] ,
         \Reg_File[5][1] , \Reg_File[5][0] , \Reg_File[6][7] ,
         \Reg_File[6][6] , \Reg_File[6][5] , \Reg_File[6][4] ,
         \Reg_File[6][3] , \Reg_File[6][2] , \Reg_File[6][1] ,
         \Reg_File[6][0] , \Reg_File[7][7] , \Reg_File[7][6] ,
         \Reg_File[7][5] , \Reg_File[7][4] , \Reg_File[7][3] ,
         \Reg_File[7][2] , \Reg_File[7][1] , \Reg_File[7][0] ,
         \Reg_File[8][7] , \Reg_File[8][6] , \Reg_File[8][5] ,
         \Reg_File[8][4] , \Reg_File[8][3] , \Reg_File[8][2] ,
         \Reg_File[8][1] , \Reg_File[8][0] , \Reg_File[9][7] ,
         \Reg_File[9][6] , \Reg_File[9][5] , \Reg_File[9][4] ,
         \Reg_File[9][3] , \Reg_File[9][2] , \Reg_File[9][1] ,
         \Reg_File[9][0] , \Reg_File[10][7] , \Reg_File[10][6] ,
         \Reg_File[10][5] , \Reg_File[10][4] , \Reg_File[10][3] ,
         \Reg_File[10][2] , \Reg_File[10][1] , \Reg_File[10][0] ,
         \Reg_File[11][7] , \Reg_File[11][6] , \Reg_File[11][5] ,
         \Reg_File[11][4] , \Reg_File[11][3] , \Reg_File[11][2] ,
         \Reg_File[11][1] , \Reg_File[11][0] , \Reg_File[12][7] ,
         \Reg_File[12][6] , \Reg_File[12][5] , \Reg_File[12][4] ,
         \Reg_File[12][3] , \Reg_File[12][2] , \Reg_File[12][1] ,
         \Reg_File[12][0] , \Reg_File[13][7] , \Reg_File[13][6] ,
         \Reg_File[13][5] , \Reg_File[13][4] , \Reg_File[13][3] ,
         \Reg_File[13][2] , \Reg_File[13][1] , \Reg_File[13][0] ,
         \Reg_File[14][7] , \Reg_File[14][6] , \Reg_File[14][5] ,
         \Reg_File[14][4] , \Reg_File[14][3] , \Reg_File[14][2] ,
         \Reg_File[14][1] , \Reg_File[14][0] , \Reg_File[15][7] ,
         \Reg_File[15][6] , \Reg_File[15][5] , \Reg_File[15][4] ,
         \Reg_File[15][3] , \Reg_File[15][2] , \Reg_File[15][1] ,
         \Reg_File[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n369, n370, n371, n372;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so = \Reg_File[15][7] ;

  SDFFRQX2M \Reg_File_reg[5][7]  ( .D(n274), .SI(\Reg_File[5][6] ), .SE(n371), 
        .CK(clk), .RN(n349), .Q(\Reg_File[5][7] ) );
  SDFFRQX2M \Reg_File_reg[5][6]  ( .D(n273), .SI(\Reg_File[5][5] ), .SE(n370), 
        .CK(clk), .RN(n349), .Q(\Reg_File[5][6] ) );
  SDFFRQX2M \Reg_File_reg[5][5]  ( .D(n272), .SI(\Reg_File[5][4] ), .SE(n369), 
        .CK(clk), .RN(n349), .Q(\Reg_File[5][5] ) );
  SDFFRQX2M \Reg_File_reg[5][4]  ( .D(n271), .SI(\Reg_File[5][3] ), .SE(n372), 
        .CK(clk), .RN(n349), .Q(\Reg_File[5][4] ) );
  SDFFRQX2M \Reg_File_reg[5][3]  ( .D(n270), .SI(\Reg_File[5][2] ), .SE(n371), 
        .CK(clk), .RN(n348), .Q(\Reg_File[5][3] ) );
  SDFFRQX2M \Reg_File_reg[5][2]  ( .D(n269), .SI(\Reg_File[5][1] ), .SE(n370), 
        .CK(clk), .RN(n348), .Q(\Reg_File[5][2] ) );
  SDFFRQX2M \Reg_File_reg[5][1]  ( .D(n268), .SI(\Reg_File[5][0] ), .SE(n369), 
        .CK(clk), .RN(n348), .Q(\Reg_File[5][1] ) );
  SDFFRQX2M \Reg_File_reg[5][0]  ( .D(n267), .SI(\Reg_File[4][7] ), .SE(n372), 
        .CK(clk), .RN(n348), .Q(\Reg_File[5][0] ) );
  SDFFRQX2M \Reg_File_reg[9][7]  ( .D(n242), .SI(\Reg_File[9][6] ), .SE(n371), 
        .CK(clk), .RN(n346), .Q(\Reg_File[9][7] ) );
  SDFFRQX2M \Reg_File_reg[9][6]  ( .D(n241), .SI(\Reg_File[9][5] ), .SE(n370), 
        .CK(clk), .RN(n346), .Q(\Reg_File[9][6] ) );
  SDFFRQX2M \Reg_File_reg[9][5]  ( .D(n240), .SI(\Reg_File[9][4] ), .SE(n369), 
        .CK(clk), .RN(n346), .Q(\Reg_File[9][5] ) );
  SDFFRQX2M \Reg_File_reg[9][4]  ( .D(n239), .SI(\Reg_File[9][3] ), .SE(n372), 
        .CK(clk), .RN(n346), .Q(\Reg_File[9][4] ) );
  SDFFRQX2M \Reg_File_reg[9][3]  ( .D(n238), .SI(\Reg_File[9][2] ), .SE(n371), 
        .CK(clk), .RN(n346), .Q(\Reg_File[9][3] ) );
  SDFFRQX2M \Reg_File_reg[9][2]  ( .D(n237), .SI(\Reg_File[9][1] ), .SE(n370), 
        .CK(clk), .RN(n346), .Q(\Reg_File[9][2] ) );
  SDFFRQX2M \Reg_File_reg[9][1]  ( .D(n236), .SI(\Reg_File[9][0] ), .SE(n369), 
        .CK(clk), .RN(n346), .Q(\Reg_File[9][1] ) );
  SDFFRQX2M \Reg_File_reg[9][0]  ( .D(n235), .SI(\Reg_File[8][7] ), .SE(n372), 
        .CK(clk), .RN(n346), .Q(\Reg_File[9][0] ) );
  SDFFRQX2M \Reg_File_reg[13][7]  ( .D(n210), .SI(\Reg_File[13][6] ), .SE(n371), .CK(clk), .RN(n344), .Q(\Reg_File[13][7] ) );
  SDFFRQX2M \Reg_File_reg[13][6]  ( .D(n209), .SI(\Reg_File[13][5] ), .SE(n370), .CK(clk), .RN(n344), .Q(\Reg_File[13][6] ) );
  SDFFRQX2M \Reg_File_reg[13][5]  ( .D(n208), .SI(\Reg_File[13][4] ), .SE(n369), .CK(clk), .RN(n344), .Q(\Reg_File[13][5] ) );
  SDFFRQX2M \Reg_File_reg[13][4]  ( .D(n207), .SI(\Reg_File[13][3] ), .SE(n372), .CK(clk), .RN(n344), .Q(\Reg_File[13][4] ) );
  SDFFRQX2M \Reg_File_reg[13][3]  ( .D(n206), .SI(\Reg_File[13][2] ), .SE(n371), .CK(clk), .RN(n344), .Q(\Reg_File[13][3] ) );
  SDFFRQX2M \Reg_File_reg[13][2]  ( .D(n205), .SI(\Reg_File[13][1] ), .SE(n370), .CK(clk), .RN(n344), .Q(\Reg_File[13][2] ) );
  SDFFRQX2M \Reg_File_reg[13][1]  ( .D(n204), .SI(\Reg_File[13][0] ), .SE(n369), .CK(clk), .RN(n344), .Q(\Reg_File[13][1] ) );
  SDFFRQX2M \Reg_File_reg[13][0]  ( .D(n203), .SI(\Reg_File[12][7] ), .SE(n372), .CK(clk), .RN(n344), .Q(\Reg_File[13][0] ) );
  SDFFRQX2M \Reg_File_reg[7][7]  ( .D(n258), .SI(\Reg_File[7][6] ), .SE(n371), 
        .CK(clk), .RN(n348), .Q(\Reg_File[7][7] ) );
  SDFFRQX2M \Reg_File_reg[7][6]  ( .D(n257), .SI(\Reg_File[7][5] ), .SE(n370), 
        .CK(clk), .RN(n348), .Q(\Reg_File[7][6] ) );
  SDFFRQX2M \Reg_File_reg[7][5]  ( .D(n256), .SI(\Reg_File[7][4] ), .SE(n369), 
        .CK(clk), .RN(n347), .Q(\Reg_File[7][5] ) );
  SDFFRQX2M \Reg_File_reg[7][4]  ( .D(n255), .SI(\Reg_File[7][3] ), .SE(n372), 
        .CK(clk), .RN(n347), .Q(\Reg_File[7][4] ) );
  SDFFRQX2M \Reg_File_reg[7][3]  ( .D(n254), .SI(\Reg_File[7][2] ), .SE(n371), 
        .CK(clk), .RN(n347), .Q(\Reg_File[7][3] ) );
  SDFFRQX2M \Reg_File_reg[7][2]  ( .D(n253), .SI(\Reg_File[7][1] ), .SE(n370), 
        .CK(clk), .RN(n347), .Q(\Reg_File[7][2] ) );
  SDFFRQX2M \Reg_File_reg[7][1]  ( .D(n252), .SI(\Reg_File[7][0] ), .SE(n369), 
        .CK(clk), .RN(n347), .Q(\Reg_File[7][1] ) );
  SDFFRQX2M \Reg_File_reg[7][0]  ( .D(n251), .SI(\Reg_File[6][7] ), .SE(n372), 
        .CK(clk), .RN(n347), .Q(\Reg_File[7][0] ) );
  SDFFRQX2M \Reg_File_reg[11][7]  ( .D(n226), .SI(\Reg_File[11][6] ), .SE(n371), .CK(clk), .RN(n345), .Q(\Reg_File[11][7] ) );
  SDFFRQX2M \Reg_File_reg[11][6]  ( .D(n225), .SI(\Reg_File[11][5] ), .SE(n370), .CK(clk), .RN(n345), .Q(\Reg_File[11][6] ) );
  SDFFRQX2M \Reg_File_reg[11][5]  ( .D(n224), .SI(\Reg_File[11][4] ), .SE(n369), .CK(clk), .RN(n345), .Q(\Reg_File[11][5] ) );
  SDFFRQX2M \Reg_File_reg[11][4]  ( .D(n223), .SI(\Reg_File[11][3] ), .SE(n372), .CK(clk), .RN(n345), .Q(\Reg_File[11][4] ) );
  SDFFRQX2M \Reg_File_reg[11][3]  ( .D(n222), .SI(\Reg_File[11][2] ), .SE(n371), .CK(clk), .RN(n345), .Q(\Reg_File[11][3] ) );
  SDFFRQX2M \Reg_File_reg[11][2]  ( .D(n221), .SI(\Reg_File[11][1] ), .SE(n370), .CK(clk), .RN(n345), .Q(\Reg_File[11][2] ) );
  SDFFRQX2M \Reg_File_reg[11][1]  ( .D(n220), .SI(\Reg_File[11][0] ), .SE(n369), .CK(clk), .RN(n345), .Q(\Reg_File[11][1] ) );
  SDFFRQX2M \Reg_File_reg[11][0]  ( .D(n219), .SI(\Reg_File[10][7] ), .SE(n372), .CK(clk), .RN(n345), .Q(\Reg_File[11][0] ) );
  SDFFRQX2M \Reg_File_reg[15][7]  ( .D(n194), .SI(\Reg_File[15][6] ), .SE(n371), .CK(clk), .RN(n343), .Q(\Reg_File[15][7] ) );
  SDFFRQX2M \Reg_File_reg[15][6]  ( .D(n193), .SI(\Reg_File[15][5] ), .SE(n370), .CK(clk), .RN(n343), .Q(\Reg_File[15][6] ) );
  SDFFRQX2M \Reg_File_reg[15][5]  ( .D(n192), .SI(\Reg_File[15][4] ), .SE(n369), .CK(clk), .RN(n343), .Q(\Reg_File[15][5] ) );
  SDFFRQX2M \Reg_File_reg[15][4]  ( .D(n191), .SI(\Reg_File[15][3] ), .SE(n372), .CK(clk), .RN(n343), .Q(\Reg_File[15][4] ) );
  SDFFRQX2M \Reg_File_reg[15][3]  ( .D(n190), .SI(\Reg_File[15][2] ), .SE(n371), .CK(clk), .RN(n343), .Q(\Reg_File[15][3] ) );
  SDFFRQX2M \Reg_File_reg[15][2]  ( .D(n189), .SI(\Reg_File[15][1] ), .SE(n370), .CK(clk), .RN(n343), .Q(\Reg_File[15][2] ) );
  SDFFRQX2M \Reg_File_reg[15][1]  ( .D(n188), .SI(\Reg_File[15][0] ), .SE(n369), .CK(clk), .RN(n342), .Q(\Reg_File[15][1] ) );
  SDFFRQX2M \Reg_File_reg[15][0]  ( .D(n187), .SI(\Reg_File[14][7] ), .SE(n372), .CK(clk), .RN(n343), .Q(\Reg_File[15][0] ) );
  SDFFRQX2M \Reg_File_reg[6][7]  ( .D(n266), .SI(\Reg_File[6][6] ), .SE(n371), 
        .CK(clk), .RN(n348), .Q(\Reg_File[6][7] ) );
  SDFFRQX2M \Reg_File_reg[6][6]  ( .D(n265), .SI(\Reg_File[6][5] ), .SE(n370), 
        .CK(clk), .RN(n348), .Q(\Reg_File[6][6] ) );
  SDFFRQX2M \Reg_File_reg[6][5]  ( .D(n264), .SI(\Reg_File[6][4] ), .SE(n369), 
        .CK(clk), .RN(n348), .Q(\Reg_File[6][5] ) );
  SDFFRQX2M \Reg_File_reg[6][4]  ( .D(n263), .SI(\Reg_File[6][3] ), .SE(n372), 
        .CK(clk), .RN(n348), .Q(\Reg_File[6][4] ) );
  SDFFRQX2M \Reg_File_reg[6][3]  ( .D(n262), .SI(\Reg_File[6][2] ), .SE(n371), 
        .CK(clk), .RN(n348), .Q(\Reg_File[6][3] ) );
  SDFFRQX2M \Reg_File_reg[6][2]  ( .D(n261), .SI(\Reg_File[6][1] ), .SE(n370), 
        .CK(clk), .RN(n348), .Q(\Reg_File[6][2] ) );
  SDFFRQX2M \Reg_File_reg[6][1]  ( .D(n260), .SI(\Reg_File[6][0] ), .SE(n369), 
        .CK(clk), .RN(n348), .Q(\Reg_File[6][1] ) );
  SDFFRQX2M \Reg_File_reg[6][0]  ( .D(n259), .SI(\Reg_File[5][7] ), .SE(n372), 
        .CK(clk), .RN(n348), .Q(\Reg_File[6][0] ) );
  SDFFRQX2M \Reg_File_reg[10][7]  ( .D(n234), .SI(\Reg_File[10][6] ), .SE(n371), .CK(clk), .RN(n346), .Q(\Reg_File[10][7] ) );
  SDFFRQX2M \Reg_File_reg[10][6]  ( .D(n233), .SI(\Reg_File[10][5] ), .SE(n370), .CK(clk), .RN(n346), .Q(\Reg_File[10][6] ) );
  SDFFRQX2M \Reg_File_reg[10][5]  ( .D(n232), .SI(\Reg_File[10][4] ), .SE(n369), .CK(clk), .RN(n346), .Q(\Reg_File[10][5] ) );
  SDFFRQX2M \Reg_File_reg[10][4]  ( .D(n231), .SI(\Reg_File[10][3] ), .SE(n372), .CK(clk), .RN(n346), .Q(\Reg_File[10][4] ) );
  SDFFRQX2M \Reg_File_reg[10][3]  ( .D(n230), .SI(\Reg_File[10][2] ), .SE(n371), .CK(clk), .RN(n346), .Q(\Reg_File[10][3] ) );
  SDFFRQX2M \Reg_File_reg[10][2]  ( .D(n229), .SI(\Reg_File[10][1] ), .SE(n370), .CK(clk), .RN(n345), .Q(\Reg_File[10][2] ) );
  SDFFRQX2M \Reg_File_reg[10][1]  ( .D(n228), .SI(\Reg_File[10][0] ), .SE(n369), .CK(clk), .RN(n345), .Q(\Reg_File[10][1] ) );
  SDFFRQX2M \Reg_File_reg[10][0]  ( .D(n227), .SI(\Reg_File[9][7] ), .SE(n372), 
        .CK(clk), .RN(n345), .Q(\Reg_File[10][0] ) );
  SDFFRQX2M \Reg_File_reg[14][7]  ( .D(n202), .SI(\Reg_File[14][6] ), .SE(n371), .CK(clk), .RN(n344), .Q(\Reg_File[14][7] ) );
  SDFFRQX2M \Reg_File_reg[14][6]  ( .D(n201), .SI(\Reg_File[14][5] ), .SE(n370), .CK(clk), .RN(n343), .Q(\Reg_File[14][6] ) );
  SDFFRQX2M \Reg_File_reg[14][5]  ( .D(n200), .SI(\Reg_File[14][4] ), .SE(n369), .CK(clk), .RN(n343), .Q(\Reg_File[14][5] ) );
  SDFFRQX2M \Reg_File_reg[14][4]  ( .D(n199), .SI(\Reg_File[14][3] ), .SE(n372), .CK(clk), .RN(n343), .Q(\Reg_File[14][4] ) );
  SDFFRQX2M \Reg_File_reg[14][3]  ( .D(n198), .SI(\Reg_File[14][2] ), .SE(n371), .CK(clk), .RN(n343), .Q(\Reg_File[14][3] ) );
  SDFFRQX2M \Reg_File_reg[14][2]  ( .D(n197), .SI(\Reg_File[14][1] ), .SE(n370), .CK(clk), .RN(n343), .Q(\Reg_File[14][2] ) );
  SDFFRQX2M \Reg_File_reg[14][1]  ( .D(n196), .SI(\Reg_File[14][0] ), .SE(n369), .CK(clk), .RN(n343), .Q(\Reg_File[14][1] ) );
  SDFFRQX2M \Reg_File_reg[14][0]  ( .D(n195), .SI(\Reg_File[13][7] ), .SE(n372), .CK(clk), .RN(n343), .Q(\Reg_File[14][0] ) );
  SDFFRQX2M \Reg_File_reg[4][7]  ( .D(n282), .SI(\Reg_File[4][6] ), .SE(n371), 
        .CK(clk), .RN(n349), .Q(\Reg_File[4][7] ) );
  SDFFRQX2M \Reg_File_reg[4][6]  ( .D(n281), .SI(\Reg_File[4][5] ), .SE(n370), 
        .CK(clk), .RN(n349), .Q(\Reg_File[4][6] ) );
  SDFFRQX2M \Reg_File_reg[4][5]  ( .D(n280), .SI(\Reg_File[4][4] ), .SE(n369), 
        .CK(clk), .RN(n349), .Q(\Reg_File[4][5] ) );
  SDFFRQX2M \Reg_File_reg[4][4]  ( .D(n279), .SI(\Reg_File[4][3] ), .SE(n372), 
        .CK(clk), .RN(n349), .Q(\Reg_File[4][4] ) );
  SDFFRQX2M \Reg_File_reg[4][3]  ( .D(n278), .SI(\Reg_File[4][2] ), .SE(n371), 
        .CK(clk), .RN(n349), .Q(\Reg_File[4][3] ) );
  SDFFRQX2M \Reg_File_reg[4][2]  ( .D(n277), .SI(\Reg_File[4][1] ), .SE(n370), 
        .CK(clk), .RN(n349), .Q(\Reg_File[4][2] ) );
  SDFFRQX2M \Reg_File_reg[4][1]  ( .D(n276), .SI(\Reg_File[4][0] ), .SE(n369), 
        .CK(clk), .RN(n349), .Q(\Reg_File[4][1] ) );
  SDFFRQX2M \Reg_File_reg[4][0]  ( .D(n275), .SI(REG3[7]), .SE(n372), .CK(clk), 
        .RN(n349), .Q(\Reg_File[4][0] ) );
  SDFFRQX2M \Reg_File_reg[8][7]  ( .D(n250), .SI(\Reg_File[8][6] ), .SE(n371), 
        .CK(clk), .RN(n347), .Q(\Reg_File[8][7] ) );
  SDFFRQX2M \Reg_File_reg[8][6]  ( .D(n249), .SI(\Reg_File[8][5] ), .SE(n370), 
        .CK(clk), .RN(n347), .Q(\Reg_File[8][6] ) );
  SDFFRQX2M \Reg_File_reg[8][5]  ( .D(n248), .SI(\Reg_File[8][4] ), .SE(n369), 
        .CK(clk), .RN(n347), .Q(\Reg_File[8][5] ) );
  SDFFRQX2M \Reg_File_reg[8][4]  ( .D(n247), .SI(\Reg_File[8][3] ), .SE(n372), 
        .CK(clk), .RN(n347), .Q(\Reg_File[8][4] ) );
  SDFFRQX2M \Reg_File_reg[8][3]  ( .D(n246), .SI(\Reg_File[8][2] ), .SE(n371), 
        .CK(clk), .RN(n347), .Q(\Reg_File[8][3] ) );
  SDFFRQX2M \Reg_File_reg[8][2]  ( .D(n245), .SI(\Reg_File[8][1] ), .SE(n370), 
        .CK(clk), .RN(n347), .Q(\Reg_File[8][2] ) );
  SDFFRQX2M \Reg_File_reg[8][1]  ( .D(n244), .SI(\Reg_File[8][0] ), .SE(n369), 
        .CK(clk), .RN(n347), .Q(\Reg_File[8][1] ) );
  SDFFRQX2M \Reg_File_reg[8][0]  ( .D(n243), .SI(\Reg_File[7][7] ), .SE(n372), 
        .CK(clk), .RN(n346), .Q(\Reg_File[8][0] ) );
  SDFFRQX2M \Reg_File_reg[12][7]  ( .D(n218), .SI(\Reg_File[12][6] ), .SE(n371), .CK(clk), .RN(n345), .Q(\Reg_File[12][7] ) );
  SDFFRQX2M \Reg_File_reg[12][6]  ( .D(n217), .SI(\Reg_File[12][5] ), .SE(n370), .CK(clk), .RN(n345), .Q(\Reg_File[12][6] ) );
  SDFFRQX2M \Reg_File_reg[12][5]  ( .D(n216), .SI(\Reg_File[12][4] ), .SE(n369), .CK(clk), .RN(n345), .Q(\Reg_File[12][5] ) );
  SDFFRQX2M \Reg_File_reg[12][4]  ( .D(n215), .SI(\Reg_File[12][3] ), .SE(n372), .CK(clk), .RN(n344), .Q(\Reg_File[12][4] ) );
  SDFFRQX2M \Reg_File_reg[12][3]  ( .D(n214), .SI(\Reg_File[12][2] ), .SE(n371), .CK(clk), .RN(n344), .Q(\Reg_File[12][3] ) );
  SDFFRQX2M \Reg_File_reg[12][2]  ( .D(n213), .SI(\Reg_File[12][1] ), .SE(n370), .CK(clk), .RN(n344), .Q(\Reg_File[12][2] ) );
  SDFFRQX2M \Reg_File_reg[12][1]  ( .D(n212), .SI(\Reg_File[12][0] ), .SE(n369), .CK(clk), .RN(n344), .Q(\Reg_File[12][1] ) );
  SDFFRQX2M \Reg_File_reg[12][0]  ( .D(n211), .SI(\Reg_File[11][7] ), .SE(n372), .CK(clk), .RN(n344), .Q(\Reg_File[12][0] ) );
  SDFFRQX2M \Reg_File_reg[3][0]  ( .D(n283), .SI(REG2[7]), .SE(n371), .CK(clk), 
        .RN(n349), .Q(REG3[0]) );
  SDFFRQX2M \Reg_File_reg[1][6]  ( .D(n305), .SI(REG1[5]), .SE(n370), .CK(clk), 
        .RN(n351), .Q(REG1[6]) );
  SDFFRQX2M \Reg_File_reg[0][7]  ( .D(n314), .SI(REG0[6]), .SE(n369), .CK(clk), 
        .RN(n342), .Q(REG0[7]) );
  SDFFRQX2M \Reg_File_reg[0][6]  ( .D(n313), .SI(REG0[5]), .SE(n372), .CK(clk), 
        .RN(n351), .Q(REG0[6]) );
  SDFFRQX2M \Reg_File_reg[0][5]  ( .D(n312), .SI(REG0[4]), .SE(n371), .CK(clk), 
        .RN(n351), .Q(REG0[5]) );
  SDFFRQX2M \Reg_File_reg[0][4]  ( .D(n311), .SI(REG0[3]), .SE(n370), .CK(clk), 
        .RN(n351), .Q(REG0[4]) );
  SDFFRQX2M \Reg_File_reg[0][3]  ( .D(n310), .SI(REG0[2]), .SE(n369), .CK(clk), 
        .RN(n351), .Q(REG0[3]) );
  SDFFRQX2M \Reg_File_reg[0][2]  ( .D(n309), .SI(REG0[1]), .SE(n372), .CK(clk), 
        .RN(n351), .Q(REG0[2]) );
  SDFFRQX2M \Reg_File_reg[0][1]  ( .D(n308), .SI(REG0[0]), .SE(n371), .CK(clk), 
        .RN(n351), .Q(REG0[1]) );
  SDFFRQX2M \Reg_File_reg[0][0]  ( .D(n307), .SI(RdData[7]), .SE(n370), .CK(
        clk), .RN(n351), .Q(REG0[0]) );
  SDFFRQX2M \Reg_File_reg[2][1]  ( .D(n292), .SI(REG2[0]), .SE(n369), .CK(clk), 
        .RN(n350), .Q(REG2[1]) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n185), .SI(RdData[6]), .SE(n372), .CK(clk), 
        .RN(n342), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n184), .SI(RdData[5]), .SE(n371), .CK(clk), 
        .RN(n342), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n183), .SI(RdData[4]), .SE(n370), .CK(clk), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n182), .SI(RdData[3]), .SE(n369), .CK(clk), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n181), .SI(RdData[2]), .SE(n372), .CK(clk), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n180), .SI(RdData[1]), .SE(n371), .CK(clk), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n179), .SI(RdData[0]), .SE(n370), .CK(clk), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n178), .SI(RdData_VLD), .SE(n369), .CK(clk), 
        .RN(n347), .Q(RdData[0]) );
  SDFFSQX2M \Reg_File_reg[2][0]  ( .D(n291), .SI(REG1[7]), .SE(test_se), .CK(
        clk), .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \Reg_File_reg[1][1]  ( .D(n300), .SI(REG1[0]), .SE(n372), .CK(clk), 
        .RN(n350), .Q(REG1[1]) );
  SDFFRQX2M \Reg_File_reg[1][5]  ( .D(n304), .SI(REG1[4]), .SE(n371), .CK(clk), 
        .RN(n351), .Q(REG1[5]) );
  SDFFRQX2M \Reg_File_reg[1][4]  ( .D(n303), .SI(REG1[3]), .SE(n370), .CK(clk), 
        .RN(n351), .Q(REG1[4]) );
  SDFFRQX2M \Reg_File_reg[1][7]  ( .D(n306), .SI(REG1[6]), .SE(n369), .CK(clk), 
        .RN(n351), .Q(REG1[7]) );
  SDFFRQX2M \Reg_File_reg[1][3]  ( .D(n302), .SI(REG1[2]), .SE(n372), .CK(clk), 
        .RN(n351), .Q(REG1[3]) );
  SDFFRQX2M \Reg_File_reg[1][2]  ( .D(n301), .SI(REG1[1]), .SE(n371), .CK(clk), 
        .RN(n350), .Q(REG1[2]) );
  SDFFRQX2M \Reg_File_reg[1][0]  ( .D(n299), .SI(REG0[7]), .SE(n370), .CK(clk), 
        .RN(n350), .Q(REG1[0]) );
  SDFFRQX2M \Reg_File_reg[3][6]  ( .D(n289), .SI(REG3[5]), .SE(n369), .CK(clk), 
        .RN(n350), .Q(REG3[6]) );
  SDFFRQX2M \Reg_File_reg[3][7]  ( .D(n290), .SI(REG3[6]), .SE(n372), .CK(clk), 
        .RN(n350), .Q(REG3[7]) );
  SDFFSQX2M \Reg_File_reg[3][5]  ( .D(n288), .SI(REG3[4]), .SE(n369), .CK(clk), 
        .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M RdData_VLD_reg ( .D(n186), .SI(test_si), .SE(n371), .CK(clk), .RN(
        n342), .Q(RdData_VLD) );
  SDFFRQX2M \Reg_File_reg[3][4]  ( .D(n287), .SI(REG3[3]), .SE(n370), .CK(clk), 
        .RN(n350), .Q(REG3[4]) );
  SDFFRQX2M \Reg_File_reg[3][2]  ( .D(n285), .SI(REG3[1]), .SE(n369), .CK(clk), 
        .RN(n350), .Q(REG3[2]) );
  SDFFRQX2M \Reg_File_reg[3][3]  ( .D(n286), .SI(REG3[2]), .SE(n372), .CK(clk), 
        .RN(n350), .Q(REG3[3]) );
  SDFFRQX2M \Reg_File_reg[3][1]  ( .D(n284), .SI(REG3[0]), .SE(n371), .CK(clk), 
        .RN(n349), .Q(REG3[1]) );
  SDFFRQX2M \Reg_File_reg[2][3]  ( .D(n294), .SI(REG2[2]), .SE(n370), .CK(clk), 
        .RN(n350), .Q(REG2[3]) );
  SDFFRQX2M \Reg_File_reg[2][2]  ( .D(n293), .SI(REG2[1]), .SE(n369), .CK(clk), 
        .RN(n350), .Q(REG2[2]) );
  SDFFSQX2M \Reg_File_reg[2][7]  ( .D(n298), .SI(REG2[6]), .SE(n372), .CK(clk), 
        .SN(n342), .Q(REG2[7]) );
  SDFFRQX2M \Reg_File_reg[2][6]  ( .D(n297), .SI(REG2[5]), .SE(n372), .CK(clk), 
        .RN(n350), .Q(REG2[6]) );
  SDFFRQX2M \Reg_File_reg[2][5]  ( .D(n296), .SI(REG2[4]), .SE(n371), .CK(clk), 
        .RN(n350), .Q(REG2[5]) );
  SDFFRQX2M \Reg_File_reg[2][4]  ( .D(n295), .SI(REG2[3]), .SE(n370), .CK(clk), 
        .RN(n350), .Q(REG2[4]) );
  NOR2X2M U140 ( .A(n366), .B(N12), .Y(n158) );
  NOR2BX2M U141 ( .AN(n176), .B(n340), .Y(n168) );
  NOR2X2M U142 ( .A(N12), .B(N13), .Y(n164) );
  NOR2BX2M U143 ( .AN(n165), .B(n340), .Y(n154) );
  NOR2X2M U144 ( .A(n366), .B(n341), .Y(n153) );
  NOR2X2M U145 ( .A(n341), .B(N13), .Y(n161) );
  INVX2M U146 ( .A(WrData[5]), .Y(n362) );
  INVX2M U147 ( .A(WrData[6]), .Y(n363) );
  INVX2M U148 ( .A(WrData[7]), .Y(n364) );
  INVX2M U149 ( .A(n337), .Y(n338) );
  INVX2M U150 ( .A(n335), .Y(n336) );
  NAND2X2M U151 ( .A(n158), .B(n156), .Y(n159) );
  NAND2X2M U152 ( .A(n170), .B(n158), .Y(n172) );
  INVX2M U153 ( .A(n337), .Y(n339) );
  BUFX2M U154 ( .A(n340), .Y(n337) );
  BUFX2M U155 ( .A(n341), .Y(n335) );
  NOR2BX2M U156 ( .AN(n165), .B(N11), .Y(n156) );
  NOR2BX2M U157 ( .AN(n176), .B(N11), .Y(n170) );
  NAND2X2M U158 ( .A(n168), .B(n161), .Y(n173) );
  NAND2X2M U159 ( .A(n170), .B(n161), .Y(n174) );
  NAND2X2M U160 ( .A(n168), .B(n164), .Y(n175) );
  NAND2X2M U161 ( .A(n170), .B(n164), .Y(n177) );
  NAND2X2M U162 ( .A(n158), .B(n154), .Y(n157) );
  NAND2X2M U163 ( .A(n161), .B(n154), .Y(n160) );
  NAND2X2M U164 ( .A(n161), .B(n156), .Y(n162) );
  NAND2X2M U165 ( .A(n164), .B(n154), .Y(n163) );
  NAND2X2M U166 ( .A(n164), .B(n156), .Y(n166) );
  NAND2X2M U167 ( .A(n156), .B(n153), .Y(n155) );
  NAND2X2M U168 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U169 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U170 ( .A(n168), .B(n158), .Y(n171) );
  NAND2X2M U171 ( .A(n153), .B(n154), .Y(n152) );
  INVX2M U172 ( .A(n150), .Y(n365) );
  NOR2BX2M U173 ( .AN(n151), .B(N14), .Y(n176) );
  NOR2BX2M U174 ( .AN(WrEn), .B(RdEn), .Y(n151) );
  AND2X2M U175 ( .A(N14), .B(n151), .Y(n165) );
  NAND2BX2M U176 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  INVX2M U177 ( .A(N13), .Y(n366) );
  BUFX2M U178 ( .A(n356), .Y(n343) );
  BUFX2M U179 ( .A(n355), .Y(n344) );
  BUFX2M U180 ( .A(n355), .Y(n345) );
  BUFX2M U181 ( .A(n354), .Y(n346) );
  BUFX2M U182 ( .A(n354), .Y(n347) );
  BUFX2M U183 ( .A(n353), .Y(n348) );
  BUFX2M U184 ( .A(n353), .Y(n349) );
  BUFX2M U185 ( .A(n352), .Y(n350) );
  BUFX2M U186 ( .A(n356), .Y(n342) );
  BUFX2M U187 ( .A(n352), .Y(n351) );
  INVX2M U188 ( .A(N11), .Y(n340) );
  INVX2M U189 ( .A(N12), .Y(n341) );
  INVX2M U190 ( .A(WrData[0]), .Y(n357) );
  INVX2M U191 ( .A(WrData[1]), .Y(n358) );
  INVX2M U192 ( .A(WrData[2]), .Y(n359) );
  INVX2M U193 ( .A(WrData[3]), .Y(n360) );
  INVX2M U194 ( .A(WrData[4]), .Y(n361) );
  BUFX2M U195 ( .A(rst), .Y(n355) );
  BUFX2M U196 ( .A(rst), .Y(n354) );
  BUFX2M U197 ( .A(rst), .Y(n353) );
  BUFX2M U198 ( .A(rst), .Y(n352) );
  BUFX2M U199 ( .A(rst), .Y(n356) );
  OAI2BB2X1M U200 ( .B0(n152), .B1(n357), .A0N(\Reg_File[15][0] ), .A1N(n152), 
        .Y(n187) );
  OAI2BB2X1M U201 ( .B0(n152), .B1(n358), .A0N(\Reg_File[15][1] ), .A1N(n152), 
        .Y(n188) );
  OAI2BB2X1M U202 ( .B0(n152), .B1(n359), .A0N(\Reg_File[15][2] ), .A1N(n152), 
        .Y(n189) );
  OAI2BB2X1M U203 ( .B0(n152), .B1(n360), .A0N(\Reg_File[15][3] ), .A1N(n152), 
        .Y(n190) );
  OAI2BB2X1M U204 ( .B0(n152), .B1(n361), .A0N(\Reg_File[15][4] ), .A1N(n152), 
        .Y(n191) );
  OAI2BB2X1M U205 ( .B0(n152), .B1(n362), .A0N(\Reg_File[15][5] ), .A1N(n152), 
        .Y(n192) );
  OAI2BB2X1M U206 ( .B0(n152), .B1(n363), .A0N(\Reg_File[15][6] ), .A1N(n152), 
        .Y(n193) );
  OAI2BB2X1M U207 ( .B0(n152), .B1(n364), .A0N(\Reg_File[15][7] ), .A1N(n152), 
        .Y(n194) );
  OAI2BB2X1M U208 ( .B0(n357), .B1(n155), .A0N(\Reg_File[14][0] ), .A1N(n155), 
        .Y(n195) );
  OAI2BB2X1M U209 ( .B0(n358), .B1(n155), .A0N(\Reg_File[14][1] ), .A1N(n155), 
        .Y(n196) );
  OAI2BB2X1M U210 ( .B0(n359), .B1(n155), .A0N(\Reg_File[14][2] ), .A1N(n155), 
        .Y(n197) );
  OAI2BB2X1M U211 ( .B0(n360), .B1(n155), .A0N(\Reg_File[14][3] ), .A1N(n155), 
        .Y(n198) );
  OAI2BB2X1M U212 ( .B0(n361), .B1(n155), .A0N(\Reg_File[14][4] ), .A1N(n155), 
        .Y(n199) );
  OAI2BB2X1M U213 ( .B0(n362), .B1(n155), .A0N(\Reg_File[14][5] ), .A1N(n155), 
        .Y(n200) );
  OAI2BB2X1M U214 ( .B0(n363), .B1(n155), .A0N(\Reg_File[14][6] ), .A1N(n155), 
        .Y(n201) );
  OAI2BB2X1M U215 ( .B0(n364), .B1(n155), .A0N(\Reg_File[14][7] ), .A1N(n155), 
        .Y(n202) );
  OAI2BB2X1M U216 ( .B0(n357), .B1(n167), .A0N(\Reg_File[7][0] ), .A1N(n167), 
        .Y(n251) );
  OAI2BB2X1M U217 ( .B0(n358), .B1(n167), .A0N(\Reg_File[7][1] ), .A1N(n167), 
        .Y(n252) );
  OAI2BB2X1M U218 ( .B0(n359), .B1(n167), .A0N(\Reg_File[7][2] ), .A1N(n167), 
        .Y(n253) );
  OAI2BB2X1M U219 ( .B0(n360), .B1(n167), .A0N(\Reg_File[7][3] ), .A1N(n167), 
        .Y(n254) );
  OAI2BB2X1M U220 ( .B0(n361), .B1(n167), .A0N(\Reg_File[7][4] ), .A1N(n167), 
        .Y(n255) );
  OAI2BB2X1M U221 ( .B0(n362), .B1(n167), .A0N(\Reg_File[7][5] ), .A1N(n167), 
        .Y(n256) );
  OAI2BB2X1M U222 ( .B0(n363), .B1(n167), .A0N(\Reg_File[7][6] ), .A1N(n167), 
        .Y(n257) );
  OAI2BB2X1M U223 ( .B0(n364), .B1(n167), .A0N(\Reg_File[7][7] ), .A1N(n167), 
        .Y(n258) );
  OAI2BB2X1M U224 ( .B0(n357), .B1(n169), .A0N(\Reg_File[6][0] ), .A1N(n169), 
        .Y(n259) );
  OAI2BB2X1M U225 ( .B0(n358), .B1(n169), .A0N(\Reg_File[6][1] ), .A1N(n169), 
        .Y(n260) );
  OAI2BB2X1M U226 ( .B0(n359), .B1(n169), .A0N(\Reg_File[6][2] ), .A1N(n169), 
        .Y(n261) );
  OAI2BB2X1M U227 ( .B0(n360), .B1(n169), .A0N(\Reg_File[6][3] ), .A1N(n169), 
        .Y(n262) );
  OAI2BB2X1M U228 ( .B0(n361), .B1(n169), .A0N(\Reg_File[6][4] ), .A1N(n169), 
        .Y(n263) );
  OAI2BB2X1M U229 ( .B0(n362), .B1(n169), .A0N(\Reg_File[6][5] ), .A1N(n169), 
        .Y(n264) );
  OAI2BB2X1M U230 ( .B0(n363), .B1(n169), .A0N(\Reg_File[6][6] ), .A1N(n169), 
        .Y(n265) );
  OAI2BB2X1M U231 ( .B0(n364), .B1(n169), .A0N(\Reg_File[6][7] ), .A1N(n169), 
        .Y(n266) );
  OAI2BB2X1M U232 ( .B0(n357), .B1(n171), .A0N(\Reg_File[5][0] ), .A1N(n171), 
        .Y(n267) );
  OAI2BB2X1M U233 ( .B0(n358), .B1(n171), .A0N(\Reg_File[5][1] ), .A1N(n171), 
        .Y(n268) );
  OAI2BB2X1M U234 ( .B0(n359), .B1(n171), .A0N(\Reg_File[5][2] ), .A1N(n171), 
        .Y(n269) );
  OAI2BB2X1M U235 ( .B0(n360), .B1(n171), .A0N(\Reg_File[5][3] ), .A1N(n171), 
        .Y(n270) );
  OAI2BB2X1M U236 ( .B0(n361), .B1(n171), .A0N(\Reg_File[5][4] ), .A1N(n171), 
        .Y(n271) );
  OAI2BB2X1M U237 ( .B0(n362), .B1(n171), .A0N(\Reg_File[5][5] ), .A1N(n171), 
        .Y(n272) );
  OAI2BB2X1M U238 ( .B0(n363), .B1(n171), .A0N(\Reg_File[5][6] ), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U239 ( .B0(n364), .B1(n171), .A0N(\Reg_File[5][7] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U240 ( .B0(n357), .B1(n172), .A0N(\Reg_File[4][0] ), .A1N(n172), 
        .Y(n275) );
  OAI2BB2X1M U241 ( .B0(n358), .B1(n172), .A0N(\Reg_File[4][1] ), .A1N(n172), 
        .Y(n276) );
  OAI2BB2X1M U242 ( .B0(n359), .B1(n172), .A0N(\Reg_File[4][2] ), .A1N(n172), 
        .Y(n277) );
  OAI2BB2X1M U243 ( .B0(n360), .B1(n172), .A0N(\Reg_File[4][3] ), .A1N(n172), 
        .Y(n278) );
  OAI2BB2X1M U244 ( .B0(n361), .B1(n172), .A0N(\Reg_File[4][4] ), .A1N(n172), 
        .Y(n279) );
  OAI2BB2X1M U245 ( .B0(n362), .B1(n172), .A0N(\Reg_File[4][5] ), .A1N(n172), 
        .Y(n280) );
  OAI2BB2X1M U246 ( .B0(n363), .B1(n172), .A0N(\Reg_File[4][6] ), .A1N(n172), 
        .Y(n281) );
  OAI2BB2X1M U247 ( .B0(n364), .B1(n172), .A0N(\Reg_File[4][7] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U248 ( .B0(n357), .B1(n173), .A0N(REG3[0]), .A1N(n173), .Y(n283)
         );
  OAI2BB2X1M U249 ( .B0(n358), .B1(n173), .A0N(REG3[1]), .A1N(n173), .Y(n284)
         );
  OAI2BB2X1M U250 ( .B0(n359), .B1(n173), .A0N(REG3[2]), .A1N(n173), .Y(n285)
         );
  OAI2BB2X1M U251 ( .B0(n360), .B1(n173), .A0N(REG3[3]), .A1N(n173), .Y(n286)
         );
  OAI2BB2X1M U252 ( .B0(n361), .B1(n173), .A0N(REG3[4]), .A1N(n173), .Y(n287)
         );
  OAI2BB2X1M U253 ( .B0(n363), .B1(n173), .A0N(REG3[6]), .A1N(n173), .Y(n289)
         );
  OAI2BB2X1M U254 ( .B0(n364), .B1(n173), .A0N(REG3[7]), .A1N(n173), .Y(n290)
         );
  OAI2BB2X1M U255 ( .B0(n358), .B1(n174), .A0N(REG2[1]), .A1N(n174), .Y(n292)
         );
  OAI2BB2X1M U256 ( .B0(n359), .B1(n174), .A0N(REG2[2]), .A1N(n174), .Y(n293)
         );
  OAI2BB2X1M U257 ( .B0(n360), .B1(n174), .A0N(REG2[3]), .A1N(n174), .Y(n294)
         );
  OAI2BB2X1M U258 ( .B0(n361), .B1(n174), .A0N(REG2[4]), .A1N(n174), .Y(n295)
         );
  OAI2BB2X1M U259 ( .B0(n362), .B1(n174), .A0N(REG2[5]), .A1N(n174), .Y(n296)
         );
  OAI2BB2X1M U260 ( .B0(n363), .B1(n174), .A0N(REG2[6]), .A1N(n174), .Y(n297)
         );
  OAI2BB2X1M U261 ( .B0(n357), .B1(n175), .A0N(REG1[0]), .A1N(n175), .Y(n299)
         );
  OAI2BB2X1M U262 ( .B0(n358), .B1(n175), .A0N(REG1[1]), .A1N(n175), .Y(n300)
         );
  OAI2BB2X1M U263 ( .B0(n359), .B1(n175), .A0N(REG1[2]), .A1N(n175), .Y(n301)
         );
  OAI2BB2X1M U264 ( .B0(n360), .B1(n175), .A0N(REG1[3]), .A1N(n175), .Y(n302)
         );
  OAI2BB2X1M U265 ( .B0(n361), .B1(n175), .A0N(REG1[4]), .A1N(n175), .Y(n303)
         );
  OAI2BB2X1M U266 ( .B0(n362), .B1(n175), .A0N(REG1[5]), .A1N(n175), .Y(n304)
         );
  OAI2BB2X1M U267 ( .B0(n363), .B1(n175), .A0N(REG1[6]), .A1N(n175), .Y(n305)
         );
  OAI2BB2X1M U268 ( .B0(n364), .B1(n175), .A0N(REG1[7]), .A1N(n175), .Y(n306)
         );
  OAI2BB2X1M U269 ( .B0(n357), .B1(n177), .A0N(REG0[0]), .A1N(n177), .Y(n307)
         );
  OAI2BB2X1M U270 ( .B0(n358), .B1(n177), .A0N(REG0[1]), .A1N(n177), .Y(n308)
         );
  OAI2BB2X1M U271 ( .B0(n359), .B1(n177), .A0N(REG0[2]), .A1N(n177), .Y(n309)
         );
  OAI2BB2X1M U272 ( .B0(n360), .B1(n177), .A0N(REG0[3]), .A1N(n177), .Y(n310)
         );
  OAI2BB2X1M U273 ( .B0(n361), .B1(n177), .A0N(REG0[4]), .A1N(n177), .Y(n311)
         );
  OAI2BB2X1M U274 ( .B0(n362), .B1(n177), .A0N(REG0[5]), .A1N(n177), .Y(n312)
         );
  OAI2BB2X1M U275 ( .B0(n363), .B1(n177), .A0N(REG0[6]), .A1N(n177), .Y(n313)
         );
  OAI2BB2X1M U276 ( .B0(n364), .B1(n177), .A0N(REG0[7]), .A1N(n177), .Y(n314)
         );
  OAI2BB2X1M U277 ( .B0(n357), .B1(n160), .A0N(\Reg_File[11][0] ), .A1N(n160), 
        .Y(n219) );
  OAI2BB2X1M U278 ( .B0(n358), .B1(n160), .A0N(\Reg_File[11][1] ), .A1N(n160), 
        .Y(n220) );
  OAI2BB2X1M U279 ( .B0(n359), .B1(n160), .A0N(\Reg_File[11][2] ), .A1N(n160), 
        .Y(n221) );
  OAI2BB2X1M U280 ( .B0(n360), .B1(n160), .A0N(\Reg_File[11][3] ), .A1N(n160), 
        .Y(n222) );
  OAI2BB2X1M U281 ( .B0(n361), .B1(n160), .A0N(\Reg_File[11][4] ), .A1N(n160), 
        .Y(n223) );
  OAI2BB2X1M U282 ( .B0(n362), .B1(n160), .A0N(\Reg_File[11][5] ), .A1N(n160), 
        .Y(n224) );
  OAI2BB2X1M U283 ( .B0(n363), .B1(n160), .A0N(\Reg_File[11][6] ), .A1N(n160), 
        .Y(n225) );
  OAI2BB2X1M U284 ( .B0(n364), .B1(n160), .A0N(\Reg_File[11][7] ), .A1N(n160), 
        .Y(n226) );
  OAI2BB2X1M U285 ( .B0(n357), .B1(n162), .A0N(\Reg_File[10][0] ), .A1N(n162), 
        .Y(n227) );
  OAI2BB2X1M U286 ( .B0(n358), .B1(n162), .A0N(\Reg_File[10][1] ), .A1N(n162), 
        .Y(n228) );
  OAI2BB2X1M U287 ( .B0(n359), .B1(n162), .A0N(\Reg_File[10][2] ), .A1N(n162), 
        .Y(n229) );
  OAI2BB2X1M U288 ( .B0(n360), .B1(n162), .A0N(\Reg_File[10][3] ), .A1N(n162), 
        .Y(n230) );
  OAI2BB2X1M U289 ( .B0(n361), .B1(n162), .A0N(\Reg_File[10][4] ), .A1N(n162), 
        .Y(n231) );
  OAI2BB2X1M U290 ( .B0(n362), .B1(n162), .A0N(\Reg_File[10][5] ), .A1N(n162), 
        .Y(n232) );
  OAI2BB2X1M U291 ( .B0(n363), .B1(n162), .A0N(\Reg_File[10][6] ), .A1N(n162), 
        .Y(n233) );
  OAI2BB2X1M U292 ( .B0(n364), .B1(n162), .A0N(\Reg_File[10][7] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U293 ( .B0(n357), .B1(n163), .A0N(\Reg_File[9][0] ), .A1N(n163), 
        .Y(n235) );
  OAI2BB2X1M U294 ( .B0(n358), .B1(n163), .A0N(\Reg_File[9][1] ), .A1N(n163), 
        .Y(n236) );
  OAI2BB2X1M U295 ( .B0(n359), .B1(n163), .A0N(\Reg_File[9][2] ), .A1N(n163), 
        .Y(n237) );
  OAI2BB2X1M U296 ( .B0(n360), .B1(n163), .A0N(\Reg_File[9][3] ), .A1N(n163), 
        .Y(n238) );
  OAI2BB2X1M U297 ( .B0(n361), .B1(n163), .A0N(\Reg_File[9][4] ), .A1N(n163), 
        .Y(n239) );
  OAI2BB2X1M U298 ( .B0(n362), .B1(n163), .A0N(\Reg_File[9][5] ), .A1N(n163), 
        .Y(n240) );
  OAI2BB2X1M U299 ( .B0(n363), .B1(n163), .A0N(\Reg_File[9][6] ), .A1N(n163), 
        .Y(n241) );
  OAI2BB2X1M U300 ( .B0(n364), .B1(n163), .A0N(\Reg_File[9][7] ), .A1N(n163), 
        .Y(n242) );
  OAI2BB2X1M U301 ( .B0(n357), .B1(n166), .A0N(\Reg_File[8][0] ), .A1N(n166), 
        .Y(n243) );
  OAI2BB2X1M U302 ( .B0(n358), .B1(n166), .A0N(\Reg_File[8][1] ), .A1N(n166), 
        .Y(n244) );
  OAI2BB2X1M U303 ( .B0(n359), .B1(n166), .A0N(\Reg_File[8][2] ), .A1N(n166), 
        .Y(n245) );
  OAI2BB2X1M U304 ( .B0(n360), .B1(n166), .A0N(\Reg_File[8][3] ), .A1N(n166), 
        .Y(n246) );
  OAI2BB2X1M U305 ( .B0(n361), .B1(n166), .A0N(\Reg_File[8][4] ), .A1N(n166), 
        .Y(n247) );
  OAI2BB2X1M U306 ( .B0(n362), .B1(n166), .A0N(\Reg_File[8][5] ), .A1N(n166), 
        .Y(n248) );
  OAI2BB2X1M U307 ( .B0(n363), .B1(n166), .A0N(\Reg_File[8][6] ), .A1N(n166), 
        .Y(n249) );
  OAI2BB2X1M U308 ( .B0(n364), .B1(n166), .A0N(\Reg_File[8][7] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U309 ( .B0(n357), .B1(n157), .A0N(\Reg_File[13][0] ), .A1N(n157), 
        .Y(n203) );
  OAI2BB2X1M U310 ( .B0(n358), .B1(n157), .A0N(\Reg_File[13][1] ), .A1N(n157), 
        .Y(n204) );
  OAI2BB2X1M U311 ( .B0(n359), .B1(n157), .A0N(\Reg_File[13][2] ), .A1N(n157), 
        .Y(n205) );
  OAI2BB2X1M U312 ( .B0(n360), .B1(n157), .A0N(\Reg_File[13][3] ), .A1N(n157), 
        .Y(n206) );
  OAI2BB2X1M U313 ( .B0(n361), .B1(n157), .A0N(\Reg_File[13][4] ), .A1N(n157), 
        .Y(n207) );
  OAI2BB2X1M U314 ( .B0(n362), .B1(n157), .A0N(\Reg_File[13][5] ), .A1N(n157), 
        .Y(n208) );
  OAI2BB2X1M U315 ( .B0(n363), .B1(n157), .A0N(\Reg_File[13][6] ), .A1N(n157), 
        .Y(n209) );
  OAI2BB2X1M U316 ( .B0(n364), .B1(n157), .A0N(\Reg_File[13][7] ), .A1N(n157), 
        .Y(n210) );
  OAI2BB2X1M U317 ( .B0(n357), .B1(n159), .A0N(\Reg_File[12][0] ), .A1N(n159), 
        .Y(n211) );
  OAI2BB2X1M U318 ( .B0(n358), .B1(n159), .A0N(\Reg_File[12][1] ), .A1N(n159), 
        .Y(n212) );
  OAI2BB2X1M U319 ( .B0(n359), .B1(n159), .A0N(\Reg_File[12][2] ), .A1N(n159), 
        .Y(n213) );
  OAI2BB2X1M U320 ( .B0(n360), .B1(n159), .A0N(\Reg_File[12][3] ), .A1N(n159), 
        .Y(n214) );
  OAI2BB2X1M U321 ( .B0(n361), .B1(n159), .A0N(\Reg_File[12][4] ), .A1N(n159), 
        .Y(n215) );
  OAI2BB2X1M U322 ( .B0(n362), .B1(n159), .A0N(\Reg_File[12][5] ), .A1N(n159), 
        .Y(n216) );
  OAI2BB2X1M U323 ( .B0(n363), .B1(n159), .A0N(\Reg_File[12][6] ), .A1N(n159), 
        .Y(n217) );
  OAI2BB2X1M U324 ( .B0(n364), .B1(n159), .A0N(\Reg_File[12][7] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U325 ( .B0(n362), .B1(n173), .A0N(REG3[5]), .A1N(n173), .Y(n288)
         );
  OAI2BB2X1M U326 ( .B0(n357), .B1(n174), .A0N(REG2[0]), .A1N(n174), .Y(n291)
         );
  OAI2BB2X1M U327 ( .B0(n364), .B1(n174), .A0N(REG2[7]), .A1N(n174), .Y(n298)
         );
  AO22X1M U328 ( .A0(N43), .A1(n365), .B0(RdData[0]), .B1(n150), .Y(n178) );
  MX4X1M U329 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U330 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n141) );
  MX4X1M U331 ( .A(\Reg_File[8][0] ), .B(\Reg_File[9][0] ), .C(
        \Reg_File[10][0] ), .D(\Reg_File[11][0] ), .S0(N11), .S1(N12), .Y(n139) );
  AO22X1M U332 ( .A0(N42), .A1(n365), .B0(RdData[1]), .B1(n150), .Y(n179) );
  MX4X1M U333 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U334 ( .A(\Reg_File[8][1] ), .B(\Reg_File[9][1] ), .C(
        \Reg_File[10][1] ), .D(\Reg_File[11][1] ), .S0(N11), .S1(N12), .Y(n143) );
  MX4X1M U335 ( .A(\Reg_File[12][1] ), .B(\Reg_File[13][1] ), .C(
        \Reg_File[14][1] ), .D(\Reg_File[15][1] ), .S0(n338), .S1(n336), .Y(
        n142) );
  AO22X1M U336 ( .A0(N41), .A1(n365), .B0(RdData[2]), .B1(n150), .Y(n180) );
  MX4X1M U337 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U338 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n338), 
        .S1(n336), .Y(n149) );
  MX4X1M U339 ( .A(\Reg_File[8][2] ), .B(\Reg_File[9][2] ), .C(
        \Reg_File[10][2] ), .D(\Reg_File[11][2] ), .S0(n338), .S1(n336), .Y(
        n147) );
  AO22X1M U340 ( .A0(N40), .A1(n365), .B0(RdData[3]), .B1(n150), .Y(n181) );
  MX4X1M U341 ( .A(n318), .B(n316), .C(n317), .D(n315), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U342 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n338), 
        .S1(n336), .Y(n318) );
  MX4X1M U343 ( .A(\Reg_File[8][3] ), .B(\Reg_File[9][3] ), .C(
        \Reg_File[10][3] ), .D(\Reg_File[11][3] ), .S0(n338), .S1(n336), .Y(
        n316) );
  AO22X1M U344 ( .A0(N39), .A1(n365), .B0(RdData[4]), .B1(n150), .Y(n182) );
  MX4X1M U345 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U346 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n339), 
        .S1(n336), .Y(n322) );
  MX4X1M U347 ( .A(\Reg_File[8][4] ), .B(\Reg_File[9][4] ), .C(
        \Reg_File[10][4] ), .D(\Reg_File[11][4] ), .S0(n338), .S1(n336), .Y(
        n320) );
  AO22X1M U348 ( .A0(N38), .A1(n365), .B0(RdData[5]), .B1(n150), .Y(n183) );
  MX4X1M U349 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U350 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n339), 
        .S1(N12), .Y(n326) );
  MX4X1M U351 ( .A(\Reg_File[8][5] ), .B(\Reg_File[9][5] ), .C(
        \Reg_File[10][5] ), .D(\Reg_File[11][5] ), .S0(n339), .S1(N12), .Y(
        n324) );
  AO22X1M U352 ( .A0(N37), .A1(n365), .B0(RdData[6]), .B1(n150), .Y(n184) );
  MX4X1M U353 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U354 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n339), 
        .S1(N12), .Y(n330) );
  MX4X1M U355 ( .A(\Reg_File[8][6] ), .B(\Reg_File[9][6] ), .C(
        \Reg_File[10][6] ), .D(\Reg_File[11][6] ), .S0(n339), .S1(N12), .Y(
        n328) );
  AO22X1M U356 ( .A0(N36), .A1(n365), .B0(RdData[7]), .B1(n150), .Y(n185) );
  MX4X1M U357 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U358 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n339), 
        .S1(N12), .Y(n334) );
  MX4X1M U359 ( .A(\Reg_File[8][7] ), .B(\Reg_File[9][7] ), .C(
        \Reg_File[10][7] ), .D(\Reg_File[11][7] ), .S0(n339), .S1(N12), .Y(
        n332) );
  MX4X1M U360 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n338), 
        .S1(N12), .Y(n145) );
  MX4X1M U361 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(N11), .S1(N12), .Y(n140)
         );
  MX4X1M U362 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n338), .S1(N12), .Y(n144)
         );
  MX4X1M U363 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n338), .S1(n336), .Y(n148) );
  MX4X1M U364 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n338), .S1(n336), .Y(n317) );
  MX4X1M U365 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n338), .S1(n336), .Y(n321) );
  MX4X1M U366 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n339), .S1(N12), .Y(n325)
         );
  MX4X1M U367 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n339), .S1(N12), .Y(n329)
         );
  MX4X1M U368 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n339), .S1(N12), .Y(n333)
         );
  MX4X1M U369 ( .A(\Reg_File[12][0] ), .B(\Reg_File[13][0] ), .C(
        \Reg_File[14][0] ), .D(\Reg_File[15][0] ), .S0(n339), .S1(N12), .Y(
        n138) );
  MX4X1M U370 ( .A(\Reg_File[12][2] ), .B(\Reg_File[13][2] ), .C(
        \Reg_File[14][2] ), .D(\Reg_File[15][2] ), .S0(n338), .S1(n336), .Y(
        n146) );
  MX4X1M U371 ( .A(\Reg_File[12][3] ), .B(\Reg_File[13][3] ), .C(
        \Reg_File[14][3] ), .D(\Reg_File[15][3] ), .S0(n338), .S1(n336), .Y(
        n315) );
  MX4X1M U372 ( .A(\Reg_File[12][4] ), .B(\Reg_File[13][4] ), .C(
        \Reg_File[14][4] ), .D(\Reg_File[15][4] ), .S0(n338), .S1(n336), .Y(
        n319) );
  MX4X1M U373 ( .A(\Reg_File[12][5] ), .B(\Reg_File[13][5] ), .C(
        \Reg_File[14][5] ), .D(\Reg_File[15][5] ), .S0(n339), .S1(N12), .Y(
        n323) );
  MX4X1M U374 ( .A(\Reg_File[12][6] ), .B(\Reg_File[13][6] ), .C(
        \Reg_File[14][6] ), .D(\Reg_File[15][6] ), .S0(n339), .S1(N12), .Y(
        n327) );
  MX4X1M U375 ( .A(\Reg_File[12][7] ), .B(\Reg_File[13][7] ), .C(
        \Reg_File[14][7] ), .D(\Reg_File[15][7] ), .S0(n339), .S1(N12), .Y(
        n331) );
  OAI2BB1X2M U376 ( .A0N(RdData_VLD), .A1N(n151), .B0(n150), .Y(n186) );
  DLY1X1M U377 ( .A(test_se), .Y(n369) );
  DLY1X1M U378 ( .A(test_se), .Y(n370) );
  DLY1X1M U379 ( .A(test_se), .Y(n371) );
  DLY1X1M U380 ( .A(test_se), .Y(n372) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n24) );
  INVX2M U38 ( .A(A[6]), .Y(n25) );
  INVX2M U39 ( .A(A[1]), .Y(n30) );
  INVX2M U40 ( .A(A[0]), .Y(n31) );
  INVX2M U41 ( .A(A[3]), .Y(n28) );
  INVX2M U42 ( .A(A[2]), .Y(n29) );
  INVX2M U43 ( .A(A[5]), .Y(n26) );
  INVX2M U44 ( .A(A[4]), .Y(n27) );
  INVX2M U45 ( .A(B[6]), .Y(n33) );
  INVX2M U46 ( .A(B[0]), .Y(n39) );
  INVX2M U47 ( .A(B[2]), .Y(n37) );
  INVX2M U48 ( .A(B[3]), .Y(n36) );
  INVX2M U49 ( .A(B[7]), .Y(n32) );
  INVX2M U50 ( .A(B[4]), .Y(n35) );
  INVX2M U51 ( .A(B[5]), .Y(n34) );
  INVX2M U52 ( .A(B[1]), .Y(n38) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( A, B, ALU_FUN, EN, clk, rst, ALU_OUT, OUT_VALID, test_si, 
        test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, clk, rst, test_si, test_se;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] out_alu_comb;

  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(out_alu_comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(out_alu_comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(out_alu_comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(out_alu_comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(out_alu_comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(out_alu_comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(out_alu_comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(out_alu_comb[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(out_alu_comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(out_alu_comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(out_alu_comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(out_alu_comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(out_alu_comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(out_alu_comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(out_alu_comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(out_alu_comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(ALU_OUT[8]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U23 ( .A0N(n145), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U24 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U25 ( .AN(n123), .B(n142), .Y(n54) );
  AND2X2M U26 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U27 ( .AN(n52), .B(n146), .Y(n48) );
  AND2X2M U28 ( .A(n123), .B(n122), .Y(n67) );
  INVX2M U29 ( .A(n117), .Y(n142) );
  BUFX2M U30 ( .A(n58), .Y(n30) );
  NOR2X2M U31 ( .A(n124), .B(n142), .Y(n58) );
  INVX2M U32 ( .A(n108), .Y(n143) );
  OAI2BB1X2M U33 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(out_alu_comb[9]) );
  OAI2BB1X2M U34 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(out_alu_comb[10]) );
  OAI2BB1X2M U35 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(out_alu_comb[11]) );
  OAI2BB1X2M U36 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(out_alu_comb[12]) );
  OAI2BB1X2M U37 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(out_alu_comb[13]) );
  OAI2BB1X2M U38 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(out_alu_comb[14]) );
  OAI2BB1X2M U39 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(out_alu_comb[15]) );
  INVX2M U40 ( .A(n124), .Y(n145) );
  NOR3BX2M U41 ( .AN(n122), .B(n144), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U42 ( .A(n142), .B(ALU_FUN[2]), .C(n144), .Y(n52) );
  NOR2X2M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  NAND2X2M U44 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U45 ( .A(ALU_FUN[0]), .Y(n141) );
  AND3X2M U46 ( .A(n123), .B(n141), .C(n3), .Y(n63) );
  NAND2X2M U47 ( .A(EN), .B(n140), .Y(n49) );
  NAND3X2M U48 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U49 ( .A(ALU_FUN[1]), .Y(n144) );
  NAND3X2M U50 ( .A(n145), .B(n141), .C(n3), .Y(n53) );
  INVX2M U51 ( .A(EN), .Y(n146) );
  NOR2X2M U52 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NOR2X2M U53 ( .A(n141), .B(n3), .Y(n122) );
  NAND3X2M U54 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  AND2X2M U55 ( .A(ALU_FUN[2]), .B(n144), .Y(n116) );
  AND4X2M U56 ( .A(N159), .B(n116), .C(n3), .D(n141), .Y(n107) );
  INVX2M U57 ( .A(n4), .Y(n137) );
  OAI222X1M U58 ( .A0(n72), .A1(n137), .B0(n4), .B1(n73), .C0(n53), .C1(n149), 
        .Y(n71) );
  AOI221XLM U59 ( .A0(n28), .A1(n63), .B0(n64), .B1(n148), .C0(n30), .Y(n73)
         );
  AOI221XLM U60 ( .A0(n63), .A1(n148), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  AOI31X2M U61 ( .A0(n92), .A1(n93), .A2(n94), .B0(n146), .Y(out_alu_comb[2])
         );
  AOI22X1M U62 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n92) );
  AOI221XLM U63 ( .A0(n8), .A1(n143), .B0(n30), .B1(n152), .C0(n95), .Y(n94)
         );
  AOI222X1M U64 ( .A0(N111), .A1(n52), .B0(n7), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n93) );
  AOI31X2M U65 ( .A0(n86), .A1(n87), .A2(n88), .B0(n146), .Y(out_alu_comb[3])
         );
  AOI22X1M U66 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n86) );
  AOI221XLM U67 ( .A0(n9), .A1(n143), .B0(n30), .B1(n151), .C0(n89), .Y(n88)
         );
  AOI222X1M U68 ( .A0(N112), .A1(n52), .B0(n8), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n87) );
  AOI31X2M U69 ( .A0(n80), .A1(n81), .A2(n82), .B0(n146), .Y(out_alu_comb[4])
         );
  AOI22X1M U70 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n80) );
  AOI221XLM U71 ( .A0(n143), .A1(n27), .B0(n30), .B1(n150), .C0(n83), .Y(n82)
         );
  AOI222X1M U72 ( .A0(N113), .A1(n52), .B0(n9), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n81) );
  AOI31X2M U73 ( .A0(n74), .A1(n75), .A2(n76), .B0(n146), .Y(out_alu_comb[5])
         );
  AOI22X1M U74 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n74) );
  AOI221XLM U75 ( .A0(n143), .A1(n28), .B0(n30), .B1(n149), .C0(n77), .Y(n76)
         );
  AOI222X1M U76 ( .A0(N114), .A1(n52), .B0(n27), .B1(n59), .C0(N130), .C1(n66), 
        .Y(n75) );
  AOI31X2M U77 ( .A0(n68), .A1(n69), .A2(n70), .B0(n146), .Y(out_alu_comb[6])
         );
  AOI22X1M U78 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n68) );
  AOI221XLM U79 ( .A0(n143), .A1(n29), .B0(n30), .B1(n148), .C0(n71), .Y(n70)
         );
  AOI222X1M U80 ( .A0(N115), .A1(n52), .B0(n59), .B1(n28), .C0(N131), .C1(n66), 
        .Y(n69) );
  AOI31X2M U81 ( .A0(n55), .A1(n56), .A2(n57), .B0(n146), .Y(out_alu_comb[7])
         );
  AOI22X1M U82 ( .A0(N132), .A1(n66), .B0(N116), .B1(n52), .Y(n56) );
  AOI22X1M U83 ( .A0(N107), .A1(n67), .B0(N98), .B1(n54), .Y(n55) );
  AOI221XLM U84 ( .A0(n30), .A1(n147), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U85 ( .A0(n110), .A1(n111), .A2(n112), .B0(n146), .Y(
        out_alu_comb[0]) );
  AOI22X1M U86 ( .A0(N100), .A1(n67), .B0(N91), .B1(n54), .Y(n110) );
  AOI211X2M U87 ( .A0(n30), .A1(n154), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U88 ( .A0(N109), .A1(n52), .B0(n5), .B1(n59), .C0(N125), .C1(n66), 
        .Y(n111) );
  AOI31X2M U89 ( .A0(n98), .A1(n99), .A2(n100), .B0(n146), .Y(out_alu_comb[1])
         );
  AOI211X2M U90 ( .A0(n7), .A1(n143), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U91 ( .A0(N126), .A1(n66), .B0(n30), .B1(n153), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U92 ( .A0(N92), .A1(n54), .B0(N110), .B1(n52), .C0(N101), .C1(n67), 
        .Y(n98) );
  INVX2M U93 ( .A(n109), .Y(n140) );
  AOI211X2M U94 ( .A0(N108), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U95 ( .A0(n50), .A1(n51), .B0(n146), .Y(out_alu_comb[8]) );
  AOI21X2M U96 ( .A0(N99), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U97 ( .B0(N117), .B1(n52), .A0N(n147), .A1N(n53), .Y(n51) );
  BUFX2M U98 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U99 ( .A(n6), .Y(n153) );
  INVX2M U100 ( .A(n5), .Y(n154) );
  INVX2M U101 ( .A(n28), .Y(n148) );
  INVX2M U102 ( .A(n29), .Y(n147) );
  INVX2M U103 ( .A(n8), .Y(n151) );
  INVX2M U104 ( .A(n7), .Y(n152) );
  INVX2M U105 ( .A(n27), .Y(n149) );
  INVX2M U106 ( .A(n9), .Y(n150) );
  OAI222X1M U107 ( .A0(n96), .A1(n135), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n153), .Y(n95) );
  AOI221XLM U108 ( .A0(n7), .A1(n63), .B0(n64), .B1(n152), .C0(n30), .Y(n97)
         );
  AOI221XLM U109 ( .A0(n63), .A1(n152), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U110 ( .A0(n90), .A1(n136), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n152), .Y(n89) );
  AOI221XLM U111 ( .A0(n8), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n91)
         );
  AOI221XLM U112 ( .A0(n63), .A1(n151), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U113 ( .A0(n84), .A1(n157), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n151), .Y(n83) );
  INVX2M U114 ( .A(B[4]), .Y(n157) );
  AOI221XLM U115 ( .A0(n9), .A1(n63), .B0(n64), .B1(n150), .C0(n30), .Y(n85)
         );
  AOI221XLM U116 ( .A0(n63), .A1(n150), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U117 ( .A0(n78), .A1(n156), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n150), .Y(n77) );
  INVX2M U118 ( .A(B[5]), .Y(n156) );
  AOI221XLM U119 ( .A0(n27), .A1(n63), .B0(n64), .B1(n149), .C0(n30), .Y(n79)
         );
  AOI221XLM U120 ( .A0(n63), .A1(n149), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U121 ( .A0(n61), .A1(n155), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n148), .Y(n60) );
  INVX2M U122 ( .A(B[7]), .Y(n155) );
  AOI221XLM U123 ( .A0(n63), .A1(n29), .B0(n64), .B1(n147), .C0(n30), .Y(n62)
         );
  AOI221XLM U124 ( .A0(n63), .A1(n147), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U125 ( .A(n31), .Y(n138) );
  OAI2B2X1M U126 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n153), .Y(n114) );
  AOI221XLM U127 ( .A0(n63), .A1(n154), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U128 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n154), .Y(n102) );
  AOI221XLM U129 ( .A0(n63), .A1(n153), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U130 ( .A(n42), .Y(n139) );
  OAI21X2M U131 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U132 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U133 ( .A0(n5), .A1(n63), .B0(n64), .B1(n154), .C0(n30), .Y(n119)
         );
  NOR3X2M U134 ( .A(n144), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U135 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U136 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U137 ( .A0(n6), .A1(n63), .B0(n64), .B1(n153), .C0(n30), .Y(n104)
         );
  NOR3X2M U138 ( .A(n141), .B(ALU_FUN[2]), .C(n144), .Y(n106) );
  BUFX2M U139 ( .A(A[7]), .Y(n29) );
  BUFX2M U140 ( .A(A[1]), .Y(n6) );
  BUFX2M U141 ( .A(A[0]), .Y(n5) );
  BUFX2M U142 ( .A(A[3]), .Y(n8) );
  BUFX2M U143 ( .A(A[2]), .Y(n7) );
  BUFX2M U144 ( .A(A[5]), .Y(n27) );
  BUFX2M U145 ( .A(A[4]), .Y(n9) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n135) );
  INVX2M U149 ( .A(B[3]), .Y(n136) );
  NOR2X1M U150 ( .A(n147), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n136), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n135), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n135), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n153), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n138), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n136), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n148), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n147), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n153), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n153), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n139), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n137), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_DW_div_uns_0 div_51 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_DW01_sub_0 sub_43 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_39 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_47 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module clk_gating ( en, clk, gated_clk );
  input en, clk;
  output gated_clk;


  TLATNCAX12M U0_TLATNCAX12M ( .E(en), .CK(clk), .ECK(gated_clk) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, OUT_Valid, ALU_EN, ALU_FUN, 
        RX_P_Data, RX_D_VLD, TX_P_Data, TX_D_VLD, RdData, RdData_Valid, 
        Address, WrEN, RdEN, WrData, FIFO_FULL, CLK_EN, clk_div_en, test_si, 
        test_so, test_se );
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  input [7:0] RX_P_Data;
  output [7:0] TX_P_Data;
  input [7:0] RdData;
  output [3:0] Address;
  output [7:0] WrData;
  input CLK, RST, OUT_Valid, RX_D_VLD, RdData_Valid, FIFO_FULL, test_si,
         test_se;
  output ALU_EN, TX_D_VLD, WrEN, RdEN, CLK_EN, clk_div_en, test_so;
  wire   n2, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n19,
         n21, n22, n23, n25, n28, n29, n31, n32, n34, n36, n43, n48, n49, n51,
         n71, n72, n73, n75, n76, n77, n79, n85, n87, n89, n91, n100, n101,
         n102, n103, n20, n24, n26, n27, n30, n33, n35, n37, n38, n39, n40,
         n41, n42, n44, n46, n47, n50, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n74, n78, n80, n81,
         n82, n83, n104, n105, n106, n107, n108, n109, n110;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [3:0] addr_prev;
  assign test_so = n54;

  SDFFRX1M \alu_prev_reg[3]  ( .D(n103), .SI(n108), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n107), .QN(n55) );
  SDFFRX1M \alu_prev_reg[1]  ( .D(n101), .SI(n110), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n109), .QN(n57) );
  SDFFRX1M \alu_prev_reg[0]  ( .D(n100), .SI(n59), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n110), .QN(n58) );
  SDFFRQX2M \addr_prev_reg[3]  ( .D(n91), .SI(addr_prev[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(addr_prev[3]) );
  SDFFRQX2M \addr_prev_reg[2]  ( .D(n89), .SI(addr_prev[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(addr_prev[2]) );
  SDFFRQX2M \addr_prev_reg[1]  ( .D(n87), .SI(addr_prev[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(addr_prev[1]) );
  SDFFRQX2M \addr_prev_reg[0]  ( .D(n85), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(addr_prev[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(n53), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(n107), .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n46), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRX1M \alu_prev_reg[2]  ( .D(n102), .SI(n109), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n108), .QN(n56) );
  OAI22X2M U6 ( .A0(n60), .A1(n72), .B0(n77), .B1(n41), .Y(Address[2]) );
  OAI22X1M U7 ( .A0(n56), .A1(n23), .B0(n41), .B1(n48), .Y(ALU_FUN[2]) );
  OAI22X1M U8 ( .A0(n57), .A1(n23), .B0(n42), .B1(n48), .Y(ALU_FUN[1]) );
  OAI22X1M U9 ( .A0(n58), .A1(n23), .B0(n44), .B1(n48), .Y(ALU_FUN[0]) );
  NOR4X1M U10 ( .A(n46), .B(current_state[1]), .C(current_state[2]), .D(
        current_state[3]), .Y(n10) );
  NOR2BX2M U11 ( .AN(n2), .B(n36), .Y(n77) );
  INVX2M U12 ( .A(n2), .Y(RdEN) );
  INVX2M U13 ( .A(n36), .Y(n26) );
  INVX2M U14 ( .A(n43), .Y(n30) );
  OAI22X4M U15 ( .A0(n59), .A1(n72), .B0(n77), .B1(n40), .Y(Address[3]) );
  NOR2X2M U16 ( .A(n16), .B(n27), .Y(n36) );
  NAND2X2M U17 ( .A(n79), .B(n46), .Y(n2) );
  NAND2X2M U18 ( .A(n20), .B(n24), .Y(WrEN) );
  OAI221X1M U19 ( .A0(n77), .A1(n44), .B0(n62), .B1(n72), .C0(n8), .Y(
        Address[0]) );
  OAI22X1M U20 ( .A0(n61), .A1(n72), .B0(n77), .B1(n42), .Y(Address[1]) );
  OAI21X2M U21 ( .A0(FIFO_FULL), .A1(n74), .B0(n50), .Y(n51) );
  OAI22X1M U22 ( .A0(n106), .A1(n75), .B0(n70), .B1(n76), .Y(TX_P_Data[0]) );
  OAI22X1M U23 ( .A0(n105), .A1(n75), .B0(n69), .B1(n76), .Y(TX_P_Data[1]) );
  OAI22X1M U24 ( .A0(n104), .A1(n75), .B0(n68), .B1(n76), .Y(TX_P_Data[2]) );
  OAI22X1M U25 ( .A0(n83), .A1(n75), .B0(n67), .B1(n76), .Y(TX_P_Data[3]) );
  OAI22X1M U26 ( .A0(n82), .A1(n75), .B0(n66), .B1(n76), .Y(TX_P_Data[4]) );
  OAI22X1M U27 ( .A0(n81), .A1(n75), .B0(n65), .B1(n76), .Y(TX_P_Data[5]) );
  OAI22X1M U28 ( .A0(n80), .A1(n75), .B0(n64), .B1(n76), .Y(TX_P_Data[6]) );
  OAI22X1M U29 ( .A0(n78), .A1(n75), .B0(n63), .B1(n76), .Y(TX_P_Data[7]) );
  OAI222X1M U30 ( .A0(n51), .A1(n70), .B0(n44), .B1(n24), .C0(n20), .C1(n106), 
        .Y(WrData[0]) );
  OAI222X1M U31 ( .A0(n51), .A1(n69), .B0(n42), .B1(n24), .C0(n20), .C1(n105), 
        .Y(WrData[1]) );
  OAI222X1M U32 ( .A0(n51), .A1(n68), .B0(n41), .B1(n24), .C0(n20), .C1(n104), 
        .Y(WrData[2]) );
  OAI222X1M U33 ( .A0(n51), .A1(n67), .B0(n40), .B1(n24), .C0(n20), .C1(n83), 
        .Y(WrData[3]) );
  OAI222X1M U34 ( .A0(n51), .A1(n66), .B0(n39), .B1(n24), .C0(n20), .C1(n82), 
        .Y(WrData[4]) );
  NAND2X2M U35 ( .A(TX_D_VLD), .B(n74), .Y(n76) );
  INVX2M U36 ( .A(n71), .Y(n24) );
  AOI31X2M U37 ( .A0(n72), .A1(n8), .A2(n13), .B0(n27), .Y(n71) );
  NAND3X2M U38 ( .A(n46), .B(n54), .C(n73), .Y(n8) );
  INVX2M U39 ( .A(n23), .Y(TX_D_VLD) );
  INVX2M U40 ( .A(n7), .Y(n50) );
  AOI2BB2XLM U41 ( .B0(n35), .B1(n10), .A0N(n27), .A1N(n8), .Y(n14) );
  INVX2M U42 ( .A(n25), .Y(n35) );
  AOI31X2M U43 ( .A0(n44), .A1(n39), .A2(n17), .B0(n9), .Y(n25) );
  OAI22X1M U44 ( .A0(n36), .A1(n60), .B0(n41), .B1(n26), .Y(n89) );
  OAI22X1M U45 ( .A0(n36), .A1(n62), .B0(n44), .B1(n26), .Y(n85) );
  OAI22X1M U46 ( .A0(n36), .A1(n61), .B0(n42), .B1(n26), .Y(n87) );
  OAI22X1M U47 ( .A0(n36), .A1(n59), .B0(n40), .B1(n26), .Y(n91) );
  OAI22X1M U48 ( .A0(n43), .A1(n56), .B0(n30), .B1(n41), .Y(n102) );
  OAI22X1M U49 ( .A0(n43), .A1(n58), .B0(n30), .B1(n44), .Y(n100) );
  OAI22X1M U50 ( .A0(n43), .A1(n57), .B0(n30), .B1(n42), .Y(n101) );
  OAI22X1M U51 ( .A0(n43), .A1(n55), .B0(n30), .B1(n40), .Y(n103) );
  NAND2X2M U52 ( .A(n7), .B(n48), .Y(n43) );
  OAI21X2M U53 ( .A0(n27), .A1(n2), .B0(n30), .Y(next_state[3]) );
  NAND2X2M U54 ( .A(n4), .B(n5), .Y(next_state[2]) );
  AND4X2M U55 ( .A(n6), .B(n2), .C(n7), .D(n8), .Y(n5) );
  AOI211X2M U56 ( .A0(n9), .A1(n10), .B0(n11), .C0(n47), .Y(n4) );
  INVX2M U57 ( .A(n13), .Y(n47) );
  NAND2X2M U58 ( .A(n31), .B(n32), .Y(n11) );
  NAND4X2M U59 ( .A(n28), .B(n10), .C(n44), .D(n39), .Y(n32) );
  OAI22X1M U60 ( .A0(n55), .A1(n23), .B0(n40), .B1(n48), .Y(ALU_FUN[3]) );
  NAND4X2M U61 ( .A(current_state[0]), .B(current_state[1]), .C(n53), .D(n54), 
        .Y(n16) );
  INVX2M U62 ( .A(current_state[0]), .Y(n46) );
  AND3X2M U63 ( .A(current_state[1]), .B(n54), .C(current_state[2]), .Y(n79)
         );
  INVX2M U64 ( .A(current_state[3]), .Y(n54) );
  INVX2M U65 ( .A(RX_D_VLD), .Y(n27) );
  INVX2M U66 ( .A(current_state[2]), .Y(n53) );
  BUFX2M U67 ( .A(n49), .Y(n20) );
  NAND3BX2M U68 ( .AN(FIFO_FULL), .B(n50), .C(RdData_Valid), .Y(n49) );
  NOR2X2M U69 ( .A(n53), .B(current_state[1]), .Y(n73) );
  OAI222X1M U70 ( .A0(n51), .A1(n65), .B0(n38), .B1(n24), .C0(n20), .C1(n81), 
        .Y(WrData[5]) );
  INVX2M U71 ( .A(RX_P_Data[5]), .Y(n38) );
  OAI222X1M U72 ( .A0(n51), .A1(n64), .B0(n37), .B1(n24), .C0(n20), .C1(n80), 
        .Y(WrData[6]) );
  INVX2M U73 ( .A(RX_P_Data[6]), .Y(n37) );
  OAI222X1M U74 ( .A0(n51), .A1(n63), .B0(n33), .B1(n24), .C0(n20), .C1(n78), 
        .Y(WrData[7]) );
  INVX2M U75 ( .A(RX_P_Data[7]), .Y(n33) );
  NAND3X2M U76 ( .A(n73), .B(n46), .C(current_state[3]), .Y(n23) );
  NAND2X2M U77 ( .A(TX_D_VLD), .B(RdData_Valid), .Y(n75) );
  NAND4X2M U78 ( .A(current_state[1]), .B(n46), .C(n53), .D(n54), .Y(n72) );
  NAND3X2M U79 ( .A(n73), .B(current_state[0]), .C(current_state[3]), .Y(n7)
         );
  NAND3X2M U80 ( .A(current_state[0]), .B(n54), .C(n73), .Y(n13) );
  INVX2M U81 ( .A(RX_P_Data[0]), .Y(n44) );
  INVX2M U82 ( .A(RX_P_Data[1]), .Y(n42) );
  INVX2M U83 ( .A(RX_P_Data[3]), .Y(n40) );
  INVX2M U84 ( .A(RX_P_Data[2]), .Y(n41) );
  NAND3BX2M U85 ( .AN(n11), .B(n14), .C(n19), .Y(next_state[0]) );
  AOI221XLM U86 ( .A0(FIFO_FULL), .A1(n50), .B0(RX_D_VLD), .B1(n21), .C0(n22), 
        .Y(n19) );
  AOI21X2M U87 ( .A0(n16), .A1(n13), .B0(RX_D_VLD), .Y(n22) );
  OAI21X2M U88 ( .A0(current_state[3]), .A1(current_state[0]), .B0(n23), .Y(
        n21) );
  INVX2M U89 ( .A(addr_prev[1]), .Y(n61) );
  INVX2M U90 ( .A(addr_prev[3]), .Y(n59) );
  INVX2M U91 ( .A(addr_prev[2]), .Y(n60) );
  INVX2M U92 ( .A(addr_prev[0]), .Y(n62) );
  NAND2X2M U93 ( .A(current_state[0]), .B(n79), .Y(n31) );
  NAND4X2M U94 ( .A(RX_P_Data[4]), .B(RX_P_Data[0]), .C(n17), .D(n10), .Y(n6)
         );
  AND4X2M U95 ( .A(n29), .B(RX_P_Data[5]), .C(RX_P_Data[3]), .D(RX_P_Data[7]), 
        .Y(n17) );
  NOR3X2M U96 ( .A(n42), .B(RX_P_Data[6]), .C(RX_P_Data[2]), .Y(n29) );
  AND4X2M U97 ( .A(n34), .B(RX_P_Data[2]), .C(RX_P_Data[7]), .D(RX_P_Data[6]), 
        .Y(n28) );
  NOR3X2M U98 ( .A(n40), .B(RX_P_Data[5]), .C(RX_P_Data[1]), .Y(n34) );
  NAND4X2M U99 ( .A(n14), .B(n15), .C(n6), .D(n16), .Y(next_state[1]) );
  NAND3X2M U100 ( .A(n27), .B(n54), .C(current_state[1]), .Y(n15) );
  INVX2M U101 ( .A(RdData_Valid), .Y(n74) );
  AND3X2M U102 ( .A(n28), .B(RX_P_Data[4]), .C(RX_P_Data[0]), .Y(n9) );
  INVX2M U103 ( .A(RX_P_Data[4]), .Y(n39) );
  NAND2X2M U104 ( .A(RX_D_VLD), .B(ALU_EN), .Y(n48) );
  INVX2M U105 ( .A(n31), .Y(ALU_EN) );
  INVX2M U106 ( .A(RdData[0]), .Y(n106) );
  INVX2M U107 ( .A(RdData[1]), .Y(n105) );
  INVX2M U108 ( .A(RdData[2]), .Y(n104) );
  INVX2M U109 ( .A(RdData[3]), .Y(n83) );
  INVX2M U110 ( .A(RdData[4]), .Y(n82) );
  INVX2M U111 ( .A(RdData[5]), .Y(n81) );
  INVX2M U112 ( .A(RdData[6]), .Y(n80) );
  INVX2M U113 ( .A(RdData[7]), .Y(n78) );
  INVX2M U114 ( .A(ALU_OUT[0]), .Y(n70) );
  INVX2M U115 ( .A(ALU_OUT[1]), .Y(n69) );
  INVX2M U116 ( .A(ALU_OUT[2]), .Y(n68) );
  INVX2M U117 ( .A(ALU_OUT[3]), .Y(n67) );
  INVX2M U118 ( .A(ALU_OUT[4]), .Y(n66) );
  INVX2M U119 ( .A(ALU_OUT[5]), .Y(n65) );
  INVX2M U120 ( .A(ALU_OUT[6]), .Y(n64) );
  INVX2M U121 ( .A(ALU_OUT[7]), .Y(n63) );
  BUFX2M U134 ( .A(ALU_EN), .Y(CLK_EN) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module ClkDiv_RATIO_WD8_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_RATIO_WD8_test_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n27), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n26), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(n28), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n29), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n30), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n31), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n32), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n33), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[1]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U6 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n34) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n33) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n32) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n31) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n30) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n29) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n28) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N2), .Y(n17) );
  CLKXOR2X2M U35 ( .A(div_clk), .B(n20), .Y(n27) );
  AOI21X1M U36 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U37 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U38 ( .A(odd_edge_tog), .B(n22), .Y(n26) );
  OR2X1M U39 ( .A(n19), .B(n16), .Y(n22) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n21), .S0(odd_edge_tog), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n21) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N2) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_RATIO_WD8_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U11 ( .A(IN[1]), .Y(n14) );
  NAND4BX1M U12 ( .AN(IN[4]), .B(IN[3]), .C(n16), .D(n15), .Y(n6) );
  NAND4BX1M U13 ( .AN(IN[3]), .B(IN[4]), .C(n16), .D(n15), .Y(n7) );
  NOR3X2M U14 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U15 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  INVX2M U16 ( .A(IN[2]), .Y(n16) );
  INVX2M U17 ( .A(IN[5]), .Y(n15) );
  NOR4X1M U18 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U19 ( .A(n17), .B(n14), .C(IN[2]), .Y(n5) );
  INVX2M U20 ( .A(IN[0]), .Y(n17) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n14), .Y(OUT[0]) );
  NOR4X1M U22 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n16), .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module ClkDiv_RATIO_WD8_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_RATIO_WD8_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n2, n3,
         n4, n5, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n60), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M \count_reg[6]  ( .D(n59), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n53), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n58), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n57), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n56), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n55), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n54), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n61), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  NAND2BX2M U11 ( .AN(n51), .B(i_clk_en), .Y(n17) );
  INVX2M U15 ( .A(i_div_ratio[5]), .Y(n16) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        edge_flip_half[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(
        edge_flip_half[2]) );
  NOR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U22 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U23 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U24 ( .A0(n4), .A1(n16), .B0(n5), .Y(edge_flip_half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(edge_flip_half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n5), .Y(n15) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n15), .Y(edge_flip_half[6]) );
  AO22X1M U28 ( .A0(n17), .A1(count[0]), .B0(N16), .B1(n18), .Y(n53) );
  AO22X1M U29 ( .A0(n17), .A1(count[1]), .B0(N17), .B1(n18), .Y(n54) );
  AO22X1M U30 ( .A0(n17), .A1(count[2]), .B0(N18), .B1(n18), .Y(n55) );
  AO22X1M U31 ( .A0(n17), .A1(count[3]), .B0(N19), .B1(n18), .Y(n56) );
  AO22X1M U32 ( .A0(n17), .A1(count[4]), .B0(N20), .B1(n18), .Y(n57) );
  AO22X1M U33 ( .A0(n17), .A1(count[5]), .B0(N21), .B1(n18), .Y(n58) );
  AO22X1M U34 ( .A0(n17), .A1(count[6]), .B0(N22), .B1(n18), .Y(n59) );
  AND3X1M U35 ( .A(n19), .B(n20), .C(N2), .Y(n18) );
  CLKXOR2X2M U36 ( .A(div_clk), .B(n21), .Y(n60) );
  AOI21X1M U37 ( .A0(n20), .A1(n19), .B0(n17), .Y(n21) );
  OR2X1M U38 ( .A(n22), .B(i_div_ratio[0]), .Y(n19) );
  XNOR2X1M U39 ( .A(odd_edge_tog), .B(n23), .Y(n61) );
  OR2X1M U40 ( .A(n20), .B(n17), .Y(n23) );
  CLKNAND2X2M U41 ( .A(n24), .B(i_div_ratio[0]), .Y(n20) );
  MXI2X1M U42 ( .A(n25), .B(n22), .S0(odd_edge_tog), .Y(n24) );
  NAND4X1M U43 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n22) );
  NOR4X1M U44 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n39) );
  XNOR2X1M U49 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n36) );
  XNOR2X1M U51 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n35) );
  NAND4X1M U52 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n25) );
  NOR4X1M U53 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n50) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n49) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n48) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n47) );
  XNOR2X1M U58 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n45) );
  XNOR2X1M U59 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n44) );
  XNOR2X1M U60 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n43) );
  CLKINVX1M U61 ( .A(n17), .Y(N2) );
  NOR4BX1M U62 ( .AN(n52), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n51) );
  NOR4X1M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n52) );
  ClkDiv_RATIO_WD8_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
endmodule


module serializer_test_1 ( P_DATA, ser_en, Data_Valid, busy, clk, rst, 
        ser_data, ser_done, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input ser_en, Data_Valid, busy, clk, rst, test_si, test_se;
  output ser_data, ser_done, test_so;
  wire   N2, N3, N4, \data_counter[3] , N11, n2, n4, n5, n7, n10, n11, n12,
         n22, n24, n26, n28, n30, n32, n34, n36, n37, n38, n39, n40, n41, n42,
         n1, n3, n6, n8, n9, n13, n14, n43, n44, n47, n48;
  wire   [7:0] data;
  assign test_so = n44;

  SDFFRQX2M ser_data_reg ( .D(n38), .SI(data[7]), .SE(n48), .CK(clk), .RN(rst), 
        .Q(ser_data) );
  SDFFRQX2M \data_reg[5]  ( .D(n32), .SI(data[4]), .SE(n48), .CK(clk), .RN(rst), .Q(data[5]) );
  SDFFRQX2M \data_reg[1]  ( .D(n24), .SI(data[0]), .SE(n48), .CK(clk), .RN(rst), .Q(data[1]) );
  SDFFRQX2M \data_reg[7]  ( .D(n36), .SI(data[6]), .SE(n48), .CK(clk), .RN(rst), .Q(data[7]) );
  SDFFRQX2M \data_reg[3]  ( .D(n28), .SI(data[2]), .SE(n48), .CK(clk), .RN(rst), .Q(data[3]) );
  SDFFRQX2M \data_reg[6]  ( .D(n34), .SI(data[5]), .SE(n48), .CK(clk), .RN(rst), .Q(data[6]) );
  SDFFRQX2M \data_reg[2]  ( .D(n26), .SI(data[1]), .SE(n48), .CK(clk), .RN(rst), .Q(data[2]) );
  SDFFRQX2M \data_reg[4]  ( .D(n30), .SI(data[3]), .SE(n48), .CK(clk), .RN(rst), .Q(data[4]) );
  SDFFRQX2M \data_reg[0]  ( .D(n22), .SI(\data_counter[3] ), .SE(n48), .CK(clk), .RN(rst), .Q(data[0]) );
  SDFFRQX2M \data_counter_reg[2]  ( .D(n39), .SI(n14), .SE(n48), .CK(clk), 
        .RN(rst), .Q(N4) );
  SDFFRQX2M \data_counter_reg[3]  ( .D(n41), .SI(n43), .SE(n48), .CK(clk), 
        .RN(rst), .Q(\data_counter[3] ) );
  SDFFRQX2M \data_counter_reg[1]  ( .D(n40), .SI(n13), .SE(n48), .CK(clk), 
        .RN(rst), .Q(N3) );
  SDFFRQX2M ser_done_reg ( .D(n37), .SI(ser_data), .SE(n48), .CK(clk), .RN(rst), .Q(ser_done) );
  SDFFRQX2M \data_counter_reg[0]  ( .D(n42), .SI(test_si), .SE(n48), .CK(clk), 
        .RN(rst), .Q(N2) );
  AOI21X2M U3 ( .A0(n13), .A1(ser_en), .B0(n8), .Y(n11) );
  INVX2M U4 ( .A(ser_en), .Y(n6) );
  OAI21X2M U5 ( .A0(n4), .A1(n43), .B0(n5), .Y(n41) );
  INVX2M U6 ( .A(n2), .Y(n9) );
  INVX2M U7 ( .A(n5), .Y(n8) );
  OAI32X1M U8 ( .A0(n43), .A1(\data_counter[3] ), .A2(n4), .B0(n5), .B1(n44), 
        .Y(n37) );
  INVX2M U9 ( .A(ser_done), .Y(n44) );
  OAI32X1M U10 ( .A0(n12), .A1(n13), .A2(n6), .B0(n11), .B1(n14), .Y(n40) );
  NAND2X2M U11 ( .A(n5), .B(n14), .Y(n12) );
  INVX2M U12 ( .A(N3), .Y(n14) );
  OAI32X1M U13 ( .A0(n4), .A1(N4), .A2(n8), .B0(n10), .B1(n43), .Y(n39) );
  OA21X2M U14 ( .A0(n6), .A1(N3), .B0(n11), .Y(n10) );
  OAI32X1M U15 ( .A0(n6), .A1(N2), .A2(n8), .B0(n13), .B1(n5), .Y(n42) );
  NOR2BX2M U16 ( .AN(Data_Valid), .B(busy), .Y(n2) );
  NAND2X2M U17 ( .A(\data_counter[3] ), .B(ser_en), .Y(n5) );
  NAND3X2M U18 ( .A(N3), .B(N2), .C(ser_en), .Y(n4) );
  AO2B2X2M U19 ( .B0(N11), .B1(n7), .A0(ser_data), .A1N(n7), .Y(n38) );
  MX2X2M U20 ( .A(n3), .B(n1), .S0(N4), .Y(N11) );
  NOR2X2M U21 ( .A(n6), .B(\data_counter[3] ), .Y(n7) );
  MX4X1M U22 ( .A(data[0]), .B(data[1]), .C(data[2]), .D(data[3]), .S0(N2), 
        .S1(N3), .Y(n3) );
  AO22X1M U23 ( .A0(data[0]), .A1(n9), .B0(P_DATA[0]), .B1(n2), .Y(n22) );
  AO22X1M U24 ( .A0(data[1]), .A1(n9), .B0(P_DATA[1]), .B1(n2), .Y(n24) );
  AO22X1M U25 ( .A0(data[2]), .A1(n9), .B0(P_DATA[2]), .B1(n2), .Y(n26) );
  AO22X1M U26 ( .A0(data[3]), .A1(n9), .B0(P_DATA[3]), .B1(n2), .Y(n28) );
  AO22X1M U27 ( .A0(data[4]), .A1(n9), .B0(P_DATA[4]), .B1(n2), .Y(n30) );
  AO22X1M U28 ( .A0(data[5]), .A1(n9), .B0(P_DATA[5]), .B1(n2), .Y(n32) );
  AO22X1M U29 ( .A0(data[6]), .A1(n9), .B0(P_DATA[6]), .B1(n2), .Y(n34) );
  AO22X1M U30 ( .A0(data[7]), .A1(n9), .B0(P_DATA[7]), .B1(n2), .Y(n36) );
  MX4X1M U45 ( .A(data[4]), .B(data[5]), .C(data[6]), .D(data[7]), .S0(N2), 
        .S1(N3), .Y(n1) );
  INVX2M U46 ( .A(N2), .Y(n13) );
  INVX2M U47 ( .A(N4), .Y(n43) );
  INVXLM U48 ( .A(test_se), .Y(n47) );
  INVXLM U49 ( .A(n47), .Y(n48) );
endmodule


module parity_calc_test_1 ( P_DATA, Data_Valid, busy, PAR_EN, PAR_TYP, clk, 
        rst, par_bit, test_si, test_se );
  input [7:0] P_DATA;
  input Data_Valid, busy, PAR_EN, PAR_TYP, clk, rst, test_si, test_se;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n9, n11, n13, n15, n17, n19, n21, n23, n25,
         n2, n12, n14;
  wire   [7:0] data;

  SDFFRQX2M par_bit_reg ( .D(n9), .SI(data[7]), .SE(n14), .CK(clk), .RN(rst), 
        .Q(par_bit) );
  SDFFRQX2M \data_reg[5]  ( .D(n21), .SI(data[4]), .SE(n14), .CK(clk), .RN(rst), .Q(data[5]) );
  SDFFRQX2M \data_reg[1]  ( .D(n13), .SI(data[0]), .SE(n14), .CK(clk), .RN(rst), .Q(data[1]) );
  SDFFRQX2M \data_reg[4]  ( .D(n19), .SI(data[3]), .SE(n14), .CK(clk), .RN(rst), .Q(data[4]) );
  SDFFRQX2M \data_reg[0]  ( .D(n11), .SI(test_si), .SE(n14), .CK(clk), .RN(rst), .Q(data[0]) );
  SDFFRQX2M \data_reg[2]  ( .D(n15), .SI(data[1]), .SE(n14), .CK(clk), .RN(rst), .Q(data[2]) );
  SDFFRQX2M \data_reg[3]  ( .D(n17), .SI(data[2]), .SE(n14), .CK(clk), .RN(rst), .Q(data[3]) );
  SDFFRQX2M \data_reg[6]  ( .D(n23), .SI(data[5]), .SE(n14), .CK(clk), .RN(rst), .Q(data[6]) );
  SDFFRQX2M \data_reg[7]  ( .D(n25), .SI(data[6]), .SE(n14), .CK(clk), .RN(rst), .Q(data[7]) );
  NOR2BX2M U2 ( .AN(Data_Valid), .B(busy), .Y(n7) );
  AO2B2X2M U3 ( .B0(P_DATA[0]), .B1(n7), .A0(data[0]), .A1N(n7), .Y(n11) );
  AO2B2X2M U4 ( .B0(P_DATA[1]), .B1(n7), .A0(data[1]), .A1N(n7), .Y(n13) );
  AO2B2X2M U5 ( .B0(P_DATA[2]), .B1(n7), .A0(data[2]), .A1N(n7), .Y(n15) );
  AO2B2X2M U6 ( .B0(P_DATA[3]), .B1(n7), .A0(data[3]), .A1N(n7), .Y(n17) );
  AO2B2X2M U7 ( .B0(P_DATA[4]), .B1(n7), .A0(data[4]), .A1N(n7), .Y(n19) );
  AO2B2X2M U8 ( .B0(P_DATA[5]), .B1(n7), .A0(data[5]), .A1N(n7), .Y(n21) );
  AO2B2X2M U9 ( .B0(P_DATA[6]), .B1(n7), .A0(data[6]), .A1N(n7), .Y(n23) );
  AO2B2X2M U10 ( .B0(P_DATA[7]), .B1(n7), .A0(data[7]), .A1N(n7), .Y(n25) );
  XNOR2X2M U11 ( .A(data[2]), .B(data[3]), .Y(n5) );
  XOR3XLM U12 ( .A(data[5]), .B(data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U13 ( .A(data[7]), .B(data[6]), .Y(n6) );
  OAI2BB2X1M U14 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n9) );
  INVX2M U15 ( .A(PAR_EN), .Y(n2) );
  XOR3XLM U16 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U17 ( .A(data[1]), .B(data[0]), .C(n5), .Y(n4) );
  INVXLM U27 ( .A(test_se), .Y(n12) );
  INVXLM U28 ( .A(n12), .Y(n14) );
endmodule


module MUX_test_1 ( mux_sel, ser_data, par_bit, clk, rst, TX_OUT, test_si, 
        test_se );
  input [1:0] mux_sel;
  input ser_data, par_bit, clk, rst, test_si, test_se;
  output TX_OUT;
  wire   N13, n2;

  SDFFSQX2M TX_OUT_reg ( .D(N13), .SI(test_si), .SE(test_se), .CK(clk), .SN(
        rst), .Q(TX_OUT) );
  OAI2BB1X2M U5 ( .A0N(ser_data), .A1N(mux_sel[0]), .B0(n2), .Y(N13) );
  OAI21X2M U6 ( .A0(mux_sel[0]), .A1(par_bit), .B0(mux_sel[1]), .Y(n2) );
endmodule


module FSM_test_1 ( Data_Valid, PAR_EN, ser_done, clk, rst, ser_en, mux_sel, 
        busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, clk, rst, test_si, test_se;
  output ser_en, busy, test_so;
  wire   busy_c, n8, n9, n10, n11, n12, n13, n5, n6, n7;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  SDFFRQX2M busy_reg ( .D(busy_c), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(busy) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n7), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(busy), .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[0]) );
  INVX2M U7 ( .A(n10), .Y(n5) );
  NOR3X2M U8 ( .A(n8), .B(ser_done), .C(current_state[2]), .Y(ser_en) );
  OAI21X2M U9 ( .A0(current_state[1]), .A1(n6), .B0(n13), .Y(n10) );
  NAND2X2M U10 ( .A(current_state[1]), .B(n6), .Y(n13) );
  NAND2X2M U11 ( .A(n5), .B(current_state[0]), .Y(n8) );
  INVX2M U12 ( .A(current_state[0]), .Y(n6) );
  NOR3X2M U13 ( .A(n7), .B(current_state[2]), .C(n9), .Y(next_state[2]) );
  AOI2B1X1M U14 ( .A1N(PAR_EN), .A0(ser_done), .B0(n6), .Y(n9) );
  OAI21X2M U15 ( .A0(current_state[2]), .A1(n6), .B0(n13), .Y(busy_c) );
  AOI21X2M U16 ( .A0(n5), .A1(n8), .B0(current_state[2]), .Y(next_state[1]) );
  AOI21X2M U17 ( .A0(n11), .A1(n12), .B0(current_state[2]), .Y(next_state[0])
         );
  NAND2BX2M U18 ( .AN(ser_done), .B(current_state[0]), .Y(n11) );
  OAI21X2M U19 ( .A0(Data_Valid), .A1(current_state[0]), .B0(n7), .Y(n12) );
  INVX2M U20 ( .A(current_state[1]), .Y(n7) );
  OAI2B2X1M U21 ( .A1N(current_state[2]), .A0(n13), .B0(current_state[2]), 
        .B1(n10), .Y(mux_sel[0]) );
  OAI21X2M U22 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n13), .Y(
        mux_sel[1]) );
endmodule


module UART_TX_DWIDTH8_test_1 ( P_DATA, Data_Valid, PAR_EN, PAR_TYP, clk, rst, 
        TX_OUT, busy, test_si2, test_si1, test_so1, test_se );
  input [7:0] P_DATA;
  input Data_Valid, PAR_EN, PAR_TYP, clk, rst, test_si2, test_si1, test_se;
  output TX_OUT, busy, test_so1;
  wire   ser_en, ser_done, ser_data, par_bit, n1, n2, n4;
  wire   [1:0] mux_sel;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  serializer_test_1 u_serializer ( .P_DATA(P_DATA), .ser_en(ser_en), 
        .Data_Valid(Data_Valid), .busy(busy), .clk(clk), .rst(n1), .ser_data(
        ser_data), .ser_done(ser_done), .test_si(par_bit), .test_so(test_so1), 
        .test_se(test_se) );
  parity_calc_test_1 u_parity_calc ( .P_DATA(P_DATA), .Data_Valid(Data_Valid), 
        .busy(busy), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .clk(clk), .rst(n1), 
        .par_bit(par_bit), .test_si(n4), .test_se(test_se) );
  MUX_test_1 u_mux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .clk(clk), .rst(n1), .TX_OUT(TX_OUT), .test_si(test_si2), .test_se(
        test_se) );
  FSM_test_1 u_fsm ( .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .clk(clk), .rst(n1), .ser_en(ser_en), .mux_sel(mux_sel), 
        .busy(busy), .test_si(test_si1), .test_so(n4), .test_se(test_se) );
endmodule


module edge_bit_counter_test_1 ( enable, prescale, PAR_EN, CLK, RST, bit_cnt, 
        edge_cnt, test_si, test_se );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input enable, PAR_EN, CLK, RST, test_si, test_se;
  wire   N10, N11, N12, N13, N15, N16, N17, N18, N42, N43, N44, N45, N46, N47,
         n7, n9, n10, n13, n16, n17, n18, n19, n22, n24, n25, n26, n33, n35,
         n37, n39, n41, n43, n44, n45, n46, n47, n48, \add_41/carry[5] ,
         \add_41/carry[4] , \add_41/carry[3] , \add_41/carry[2] , n2, n3, n4,
         n5, n6, n8, n11, n12, n14, n15, n20, n21, n23, n27, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n69, n70;

  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n46), .SI(bit_cnt[1]), .SE(n70), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n47), .SI(bit_cnt[0]), .SE(n70), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(n39), .SI(edge_cnt[3]), .SE(n70), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(n43), .SI(n44), .SE(n70), .CK(CLK), .RN(RST), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(n33), .SI(N42), .SE(n70), .CK(CLK), .RN(RST), .Q(edge_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[5]  ( .D(n41), .SI(edge_cnt[4]), .SE(n70), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[5]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(n37), .SI(edge_cnt[2]), .SE(n70), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(n35), .SI(edge_cnt[1]), .SE(n70), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n48), .SI(test_si), .SE(n70), .CK(CLK), .RN(
        RST), .Q(bit_cnt[0]) );
  SDFFRX1M \bit_cnt_reg[3]  ( .D(n45), .SI(bit_cnt[2]), .SE(n70), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[3]), .QN(n44) );
  INVX2M U4 ( .A(n24), .Y(n58) );
  AOI21X2M U5 ( .A0(n61), .A1(N18), .B0(n60), .Y(n24) );
  INVX2M U6 ( .A(N17), .Y(n61) );
  INVX2M U7 ( .A(n16), .Y(n59) );
  INVX2M U8 ( .A(n20), .Y(n55) );
  INVX2M U9 ( .A(n17), .Y(n63) );
  INVX2M U10 ( .A(n50), .Y(n57) );
  OAI211X2M U11 ( .A0(n25), .A1(n26), .B0(n24), .C0(N17), .Y(n16) );
  NAND2X2M U12 ( .A(n65), .B(bit_cnt[3]), .Y(n26) );
  AOI33X2M U13 ( .A0(n66), .A1(n64), .A2(bit_cnt[0]), .B0(PAR_EN), .B1(n62), 
        .B2(bit_cnt[1]), .Y(n25) );
  INVX2M U14 ( .A(PAR_EN), .Y(n66) );
  OAI32X1M U15 ( .A0(n16), .A1(bit_cnt[1]), .A2(n62), .B0(n22), .B1(n64), .Y(
        n47) );
  AOI21X2M U16 ( .A0(n59), .A1(n62), .B0(n58), .Y(n22) );
  OAI32X1M U17 ( .A0(n18), .A1(n61), .A2(n17), .B0(n19), .B1(n65), .Y(n46) );
  NAND2X2M U18 ( .A(enable), .B(n65), .Y(n18) );
  AOI21XLM U19 ( .A0(N17), .A1(n17), .B0(n58), .Y(n19) );
  OAI22X1M U20 ( .A0(n24), .A1(n62), .B0(bit_cnt[0]), .B1(n16), .Y(n48) );
  AND3X2M U21 ( .A(N18), .B(n61), .C(enable), .Y(n7) );
  OR2X2M U22 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  NAND2X2M U23 ( .A(n9), .B(n10), .Y(n45) );
  NAND4X2M U24 ( .A(n44), .B(bit_cnt[2]), .C(n59), .D(n63), .Y(n10) );
  OAI21X2M U25 ( .A0(n13), .A1(n58), .B0(bit_cnt[3]), .Y(n9) );
  AOI21X2M U26 ( .A0(bit_cnt[2]), .A1(n63), .B0(n16), .Y(n13) );
  AOI21BX2M U27 ( .A0(n5), .A1(prescale[4]), .B0N(n6), .Y(n2) );
  AO22X1M U28 ( .A0(edge_cnt[1]), .A1(n60), .B0(N43), .B1(n7), .Y(n33) );
  AO22X1M U29 ( .A0(edge_cnt[2]), .A1(n60), .B0(N44), .B1(n7), .Y(n35) );
  AO22X1M U30 ( .A0(edge_cnt[3]), .A1(n60), .B0(N45), .B1(n7), .Y(n37) );
  AO22X1M U31 ( .A0(edge_cnt[4]), .A1(n60), .B0(N46), .B1(n7), .Y(n39) );
  AO22X1M U32 ( .A0(edge_cnt[5]), .A1(n60), .B0(N47), .B1(n7), .Y(n41) );
  AO22X1M U33 ( .A0(edge_cnt[0]), .A1(n60), .B0(N42), .B1(n7), .Y(n43) );
  INVX2M U34 ( .A(edge_cnt[3]), .Y(n54) );
  INVX2M U35 ( .A(edge_cnt[2]), .Y(n53) );
  INVX2M U36 ( .A(edge_cnt[5]), .Y(n56) );
  INVX2M U47 ( .A(bit_cnt[0]), .Y(n62) );
  NAND2X2M U48 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .Y(n17) );
  INVX2M U49 ( .A(bit_cnt[2]), .Y(n65) );
  INVX2M U50 ( .A(bit_cnt[1]), .Y(n64) );
  INVX2M U51 ( .A(enable), .Y(n60) );
  ADDHX1M U52 ( .A(edge_cnt[2]), .B(\add_41/carry[2] ), .CO(\add_41/carry[3] ), 
        .S(N44) );
  ADDHX1M U53 ( .A(edge_cnt[3]), .B(\add_41/carry[3] ), .CO(\add_41/carry[4] ), 
        .S(N45) );
  ADDHX1M U54 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_41/carry[2] ), .S(
        N43) );
  ADDHX1M U55 ( .A(edge_cnt[4]), .B(\add_41/carry[4] ), .CO(\add_41/carry[5] ), 
        .S(N46) );
  CLKINVX1M U56 ( .A(prescale[0]), .Y(N10) );
  OAI2BB1X1M U57 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(N11) );
  OR2X1M U58 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U59 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N12) );
  OR2X1M U60 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U61 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(N13) );
  OR2X1M U62 ( .A(n5), .B(prescale[4]), .Y(n6) );
  NOR2X1M U63 ( .A(n6), .B(prescale[5]), .Y(N16) );
  AO21XLM U64 ( .A0(n6), .A1(prescale[5]), .B0(N16), .Y(N15) );
  CLKINVX1M U65 ( .A(edge_cnt[0]), .Y(N42) );
  CLKXOR2X2M U66 ( .A(\add_41/carry[5] ), .B(edge_cnt[5]), .Y(N47) );
  NOR2X1M U67 ( .A(n54), .B(N13), .Y(n21) );
  CLKNAND2X2M U68 ( .A(edge_cnt[4]), .B(n2), .Y(n20) );
  NOR2BX1M U69 ( .AN(edge_cnt[0]), .B(N10), .Y(n8) );
  OAI2B2X1M U70 ( .A1N(N11), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n11) );
  NAND3BX1M U71 ( .AN(n21), .B(n20), .C(n11), .Y(n52) );
  NOR2X1M U72 ( .A(n53), .B(N12), .Y(n51) );
  NAND2BX1M U73 ( .AN(edge_cnt[0]), .B(N10), .Y(n14) );
  AOI2BB1X1M U74 ( .A0N(n14), .A1N(edge_cnt[1]), .B0(N11), .Y(n12) );
  AOI211X1M U75 ( .A0(edge_cnt[1]), .A1(n14), .B0(n51), .C0(n12), .Y(n15) );
  AOI221XLM U76 ( .A0(N13), .A1(n54), .B0(N12), .B1(n53), .C0(n15), .Y(n23) );
  OAI32X1M U77 ( .A0(n23), .A1(n21), .A2(n55), .B0(edge_cnt[4]), .B1(n2), .Y(
        n27) );
  NOR2X1M U78 ( .A(n56), .B(N15), .Y(n50) );
  AOI221XLM U79 ( .A0(n27), .A1(n57), .B0(N15), .B1(n56), .C0(N16), .Y(n49) );
  CLKINVX1M U80 ( .A(n49), .Y(N18) );
  NOR4X1M U81 ( .A(n52), .B(n51), .C(N18), .D(n50), .Y(N17) );
  INVXLM U82 ( .A(test_se), .Y(n69) );
  INVXLM U83 ( .A(n69), .Y(n70) );
endmodule


module data_sampling_test_1 ( RX_IN, prescale, edge_cnt, dat_samp_en, CLK, RST, 
        sampled_bit, test_si, test_so, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input RX_IN, dat_samp_en, CLK, RST, test_si, test_se;
  output sampled_bit, test_so;
  wire   sampling1, sampling2, sampling3, N8, N9, N10, N11, N12, N16, N17, N18,
         N19, N20, N35, n25, n26, n27, \sub_23/carry[4] , \sub_23/carry[3] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44;
  assign test_so = sampling3;
  assign N8 = prescale[1];

  SDFFRQX2M sampling3_reg ( .D(n25), .SI(sampling2), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampling3) );
  SDFFRQX2M sampling1_reg ( .D(n27), .SI(sampled_bit), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampling1) );
  SDFFRQX2M sampling2_reg ( .D(n26), .SI(sampling1), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampling2) );
  SDFFRQX2M sampled_bit_reg ( .D(N35), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bit) );
  NOR2X2M U4 ( .A(prescale[5]), .B(\sub_23/carry[4] ), .Y(n1) );
  INVX2M U5 ( .A(N8), .Y(n2) );
  INVX2M U6 ( .A(prescale[2]), .Y(N9) );
  XNOR2X1M U7 ( .A(\sub_23/carry[4] ), .B(prescale[5]), .Y(N12) );
  OR2X1M U8 ( .A(prescale[4]), .B(\sub_23/carry[3] ), .Y(\sub_23/carry[4] ) );
  XNOR2X1M U12 ( .A(\sub_23/carry[3] ), .B(prescale[4]), .Y(N11) );
  OR2X1M U13 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_23/carry[3] ) );
  XNOR2X1M U14 ( .A(prescale[2]), .B(prescale[3]), .Y(N10) );
  NAND2BX1M U15 ( .AN(prescale[2]), .B(n2), .Y(n3) );
  OAI2BB1X1M U16 ( .A0N(N8), .A1N(prescale[2]), .B0(n3), .Y(N16) );
  OR2X1M U17 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U18 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N17) );
  XNOR2X1M U19 ( .A(prescale[4]), .B(n4), .Y(N18) );
  NOR3X1M U20 ( .A(prescale[4]), .B(prescale[5]), .C(n4), .Y(N20) );
  OAI21X1M U21 ( .A0(prescale[4]), .A1(n4), .B0(prescale[5]), .Y(n5) );
  NAND2BX1M U22 ( .AN(N20), .B(n5), .Y(N19) );
  CLKMX2X2M U23 ( .A(sampling1), .B(RX_IN), .S0(n6), .Y(n27) );
  NOR2X1M U24 ( .A(n7), .B(n8), .Y(n6) );
  CLKMX2X2M U25 ( .A(sampling2), .B(RX_IN), .S0(n9), .Y(n26) );
  NOR2X1M U26 ( .A(n10), .B(n15), .Y(n9) );
  CLKMX2X2M U27 ( .A(sampling3), .B(RX_IN), .S0(n16), .Y(n25) );
  NOR4X1M U28 ( .A(n17), .B(n18), .C(n10), .D(n19), .Y(n16) );
  CLKXOR2X2M U29 ( .A(N8), .B(edge_cnt[0]), .Y(n19) );
  CLKNAND2X2M U30 ( .A(dat_samp_en), .B(n7), .Y(n10) );
  NAND4X1M U31 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n7) );
  NOR3X1M U32 ( .A(n24), .B(n28), .C(n29), .Y(n23) );
  CLKXOR2X2M U33 ( .A(edge_cnt[4]), .B(N12), .Y(n29) );
  CLKXOR2X2M U34 ( .A(edge_cnt[0]), .B(N8), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_cnt[5]), .B(n1), .Y(n24) );
  XNOR2X1M U36 ( .A(edge_cnt[2]), .B(N10), .Y(n22) );
  XNOR2X1M U37 ( .A(edge_cnt[3]), .B(N11), .Y(n21) );
  CLKXOR2X2M U38 ( .A(n30), .B(N9), .Y(n20) );
  CLKNAND2X2M U39 ( .A(n15), .B(n31), .Y(n18) );
  NAND4X1M U40 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n15) );
  NOR3X1M U41 ( .A(n36), .B(n37), .C(n38), .Y(n35) );
  CLKXOR2X2M U42 ( .A(edge_cnt[4]), .B(N19), .Y(n38) );
  CLKXOR2X2M U43 ( .A(edge_cnt[1]), .B(N16), .Y(n37) );
  CLKXOR2X2M U44 ( .A(edge_cnt[0]), .B(n2), .Y(n36) );
  XNOR2X1M U45 ( .A(edge_cnt[2]), .B(N17), .Y(n34) );
  XNOR2X1M U46 ( .A(edge_cnt[3]), .B(N18), .Y(n33) );
  CLKXOR2X2M U47 ( .A(n31), .B(N20), .Y(n32) );
  CLKINVX1M U48 ( .A(edge_cnt[5]), .Y(n31) );
  NAND4X1M U49 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n17) );
  CLKXOR2X2M U50 ( .A(n30), .B(prescale[2]), .Y(n42) );
  CLKINVX1M U51 ( .A(edge_cnt[1]), .Y(n30) );
  XNOR2X1M U52 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n41) );
  XNOR2X1M U53 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n40) );
  XNOR2X1M U54 ( .A(edge_cnt[4]), .B(prescale[5]), .Y(n39) );
  AOI21X1M U55 ( .A0(n43), .A1(n44), .B0(n8), .Y(N35) );
  CLKINVX1M U56 ( .A(dat_samp_en), .Y(n8) );
  OAI21X1M U57 ( .A0(sampling1), .A1(sampling2), .B0(sampling3), .Y(n44) );
  CLKNAND2X2M U58 ( .A(sampling2), .B(sampling1), .Y(n43) );
endmodule


module deserializer_test_1 ( sampled_bit, deser_en, data_valid, prescale, 
        bit_cnt, edge_cnt, CLK, RST, P_DATA, data, test_so, test_se );
  input [5:0] prescale;
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  output [7:0] P_DATA;
  output [7:0] data;
  input sampled_bit, deser_en, data_valid, CLK, RST, test_se;
  output test_so;
  wire   N3, N4, N5, N6, N7, N8, N9, n5, n15, n17, n19, n21, n23, n25, n27,
         n29, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  assign test_so = n34;

  SDFFRQX2M \data_reg[6]  ( .D(n27), .SI(n36), .SE(test_se), .CK(CLK), .RN(RST), .Q(data[6]) );
  SDFFRQX2M \data_reg[1]  ( .D(n17), .SI(n41), .SE(test_se), .CK(CLK), .RN(RST), .Q(data[1]) );
  SDFFRQX2M \data_reg[5]  ( .D(n25), .SI(n37), .SE(test_se), .CK(CLK), .RN(RST), .Q(data[5]) );
  SDFFRQX2M \data_reg[0]  ( .D(n15), .SI(edge_cnt[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(data[0]) );
  SDFFRQX2M \data_reg[4]  ( .D(n23), .SI(n38), .SE(test_se), .CK(CLK), .RN(RST), .Q(data[4]) );
  SDFFRQX2M \data_reg[2]  ( .D(n19), .SI(n40), .SE(test_se), .CK(CLK), .RN(RST), .Q(data[2]) );
  SDFFRQX2M \data_reg[7]  ( .D(n29), .SI(n35), .SE(test_se), .CK(CLK), .RN(RST), .Q(data[7]) );
  SDFFRQX2M \data_reg[3]  ( .D(n21), .SI(n39), .SE(test_se), .CK(CLK), .RN(RST), .Q(data[3]) );
  INVX2M U3 ( .A(data_valid), .Y(n32) );
  OAI22X1M U4 ( .A0(n33), .A1(n41), .B0(n5), .B1(n40), .Y(n15) );
  OAI22X1M U5 ( .A0(n33), .A1(n40), .B0(n5), .B1(n39), .Y(n17) );
  OAI22X1M U6 ( .A0(n33), .A1(n39), .B0(n5), .B1(n38), .Y(n19) );
  OAI22X1M U7 ( .A0(n33), .A1(n38), .B0(n5), .B1(n37), .Y(n21) );
  OAI22X1M U8 ( .A0(n33), .A1(n37), .B0(n5), .B1(n36), .Y(n23) );
  OAI22X1M U9 ( .A0(n33), .A1(n36), .B0(n5), .B1(n35), .Y(n25) );
  OAI22X1M U10 ( .A0(n33), .A1(n35), .B0(n5), .B1(n34), .Y(n27) );
  INVX2M U11 ( .A(n5), .Y(n33) );
  NOR2X2M U12 ( .A(n41), .B(n32), .Y(P_DATA[0]) );
  NOR2X2M U13 ( .A(n40), .B(n32), .Y(P_DATA[1]) );
  NOR2X2M U14 ( .A(n39), .B(n32), .Y(P_DATA[2]) );
  NOR2X2M U15 ( .A(n38), .B(n32), .Y(P_DATA[3]) );
  NOR2X2M U16 ( .A(n37), .B(n32), .Y(P_DATA[4]) );
  NOR2X2M U17 ( .A(n36), .B(n32), .Y(P_DATA[5]) );
  NOR2X2M U18 ( .A(n35), .B(n32), .Y(P_DATA[6]) );
  NOR2X2M U19 ( .A(n34), .B(n32), .Y(P_DATA[7]) );
  NAND2X2M U20 ( .A(deser_en), .B(N9), .Y(n5) );
  OAI2BB2X1M U21 ( .B0(n33), .B1(n34), .A0N(sampled_bit), .A1N(n33), .Y(n29)
         );
  OR2X2M U22 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  INVX2M U23 ( .A(prescale[3]), .Y(n6) );
  INVX2M U24 ( .A(data[7]), .Y(n34) );
  INVX2M U25 ( .A(data[3]), .Y(n38) );
  INVX2M U26 ( .A(data[2]), .Y(n39) );
  INVX2M U27 ( .A(data[4]), .Y(n37) );
  INVX2M U28 ( .A(data[5]), .Y(n36) );
  INVX2M U29 ( .A(data[1]), .Y(n40) );
  INVX2M U30 ( .A(data[6]), .Y(n35) );
  INVX2M U39 ( .A(data[0]), .Y(n41) );
  CLKINVX1M U40 ( .A(prescale[0]), .Y(N3) );
  OAI2BB1X1M U41 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N4) );
  NOR2X1M U42 ( .A(n1), .B(prescale[2]), .Y(n2) );
  AO21XLM U43 ( .A0(n1), .A1(prescale[2]), .B0(n2), .Y(N5) );
  CLKNAND2X2M U44 ( .A(n2), .B(n6), .Y(n3) );
  OAI21X1M U45 ( .A0(n2), .A1(n6), .B0(n3), .Y(N6) );
  XNOR2X1M U46 ( .A(prescale[4]), .B(n3), .Y(N7) );
  NOR2X1M U47 ( .A(prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U48 ( .A(prescale[5]), .B(n4), .Y(N8) );
  NOR2BX1M U49 ( .AN(edge_cnt[0]), .B(N3), .Y(n7) );
  OAI2B2X1M U50 ( .A1N(N4), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n11) );
  NOR2BX1M U51 ( .AN(N3), .B(edge_cnt[0]), .Y(n8) );
  OAI2B2X1M U52 ( .A1N(edge_cnt[1]), .A0(n8), .B0(N4), .B1(n8), .Y(n10) );
  XNOR2X1M U53 ( .A(N8), .B(edge_cnt[5]), .Y(n9) );
  NAND3X1M U54 ( .A(n11), .B(n10), .C(n9), .Y(n31) );
  CLKXOR2X2M U55 ( .A(N7), .B(edge_cnt[4]), .Y(n30) );
  CLKXOR2X2M U56 ( .A(N5), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U57 ( .A(N6), .B(edge_cnt[3]), .Y(n12) );
  NOR4X1M U58 ( .A(n31), .B(n30), .C(n13), .D(n12), .Y(N9) );
endmodule


module start_check_test_1 ( sampled_bit, strt_check_en, edge_cnt, prescale, 
        CLK, RST, strt_glitch, test_si, test_se );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input sampled_bit, strt_check_en, CLK, RST, test_si, test_se;
  output strt_glitch;
  wire   N6, N7, N8, N9, N10, N11, n6, n7, \add_19/carry[4] ,
         \add_19/carry[3] , \add_19/carry[2] , n1, n2, n3, n4, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17;

  SDFFRQX2M strt_glitch_reg ( .D(n7), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(strt_glitch) );
  INVX2M U4 ( .A(prescale[1]), .Y(n1) );
  INVX2M U5 ( .A(N8), .Y(n13) );
  INVX2M U6 ( .A(edge_cnt[3]), .Y(n15) );
  INVX2M U7 ( .A(N7), .Y(n12) );
  ADDHX1M U8 ( .A(prescale[3]), .B(\add_19/carry[2] ), .CO(\add_19/carry[3] ), 
        .S(N7) );
  ADDHX1M U9 ( .A(prescale[4]), .B(\add_19/carry[3] ), .CO(\add_19/carry[4] ), 
        .S(N8) );
  ADDHX1M U10 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_19/carry[2] ), .S(
        N6) );
  AO2B2X2M U11 ( .B0(strt_glitch), .B1(n6), .A0(sampled_bit), .A1N(n6), .Y(n7)
         );
  NAND2X2M U12 ( .A(strt_check_en), .B(N11), .Y(n6) );
  INVX2M U13 ( .A(edge_cnt[2]), .Y(n14) );
  ADDHX1M U14 ( .A(prescale[5]), .B(\add_19/carry[4] ), .CO(N10), .S(N9) );
  INVX2M U15 ( .A(edge_cnt[4]), .Y(n16) );
  INVX2M U16 ( .A(edge_cnt[5]), .Y(n17) );
  NOR2X1M U17 ( .A(N9), .B(n16), .Y(n10) );
  NAND2BX1M U18 ( .AN(n1), .B(edge_cnt[0]), .Y(n3) );
  AOI2BB1X1M U19 ( .A0N(n3), .A1N(N6), .B0(edge_cnt[1]), .Y(n2) );
  AOI221XLM U20 ( .A0(N7), .A1(n14), .B0(N6), .B1(n3), .C0(n2), .Y(n4) );
  AOI221XLM U21 ( .A0(edge_cnt[3]), .A1(n13), .B0(edge_cnt[2]), .B1(n12), .C0(
        n4), .Y(n8) );
  AOI221XLM U22 ( .A0(N9), .A1(n16), .B0(N8), .B1(n15), .C0(n8), .Y(n9) );
  OAI2BB2X1M U23 ( .B0(n10), .B1(n9), .A0N(n17), .A1N(N10), .Y(n11) );
  OAI21X1M U24 ( .A0(N10), .A1(n17), .B0(n11), .Y(N11) );
endmodule


module parity_check_test_1 ( sampled_bit, par_check_en, PAR_TYP, prescale, 
        data, bit_cnt, edge_cnt, CLK, RST, par_err, test_si, test_se );
  input [5:0] prescale;
  input [7:0] data;
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input sampled_bit, par_check_en, PAR_TYP, CLK, RST, test_si, test_se;
  output par_err;
  wire   N10, N11, N12, N13, N14, N15, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         \add_23/carry[4] , \add_23/carry[3] , \add_23/carry[2] , n1, n2, n3,
         n4, n15, n16, n17, n18, n19, n20;

  SDFFRQX2M par_err_reg ( .D(n14), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_err) );
  INVX2M U4 ( .A(prescale[1]), .Y(n1) );
  NOR3BX2M U5 ( .AN(N15), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n8) );
  OAI2BB2X1M U6 ( .B0(n6), .B1(n7), .A0N(par_err), .A1N(n7), .Y(n14) );
  XOR3XLM U7 ( .A(n9), .B(n10), .C(n11), .Y(n6) );
  NAND4X2M U8 ( .A(bit_cnt[3]), .B(bit_cnt[0]), .C(par_check_en), .D(n8), .Y(
        n7) );
  XNOR2X2M U9 ( .A(data[2]), .B(PAR_TYP), .Y(n11) );
  ADDHX1M U10 ( .A(prescale[3]), .B(\add_23/carry[2] ), .CO(\add_23/carry[3] ), 
        .S(N11) );
  ADDHX1M U11 ( .A(prescale[4]), .B(\add_23/carry[3] ), .CO(\add_23/carry[4] ), 
        .S(N12) );
  ADDHX1M U12 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_23/carry[2] ), .S(
        N10) );
  ADDHX1M U13 ( .A(prescale[5]), .B(\add_23/carry[4] ), .CO(N14), .S(N13) );
  XOR3XLM U14 ( .A(data[6]), .B(data[5]), .C(n12), .Y(n10) );
  XNOR2X2M U15 ( .A(sampled_bit), .B(data[7]), .Y(n12) );
  XOR3XLM U16 ( .A(data[1]), .B(data[0]), .C(n13), .Y(n9) );
  XNOR2X2M U17 ( .A(data[4]), .B(data[3]), .Y(n13) );
  NOR2BX1M U18 ( .AN(edge_cnt[0]), .B(n1), .Y(n2) );
  OAI2B2X1M U19 ( .A1N(N10), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n16) );
  NOR2BX1M U20 ( .AN(n1), .B(edge_cnt[0]), .Y(n3) );
  OAI2B2X1M U21 ( .A1N(edge_cnt[1]), .A0(n3), .B0(N10), .B1(n3), .Y(n15) );
  XNOR2X1M U22 ( .A(N14), .B(edge_cnt[5]), .Y(n4) );
  NAND3X1M U23 ( .A(n16), .B(n15), .C(n4), .Y(n20) );
  CLKXOR2X2M U24 ( .A(N13), .B(edge_cnt[4]), .Y(n19) );
  CLKXOR2X2M U25 ( .A(N11), .B(edge_cnt[2]), .Y(n18) );
  CLKXOR2X2M U26 ( .A(N12), .B(edge_cnt[3]), .Y(n17) );
  NOR4X1M U27 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(N15) );
endmodule


module stop_check_test_1 ( sampled_bit, stp_check_en, edge_cnt, prescale, CLK, 
        RST, stp_err, test_si, test_se );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input sampled_bit, stp_check_en, CLK, RST, test_si, test_se;
  output stp_err;
  wire   N6, N7, N8, N9, N10, N11, n6, n7, \add_19/carry[4] ,
         \add_19/carry[3] , \add_19/carry[2] , n1, n2, n3, n4, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17;

  SDFFRQX2M stp_err_reg ( .D(n7), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(stp_err) );
  INVX2M U4 ( .A(prescale[1]), .Y(n1) );
  INVX2M U5 ( .A(N8), .Y(n13) );
  INVX2M U6 ( .A(edge_cnt[3]), .Y(n15) );
  INVX2M U7 ( .A(N7), .Y(n12) );
  ADDHX1M U8 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_19/carry[2] ), .S(N6) );
  OAI2BB2X1M U9 ( .B0(sampled_bit), .B1(n6), .A0N(stp_err), .A1N(n6), .Y(n7)
         );
  NAND2X2M U10 ( .A(stp_check_en), .B(N11), .Y(n6) );
  INVX2M U11 ( .A(edge_cnt[2]), .Y(n14) );
  ADDHX1M U12 ( .A(prescale[3]), .B(\add_19/carry[2] ), .CO(\add_19/carry[3] ), 
        .S(N7) );
  ADDHX1M U13 ( .A(prescale[4]), .B(\add_19/carry[3] ), .CO(\add_19/carry[4] ), 
        .S(N8) );
  ADDHX1M U14 ( .A(prescale[5]), .B(\add_19/carry[4] ), .CO(N10), .S(N9) );
  INVX2M U15 ( .A(edge_cnt[4]), .Y(n16) );
  INVX2M U16 ( .A(edge_cnt[5]), .Y(n17) );
  NOR2X1M U17 ( .A(N9), .B(n16), .Y(n10) );
  NAND2BX1M U18 ( .AN(n1), .B(edge_cnt[0]), .Y(n3) );
  AOI2BB1X1M U19 ( .A0N(n3), .A1N(N6), .B0(edge_cnt[1]), .Y(n2) );
  AOI221XLM U20 ( .A0(N7), .A1(n14), .B0(N6), .B1(n3), .C0(n2), .Y(n4) );
  AOI221XLM U21 ( .A0(edge_cnt[3]), .A1(n13), .B0(edge_cnt[2]), .B1(n12), .C0(
        n4), .Y(n8) );
  AOI221XLM U22 ( .A0(N9), .A1(n16), .B0(N8), .B1(n15), .C0(n8), .Y(n9) );
  OAI2BB2X1M U23 ( .B0(n10), .B1(n9), .A0N(n17), .A1N(N10), .Y(n11) );
  OAI21X1M U24 ( .A0(N10), .A1(n17), .B0(n11), .Y(N11) );
endmodule


module RX_FSM_test_1 ( RX_IN, PAR_EN, bit_cnt, edge_cnt, prescale, strt_glitch, 
        par_err, stp_err, CLK, RST, enable, dat_samp_en, deser_en, 
        strt_check_en, par_check_en, stp_check_en, data_valid, test_si, 
        test_se );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input RX_IN, PAR_EN, strt_glitch, par_err, stp_err, CLK, RST, test_si,
         test_se;
  output enable, dat_samp_en, deser_en, strt_check_en, par_check_en,
         stp_check_en, data_valid;
  wire   enable_c, deser_en_c, strt_check_en_c, par_check_en_c, stp_check_en_c,
         N42, N43, N44, N45, N46, N47, N48, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n55, n56, n57, n58;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  SDFFRQX2M dat_samp_en_reg ( .D(enable_c), .SI(current_state[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(dat_samp_en) );
  SDFFRQX2M par_check_en_reg ( .D(par_check_en_c), .SI(enable), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(par_check_en) );
  SDFFRQX2M stp_check_en_reg ( .D(stp_check_en_c), .SI(par_check_en), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(stp_check_en) );
  SDFFRQX2M deser_en_reg ( .D(deser_en_c), .SI(dat_samp_en), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(deser_en) );
  SDFFRQX2M strt_check_en_reg ( .D(strt_check_en_c), .SI(stp_check_en), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(strt_check_en) );
  SDFFRQX2M enable_reg ( .D(enable_c), .SI(deser_en), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(enable) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n36), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n55), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  INVX2M U6 ( .A(n45), .Y(n35) );
  NAND3X2M U7 ( .A(n56), .B(n57), .C(n43), .Y(n41) );
  NOR2X2M U8 ( .A(n40), .B(n37), .Y(n45) );
  NOR2X2M U15 ( .A(n35), .B(n2), .Y(stp_check_en_c) );
  INVX2M U16 ( .A(deser_en_c), .Y(n34) );
  NOR3BX2M U17 ( .AN(bit_cnt[3]), .B(n1), .C(bit_cnt[2]), .Y(n43) );
  NOR4BX1M U18 ( .AN(strt_glitch), .B(n54), .C(bit_cnt[0]), .D(n1), .Y(n53) );
  OR3X2M U19 ( .A(bit_cnt[2]), .B(bit_cnt[3]), .C(bit_cnt[1]), .Y(n54) );
  NOR4X1M U20 ( .A(stp_err), .B(par_err), .C(n35), .D(n1), .Y(data_valid) );
  OR4X1M U21 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(n1) );
  OAI31X1M U22 ( .A0(n34), .A1(PAR_EN), .A2(n41), .B0(n42), .Y(next_state[2])
         );
  AOI31X2M U23 ( .A0(bit_cnt[0]), .A1(n43), .A2(n44), .B0(n45), .Y(n42) );
  NOR3X2M U24 ( .A(n40), .B(par_err), .C(bit_cnt[1]), .Y(n44) );
  OAI2B11X2M U25 ( .A1N(n41), .A0(n34), .B0(n49), .C0(n50), .Y(next_state[0])
         );
  NAND3X2M U26 ( .A(n55), .B(n37), .C(n52), .Y(n49) );
  AOI31X2M U27 ( .A0(n45), .A1(n51), .A2(n43), .B0(n39), .Y(n50) );
  OAI22X1M U28 ( .A0(current_state[0]), .A1(RX_IN), .B0(n53), .B1(n36), .Y(n52) );
  OR2X2M U29 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  NAND3X2M U30 ( .A(n35), .B(n34), .C(n46), .Y(next_state[1]) );
  AOI2BB2XLM U31 ( .B0(n47), .B1(n48), .A0N(n40), .A1N(par_err), .Y(n46) );
  NOR4X1M U32 ( .A(strt_glitch), .B(current_state[2]), .C(bit_cnt[3]), .D(
        bit_cnt[2]), .Y(n48) );
  NOR4X1M U33 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(n36), .D(n1), .Y(n47) );
  OR4X1M U34 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(n2) );
  NOR3X2M U35 ( .A(n2), .B(current_state[2]), .C(n40), .Y(par_check_en_c) );
  NAND2X2M U36 ( .A(current_state[1]), .B(n36), .Y(n40) );
  INVX2M U37 ( .A(current_state[0]), .Y(n36) );
  INVX2M U38 ( .A(current_state[2]), .Y(n37) );
  OAI33X2M U39 ( .A0(n57), .A1(bit_cnt[0]), .A2(n58), .B0(n56), .B1(bit_cnt[1]), .B2(PAR_EN), .Y(n51) );
  INVX2M U40 ( .A(PAR_EN), .Y(n58) );
  OAI221X1M U41 ( .A0(current_state[2]), .A1(n38), .B0(RX_IN), .B1(n55), .C0(
        n40), .Y(enable_c) );
  NOR3X2M U42 ( .A(n36), .B(current_state[2]), .C(n55), .Y(deser_en_c) );
  NOR4X1M U43 ( .A(n37), .B(n55), .C(n36), .D(RX_IN), .Y(n39) );
  OAI31X1M U44 ( .A0(n38), .A1(current_state[2]), .A2(current_state[1]), .B0(
        n33), .Y(strt_check_en_c) );
  INVX2M U45 ( .A(n39), .Y(n33) );
  NOR2BX2M U46 ( .AN(RX_IN), .B(current_state[0]), .Y(n38) );
  INVX2M U47 ( .A(current_state[1]), .Y(n55) );
  INVX2M U48 ( .A(bit_cnt[0]), .Y(n56) );
  INVX2M U49 ( .A(bit_cnt[1]), .Y(n57) );
  CLKINVX1M U50 ( .A(prescale[0]), .Y(N42) );
  OAI2BB1X1M U51 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(N43) );
  OR2X1M U52 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U53 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N44) );
  OR2X1M U54 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U55 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(N45) );
  OR2X1M U56 ( .A(n5), .B(prescale[4]), .Y(n6) );
  OAI2BB1X1M U57 ( .A0N(n5), .A1N(prescale[4]), .B0(n6), .Y(N46) );
  NOR2X1M U58 ( .A(n6), .B(prescale[5]), .Y(N48) );
  AO21XLM U59 ( .A0(n6), .A1(prescale[5]), .B0(N48), .Y(N47) );
  NOR2BX1M U60 ( .AN(N42), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U61 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N43), .B1(n7), .Y(n11) );
  XNOR2X1M U62 ( .A(N47), .B(edge_cnt[5]), .Y(n10) );
  NOR2BX1M U63 ( .AN(edge_cnt[0]), .B(N42), .Y(n8) );
  OAI2B2X1M U64 ( .A1N(N43), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U65 ( .AN(N48), .B(n11), .C(n10), .D(n9), .Y(n15) );
  CLKXOR2X2M U66 ( .A(N46), .B(edge_cnt[4]), .Y(n14) );
  CLKXOR2X2M U67 ( .A(N44), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U68 ( .A(N45), .B(edge_cnt[3]), .Y(n12) );
  NOR2BX1M U69 ( .AN(edge_cnt[0]), .B(prescale[1]), .Y(n16) );
  OAI2B2X1M U70 ( .A1N(prescale[2]), .A0(n16), .B0(edge_cnt[1]), .B1(n16), .Y(
        n28) );
  NOR2BX1M U71 ( .AN(prescale[1]), .B(edge_cnt[0]), .Y(n17) );
  OAI2B2X1M U72 ( .A1N(edge_cnt[1]), .A0(n17), .B0(prescale[2]), .B1(n17), .Y(
        n27) );
  NAND3BX1M U73 ( .AN(edge_cnt[5]), .B(n28), .C(n27), .Y(n32) );
  CLKXOR2X2M U74 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n31) );
  CLKXOR2X2M U75 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n30) );
  CLKXOR2X2M U76 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n29) );
endmodule


module UART_RX_DWIDTH8_test_1 ( RX_IN, prescale, PAR_EN, PAR_TYP, CLK, RST, 
        P_DATA, Parity_Error, Stop_Error, data_valid, test_si, test_so, 
        test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output Parity_Error, Stop_Error, data_valid, test_so;
  wire   enable, dat_samp_en, sampled_bit, deser_en, strt_check_en,
         strt_glitch, par_check_en, stp_check_en, n1, n2, n3, n4, n5, n6;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;
  wire   [7:0] data;
  assign test_so = strt_glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX4M U2 ( .A(n4), .Y(n3) );
  INVX2M U3 ( .A(RST), .Y(n4) );
  INVX2M U4 ( .A(prescale[1]), .Y(n2) );
  edge_bit_counter_test_1 u_counter ( .enable(enable), .prescale({
        prescale[5:2], n1, prescale[0]}), .PAR_EN(PAR_EN), .CLK(CLK), .RST(n3), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .test_si(test_si), .test_se(
        test_se) );
  data_sampling_test_1 u_sampling ( .RX_IN(RX_IN), .prescale({prescale[5:2], 
        n1, prescale[0]}), .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), 
        .CLK(CLK), .RST(n3), .sampled_bit(sampled_bit), .test_si(Parity_Error), 
        .test_so(n5), .test_se(test_se) );
  deserializer_test_1 u_deser ( .sampled_bit(sampled_bit), .deser_en(deser_en), 
        .data_valid(data_valid), .prescale({prescale[5:2], n1, prescale[0]}), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .CLK(CLK), .RST(n3), .P_DATA(
        P_DATA), .data(data), .test_so(n6), .test_se(test_se) );
  start_check_test_1 u_strt ( .sampled_bit(sampled_bit), .strt_check_en(
        strt_check_en), .edge_cnt(edge_cnt), .prescale({prescale[5:2], n1, 
        prescale[0]}), .CLK(CLK), .RST(n3), .strt_glitch(strt_glitch), 
        .test_si(Stop_Error), .test_se(test_se) );
  parity_check_test_1 u_par ( .sampled_bit(sampled_bit), .par_check_en(
        par_check_en), .PAR_TYP(PAR_TYP), .prescale({prescale[5:2], n1, 
        prescale[0]}), .data(data), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), 
        .CLK(CLK), .RST(n3), .par_err(Parity_Error), .test_si(strt_check_en), 
        .test_se(test_se) );
  stop_check_test_1 u_stp ( .sampled_bit(sampled_bit), .stp_check_en(
        stp_check_en), .edge_cnt(edge_cnt), .prescale({prescale[5:2], n1, 
        prescale[0]}), .CLK(CLK), .RST(n3), .stp_err(Stop_Error), .test_si(n5), 
        .test_se(test_se) );
  RX_FSM_test_1 u_fsm ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt), .prescale({prescale[5:2], n1, prescale[0]}), 
        .strt_glitch(strt_glitch), .par_err(Parity_Error), .stp_err(Stop_Error), .CLK(CLK), .RST(n3), .enable(enable), .dat_samp_en(dat_samp_en), .deser_en(
        deser_en), .strt_check_en(strt_check_en), .par_check_en(par_check_en), 
        .stp_check_en(stp_check_en), .data_valid(data_valid), .test_si(n6), 
        .test_se(test_se) );
endmodule


module UART_TOP_DWIDTH8_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_P, 
        TX_IN_V, Prescale, PAR_EN, PAR_TYP, RX_OUT_P, RX_OUT_V, TX_OUT_S, 
        TX_OUT_V, Parity_Error, Stop_Error, test_si2, test_si1, test_so1, 
        test_se );
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, PAR_EN, PAR_TYP, test_si2,
         test_si1, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, Parity_Error, Stop_Error, test_so1;
  wire   n1, n2, n3, n5;

  BUFX2M U1 ( .A(Prescale[1]), .Y(n1) );
  INVX2M U2 ( .A(n3), .Y(n2) );
  INVX2M U3 ( .A(RST), .Y(n3) );
  UART_TX_DWIDTH8_test_1 u0_UART_TX ( .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), 
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .clk(TX_CLK), .rst(n2), .TX_OUT(
        TX_OUT_S), .busy(TX_OUT_V), .test_si2(test_si2), .test_si1(n5), 
        .test_so1(test_so1), .test_se(test_se) );
  UART_RX_DWIDTH8_test_1 u0_UART_RX ( .RX_IN(RX_IN_S), .prescale({
        Prescale[5:2], n1, Prescale[0]}), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), 
        .CLK(RX_CLK), .RST(n2), .P_DATA(RX_OUT_P), .Parity_Error(Parity_Error), 
        .Stop_Error(Stop_Error), .data_valid(RX_OUT_V), .test_si(test_si1), 
        .test_so(n5), .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( unsync_bus, bus_enable, CLK, 
        RST, sync_bus, enable_pulse, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse, test_so;
  wire   n1, n2, n4, n6, n8, n10, n12, n14, n16, n18, n26, n27, n28;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(n27), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_reg[0]) );
  SEDFFX1M pulse_reg_reg ( .D(sync_reg[1]), .SI(n28), .E(RST), .SE(test_se), 
        .CK(CLK), .Q(n27), .QN(n2) );
  SEDFFX1M enable_pulse_reg ( .D(n26), .SI(test_si), .E(RST), .SE(test_se), 
        .CK(CLK), .Q(enable_pulse), .QN(n28) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_reg[1]) );
  INVX2M U6 ( .A(n1), .Y(n26) );
  AO22X1M U7 ( .A0(unsync_bus[0]), .A1(n26), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[1]), .A1(n26), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U9 ( .A0(unsync_bus[2]), .A1(n26), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U10 ( .A0(unsync_bus[3]), .A1(n26), .B0(sync_bus[3]), .B1(n1), .Y(
        n10) );
  AO22X1M U11 ( .A0(unsync_bus[4]), .A1(n26), .B0(sync_bus[4]), .B1(n1), .Y(
        n12) );
  AO22X1M U12 ( .A0(unsync_bus[5]), .A1(n26), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U25 ( .A0(unsync_bus[6]), .A1(n26), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U26 ( .A0(unsync_bus[7]), .A1(n26), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
  NAND2X2M U27 ( .A(sync_reg[1]), .B(n2), .Y(n1) );
endmodule


module FIFO_WR_test_1 ( winc, wclk, wrst_n, wq2_rptr, waddr, wptr, wfull, 
        test_si, test_se );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, wclk, wrst_n, test_si, test_se;
  output wfull;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [3:0] g_wptr_comb;

  SDFFRQX2M \b_wptr_reg[3]  ( .D(n19), .SI(waddr[2]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(g_wptr_comb[3]) );
  SDFFRQX2M \b_wptr_reg[2]  ( .D(n20), .SI(waddr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(g_wptr_comb[3]), .SI(wptr[2]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(wptr[3]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(g_wptr_comb[2]), .SI(wptr[1]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(wptr[2]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(g_wptr_comb[1]), .SI(wptr[0]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(wptr[1]) );
  SDFFRQX2M \wptr_reg[0]  ( .D(g_wptr_comb[0]), .SI(g_wptr_comb[3]), .SE(
        test_se), .CK(wclk), .RN(wrst_n), .Q(wptr[0]) );
  SDFFRQX2M \b_wptr_reg[1]  ( .D(n21), .SI(waddr[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[1]) );
  SDFFRX1M \b_wptr_reg[0]  ( .D(n22), .SI(test_si), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[0]), .QN(n9) );
  INVX2M U12 ( .A(n10), .Y(wfull) );
  NAND2X2M U13 ( .A(winc), .B(n10), .Y(n14) );
  XNOR2X2M U14 ( .A(g_wptr_comb[1]), .B(wq2_rptr[1]), .Y(n15) );
  NAND4X2M U15 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n10) );
  CLKXOR2X2M U16 ( .A(wq2_rptr[3]), .B(g_wptr_comb[3]), .Y(n18) );
  XNOR2X2M U17 ( .A(g_wptr_comb[0]), .B(wq2_rptr[0]), .Y(n16) );
  CLKXOR2X2M U18 ( .A(wq2_rptr[2]), .B(g_wptr_comb[2]), .Y(n17) );
  CLKXOR2X2M U19 ( .A(g_wptr_comb[3]), .B(waddr[2]), .Y(g_wptr_comb[2]) );
  CLKXOR2X2M U20 ( .A(waddr[1]), .B(waddr[2]), .Y(g_wptr_comb[1]) );
  XNOR2X2M U21 ( .A(n9), .B(waddr[1]), .Y(g_wptr_comb[0]) );
  NOR2X2M U22 ( .A(n14), .B(n9), .Y(n13) );
  XNOR2X2M U23 ( .A(waddr[2]), .B(n12), .Y(n20) );
  XNOR2X2M U24 ( .A(g_wptr_comb[3]), .B(n11), .Y(n19) );
  NAND2BX2M U25 ( .AN(n12), .B(waddr[2]), .Y(n11) );
  NAND2X2M U26 ( .A(n13), .B(waddr[1]), .Y(n12) );
  CLKXOR2X2M U27 ( .A(waddr[1]), .B(n13), .Y(n21) );
  CLKXOR2X2M U28 ( .A(n9), .B(n14), .Y(n22) );
endmodule


module FIFO_RD_test_1 ( rinc, rclk, rrst_n, rq2_wptr, raddr, rptr, rempty, 
        test_si, test_se );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, rclk, rrst_n, test_si, test_se;
  output rempty;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [3:0] g_rptr_comb;

  SDFFRQX2M \b_rptr_reg[3]  ( .D(n19), .SI(raddr[2]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(g_rptr_comb[3]) );
  SDFFRQX2M \b_rptr_reg[2]  ( .D(n20), .SI(raddr[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[2]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(g_rptr_comb[3]), .SI(rptr[2]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(rptr[3]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(g_rptr_comb[2]), .SI(rptr[1]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(rptr[2]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(g_rptr_comb[1]), .SI(rptr[0]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(rptr[1]) );
  SDFFRQX2M \rptr_reg[0]  ( .D(g_rptr_comb[0]), .SI(g_rptr_comb[3]), .SE(
        test_se), .CK(rclk), .RN(rrst_n), .Q(rptr[0]) );
  SDFFRQX2M \b_rptr_reg[1]  ( .D(n21), .SI(n9), .SE(test_se), .CK(rclk), .RN(
        rrst_n), .Q(raddr[1]) );
  SDFFRX1M \b_rptr_reg[0]  ( .D(n22), .SI(test_si), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[0]), .QN(n9) );
  INVX2M U12 ( .A(n10), .Y(rempty) );
  XNOR2X2M U13 ( .A(g_rptr_comb[1]), .B(rq2_wptr[1]), .Y(n15) );
  XNOR2X2M U14 ( .A(n9), .B(raddr[1]), .Y(g_rptr_comb[0]) );
  NOR2X2M U15 ( .A(n14), .B(n9), .Y(n13) );
  XNOR2X2M U16 ( .A(raddr[2]), .B(n12), .Y(n20) );
  NAND4X2M U17 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n10) );
  XNOR2X2M U18 ( .A(g_rptr_comb[3]), .B(rq2_wptr[3]), .Y(n17) );
  XNOR2X2M U19 ( .A(g_rptr_comb[0]), .B(rq2_wptr[0]), .Y(n16) );
  XNOR2X2M U20 ( .A(g_rptr_comb[2]), .B(rq2_wptr[2]), .Y(n18) );
  NAND2X2M U21 ( .A(n13), .B(raddr[1]), .Y(n12) );
  NAND2X2M U22 ( .A(rinc), .B(n10), .Y(n14) );
  XNOR2X2M U23 ( .A(g_rptr_comb[3]), .B(n11), .Y(n19) );
  NAND2BX2M U24 ( .AN(n12), .B(raddr[2]), .Y(n11) );
  CLKXOR2X2M U25 ( .A(raddr[1]), .B(raddr[2]), .Y(g_rptr_comb[1]) );
  CLKXOR2X2M U26 ( .A(g_rptr_comb[3]), .B(raddr[2]), .Y(g_rptr_comb[2]) );
  CLKXOR2X2M U27 ( .A(raddr[1]), .B(n13), .Y(n21) );
  CLKXOR2X2M U28 ( .A(n9), .B(n14), .Y(n22) );
endmodule


module DF_SYNC_test_0 ( ptr, clk, rst_n, sync, test_si, test_se );
  input [3:0] ptr;
  output [3:0] sync;
  input clk, rst_n, test_si, test_se;

  wire   [3:0] sync_0;

  SDFFRQX2M \sync_1_reg[3]  ( .D(sync_0[3]), .SI(sync[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync[3]) );
  SDFFRQX2M \sync_1_reg[2]  ( .D(sync_0[2]), .SI(sync[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync[2]) );
  SDFFRQX2M \sync_1_reg[1]  ( .D(sync_0[1]), .SI(sync[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync[1]) );
  SDFFRQX2M \sync_1_reg[0]  ( .D(sync_0[0]), .SI(sync_0[3]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync[0]) );
  SDFFRQX2M \sync_0_reg[3]  ( .D(ptr[3]), .SI(sync_0[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_0[3]) );
  SDFFRQX2M \sync_0_reg[2]  ( .D(ptr[2]), .SI(sync_0[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_0[2]) );
  SDFFRQX2M \sync_0_reg[1]  ( .D(ptr[1]), .SI(sync_0[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_0[1]) );
  SDFFRQX2M \sync_0_reg[0]  ( .D(ptr[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync_0[0]) );
endmodule


module DF_SYNC_test_1 ( ptr, clk, rst_n, sync, test_si, test_se );
  input [3:0] ptr;
  output [3:0] sync;
  input clk, rst_n, test_si, test_se;

  wire   [3:0] sync_0;

  SDFFRQX2M \sync_1_reg[1]  ( .D(sync_0[1]), .SI(sync[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync[1]) );
  SDFFRQX2M \sync_1_reg[0]  ( .D(sync_0[0]), .SI(sync_0[3]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync[0]) );
  SDFFRQX2M \sync_1_reg[3]  ( .D(sync_0[3]), .SI(sync[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync[3]) );
  SDFFRQX2M \sync_1_reg[2]  ( .D(sync_0[2]), .SI(sync[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync[2]) );
  SDFFRQX2M \sync_0_reg[3]  ( .D(ptr[3]), .SI(sync_0[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_0[3]) );
  SDFFRQX2M \sync_0_reg[2]  ( .D(ptr[2]), .SI(sync_0[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_0[2]) );
  SDFFRQX2M \sync_0_reg[1]  ( .D(ptr[1]), .SI(sync_0[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_0[1]) );
  SDFFRQX2M \sync_0_reg[0]  ( .D(ptr[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sync_0[0]) );
endmodule


module FIFO_MEM_test_1 ( wdata, waddr, raddr, winc, wfull, wclk, wrst_n, rdata, 
        test_si, test_so, test_se );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input winc, wfull, wclk, wrst_n, test_si, test_se;
  output test_so;
  wire   N9, N10, N11, \MEM[0][7] , \MEM[0][6] , \MEM[0][5] , \MEM[0][4] ,
         \MEM[0][3] , \MEM[0][2] , \MEM[0][1] , \MEM[0][0] , \MEM[1][7] ,
         \MEM[1][6] , \MEM[1][5] , \MEM[1][4] , \MEM[1][3] , \MEM[1][2] ,
         \MEM[1][1] , \MEM[1][0] , \MEM[2][7] , \MEM[2][6] , \MEM[2][5] ,
         \MEM[2][4] , \MEM[2][3] , \MEM[2][2] , \MEM[2][1] , \MEM[2][0] ,
         \MEM[3][7] , \MEM[3][6] , \MEM[3][5] , \MEM[3][4] , \MEM[3][3] ,
         \MEM[3][2] , \MEM[3][1] , \MEM[3][0] , \MEM[4][7] , \MEM[4][6] ,
         \MEM[4][5] , \MEM[4][4] , \MEM[4][3] , \MEM[4][2] , \MEM[4][1] ,
         \MEM[4][0] , \MEM[5][7] , \MEM[5][6] , \MEM[5][5] , \MEM[5][4] ,
         \MEM[5][3] , \MEM[5][2] , \MEM[5][1] , \MEM[5][0] , \MEM[6][7] ,
         \MEM[6][6] , \MEM[6][5] , \MEM[6][4] , \MEM[6][3] , \MEM[6][2] ,
         \MEM[6][1] , \MEM[6][0] , \MEM[7][7] , \MEM[7][6] , \MEM[7][5] ,
         \MEM[7][4] , \MEM[7][3] , \MEM[7][2] , \MEM[7][1] , \MEM[7][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n183, n184,
         n185, n186, n187;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];
  assign test_so = \MEM[7][7] ;

  SDFFRQX2M \MEM_reg[1][7]  ( .D(n141), .SI(\MEM[1][6] ), .SE(n187), .CK(wclk), 
        .RN(n165), .Q(\MEM[1][7] ) );
  SDFFRQX2M \MEM_reg[1][6]  ( .D(n140), .SI(\MEM[1][5] ), .SE(n186), .CK(wclk), 
        .RN(n165), .Q(\MEM[1][6] ) );
  SDFFRQX2M \MEM_reg[1][5]  ( .D(n139), .SI(\MEM[1][4] ), .SE(n185), .CK(wclk), 
        .RN(n165), .Q(\MEM[1][5] ) );
  SDFFRQX2M \MEM_reg[1][4]  ( .D(n138), .SI(\MEM[1][3] ), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\MEM[1][4] ) );
  SDFFRQX2M \MEM_reg[1][3]  ( .D(n137), .SI(\MEM[1][2] ), .SE(n187), .CK(wclk), 
        .RN(n166), .Q(\MEM[1][3] ) );
  SDFFRQX2M \MEM_reg[1][2]  ( .D(n136), .SI(\MEM[1][1] ), .SE(n186), .CK(wclk), 
        .RN(n166), .Q(\MEM[1][2] ) );
  SDFFRQX2M \MEM_reg[1][1]  ( .D(n135), .SI(\MEM[1][0] ), .SE(n185), .CK(wclk), 
        .RN(n166), .Q(\MEM[1][1] ) );
  SDFFRQX2M \MEM_reg[1][0]  ( .D(n134), .SI(\MEM[0][7] ), .SE(n184), .CK(wclk), 
        .RN(n166), .Q(\MEM[1][0] ) );
  SDFFRQX2M \MEM_reg[5][7]  ( .D(n109), .SI(\MEM[5][6] ), .SE(n187), .CK(wclk), 
        .RN(n168), .Q(\MEM[5][7] ) );
  SDFFRQX2M \MEM_reg[5][6]  ( .D(n108), .SI(\MEM[5][5] ), .SE(n186), .CK(wclk), 
        .RN(n168), .Q(\MEM[5][6] ) );
  SDFFRQX2M \MEM_reg[5][5]  ( .D(n107), .SI(\MEM[5][4] ), .SE(n185), .CK(wclk), 
        .RN(n168), .Q(\MEM[5][5] ) );
  SDFFRQX2M \MEM_reg[5][4]  ( .D(n106), .SI(\MEM[5][3] ), .SE(n184), .CK(wclk), 
        .RN(n168), .Q(\MEM[5][4] ) );
  SDFFRQX2M \MEM_reg[5][3]  ( .D(n105), .SI(\MEM[5][2] ), .SE(n187), .CK(wclk), 
        .RN(n168), .Q(\MEM[5][3] ) );
  SDFFRQX2M \MEM_reg[5][2]  ( .D(n104), .SI(\MEM[5][1] ), .SE(n186), .CK(wclk), 
        .RN(n168), .Q(\MEM[5][2] ) );
  SDFFRQX2M \MEM_reg[5][1]  ( .D(n103), .SI(\MEM[5][0] ), .SE(n185), .CK(wclk), 
        .RN(n168), .Q(\MEM[5][1] ) );
  SDFFRQX2M \MEM_reg[5][0]  ( .D(n102), .SI(\MEM[4][7] ), .SE(n184), .CK(wclk), 
        .RN(n168), .Q(\MEM[5][0] ) );
  SDFFRQX2M \MEM_reg[3][7]  ( .D(n125), .SI(\MEM[3][6] ), .SE(n187), .CK(wclk), 
        .RN(n167), .Q(\MEM[3][7] ) );
  SDFFRQX2M \MEM_reg[3][6]  ( .D(n124), .SI(\MEM[3][5] ), .SE(n186), .CK(wclk), 
        .RN(n167), .Q(\MEM[3][6] ) );
  SDFFRQX2M \MEM_reg[3][5]  ( .D(n123), .SI(\MEM[3][4] ), .SE(n185), .CK(wclk), 
        .RN(n167), .Q(\MEM[3][5] ) );
  SDFFRQX2M \MEM_reg[3][4]  ( .D(n122), .SI(\MEM[3][3] ), .SE(n184), .CK(wclk), 
        .RN(n167), .Q(\MEM[3][4] ) );
  SDFFRQX2M \MEM_reg[3][3]  ( .D(n121), .SI(\MEM[3][2] ), .SE(n187), .CK(wclk), 
        .RN(n167), .Q(\MEM[3][3] ) );
  SDFFRQX2M \MEM_reg[3][2]  ( .D(n120), .SI(\MEM[3][1] ), .SE(n186), .CK(wclk), 
        .RN(n167), .Q(\MEM[3][2] ) );
  SDFFRQX2M \MEM_reg[3][1]  ( .D(n119), .SI(\MEM[3][0] ), .SE(n185), .CK(wclk), 
        .RN(n167), .Q(\MEM[3][1] ) );
  SDFFRQX2M \MEM_reg[3][0]  ( .D(n118), .SI(\MEM[2][7] ), .SE(n184), .CK(wclk), 
        .RN(n167), .Q(\MEM[3][0] ) );
  SDFFRQX2M \MEM_reg[7][7]  ( .D(n93), .SI(\MEM[7][6] ), .SE(n187), .CK(wclk), 
        .RN(n169), .Q(\MEM[7][7] ) );
  SDFFRQX2M \MEM_reg[7][6]  ( .D(n92), .SI(\MEM[7][5] ), .SE(n186), .CK(wclk), 
        .RN(n169), .Q(\MEM[7][6] ) );
  SDFFRQX2M \MEM_reg[7][5]  ( .D(n91), .SI(\MEM[7][4] ), .SE(n185), .CK(wclk), 
        .RN(n169), .Q(\MEM[7][5] ) );
  SDFFRQX2M \MEM_reg[7][4]  ( .D(n90), .SI(\MEM[7][3] ), .SE(n184), .CK(wclk), 
        .RN(n169), .Q(\MEM[7][4] ) );
  SDFFRQX2M \MEM_reg[7][3]  ( .D(n89), .SI(\MEM[7][2] ), .SE(n187), .CK(wclk), 
        .RN(n170), .Q(\MEM[7][3] ) );
  SDFFRQX2M \MEM_reg[7][2]  ( .D(n88), .SI(\MEM[7][1] ), .SE(n186), .CK(wclk), 
        .RN(n170), .Q(\MEM[7][2] ) );
  SDFFRQX2M \MEM_reg[7][1]  ( .D(n87), .SI(\MEM[7][0] ), .SE(n185), .CK(wclk), 
        .RN(n170), .Q(\MEM[7][1] ) );
  SDFFRQX2M \MEM_reg[7][0]  ( .D(n86), .SI(\MEM[6][7] ), .SE(n184), .CK(wclk), 
        .RN(n170), .Q(\MEM[7][0] ) );
  SDFFRQX2M \MEM_reg[2][7]  ( .D(n133), .SI(\MEM[2][6] ), .SE(n187), .CK(wclk), 
        .RN(n166), .Q(\MEM[2][7] ) );
  SDFFRQX2M \MEM_reg[2][6]  ( .D(n132), .SI(\MEM[2][5] ), .SE(n186), .CK(wclk), 
        .RN(n166), .Q(\MEM[2][6] ) );
  SDFFRQX2M \MEM_reg[2][5]  ( .D(n131), .SI(\MEM[2][4] ), .SE(n185), .CK(wclk), 
        .RN(n166), .Q(\MEM[2][5] ) );
  SDFFRQX2M \MEM_reg[2][4]  ( .D(n130), .SI(\MEM[2][3] ), .SE(n184), .CK(wclk), 
        .RN(n166), .Q(\MEM[2][4] ) );
  SDFFRQX2M \MEM_reg[2][3]  ( .D(n129), .SI(\MEM[2][2] ), .SE(n187), .CK(wclk), 
        .RN(n166), .Q(\MEM[2][3] ) );
  SDFFRQX2M \MEM_reg[2][2]  ( .D(n128), .SI(\MEM[2][1] ), .SE(n186), .CK(wclk), 
        .RN(n166), .Q(\MEM[2][2] ) );
  SDFFRQX2M \MEM_reg[2][1]  ( .D(n127), .SI(\MEM[2][0] ), .SE(n185), .CK(wclk), 
        .RN(n166), .Q(\MEM[2][1] ) );
  SDFFRQX2M \MEM_reg[2][0]  ( .D(n126), .SI(\MEM[1][7] ), .SE(n184), .CK(wclk), 
        .RN(n166), .Q(\MEM[2][0] ) );
  SDFFRQX2M \MEM_reg[6][7]  ( .D(n101), .SI(\MEM[6][6] ), .SE(n187), .CK(wclk), 
        .RN(n169), .Q(\MEM[6][7] ) );
  SDFFRQX2M \MEM_reg[6][6]  ( .D(n100), .SI(\MEM[6][5] ), .SE(n186), .CK(wclk), 
        .RN(n169), .Q(\MEM[6][6] ) );
  SDFFRQX2M \MEM_reg[6][5]  ( .D(n99), .SI(\MEM[6][4] ), .SE(n185), .CK(wclk), 
        .RN(n169), .Q(\MEM[6][5] ) );
  SDFFRQX2M \MEM_reg[6][4]  ( .D(n98), .SI(\MEM[6][3] ), .SE(n184), .CK(wclk), 
        .RN(n169), .Q(\MEM[6][4] ) );
  SDFFRQX2M \MEM_reg[6][3]  ( .D(n97), .SI(\MEM[6][2] ), .SE(n187), .CK(wclk), 
        .RN(n169), .Q(\MEM[6][3] ) );
  SDFFRQX2M \MEM_reg[6][2]  ( .D(n96), .SI(\MEM[6][1] ), .SE(n186), .CK(wclk), 
        .RN(n169), .Q(\MEM[6][2] ) );
  SDFFRQX2M \MEM_reg[6][1]  ( .D(n95), .SI(\MEM[6][0] ), .SE(n185), .CK(wclk), 
        .RN(n169), .Q(\MEM[6][1] ) );
  SDFFRQX2M \MEM_reg[6][0]  ( .D(n94), .SI(\MEM[5][7] ), .SE(n184), .CK(wclk), 
        .RN(n169), .Q(\MEM[6][0] ) );
  SDFFRQX2M \MEM_reg[0][7]  ( .D(n149), .SI(\MEM[0][6] ), .SE(n187), .CK(wclk), 
        .RN(n165), .Q(\MEM[0][7] ) );
  SDFFRQX2M \MEM_reg[0][6]  ( .D(n148), .SI(\MEM[0][5] ), .SE(n186), .CK(wclk), 
        .RN(n165), .Q(\MEM[0][6] ) );
  SDFFRQX2M \MEM_reg[0][5]  ( .D(n147), .SI(\MEM[0][4] ), .SE(n185), .CK(wclk), 
        .RN(n165), .Q(\MEM[0][5] ) );
  SDFFRQX2M \MEM_reg[0][4]  ( .D(n146), .SI(\MEM[0][3] ), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\MEM[0][4] ) );
  SDFFRQX2M \MEM_reg[0][3]  ( .D(n145), .SI(\MEM[0][2] ), .SE(n187), .CK(wclk), 
        .RN(n165), .Q(\MEM[0][3] ) );
  SDFFRQX2M \MEM_reg[0][2]  ( .D(n144), .SI(\MEM[0][1] ), .SE(n186), .CK(wclk), 
        .RN(n165), .Q(\MEM[0][2] ) );
  SDFFRQX2M \MEM_reg[0][1]  ( .D(n143), .SI(\MEM[0][0] ), .SE(n185), .CK(wclk), 
        .RN(n165), .Q(\MEM[0][1] ) );
  SDFFRQX2M \MEM_reg[0][0]  ( .D(n142), .SI(test_si), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\MEM[0][0] ) );
  SDFFRQX2M \MEM_reg[4][7]  ( .D(n117), .SI(\MEM[4][6] ), .SE(n187), .CK(wclk), 
        .RN(n167), .Q(\MEM[4][7] ) );
  SDFFRQX2M \MEM_reg[4][6]  ( .D(n116), .SI(\MEM[4][5] ), .SE(n186), .CK(wclk), 
        .RN(n167), .Q(\MEM[4][6] ) );
  SDFFRQX2M \MEM_reg[4][5]  ( .D(n115), .SI(\MEM[4][4] ), .SE(n185), .CK(wclk), 
        .RN(n167), .Q(\MEM[4][5] ) );
  SDFFRQX2M \MEM_reg[4][4]  ( .D(n114), .SI(\MEM[4][3] ), .SE(n184), .CK(wclk), 
        .RN(n167), .Q(\MEM[4][4] ) );
  SDFFRQX2M \MEM_reg[4][3]  ( .D(n113), .SI(\MEM[4][2] ), .SE(n187), .CK(wclk), 
        .RN(n168), .Q(\MEM[4][3] ) );
  SDFFRQX2M \MEM_reg[4][2]  ( .D(n112), .SI(\MEM[4][1] ), .SE(n186), .CK(wclk), 
        .RN(n168), .Q(\MEM[4][2] ) );
  SDFFRQX2M \MEM_reg[4][1]  ( .D(n111), .SI(\MEM[4][0] ), .SE(n185), .CK(wclk), 
        .RN(n168), .Q(\MEM[4][1] ) );
  SDFFRQX2M \MEM_reg[4][0]  ( .D(n110), .SI(\MEM[3][7] ), .SE(n184), .CK(wclk), 
        .RN(n168), .Q(\MEM[4][0] ) );
  BUFX2M U66 ( .A(n75), .Y(n162) );
  BUFX2M U67 ( .A(n83), .Y(n158) );
  BUFX2M U68 ( .A(n84), .Y(n157) );
  BUFX2M U69 ( .A(n81), .Y(n159) );
  BUFX2M U70 ( .A(n78), .Y(n160) );
  BUFX2M U71 ( .A(n77), .Y(n161) );
  BUFX2M U72 ( .A(n164), .Y(n169) );
  BUFX2M U73 ( .A(n164), .Y(n168) );
  BUFX2M U74 ( .A(n163), .Y(n167) );
  BUFX2M U75 ( .A(n163), .Y(n166) );
  BUFX2M U76 ( .A(n163), .Y(n165) );
  BUFX2M U77 ( .A(n164), .Y(n170) );
  NOR2BX2M U78 ( .AN(winc), .B(wfull), .Y(n80) );
  BUFX2M U79 ( .A(wrst_n), .Y(n164) );
  BUFX2M U80 ( .A(wrst_n), .Y(n163) );
  NAND3X2M U81 ( .A(n171), .B(n172), .C(n76), .Y(n79) );
  NAND3X2M U82 ( .A(n171), .B(n172), .C(n82), .Y(n85) );
  INVX2M U83 ( .A(wdata[0]), .Y(n173) );
  INVX2M U84 ( .A(wdata[1]), .Y(n174) );
  INVX2M U85 ( .A(wdata[2]), .Y(n175) );
  INVX2M U86 ( .A(wdata[3]), .Y(n176) );
  INVX2M U87 ( .A(wdata[4]), .Y(n177) );
  INVX2M U88 ( .A(wdata[5]), .Y(n178) );
  INVX2M U89 ( .A(wdata[6]), .Y(n179) );
  INVX2M U90 ( .A(wdata[7]), .Y(n180) );
  NOR2BX2M U91 ( .AN(n80), .B(waddr[2]), .Y(n82) );
  OAI2BB2X1M U92 ( .B0(n173), .B1(n85), .A0N(\MEM[0][0] ), .A1N(n85), .Y(n142)
         );
  OAI2BB2X1M U93 ( .B0(n174), .B1(n85), .A0N(\MEM[0][1] ), .A1N(n85), .Y(n143)
         );
  OAI2BB2X1M U94 ( .B0(n175), .B1(n85), .A0N(\MEM[0][2] ), .A1N(n85), .Y(n144)
         );
  OAI2BB2X1M U95 ( .B0(n176), .B1(n85), .A0N(\MEM[0][3] ), .A1N(n85), .Y(n145)
         );
  OAI2BB2X1M U96 ( .B0(n177), .B1(n85), .A0N(\MEM[0][4] ), .A1N(n85), .Y(n146)
         );
  OAI2BB2X1M U97 ( .B0(n178), .B1(n85), .A0N(\MEM[0][5] ), .A1N(n85), .Y(n147)
         );
  OAI2BB2X1M U98 ( .B0(n179), .B1(n85), .A0N(\MEM[0][6] ), .A1N(n85), .Y(n148)
         );
  OAI2BB2X1M U99 ( .B0(n180), .B1(n85), .A0N(\MEM[0][7] ), .A1N(n85), .Y(n149)
         );
  OAI2BB2X1M U100 ( .B0(n173), .B1(n79), .A0N(\MEM[4][0] ), .A1N(n79), .Y(n110) );
  OAI2BB2X1M U101 ( .B0(n174), .B1(n79), .A0N(\MEM[4][1] ), .A1N(n79), .Y(n111) );
  OAI2BB2X1M U102 ( .B0(n175), .B1(n79), .A0N(\MEM[4][2] ), .A1N(n79), .Y(n112) );
  OAI2BB2X1M U103 ( .B0(n176), .B1(n79), .A0N(\MEM[4][3] ), .A1N(n79), .Y(n113) );
  OAI2BB2X1M U104 ( .B0(n177), .B1(n79), .A0N(\MEM[4][4] ), .A1N(n79), .Y(n114) );
  OAI2BB2X1M U105 ( .B0(n178), .B1(n79), .A0N(\MEM[4][5] ), .A1N(n79), .Y(n115) );
  OAI2BB2X1M U106 ( .B0(n179), .B1(n79), .A0N(\MEM[4][6] ), .A1N(n79), .Y(n116) );
  OAI2BB2X1M U107 ( .B0(n180), .B1(n79), .A0N(\MEM[4][7] ), .A1N(n79), .Y(n117) );
  BUFX4M U108 ( .A(N9), .Y(n156) );
  OAI2BB2X1M U109 ( .B0(n173), .B1(n161), .A0N(\MEM[6][0] ), .A1N(n161), .Y(
        n94) );
  OAI2BB2X1M U110 ( .B0(n174), .B1(n161), .A0N(\MEM[6][1] ), .A1N(n161), .Y(
        n95) );
  OAI2BB2X1M U111 ( .B0(n175), .B1(n161), .A0N(\MEM[6][2] ), .A1N(n161), .Y(
        n96) );
  OAI2BB2X1M U112 ( .B0(n176), .B1(n161), .A0N(\MEM[6][3] ), .A1N(n161), .Y(
        n97) );
  OAI2BB2X1M U113 ( .B0(n177), .B1(n161), .A0N(\MEM[6][4] ), .A1N(n161), .Y(
        n98) );
  OAI2BB2X1M U114 ( .B0(n178), .B1(n161), .A0N(\MEM[6][5] ), .A1N(n161), .Y(
        n99) );
  OAI2BB2X1M U115 ( .B0(n179), .B1(n161), .A0N(\MEM[6][6] ), .A1N(n161), .Y(
        n100) );
  OAI2BB2X1M U116 ( .B0(n180), .B1(n161), .A0N(\MEM[6][7] ), .A1N(n161), .Y(
        n101) );
  OAI2BB2X1M U117 ( .B0(n173), .B1(n160), .A0N(\MEM[5][0] ), .A1N(n160), .Y(
        n102) );
  OAI2BB2X1M U118 ( .B0(n174), .B1(n160), .A0N(\MEM[5][1] ), .A1N(n160), .Y(
        n103) );
  OAI2BB2X1M U119 ( .B0(n175), .B1(n160), .A0N(\MEM[5][2] ), .A1N(n160), .Y(
        n104) );
  OAI2BB2X1M U120 ( .B0(n176), .B1(n160), .A0N(\MEM[5][3] ), .A1N(n160), .Y(
        n105) );
  OAI2BB2X1M U121 ( .B0(n177), .B1(n160), .A0N(\MEM[5][4] ), .A1N(n160), .Y(
        n106) );
  OAI2BB2X1M U122 ( .B0(n178), .B1(n160), .A0N(\MEM[5][5] ), .A1N(n160), .Y(
        n107) );
  OAI2BB2X1M U123 ( .B0(n179), .B1(n160), .A0N(\MEM[5][6] ), .A1N(n160), .Y(
        n108) );
  OAI2BB2X1M U124 ( .B0(n180), .B1(n160), .A0N(\MEM[5][7] ), .A1N(n160), .Y(
        n109) );
  OAI2BB2X1M U125 ( .B0(n173), .B1(n159), .A0N(\MEM[3][0] ), .A1N(n159), .Y(
        n118) );
  OAI2BB2X1M U126 ( .B0(n174), .B1(n159), .A0N(\MEM[3][1] ), .A1N(n159), .Y(
        n119) );
  OAI2BB2X1M U127 ( .B0(n175), .B1(n159), .A0N(\MEM[3][2] ), .A1N(n159), .Y(
        n120) );
  OAI2BB2X1M U128 ( .B0(n176), .B1(n159), .A0N(\MEM[3][3] ), .A1N(n159), .Y(
        n121) );
  OAI2BB2X1M U129 ( .B0(n177), .B1(n159), .A0N(\MEM[3][4] ), .A1N(n159), .Y(
        n122) );
  OAI2BB2X1M U130 ( .B0(n178), .B1(n159), .A0N(\MEM[3][5] ), .A1N(n159), .Y(
        n123) );
  OAI2BB2X1M U131 ( .B0(n179), .B1(n159), .A0N(\MEM[3][6] ), .A1N(n159), .Y(
        n124) );
  OAI2BB2X1M U132 ( .B0(n180), .B1(n159), .A0N(\MEM[3][7] ), .A1N(n159), .Y(
        n125) );
  OAI2BB2X1M U133 ( .B0(n173), .B1(n158), .A0N(\MEM[2][0] ), .A1N(n158), .Y(
        n126) );
  OAI2BB2X1M U134 ( .B0(n174), .B1(n158), .A0N(\MEM[2][1] ), .A1N(n158), .Y(
        n127) );
  OAI2BB2X1M U135 ( .B0(n175), .B1(n158), .A0N(\MEM[2][2] ), .A1N(n158), .Y(
        n128) );
  OAI2BB2X1M U136 ( .B0(n176), .B1(n158), .A0N(\MEM[2][3] ), .A1N(n158), .Y(
        n129) );
  OAI2BB2X1M U137 ( .B0(n177), .B1(n158), .A0N(\MEM[2][4] ), .A1N(n158), .Y(
        n130) );
  OAI2BB2X1M U138 ( .B0(n178), .B1(n158), .A0N(\MEM[2][5] ), .A1N(n158), .Y(
        n131) );
  OAI2BB2X1M U139 ( .B0(n179), .B1(n158), .A0N(\MEM[2][6] ), .A1N(n158), .Y(
        n132) );
  OAI2BB2X1M U140 ( .B0(n180), .B1(n158), .A0N(\MEM[2][7] ), .A1N(n158), .Y(
        n133) );
  OAI2BB2X1M U141 ( .B0(n173), .B1(n157), .A0N(\MEM[1][0] ), .A1N(n157), .Y(
        n134) );
  OAI2BB2X1M U142 ( .B0(n174), .B1(n157), .A0N(\MEM[1][1] ), .A1N(n157), .Y(
        n135) );
  OAI2BB2X1M U143 ( .B0(n175), .B1(n157), .A0N(\MEM[1][2] ), .A1N(n157), .Y(
        n136) );
  OAI2BB2X1M U144 ( .B0(n176), .B1(n157), .A0N(\MEM[1][3] ), .A1N(n157), .Y(
        n137) );
  OAI2BB2X1M U145 ( .B0(n177), .B1(n157), .A0N(\MEM[1][4] ), .A1N(n157), .Y(
        n138) );
  OAI2BB2X1M U146 ( .B0(n178), .B1(n157), .A0N(\MEM[1][5] ), .A1N(n157), .Y(
        n139) );
  OAI2BB2X1M U147 ( .B0(n179), .B1(n157), .A0N(\MEM[1][6] ), .A1N(n157), .Y(
        n140) );
  OAI2BB2X1M U148 ( .B0(n180), .B1(n157), .A0N(\MEM[1][7] ), .A1N(n157), .Y(
        n141) );
  OAI2BB2X1M U149 ( .B0(n162), .B1(n173), .A0N(\MEM[7][0] ), .A1N(n162), .Y(
        n86) );
  OAI2BB2X1M U150 ( .B0(n162), .B1(n174), .A0N(\MEM[7][1] ), .A1N(n162), .Y(
        n87) );
  OAI2BB2X1M U151 ( .B0(n162), .B1(n175), .A0N(\MEM[7][2] ), .A1N(n162), .Y(
        n88) );
  OAI2BB2X1M U152 ( .B0(n162), .B1(n176), .A0N(\MEM[7][3] ), .A1N(n162), .Y(
        n89) );
  OAI2BB2X1M U153 ( .B0(n162), .B1(n177), .A0N(\MEM[7][4] ), .A1N(n162), .Y(
        n90) );
  OAI2BB2X1M U154 ( .B0(n162), .B1(n178), .A0N(\MEM[7][5] ), .A1N(n162), .Y(
        n91) );
  OAI2BB2X1M U155 ( .B0(n162), .B1(n179), .A0N(\MEM[7][6] ), .A1N(n162), .Y(
        n92) );
  OAI2BB2X1M U156 ( .B0(n162), .B1(n180), .A0N(\MEM[7][7] ), .A1N(n162), .Y(
        n93) );
  AND2X2M U157 ( .A(waddr[2]), .B(n80), .Y(n76) );
  NAND3X2M U158 ( .A(n76), .B(n172), .C(waddr[0]), .Y(n78) );
  NAND3X2M U159 ( .A(n76), .B(n171), .C(waddr[1]), .Y(n77) );
  NAND3X2M U160 ( .A(waddr[1]), .B(waddr[0]), .C(n82), .Y(n81) );
  NAND3X2M U161 ( .A(waddr[0]), .B(n172), .C(n82), .Y(n84) );
  NAND3X2M U162 ( .A(waddr[1]), .B(n171), .C(n82), .Y(n83) );
  NAND3X2M U163 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n75) );
  MX2X2M U164 ( .A(n66), .B(n65), .S0(N11), .Y(rdata[0]) );
  MX4X1M U165 ( .A(\MEM[0][0] ), .B(\MEM[1][0] ), .C(\MEM[2][0] ), .D(
        \MEM[3][0] ), .S0(n156), .S1(N10), .Y(n66) );
  MX4X1M U166 ( .A(\MEM[4][0] ), .B(\MEM[5][0] ), .C(\MEM[6][0] ), .D(
        \MEM[7][0] ), .S0(n156), .S1(N10), .Y(n65) );
  MX2X2M U167 ( .A(n68), .B(n67), .S0(N11), .Y(rdata[1]) );
  MX4X1M U168 ( .A(\MEM[0][1] ), .B(\MEM[1][1] ), .C(\MEM[2][1] ), .D(
        \MEM[3][1] ), .S0(n156), .S1(N10), .Y(n68) );
  MX4X1M U169 ( .A(\MEM[4][1] ), .B(\MEM[5][1] ), .C(\MEM[6][1] ), .D(
        \MEM[7][1] ), .S0(n156), .S1(N10), .Y(n67) );
  MX2X2M U170 ( .A(n70), .B(n69), .S0(N11), .Y(rdata[2]) );
  MX4X1M U171 ( .A(\MEM[0][2] ), .B(\MEM[1][2] ), .C(\MEM[2][2] ), .D(
        \MEM[3][2] ), .S0(n156), .S1(N10), .Y(n70) );
  MX4X1M U172 ( .A(\MEM[4][2] ), .B(\MEM[5][2] ), .C(\MEM[6][2] ), .D(
        \MEM[7][2] ), .S0(n156), .S1(N10), .Y(n69) );
  MX2X2M U173 ( .A(n72), .B(n71), .S0(N11), .Y(rdata[3]) );
  MX4X1M U174 ( .A(\MEM[0][3] ), .B(\MEM[1][3] ), .C(\MEM[2][3] ), .D(
        \MEM[3][3] ), .S0(n156), .S1(N10), .Y(n72) );
  MX4X1M U175 ( .A(\MEM[4][3] ), .B(\MEM[5][3] ), .C(\MEM[6][3] ), .D(
        \MEM[7][3] ), .S0(n156), .S1(N10), .Y(n71) );
  MX2X2M U176 ( .A(n74), .B(n73), .S0(N11), .Y(rdata[4]) );
  MX4X1M U177 ( .A(\MEM[0][4] ), .B(\MEM[1][4] ), .C(\MEM[2][4] ), .D(
        \MEM[3][4] ), .S0(n156), .S1(N10), .Y(n74) );
  MX4X1M U178 ( .A(\MEM[4][4] ), .B(\MEM[5][4] ), .C(\MEM[6][4] ), .D(
        \MEM[7][4] ), .S0(n156), .S1(N10), .Y(n73) );
  MX2X2M U179 ( .A(n151), .B(n150), .S0(N11), .Y(rdata[5]) );
  MX4X1M U180 ( .A(\MEM[0][5] ), .B(\MEM[1][5] ), .C(\MEM[2][5] ), .D(
        \MEM[3][5] ), .S0(n156), .S1(N10), .Y(n151) );
  MX4X1M U181 ( .A(\MEM[4][5] ), .B(\MEM[5][5] ), .C(\MEM[6][5] ), .D(
        \MEM[7][5] ), .S0(n156), .S1(N10), .Y(n150) );
  MX2X2M U182 ( .A(n153), .B(n152), .S0(N11), .Y(rdata[6]) );
  MX4X1M U183 ( .A(\MEM[0][6] ), .B(\MEM[1][6] ), .C(\MEM[2][6] ), .D(
        \MEM[3][6] ), .S0(n156), .S1(N10), .Y(n153) );
  MX4X1M U184 ( .A(\MEM[4][6] ), .B(\MEM[5][6] ), .C(\MEM[6][6] ), .D(
        \MEM[7][6] ), .S0(n156), .S1(N10), .Y(n152) );
  MX2X2M U185 ( .A(n155), .B(n154), .S0(N11), .Y(rdata[7]) );
  MX4X1M U186 ( .A(\MEM[0][7] ), .B(\MEM[1][7] ), .C(\MEM[2][7] ), .D(
        \MEM[3][7] ), .S0(n156), .S1(N10), .Y(n155) );
  MX4X1M U187 ( .A(\MEM[4][7] ), .B(\MEM[5][7] ), .C(\MEM[6][7] ), .D(
        \MEM[7][7] ), .S0(n156), .S1(N10), .Y(n154) );
  INVX2M U188 ( .A(waddr[0]), .Y(n171) );
  INVX2M U189 ( .A(waddr[1]), .Y(n172) );
  INVXLM U190 ( .A(test_se), .Y(n183) );
  INVXLM U191 ( .A(n183), .Y(n184) );
  INVXLM U192 ( .A(n183), .Y(n185) );
  INVXLM U193 ( .A(n183), .Y(n186) );
  INVXLM U194 ( .A(n183), .Y(n187) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_test_1 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, 
        R_INC, WR_DATA, FULL, EMPTY, RD_DATA, test_si, test_so, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, test_si, test_se;
  output FULL, EMPTY, test_so;
  wire   n1, n2, n3, n4, n5;
  wire   [3:0] wq2_rptr;
  wire   [2:0] waddr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  assign test_so = wptr[3];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
  FIFO_WR_test_1 u_wr_ptr ( .winc(W_INC), .wclk(W_CLK), .wrst_n(n3), 
        .wq2_rptr(wq2_rptr), .waddr(waddr), .wptr(wptr), .wfull(FULL), 
        .test_si(rptr[3]), .test_se(test_se) );
  FIFO_RD_test_1 u_rd_ptr ( .rinc(R_INC), .rclk(R_CLK), .rrst_n(n1), 
        .rq2_wptr(rq2_wptr), .raddr(raddr), .rptr(rptr), .rempty(EMPTY), 
        .test_si(n5), .test_se(test_se) );
  DF_SYNC_test_0 u0_sync ( .ptr(wptr), .clk(R_CLK), .rst_n(n1), .sync(rq2_wptr), .test_si(test_si), .test_se(test_se) );
  DF_SYNC_test_1 u1_sync ( .ptr(rptr), .clk(W_CLK), .rst_n(n3), .sync(wq2_rptr), .test_si(rq2_wptr[3]), .test_se(test_se) );
  FIFO_MEM_test_1 u_mem ( .wdata(WR_DATA), .waddr(waddr), .raddr(raddr), 
        .winc(W_INC), .wfull(FULL), .wclk(W_CLK), .wrst_n(n3), .rdata(RD_DATA), 
        .test_si(wq2_rptr[3]), .test_so(n5), .test_se(test_se) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, SI, SE, scan_clk, 
        scan_rst, test_mode, SO, UART_TX_O, parity_error, framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, SI, SE, scan_clk, scan_rst,
         test_mode;
  output SO, UART_TX_O, parity_error, framing_error;
  wire   REF_CLK_M, UART_CLK_M, UART_TX_CLK, UART_TX_CLK_M, UART_RX_CLK,
         UART_RX_CLK_M, RST_M, SYNC_REF_RST, REF_RST_M, SYNC_UART_RST,
         UART_RST_M, RF_WrEn, RF_RdEn, RF_RdData_VLD, ALU_CLK, ALU_EN,
         ALU_OUT_VLD, _0_net_, CLKG_EN, FIFO_FULL, UART_RX_V_SYNC, UART_TX_VLD,
         UART_RX_V_OUT, UART_TX_Busy, UART_TX_V_SYNC, UART_TX_Busy_PULSE, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n17,
         n18, n19, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [7:0] RF_RdData;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] DIV_RATIO_RX;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_TX_SYNC;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX4M U3 ( .A(n10), .Y(n9) );
  BUFX2M U4 ( .A(RF_Address[0]), .Y(n5) );
  BUFX2M U5 ( .A(RF_Address[1]), .Y(n6) );
  INVX2M U6 ( .A(UART_TX_V_SYNC), .Y(n1) );
  OR2X2M U7 ( .A(CLKG_EN), .B(n2), .Y(_0_net_) );
  INVX2M U8 ( .A(n4), .Y(n3) );
  INVX2M U9 ( .A(UART_Config[3]), .Y(n4) );
  INVX2M U10 ( .A(REF_RST_M), .Y(n10) );
  INVX2M U11 ( .A(n8), .Y(n7) );
  INVX2M U12 ( .A(UART_RST_M), .Y(n8) );
  BUFX2M U13 ( .A(test_mode), .Y(n2) );
  DLY1X1M U20 ( .A(n24), .Y(n22) );
  INVXLM U21 ( .A(n32), .Y(n23) );
  INVXLM U22 ( .A(n23), .Y(n24) );
  INVXLM U23 ( .A(n23), .Y(n25) );
  INVXLM U24 ( .A(n31), .Y(n26) );
  INVXLM U25 ( .A(n26), .Y(n27) );
  INVXLM U26 ( .A(n34), .Y(n28) );
  INVXLM U27 ( .A(n28), .Y(n29) );
  INVXLM U28 ( .A(SE), .Y(n30) );
  INVXLM U29 ( .A(n30), .Y(n31) );
  INVXLM U30 ( .A(n30), .Y(n32) );
  INVXLM U31 ( .A(n30), .Y(n33) );
  INVXLM U32 ( .A(n30), .Y(n34) );
  mux2X1_1 U0_mux ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(REF_CLK_M)
         );
  mux2X1_4 U1_mux ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_CLK_M) );
  mux2X1_3 U2_mux ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_TX_CLK_M) );
  mux2X1_2 U3_mux ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_RX_CLK_M) );
  mux2X1_0 U4_mux ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(n2), .OUT(RST_M) );
  mux2X1_6 U5_mux ( .IN_0(SYNC_REF_RST), .IN_1(scan_rst), .SEL(n2), .OUT(
        REF_RST_M) );
  mux2X1_5 U6_mux ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(n2), .OUT(
        UART_RST_M) );
  reg_file_WIDTH8_DEPTH16_ADDR4_test_1 U0_RegFile ( .WrData(RF_WrData), 
        .Address({RF_Address[3:2], n6, n5}), .WrEn(RF_WrEn), .RdEn(RF_RdEn), 
        .clk(REF_CLK_M), .rst(n9), .RdData(RF_RdData), .RdData_VLD(
        RF_RdData_VLD), .REG0(Operand_A), .REG1(Operand_B), .REG2(UART_Config), 
        .REG3(DIV_RATIO), .test_si(SYNC_UART_RST), .test_so(n17), .test_se(SE)
         );
  ALU_test_1 U0_ALU ( .A(Operand_A), .B(Operand_B), .ALU_FUN(ALU_FUN), .EN(
        ALU_EN), .clk(ALU_CLK), .rst(n9), .ALU_OUT(ALU_OUT), .OUT_VALID(
        ALU_OUT_VLD), .test_si(SI), .test_se(n31) );
  clk_gating U0_CLK_GATE ( .en(_0_net_), .clk(REF_CLK_M), .gated_clk(ALU_CLK)
         );
  SYS_CTRL_test_1 U0_SYS_CTRL ( .CLK(REF_CLK_M), .RST(n9), .ALU_OUT(ALU_OUT), 
        .OUT_Valid(ALU_OUT_VLD), .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), 
        .RX_P_Data(UART_RX_SYNC), .RX_D_VLD(UART_RX_V_SYNC), .TX_P_Data(
        UART_TX_IN), .TX_D_VLD(UART_TX_VLD), .RdData(RF_RdData), 
        .RdData_Valid(RF_RdData_VLD), .Address(RF_Address), .WrEN(RF_WrEn), 
        .RdEN(RF_RdEn), .WrData(RF_WrData), .FIFO_FULL(FIFO_FULL), .CLK_EN(
        CLKG_EN), .test_si(n17), .test_so(n16), .test_se(n33) );
  ClkDiv_RATIO_WD8_test_0 U0_ClkDiv ( .i_ref_clk(UART_CLK_M), .i_rst(n7), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK), 
        .test_si(ALU_OUT_VLD), .test_so(n19), .test_se(n34) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN({UART_Config[7:4], n3, UART_Config[2]}), 
        .OUT({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  ClkDiv_RATIO_WD8_test_1 U1_ClkDiv ( .i_ref_clk(UART_CLK_M), .i_rst(n9), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        DIV_RATIO_RX[3:0]}), .o_div_clk(UART_RX_CLK), .test_si(n13), .test_so(
        n12), .test_se(n25) );
  UART_TOP_DWIDTH8_test_1 U0_UART ( .RST(n7), .TX_CLK(UART_TX_CLK_M), .RX_CLK(
        UART_RX_CLK_M), .RX_IN_S(UART_RX_IN), .TX_IN_P(UART_TX_SYNC), 
        .TX_IN_V(n1), .Prescale({UART_Config[7:4], n3, UART_Config[2]}), 
        .PAR_EN(UART_Config[0]), .PAR_TYP(UART_Config[1]), .RX_OUT_P(
        UART_RX_OUT), .RX_OUT_V(UART_RX_V_OUT), .TX_OUT_S(SO), .TX_OUT_V(
        UART_TX_Busy), .Parity_Error(parity_error), .Stop_Error(framing_error), 
        .test_si2(SYNC_REF_RST), .test_si1(n16), .test_so1(n15), .test_se(n22)
         );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .clk(UART_TX_CLK_M), .rst(n7), .lvl_sig(
        UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE), .test_si(n19), 
        .test_so(n18), .test_se(n27) );
  RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC ( .RST(RST_M), .CLK(UART_CLK_M), 
        .SYNC_RST(SYNC_UART_RST), .test_si(n18), .test_se(n29) );
  RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC ( .RST(RST_M), .CLK(REF_CLK_M), 
        .SYNC_RST(SYNC_REF_RST), .test_si(n12), .test_se(n25) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_ref_sync ( .unsync_bus(
        UART_RX_OUT), .bus_enable(UART_RX_V_OUT), .CLK(REF_CLK_M), .RST(n9), 
        .sync_bus(UART_RX_SYNC), .enable_pulse(UART_RX_V_SYNC), .test_si(n14), 
        .test_so(n13), .test_se(n27) );
  ASYNC_FIFO_DATA_WIDTH8_test_1 U0_UART_FIFO ( .W_CLK(REF_CLK_M), .W_RST(n9), 
        .W_INC(UART_TX_VLD), .R_CLK(UART_TX_CLK_M), .R_RST(n7), .R_INC(
        UART_TX_Busy_PULSE), .WR_DATA(UART_TX_IN), .FULL(FIFO_FULL), .EMPTY(
        UART_TX_V_SYNC), .RD_DATA(UART_TX_SYNC), .test_si(n15), .test_so(n14), 
        .test_se(SE) );
  BUFX2M U19 ( .A(SO), .Y(UART_TX_O) );
endmodule

