/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 14:25:57 2025
/////////////////////////////////////////////////////////////


module reg_file_WIDTH8_DEPTH16_ADDR4 ( WrData, Address, WrEn, RdEn, clk, rst, 
        RdData, RdData_VLD, REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, clk, rst;
  output RdData_VLD;
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
         \Reg_File[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \Reg_File_reg[5][7]  ( .D(n137), .CK(clk), .RN(n211), .Q(
        \Reg_File[5][7] ) );
  DFFRQX2M \Reg_File_reg[5][6]  ( .D(n136), .CK(clk), .RN(n211), .Q(
        \Reg_File[5][6] ) );
  DFFRQX2M \Reg_File_reg[5][5]  ( .D(n135), .CK(clk), .RN(n211), .Q(
        \Reg_File[5][5] ) );
  DFFRQX2M \Reg_File_reg[5][4]  ( .D(n134), .CK(clk), .RN(n211), .Q(
        \Reg_File[5][4] ) );
  DFFRQX2M \Reg_File_reg[5][3]  ( .D(n133), .CK(clk), .RN(n211), .Q(
        \Reg_File[5][3] ) );
  DFFRQX2M \Reg_File_reg[5][2]  ( .D(n132), .CK(clk), .RN(n211), .Q(
        \Reg_File[5][2] ) );
  DFFRQX2M \Reg_File_reg[5][1]  ( .D(n131), .CK(clk), .RN(n211), .Q(
        \Reg_File[5][1] ) );
  DFFRQX2M \Reg_File_reg[5][0]  ( .D(n130), .CK(clk), .RN(n211), .Q(
        \Reg_File[5][0] ) );
  DFFRQX2M \Reg_File_reg[9][7]  ( .D(n105), .CK(clk), .RN(n209), .Q(
        \Reg_File[9][7] ) );
  DFFRQX2M \Reg_File_reg[9][6]  ( .D(n104), .CK(clk), .RN(n209), .Q(
        \Reg_File[9][6] ) );
  DFFRQX2M \Reg_File_reg[9][5]  ( .D(n103), .CK(clk), .RN(n209), .Q(
        \Reg_File[9][5] ) );
  DFFRQX2M \Reg_File_reg[9][4]  ( .D(n102), .CK(clk), .RN(n209), .Q(
        \Reg_File[9][4] ) );
  DFFRQX2M \Reg_File_reg[9][3]  ( .D(n101), .CK(clk), .RN(n209), .Q(
        \Reg_File[9][3] ) );
  DFFRQX2M \Reg_File_reg[9][2]  ( .D(n100), .CK(clk), .RN(n209), .Q(
        \Reg_File[9][2] ) );
  DFFRQX2M \Reg_File_reg[9][1]  ( .D(n99), .CK(clk), .RN(n209), .Q(
        \Reg_File[9][1] ) );
  DFFRQX2M \Reg_File_reg[9][0]  ( .D(n98), .CK(clk), .RN(n209), .Q(
        \Reg_File[9][0] ) );
  DFFRQX2M \Reg_File_reg[13][7]  ( .D(n73), .CK(clk), .RN(n207), .Q(
        \Reg_File[13][7] ) );
  DFFRQX2M \Reg_File_reg[13][6]  ( .D(n72), .CK(clk), .RN(n207), .Q(
        \Reg_File[13][6] ) );
  DFFRQX2M \Reg_File_reg[13][5]  ( .D(n71), .CK(clk), .RN(n207), .Q(
        \Reg_File[13][5] ) );
  DFFRQX2M \Reg_File_reg[13][4]  ( .D(n70), .CK(clk), .RN(n207), .Q(
        \Reg_File[13][4] ) );
  DFFRQX2M \Reg_File_reg[13][3]  ( .D(n69), .CK(clk), .RN(n207), .Q(
        \Reg_File[13][3] ) );
  DFFRQX2M \Reg_File_reg[13][2]  ( .D(n68), .CK(clk), .RN(n207), .Q(
        \Reg_File[13][2] ) );
  DFFRQX2M \Reg_File_reg[13][1]  ( .D(n67), .CK(clk), .RN(n206), .Q(
        \Reg_File[13][1] ) );
  DFFRQX2M \Reg_File_reg[13][0]  ( .D(n66), .CK(clk), .RN(n206), .Q(
        \Reg_File[13][0] ) );
  DFFRQX2M \Reg_File_reg[7][7]  ( .D(n121), .CK(clk), .RN(n210), .Q(
        \Reg_File[7][7] ) );
  DFFRQX2M \Reg_File_reg[7][6]  ( .D(n120), .CK(clk), .RN(n210), .Q(
        \Reg_File[7][6] ) );
  DFFRQX2M \Reg_File_reg[7][5]  ( .D(n119), .CK(clk), .RN(n210), .Q(
        \Reg_File[7][5] ) );
  DFFRQX2M \Reg_File_reg[7][4]  ( .D(n118), .CK(clk), .RN(n210), .Q(
        \Reg_File[7][4] ) );
  DFFRQX2M \Reg_File_reg[7][3]  ( .D(n117), .CK(clk), .RN(n210), .Q(
        \Reg_File[7][3] ) );
  DFFRQX2M \Reg_File_reg[7][2]  ( .D(n116), .CK(clk), .RN(n210), .Q(
        \Reg_File[7][2] ) );
  DFFRQX2M \Reg_File_reg[7][1]  ( .D(n115), .CK(clk), .RN(n210), .Q(
        \Reg_File[7][1] ) );
  DFFRQX2M \Reg_File_reg[7][0]  ( .D(n114), .CK(clk), .RN(n210), .Q(
        \Reg_File[7][0] ) );
  DFFRQX2M \Reg_File_reg[11][7]  ( .D(n89), .CK(clk), .RN(n208), .Q(
        \Reg_File[11][7] ) );
  DFFRQX2M \Reg_File_reg[11][6]  ( .D(n88), .CK(clk), .RN(n208), .Q(
        \Reg_File[11][6] ) );
  DFFRQX2M \Reg_File_reg[11][5]  ( .D(n87), .CK(clk), .RN(n208), .Q(
        \Reg_File[11][5] ) );
  DFFRQX2M \Reg_File_reg[11][4]  ( .D(n86), .CK(clk), .RN(n208), .Q(
        \Reg_File[11][4] ) );
  DFFRQX2M \Reg_File_reg[11][3]  ( .D(n85), .CK(clk), .RN(n208), .Q(
        \Reg_File[11][3] ) );
  DFFRQX2M \Reg_File_reg[11][2]  ( .D(n84), .CK(clk), .RN(n208), .Q(
        \Reg_File[11][2] ) );
  DFFRQX2M \Reg_File_reg[11][1]  ( .D(n83), .CK(clk), .RN(n208), .Q(
        \Reg_File[11][1] ) );
  DFFRQX2M \Reg_File_reg[11][0]  ( .D(n82), .CK(clk), .RN(n207), .Q(
        \Reg_File[11][0] ) );
  DFFRQX2M \Reg_File_reg[15][7]  ( .D(n57), .CK(clk), .RN(n206), .Q(
        \Reg_File[15][7] ) );
  DFFRQX2M \Reg_File_reg[15][6]  ( .D(n56), .CK(clk), .RN(n206), .Q(
        \Reg_File[15][6] ) );
  DFFRQX2M \Reg_File_reg[15][5]  ( .D(n55), .CK(clk), .RN(n206), .Q(
        \Reg_File[15][5] ) );
  DFFRQX2M \Reg_File_reg[15][4]  ( .D(n54), .CK(clk), .RN(n206), .Q(
        \Reg_File[15][4] ) );
  DFFRQX2M \Reg_File_reg[15][3]  ( .D(n53), .CK(clk), .RN(n205), .Q(
        \Reg_File[15][3] ) );
  DFFRQX2M \Reg_File_reg[15][2]  ( .D(n52), .CK(clk), .RN(n206), .Q(
        \Reg_File[15][2] ) );
  DFFRQX2M \Reg_File_reg[15][1]  ( .D(n51), .CK(clk), .RN(n205), .Q(
        \Reg_File[15][1] ) );
  DFFRQX2M \Reg_File_reg[15][0]  ( .D(n50), .CK(clk), .RN(n205), .Q(
        \Reg_File[15][0] ) );
  DFFRQX2M \Reg_File_reg[6][7]  ( .D(n129), .CK(clk), .RN(n211), .Q(
        \Reg_File[6][7] ) );
  DFFRQX2M \Reg_File_reg[6][6]  ( .D(n128), .CK(clk), .RN(n211), .Q(
        \Reg_File[6][6] ) );
  DFFRQX2M \Reg_File_reg[6][5]  ( .D(n127), .CK(clk), .RN(n211), .Q(
        \Reg_File[6][5] ) );
  DFFRQX2M \Reg_File_reg[6][4]  ( .D(n126), .CK(clk), .RN(n210), .Q(
        \Reg_File[6][4] ) );
  DFFRQX2M \Reg_File_reg[6][3]  ( .D(n125), .CK(clk), .RN(n210), .Q(
        \Reg_File[6][3] ) );
  DFFRQX2M \Reg_File_reg[6][2]  ( .D(n124), .CK(clk), .RN(n210), .Q(
        \Reg_File[6][2] ) );
  DFFRQX2M \Reg_File_reg[6][1]  ( .D(n123), .CK(clk), .RN(n210), .Q(
        \Reg_File[6][1] ) );
  DFFRQX2M \Reg_File_reg[6][0]  ( .D(n122), .CK(clk), .RN(n210), .Q(
        \Reg_File[6][0] ) );
  DFFRQX2M \Reg_File_reg[10][7]  ( .D(n97), .CK(clk), .RN(n208), .Q(
        \Reg_File[10][7] ) );
  DFFRQX2M \Reg_File_reg[10][6]  ( .D(n96), .CK(clk), .RN(n208), .Q(
        \Reg_File[10][6] ) );
  DFFRQX2M \Reg_File_reg[10][5]  ( .D(n95), .CK(clk), .RN(n208), .Q(
        \Reg_File[10][5] ) );
  DFFRQX2M \Reg_File_reg[10][4]  ( .D(n94), .CK(clk), .RN(n208), .Q(
        \Reg_File[10][4] ) );
  DFFRQX2M \Reg_File_reg[10][3]  ( .D(n93), .CK(clk), .RN(n208), .Q(
        \Reg_File[10][3] ) );
  DFFRQX2M \Reg_File_reg[10][2]  ( .D(n92), .CK(clk), .RN(n208), .Q(
        \Reg_File[10][2] ) );
  DFFRQX2M \Reg_File_reg[10][1]  ( .D(n91), .CK(clk), .RN(n208), .Q(
        \Reg_File[10][1] ) );
  DFFRQX2M \Reg_File_reg[10][0]  ( .D(n90), .CK(clk), .RN(n208), .Q(
        \Reg_File[10][0] ) );
  DFFRQX2M \Reg_File_reg[14][7]  ( .D(n65), .CK(clk), .RN(n206), .Q(
        \Reg_File[14][7] ) );
  DFFRQX2M \Reg_File_reg[14][6]  ( .D(n64), .CK(clk), .RN(n206), .Q(
        \Reg_File[14][6] ) );
  DFFRQX2M \Reg_File_reg[14][5]  ( .D(n63), .CK(clk), .RN(n206), .Q(
        \Reg_File[14][5] ) );
  DFFRQX2M \Reg_File_reg[14][4]  ( .D(n62), .CK(clk), .RN(n206), .Q(
        \Reg_File[14][4] ) );
  DFFRQX2M \Reg_File_reg[14][3]  ( .D(n61), .CK(clk), .RN(n206), .Q(
        \Reg_File[14][3] ) );
  DFFRQX2M \Reg_File_reg[14][2]  ( .D(n60), .CK(clk), .RN(n206), .Q(
        \Reg_File[14][2] ) );
  DFFRQX2M \Reg_File_reg[14][1]  ( .D(n59), .CK(clk), .RN(n206), .Q(
        \Reg_File[14][1] ) );
  DFFRQX2M \Reg_File_reg[14][0]  ( .D(n58), .CK(clk), .RN(n206), .Q(
        \Reg_File[14][0] ) );
  DFFRQX2M \Reg_File_reg[4][7]  ( .D(n145), .CK(clk), .RN(n212), .Q(
        \Reg_File[4][7] ) );
  DFFRQX2M \Reg_File_reg[4][6]  ( .D(n144), .CK(clk), .RN(n212), .Q(
        \Reg_File[4][6] ) );
  DFFRQX2M \Reg_File_reg[4][5]  ( .D(n143), .CK(clk), .RN(n212), .Q(
        \Reg_File[4][5] ) );
  DFFRQX2M \Reg_File_reg[4][4]  ( .D(n142), .CK(clk), .RN(n212), .Q(
        \Reg_File[4][4] ) );
  DFFRQX2M \Reg_File_reg[4][3]  ( .D(n141), .CK(clk), .RN(n211), .Q(
        \Reg_File[4][3] ) );
  DFFRQX2M \Reg_File_reg[4][2]  ( .D(n140), .CK(clk), .RN(n211), .Q(
        \Reg_File[4][2] ) );
  DFFRQX2M \Reg_File_reg[4][1]  ( .D(n139), .CK(clk), .RN(n211), .Q(
        \Reg_File[4][1] ) );
  DFFRQX2M \Reg_File_reg[4][0]  ( .D(n138), .CK(clk), .RN(n211), .Q(
        \Reg_File[4][0] ) );
  DFFRQX2M \Reg_File_reg[8][7]  ( .D(n113), .CK(clk), .RN(n210), .Q(
        \Reg_File[8][7] ) );
  DFFRQX2M \Reg_File_reg[8][6]  ( .D(n112), .CK(clk), .RN(n210), .Q(
        \Reg_File[8][6] ) );
  DFFRQX2M \Reg_File_reg[8][5]  ( .D(n111), .CK(clk), .RN(n209), .Q(
        \Reg_File[8][5] ) );
  DFFRQX2M \Reg_File_reg[8][4]  ( .D(n110), .CK(clk), .RN(n209), .Q(
        \Reg_File[8][4] ) );
  DFFRQX2M \Reg_File_reg[8][3]  ( .D(n109), .CK(clk), .RN(n209), .Q(
        \Reg_File[8][3] ) );
  DFFRQX2M \Reg_File_reg[8][2]  ( .D(n108), .CK(clk), .RN(n209), .Q(
        \Reg_File[8][2] ) );
  DFFRQX2M \Reg_File_reg[8][1]  ( .D(n107), .CK(clk), .RN(n209), .Q(
        \Reg_File[8][1] ) );
  DFFRQX2M \Reg_File_reg[8][0]  ( .D(n106), .CK(clk), .RN(n209), .Q(
        \Reg_File[8][0] ) );
  DFFRQX2M \Reg_File_reg[12][7]  ( .D(n81), .CK(clk), .RN(n207), .Q(
        \Reg_File[12][7] ) );
  DFFRQX2M \Reg_File_reg[12][6]  ( .D(n80), .CK(clk), .RN(n207), .Q(
        \Reg_File[12][6] ) );
  DFFRQX2M \Reg_File_reg[12][5]  ( .D(n79), .CK(clk), .RN(n207), .Q(
        \Reg_File[12][5] ) );
  DFFRQX2M \Reg_File_reg[12][4]  ( .D(n78), .CK(clk), .RN(n207), .Q(
        \Reg_File[12][4] ) );
  DFFRQX2M \Reg_File_reg[12][3]  ( .D(n77), .CK(clk), .RN(n207), .Q(
        \Reg_File[12][3] ) );
  DFFRQX2M \Reg_File_reg[12][2]  ( .D(n76), .CK(clk), .RN(n207), .Q(
        \Reg_File[12][2] ) );
  DFFRQX2M \Reg_File_reg[12][1]  ( .D(n75), .CK(clk), .RN(n207), .Q(
        \Reg_File[12][1] ) );
  DFFRQX2M \Reg_File_reg[12][0]  ( .D(n74), .CK(clk), .RN(n207), .Q(
        \Reg_File[12][0] ) );
  DFFRQX2M \Reg_File_reg[3][0]  ( .D(n146), .CK(clk), .RN(n212), .Q(REG3[0])
         );
  DFFRQX2M \Reg_File_reg[3][4]  ( .D(n150), .CK(clk), .RN(n212), .Q(REG3[4])
         );
  DFFRQX2M \Reg_File_reg[3][2]  ( .D(n148), .CK(clk), .RN(n212), .Q(REG3[2])
         );
  DFFRQX2M \Reg_File_reg[3][3]  ( .D(n149), .CK(clk), .RN(n212), .Q(REG3[3])
         );
  DFFRQX2M \Reg_File_reg[3][6]  ( .D(n152), .CK(clk), .RN(n212), .Q(REG3[6])
         );
  DFFRQX2M \Reg_File_reg[3][7]  ( .D(n153), .CK(clk), .RN(n212), .Q(REG3[7])
         );
  DFFSQX2M \Reg_File_reg[3][5]  ( .D(n151), .CK(clk), .SN(n205), .Q(REG3[5])
         );
  DFFRQX2M \Reg_File_reg[2][1]  ( .D(n155), .CK(clk), .RN(n212), .Q(REG2[1])
         );
  DFFRQX2M \RdData_reg[7]  ( .D(n48), .CK(clk), .RN(n205), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n47), .CK(clk), .RN(n205), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n46), .CK(clk), .RN(n205), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n45), .CK(clk), .RN(n205), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n44), .CK(clk), .RN(n205), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n43), .CK(clk), .RN(n205), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n42), .CK(clk), .RN(n205), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n41), .CK(clk), .RN(n209), .Q(RdData[0]) );
  DFFRQX2M \Reg_File_reg[3][1]  ( .D(n147), .CK(clk), .RN(n212), .Q(REG3[1])
         );
  DFFSQX2M \Reg_File_reg[2][0]  ( .D(n154), .CK(clk), .SN(n205), .Q(REG2[0])
         );
  DFFRQX2M RdData_VLD_reg ( .D(n49), .CK(clk), .RN(n205), .Q(RdData_VLD) );
  DFFRQX2M \Reg_File_reg[2][2]  ( .D(n156), .CK(clk), .RN(n212), .Q(REG2[2])
         );
  DFFRQX2M \Reg_File_reg[2][3]  ( .D(n157), .CK(clk), .RN(n212), .Q(REG2[3])
         );
  DFFRQX2M \Reg_File_reg[0][1]  ( .D(n171), .CK(clk), .RN(n213), .Q(REG0[1])
         );
  DFFRQX2M \Reg_File_reg[0][0]  ( .D(n170), .CK(clk), .RN(n213), .Q(REG0[0])
         );
  DFFRQX2M \Reg_File_reg[0][2]  ( .D(n172), .CK(clk), .RN(n213), .Q(REG0[2])
         );
  DFFRQX2M \Reg_File_reg[0][3]  ( .D(n173), .CK(clk), .RN(n213), .Q(REG0[3])
         );
  DFFRQX2M \Reg_File_reg[0][4]  ( .D(n174), .CK(clk), .RN(n213), .Q(REG0[4])
         );
  DFFRQX2M \Reg_File_reg[0][5]  ( .D(n175), .CK(clk), .RN(n214), .Q(REG0[5])
         );
  DFFRQX2M \Reg_File_reg[0][7]  ( .D(n177), .CK(clk), .RN(n205), .Q(REG0[7])
         );
  DFFRQX2M \Reg_File_reg[0][6]  ( .D(n176), .CK(clk), .RN(n214), .Q(REG0[6])
         );
  DFFRQX2M \Reg_File_reg[1][6]  ( .D(n168), .CK(clk), .RN(n213), .Q(REG1[6])
         );
  DFFRQX2M \Reg_File_reg[1][1]  ( .D(n163), .CK(clk), .RN(n213), .Q(REG1[1])
         );
  DFFRQX2M \Reg_File_reg[1][5]  ( .D(n167), .CK(clk), .RN(n213), .Q(REG1[5])
         );
  DFFRQX2M \Reg_File_reg[1][4]  ( .D(n166), .CK(clk), .RN(n213), .Q(REG1[4])
         );
  DFFRQX2M \Reg_File_reg[1][7]  ( .D(n169), .CK(clk), .RN(n213), .Q(REG1[7])
         );
  DFFRQX2M \Reg_File_reg[1][3]  ( .D(n165), .CK(clk), .RN(n213), .Q(REG1[3])
         );
  DFFRQX2M \Reg_File_reg[1][2]  ( .D(n164), .CK(clk), .RN(n213), .Q(REG1[2])
         );
  DFFRQX2M \Reg_File_reg[1][0]  ( .D(n162), .CK(clk), .RN(n213), .Q(REG1[0])
         );
  DFFRQX2M \Reg_File_reg[2][4]  ( .D(n158), .CK(clk), .RN(n212), .Q(REG2[4])
         );
  DFFSQX2M \Reg_File_reg[2][7]  ( .D(n161), .CK(clk), .SN(n205), .Q(REG2[7])
         );
  DFFRQX2M \Reg_File_reg[2][6]  ( .D(n160), .CK(clk), .RN(n213), .Q(REG2[6])
         );
  DFFRQX2M \Reg_File_reg[2][5]  ( .D(n159), .CK(clk), .RN(n213), .Q(REG2[5])
         );
  NOR2BX2M U3 ( .AN(n39), .B(n203), .Y(n31) );
  NOR2BX2M U4 ( .AN(n28), .B(n203), .Y(n17) );
  NOR2X2M U5 ( .A(n229), .B(n204), .Y(n16) );
  NOR2X2M U6 ( .A(n204), .B(N13), .Y(n24) );
  NOR2X2M U7 ( .A(n199), .B(N13), .Y(n27) );
  INVX2M U8 ( .A(n200), .Y(n201) );
  INVX2M U9 ( .A(n198), .Y(n199) );
  NAND2X2M U10 ( .A(n21), .B(n19), .Y(n22) );
  INVX2M U11 ( .A(n200), .Y(n202) );
  BUFX2M U12 ( .A(n203), .Y(n200) );
  NAND2X2M U13 ( .A(n33), .B(n21), .Y(n35) );
  BUFX2M U14 ( .A(n204), .Y(n198) );
  NOR2BX2M U15 ( .AN(n28), .B(N11), .Y(n19) );
  NAND2X2M U16 ( .A(n21), .B(n17), .Y(n20) );
  NAND2X2M U17 ( .A(n24), .B(n17), .Y(n23) );
  NAND2X2M U18 ( .A(n24), .B(n19), .Y(n25) );
  NAND2X2M U19 ( .A(n27), .B(n17), .Y(n26) );
  NAND2X2M U20 ( .A(n27), .B(n19), .Y(n29) );
  NAND2X2M U21 ( .A(n19), .B(n16), .Y(n18) );
  NAND2X2M U22 ( .A(n16), .B(n17), .Y(n15) );
  NOR2BX2M U23 ( .AN(n39), .B(N11), .Y(n33) );
  NOR2X2M U24 ( .A(n229), .B(n199), .Y(n21) );
  NAND2X2M U25 ( .A(n31), .B(n24), .Y(n36) );
  NAND2X2M U26 ( .A(n33), .B(n24), .Y(n37) );
  NAND2X2M U27 ( .A(n31), .B(n27), .Y(n38) );
  NAND2X2M U28 ( .A(n33), .B(n27), .Y(n40) );
  NAND2X2M U29 ( .A(n31), .B(n16), .Y(n30) );
  NAND2X2M U30 ( .A(n33), .B(n16), .Y(n32) );
  NAND2X2M U31 ( .A(n31), .B(n21), .Y(n34) );
  INVX2M U32 ( .A(n13), .Y(n228) );
  AND2X2M U33 ( .A(N14), .B(n14), .Y(n28) );
  NAND2BX2M U34 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  INVX2M U35 ( .A(N13), .Y(n229) );
  NOR2BX2M U36 ( .AN(n14), .B(N14), .Y(n39) );
  NOR2BX2M U37 ( .AN(WrEn), .B(RdEn), .Y(n14) );
  BUFX2M U38 ( .A(n219), .Y(n205) );
  BUFX2M U39 ( .A(n219), .Y(n206) );
  BUFX2M U40 ( .A(n218), .Y(n207) );
  BUFX2M U41 ( .A(n218), .Y(n208) );
  BUFX2M U42 ( .A(n217), .Y(n209) );
  BUFX2M U43 ( .A(n217), .Y(n210) );
  BUFX2M U44 ( .A(n216), .Y(n211) );
  BUFX2M U45 ( .A(n216), .Y(n212) );
  BUFX2M U46 ( .A(n215), .Y(n213) );
  BUFX2M U47 ( .A(n215), .Y(n214) );
  INVX2M U48 ( .A(N11), .Y(n203) );
  INVX2M U49 ( .A(WrData[2]), .Y(n222) );
  INVX2M U50 ( .A(WrData[0]), .Y(n220) );
  INVX2M U51 ( .A(WrData[1]), .Y(n221) );
  INVX2M U52 ( .A(WrData[3]), .Y(n223) );
  INVX2M U53 ( .A(WrData[4]), .Y(n224) );
  INVX2M U54 ( .A(N12), .Y(n204) );
  BUFX2M U55 ( .A(rst), .Y(n218) );
  BUFX2M U56 ( .A(rst), .Y(n217) );
  BUFX2M U57 ( .A(rst), .Y(n216) );
  BUFX2M U58 ( .A(rst), .Y(n215) );
  BUFX2M U59 ( .A(rst), .Y(n219) );
  OAI2BB2X1M U60 ( .B0(n15), .B1(n220), .A0N(\Reg_File[15][0] ), .A1N(n15), 
        .Y(n50) );
  OAI2BB2X1M U61 ( .B0(n15), .B1(n221), .A0N(\Reg_File[15][1] ), .A1N(n15), 
        .Y(n51) );
  OAI2BB2X1M U62 ( .B0(n15), .B1(n222), .A0N(\Reg_File[15][2] ), .A1N(n15), 
        .Y(n52) );
  OAI2BB2X1M U63 ( .B0(n15), .B1(n223), .A0N(\Reg_File[15][3] ), .A1N(n15), 
        .Y(n53) );
  OAI2BB2X1M U64 ( .B0(n15), .B1(n224), .A0N(\Reg_File[15][4] ), .A1N(n15), 
        .Y(n54) );
  OAI2BB2X1M U65 ( .B0(n15), .B1(n225), .A0N(\Reg_File[15][5] ), .A1N(n15), 
        .Y(n55) );
  OAI2BB2X1M U66 ( .B0(n15), .B1(n226), .A0N(\Reg_File[15][6] ), .A1N(n15), 
        .Y(n56) );
  OAI2BB2X1M U67 ( .B0(n15), .B1(n227), .A0N(\Reg_File[15][7] ), .A1N(n15), 
        .Y(n57) );
  OAI2BB2X1M U68 ( .B0(n220), .B1(n18), .A0N(\Reg_File[14][0] ), .A1N(n18), 
        .Y(n58) );
  OAI2BB2X1M U69 ( .B0(n221), .B1(n18), .A0N(\Reg_File[14][1] ), .A1N(n18), 
        .Y(n59) );
  OAI2BB2X1M U70 ( .B0(n222), .B1(n18), .A0N(\Reg_File[14][2] ), .A1N(n18), 
        .Y(n60) );
  OAI2BB2X1M U71 ( .B0(n223), .B1(n18), .A0N(\Reg_File[14][3] ), .A1N(n18), 
        .Y(n61) );
  OAI2BB2X1M U72 ( .B0(n224), .B1(n18), .A0N(\Reg_File[14][4] ), .A1N(n18), 
        .Y(n62) );
  OAI2BB2X1M U73 ( .B0(n225), .B1(n18), .A0N(\Reg_File[14][5] ), .A1N(n18), 
        .Y(n63) );
  OAI2BB2X1M U74 ( .B0(n226), .B1(n18), .A0N(\Reg_File[14][6] ), .A1N(n18), 
        .Y(n64) );
  OAI2BB2X1M U75 ( .B0(n227), .B1(n18), .A0N(\Reg_File[14][7] ), .A1N(n18), 
        .Y(n65) );
  OAI2BB2X1M U76 ( .B0(n220), .B1(n23), .A0N(\Reg_File[11][0] ), .A1N(n23), 
        .Y(n82) );
  OAI2BB2X1M U77 ( .B0(n221), .B1(n23), .A0N(\Reg_File[11][1] ), .A1N(n23), 
        .Y(n83) );
  OAI2BB2X1M U78 ( .B0(n222), .B1(n23), .A0N(\Reg_File[11][2] ), .A1N(n23), 
        .Y(n84) );
  OAI2BB2X1M U79 ( .B0(n223), .B1(n23), .A0N(\Reg_File[11][3] ), .A1N(n23), 
        .Y(n85) );
  OAI2BB2X1M U80 ( .B0(n224), .B1(n23), .A0N(\Reg_File[11][4] ), .A1N(n23), 
        .Y(n86) );
  OAI2BB2X1M U81 ( .B0(n225), .B1(n23), .A0N(\Reg_File[11][5] ), .A1N(n23), 
        .Y(n87) );
  OAI2BB2X1M U82 ( .B0(n226), .B1(n23), .A0N(\Reg_File[11][6] ), .A1N(n23), 
        .Y(n88) );
  OAI2BB2X1M U83 ( .B0(n227), .B1(n23), .A0N(\Reg_File[11][7] ), .A1N(n23), 
        .Y(n89) );
  OAI2BB2X1M U84 ( .B0(n220), .B1(n25), .A0N(\Reg_File[10][0] ), .A1N(n25), 
        .Y(n90) );
  OAI2BB2X1M U85 ( .B0(n221), .B1(n25), .A0N(\Reg_File[10][1] ), .A1N(n25), 
        .Y(n91) );
  OAI2BB2X1M U86 ( .B0(n222), .B1(n25), .A0N(\Reg_File[10][2] ), .A1N(n25), 
        .Y(n92) );
  OAI2BB2X1M U87 ( .B0(n223), .B1(n25), .A0N(\Reg_File[10][3] ), .A1N(n25), 
        .Y(n93) );
  OAI2BB2X1M U88 ( .B0(n224), .B1(n25), .A0N(\Reg_File[10][4] ), .A1N(n25), 
        .Y(n94) );
  OAI2BB2X1M U89 ( .B0(n225), .B1(n25), .A0N(\Reg_File[10][5] ), .A1N(n25), 
        .Y(n95) );
  OAI2BB2X1M U90 ( .B0(n226), .B1(n25), .A0N(\Reg_File[10][6] ), .A1N(n25), 
        .Y(n96) );
  OAI2BB2X1M U91 ( .B0(n227), .B1(n25), .A0N(\Reg_File[10][7] ), .A1N(n25), 
        .Y(n97) );
  OAI2BB2X1M U92 ( .B0(n220), .B1(n26), .A0N(\Reg_File[9][0] ), .A1N(n26), .Y(
        n98) );
  OAI2BB2X1M U93 ( .B0(n221), .B1(n26), .A0N(\Reg_File[9][1] ), .A1N(n26), .Y(
        n99) );
  OAI2BB2X1M U94 ( .B0(n222), .B1(n26), .A0N(\Reg_File[9][2] ), .A1N(n26), .Y(
        n100) );
  OAI2BB2X1M U95 ( .B0(n223), .B1(n26), .A0N(\Reg_File[9][3] ), .A1N(n26), .Y(
        n101) );
  OAI2BB2X1M U96 ( .B0(n224), .B1(n26), .A0N(\Reg_File[9][4] ), .A1N(n26), .Y(
        n102) );
  OAI2BB2X1M U97 ( .B0(n225), .B1(n26), .A0N(\Reg_File[9][5] ), .A1N(n26), .Y(
        n103) );
  OAI2BB2X1M U98 ( .B0(n226), .B1(n26), .A0N(\Reg_File[9][6] ), .A1N(n26), .Y(
        n104) );
  OAI2BB2X1M U99 ( .B0(n227), .B1(n26), .A0N(\Reg_File[9][7] ), .A1N(n26), .Y(
        n105) );
  OAI2BB2X1M U100 ( .B0(n220), .B1(n29), .A0N(\Reg_File[8][0] ), .A1N(n29), 
        .Y(n106) );
  OAI2BB2X1M U101 ( .B0(n221), .B1(n29), .A0N(\Reg_File[8][1] ), .A1N(n29), 
        .Y(n107) );
  OAI2BB2X1M U102 ( .B0(n222), .B1(n29), .A0N(\Reg_File[8][2] ), .A1N(n29), 
        .Y(n108) );
  OAI2BB2X1M U103 ( .B0(n223), .B1(n29), .A0N(\Reg_File[8][3] ), .A1N(n29), 
        .Y(n109) );
  OAI2BB2X1M U104 ( .B0(n224), .B1(n29), .A0N(\Reg_File[8][4] ), .A1N(n29), 
        .Y(n110) );
  OAI2BB2X1M U105 ( .B0(n225), .B1(n29), .A0N(\Reg_File[8][5] ), .A1N(n29), 
        .Y(n111) );
  OAI2BB2X1M U106 ( .B0(n226), .B1(n29), .A0N(\Reg_File[8][6] ), .A1N(n29), 
        .Y(n112) );
  OAI2BB2X1M U107 ( .B0(n227), .B1(n29), .A0N(\Reg_File[8][7] ), .A1N(n29), 
        .Y(n113) );
  OAI2BB2X1M U108 ( .B0(n220), .B1(n20), .A0N(\Reg_File[13][0] ), .A1N(n20), 
        .Y(n66) );
  OAI2BB2X1M U109 ( .B0(n221), .B1(n20), .A0N(\Reg_File[13][1] ), .A1N(n20), 
        .Y(n67) );
  OAI2BB2X1M U110 ( .B0(n222), .B1(n20), .A0N(\Reg_File[13][2] ), .A1N(n20), 
        .Y(n68) );
  OAI2BB2X1M U111 ( .B0(n223), .B1(n20), .A0N(\Reg_File[13][3] ), .A1N(n20), 
        .Y(n69) );
  OAI2BB2X1M U112 ( .B0(n224), .B1(n20), .A0N(\Reg_File[13][4] ), .A1N(n20), 
        .Y(n70) );
  OAI2BB2X1M U113 ( .B0(n225), .B1(n20), .A0N(\Reg_File[13][5] ), .A1N(n20), 
        .Y(n71) );
  OAI2BB2X1M U114 ( .B0(n226), .B1(n20), .A0N(\Reg_File[13][6] ), .A1N(n20), 
        .Y(n72) );
  OAI2BB2X1M U115 ( .B0(n227), .B1(n20), .A0N(\Reg_File[13][7] ), .A1N(n20), 
        .Y(n73) );
  OAI2BB2X1M U116 ( .B0(n220), .B1(n22), .A0N(\Reg_File[12][0] ), .A1N(n22), 
        .Y(n74) );
  OAI2BB2X1M U117 ( .B0(n221), .B1(n22), .A0N(\Reg_File[12][1] ), .A1N(n22), 
        .Y(n75) );
  OAI2BB2X1M U118 ( .B0(n222), .B1(n22), .A0N(\Reg_File[12][2] ), .A1N(n22), 
        .Y(n76) );
  OAI2BB2X1M U119 ( .B0(n223), .B1(n22), .A0N(\Reg_File[12][3] ), .A1N(n22), 
        .Y(n77) );
  OAI2BB2X1M U120 ( .B0(n224), .B1(n22), .A0N(\Reg_File[12][4] ), .A1N(n22), 
        .Y(n78) );
  OAI2BB2X1M U121 ( .B0(n225), .B1(n22), .A0N(\Reg_File[12][5] ), .A1N(n22), 
        .Y(n79) );
  OAI2BB2X1M U122 ( .B0(n226), .B1(n22), .A0N(\Reg_File[12][6] ), .A1N(n22), 
        .Y(n80) );
  OAI2BB2X1M U123 ( .B0(n227), .B1(n22), .A0N(\Reg_File[12][7] ), .A1N(n22), 
        .Y(n81) );
  AO22X1M U124 ( .A0(N43), .A1(n228), .B0(RdData[0]), .B1(n13), .Y(n41) );
  MX4X1M U125 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U126 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n199), .Y(n4) );
  MX4X1M U127 ( .A(\Reg_File[8][0] ), .B(\Reg_File[9][0] ), .C(
        \Reg_File[10][0] ), .D(\Reg_File[11][0] ), .S0(N11), .S1(n199), .Y(n2)
         );
  AO22X1M U128 ( .A0(N42), .A1(n228), .B0(RdData[1]), .B1(n13), .Y(n42) );
  MX4X1M U129 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U130 ( .A(\Reg_File[8][1] ), .B(\Reg_File[9][1] ), .C(
        \Reg_File[10][1] ), .D(\Reg_File[11][1] ), .S0(N11), .S1(n199), .Y(n6)
         );
  MX4X1M U131 ( .A(\Reg_File[12][1] ), .B(\Reg_File[13][1] ), .C(
        \Reg_File[14][1] ), .D(\Reg_File[15][1] ), .S0(n201), .S1(n199), .Y(n5) );
  AO22X1M U132 ( .A0(N41), .A1(n228), .B0(RdData[2]), .B1(n13), .Y(n43) );
  MX4X1M U133 ( .A(n12), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U134 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n201), 
        .S1(N12), .Y(n12) );
  MX4X1M U135 ( .A(\Reg_File[8][2] ), .B(\Reg_File[9][2] ), .C(
        \Reg_File[10][2] ), .D(\Reg_File[11][2] ), .S0(n201), .S1(N12), .Y(n10) );
  AO22X1M U136 ( .A0(N40), .A1(n228), .B0(RdData[3]), .B1(n13), .Y(n44) );
  MX4X1M U137 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U138 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n201), 
        .S1(N12), .Y(n181) );
  MX4X1M U139 ( .A(\Reg_File[8][3] ), .B(\Reg_File[9][3] ), .C(
        \Reg_File[10][3] ), .D(\Reg_File[11][3] ), .S0(n201), .S1(N12), .Y(
        n179) );
  AO22X1M U140 ( .A0(N39), .A1(n228), .B0(RdData[4]), .B1(n13), .Y(n45) );
  MX4X1M U141 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U142 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n202), 
        .S1(N12), .Y(n185) );
  MX4X1M U143 ( .A(\Reg_File[8][4] ), .B(\Reg_File[9][4] ), .C(
        \Reg_File[10][4] ), .D(\Reg_File[11][4] ), .S0(n201), .S1(N12), .Y(
        n183) );
  AO22X1M U144 ( .A0(N38), .A1(n228), .B0(RdData[5]), .B1(n13), .Y(n46) );
  MX4X1M U145 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U146 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n202), 
        .S1(N12), .Y(n189) );
  MX4X1M U147 ( .A(\Reg_File[8][5] ), .B(\Reg_File[9][5] ), .C(
        \Reg_File[10][5] ), .D(\Reg_File[11][5] ), .S0(n202), .S1(N12), .Y(
        n187) );
  AO22X1M U148 ( .A0(N37), .A1(n228), .B0(RdData[6]), .B1(n13), .Y(n47) );
  MX4X1M U149 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U150 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n202), 
        .S1(N12), .Y(n193) );
  MX4X1M U151 ( .A(\Reg_File[8][6] ), .B(\Reg_File[9][6] ), .C(
        \Reg_File[10][6] ), .D(\Reg_File[11][6] ), .S0(n202), .S1(N12), .Y(
        n191) );
  AO22X1M U152 ( .A0(N36), .A1(n228), .B0(RdData[7]), .B1(n13), .Y(n48) );
  MX4X1M U153 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U154 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n202), 
        .S1(N12), .Y(n197) );
  MX4X1M U155 ( .A(\Reg_File[8][7] ), .B(\Reg_File[9][7] ), .C(
        \Reg_File[10][7] ), .D(\Reg_File[11][7] ), .S0(n202), .S1(N12), .Y(
        n195) );
  MX4X1M U156 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n201), 
        .S1(n199), .Y(n8) );
  MX4X1M U157 ( .A(\Reg_File[4][0] ), .B(\Reg_File[5][0] ), .C(
        \Reg_File[6][0] ), .D(\Reg_File[7][0] ), .S0(N11), .S1(n199), .Y(n3)
         );
  MX4X1M U158 ( .A(\Reg_File[4][1] ), .B(\Reg_File[5][1] ), .C(
        \Reg_File[6][1] ), .D(\Reg_File[7][1] ), .S0(n201), .S1(n199), .Y(n7)
         );
  MX4X1M U159 ( .A(\Reg_File[4][2] ), .B(\Reg_File[5][2] ), .C(
        \Reg_File[6][2] ), .D(\Reg_File[7][2] ), .S0(n201), .S1(N12), .Y(n11)
         );
  MX4X1M U160 ( .A(\Reg_File[4][3] ), .B(\Reg_File[5][3] ), .C(
        \Reg_File[6][3] ), .D(\Reg_File[7][3] ), .S0(n201), .S1(N12), .Y(n180)
         );
  MX4X1M U161 ( .A(\Reg_File[4][4] ), .B(\Reg_File[5][4] ), .C(
        \Reg_File[6][4] ), .D(\Reg_File[7][4] ), .S0(n201), .S1(N12), .Y(n184)
         );
  MX4X1M U162 ( .A(\Reg_File[4][5] ), .B(\Reg_File[5][5] ), .C(
        \Reg_File[6][5] ), .D(\Reg_File[7][5] ), .S0(n202), .S1(N12), .Y(n188)
         );
  MX4X1M U163 ( .A(\Reg_File[4][6] ), .B(\Reg_File[5][6] ), .C(
        \Reg_File[6][6] ), .D(\Reg_File[7][6] ), .S0(n202), .S1(N12), .Y(n192)
         );
  MX4X1M U164 ( .A(\Reg_File[4][7] ), .B(\Reg_File[5][7] ), .C(
        \Reg_File[6][7] ), .D(\Reg_File[7][7] ), .S0(n202), .S1(N12), .Y(n196)
         );
  MX4X1M U165 ( .A(\Reg_File[12][0] ), .B(\Reg_File[13][0] ), .C(
        \Reg_File[14][0] ), .D(\Reg_File[15][0] ), .S0(n202), .S1(n199), .Y(n1) );
  MX4X1M U166 ( .A(\Reg_File[12][2] ), .B(\Reg_File[13][2] ), .C(
        \Reg_File[14][2] ), .D(\Reg_File[15][2] ), .S0(n201), .S1(n199), .Y(n9) );
  MX4X1M U167 ( .A(\Reg_File[12][3] ), .B(\Reg_File[13][3] ), .C(
        \Reg_File[14][3] ), .D(\Reg_File[15][3] ), .S0(n201), .S1(n199), .Y(
        n178) );
  MX4X1M U168 ( .A(\Reg_File[12][4] ), .B(\Reg_File[13][4] ), .C(
        \Reg_File[14][4] ), .D(\Reg_File[15][4] ), .S0(n201), .S1(N12), .Y(
        n182) );
  MX4X1M U169 ( .A(\Reg_File[12][5] ), .B(\Reg_File[13][5] ), .C(
        \Reg_File[14][5] ), .D(\Reg_File[15][5] ), .S0(n202), .S1(n199), .Y(
        n186) );
  MX4X1M U170 ( .A(\Reg_File[12][6] ), .B(\Reg_File[13][6] ), .C(
        \Reg_File[14][6] ), .D(\Reg_File[15][6] ), .S0(n202), .S1(n199), .Y(
        n190) );
  MX4X1M U171 ( .A(\Reg_File[12][7] ), .B(\Reg_File[13][7] ), .C(
        \Reg_File[14][7] ), .D(\Reg_File[15][7] ), .S0(n202), .S1(n199), .Y(
        n194) );
  INVX2M U172 ( .A(WrData[5]), .Y(n225) );
  INVX2M U173 ( .A(WrData[6]), .Y(n226) );
  INVX2M U174 ( .A(WrData[7]), .Y(n227) );
  OAI2BB2X1M U175 ( .B0(n220), .B1(n30), .A0N(\Reg_File[7][0] ), .A1N(n30), 
        .Y(n114) );
  OAI2BB2X1M U176 ( .B0(n221), .B1(n30), .A0N(\Reg_File[7][1] ), .A1N(n30), 
        .Y(n115) );
  OAI2BB2X1M U177 ( .B0(n222), .B1(n30), .A0N(\Reg_File[7][2] ), .A1N(n30), 
        .Y(n116) );
  OAI2BB2X1M U178 ( .B0(n223), .B1(n30), .A0N(\Reg_File[7][3] ), .A1N(n30), 
        .Y(n117) );
  OAI2BB2X1M U179 ( .B0(n224), .B1(n30), .A0N(\Reg_File[7][4] ), .A1N(n30), 
        .Y(n118) );
  OAI2BB2X1M U180 ( .B0(n225), .B1(n30), .A0N(\Reg_File[7][5] ), .A1N(n30), 
        .Y(n119) );
  OAI2BB2X1M U181 ( .B0(n226), .B1(n30), .A0N(\Reg_File[7][6] ), .A1N(n30), 
        .Y(n120) );
  OAI2BB2X1M U182 ( .B0(n227), .B1(n30), .A0N(\Reg_File[7][7] ), .A1N(n30), 
        .Y(n121) );
  OAI2BB2X1M U183 ( .B0(n220), .B1(n32), .A0N(\Reg_File[6][0] ), .A1N(n32), 
        .Y(n122) );
  OAI2BB2X1M U184 ( .B0(n221), .B1(n32), .A0N(\Reg_File[6][1] ), .A1N(n32), 
        .Y(n123) );
  OAI2BB2X1M U185 ( .B0(n222), .B1(n32), .A0N(\Reg_File[6][2] ), .A1N(n32), 
        .Y(n124) );
  OAI2BB2X1M U186 ( .B0(n223), .B1(n32), .A0N(\Reg_File[6][3] ), .A1N(n32), 
        .Y(n125) );
  OAI2BB2X1M U187 ( .B0(n224), .B1(n32), .A0N(\Reg_File[6][4] ), .A1N(n32), 
        .Y(n126) );
  OAI2BB2X1M U188 ( .B0(n225), .B1(n32), .A0N(\Reg_File[6][5] ), .A1N(n32), 
        .Y(n127) );
  OAI2BB2X1M U189 ( .B0(n226), .B1(n32), .A0N(\Reg_File[6][6] ), .A1N(n32), 
        .Y(n128) );
  OAI2BB2X1M U190 ( .B0(n227), .B1(n32), .A0N(\Reg_File[6][7] ), .A1N(n32), 
        .Y(n129) );
  OAI2BB2X1M U191 ( .B0(n220), .B1(n34), .A0N(\Reg_File[5][0] ), .A1N(n34), 
        .Y(n130) );
  OAI2BB2X1M U192 ( .B0(n221), .B1(n34), .A0N(\Reg_File[5][1] ), .A1N(n34), 
        .Y(n131) );
  OAI2BB2X1M U193 ( .B0(n222), .B1(n34), .A0N(\Reg_File[5][2] ), .A1N(n34), 
        .Y(n132) );
  OAI2BB2X1M U194 ( .B0(n223), .B1(n34), .A0N(\Reg_File[5][3] ), .A1N(n34), 
        .Y(n133) );
  OAI2BB2X1M U195 ( .B0(n224), .B1(n34), .A0N(\Reg_File[5][4] ), .A1N(n34), 
        .Y(n134) );
  OAI2BB2X1M U196 ( .B0(n225), .B1(n34), .A0N(\Reg_File[5][5] ), .A1N(n34), 
        .Y(n135) );
  OAI2BB2X1M U197 ( .B0(n226), .B1(n34), .A0N(\Reg_File[5][6] ), .A1N(n34), 
        .Y(n136) );
  OAI2BB2X1M U198 ( .B0(n227), .B1(n34), .A0N(\Reg_File[5][7] ), .A1N(n34), 
        .Y(n137) );
  OAI2BB2X1M U199 ( .B0(n220), .B1(n35), .A0N(\Reg_File[4][0] ), .A1N(n35), 
        .Y(n138) );
  OAI2BB2X1M U200 ( .B0(n221), .B1(n35), .A0N(\Reg_File[4][1] ), .A1N(n35), 
        .Y(n139) );
  OAI2BB2X1M U201 ( .B0(n222), .B1(n35), .A0N(\Reg_File[4][2] ), .A1N(n35), 
        .Y(n140) );
  OAI2BB2X1M U202 ( .B0(n223), .B1(n35), .A0N(\Reg_File[4][3] ), .A1N(n35), 
        .Y(n141) );
  OAI2BB2X1M U203 ( .B0(n224), .B1(n35), .A0N(\Reg_File[4][4] ), .A1N(n35), 
        .Y(n142) );
  OAI2BB2X1M U204 ( .B0(n225), .B1(n35), .A0N(\Reg_File[4][5] ), .A1N(n35), 
        .Y(n143) );
  OAI2BB2X1M U205 ( .B0(n226), .B1(n35), .A0N(\Reg_File[4][6] ), .A1N(n35), 
        .Y(n144) );
  OAI2BB2X1M U206 ( .B0(n227), .B1(n35), .A0N(\Reg_File[4][7] ), .A1N(n35), 
        .Y(n145) );
  OAI2BB2X1M U207 ( .B0(n220), .B1(n36), .A0N(REG3[0]), .A1N(n36), .Y(n146) );
  OAI2BB2X1M U208 ( .B0(n221), .B1(n36), .A0N(REG3[1]), .A1N(n36), .Y(n147) );
  OAI2BB2X1M U209 ( .B0(n222), .B1(n36), .A0N(REG3[2]), .A1N(n36), .Y(n148) );
  OAI2BB2X1M U210 ( .B0(n223), .B1(n36), .A0N(REG3[3]), .A1N(n36), .Y(n149) );
  OAI2BB2X1M U211 ( .B0(n224), .B1(n36), .A0N(REG3[4]), .A1N(n36), .Y(n150) );
  OAI2BB2X1M U212 ( .B0(n226), .B1(n36), .A0N(REG3[6]), .A1N(n36), .Y(n152) );
  OAI2BB2X1M U213 ( .B0(n227), .B1(n36), .A0N(REG3[7]), .A1N(n36), .Y(n153) );
  OAI2BB2X1M U214 ( .B0(n221), .B1(n37), .A0N(REG2[1]), .A1N(n37), .Y(n155) );
  OAI2BB2X1M U215 ( .B0(n222), .B1(n37), .A0N(REG2[2]), .A1N(n37), .Y(n156) );
  OAI2BB2X1M U216 ( .B0(n223), .B1(n37), .A0N(REG2[3]), .A1N(n37), .Y(n157) );
  OAI2BB2X1M U217 ( .B0(n224), .B1(n37), .A0N(REG2[4]), .A1N(n37), .Y(n158) );
  OAI2BB2X1M U218 ( .B0(n225), .B1(n37), .A0N(REG2[5]), .A1N(n37), .Y(n159) );
  OAI2BB2X1M U219 ( .B0(n226), .B1(n37), .A0N(REG2[6]), .A1N(n37), .Y(n160) );
  OAI2BB2X1M U220 ( .B0(n220), .B1(n38), .A0N(REG1[0]), .A1N(n38), .Y(n162) );
  OAI2BB2X1M U221 ( .B0(n221), .B1(n38), .A0N(REG1[1]), .A1N(n38), .Y(n163) );
  OAI2BB2X1M U222 ( .B0(n222), .B1(n38), .A0N(REG1[2]), .A1N(n38), .Y(n164) );
  OAI2BB2X1M U223 ( .B0(n223), .B1(n38), .A0N(REG1[3]), .A1N(n38), .Y(n165) );
  OAI2BB2X1M U224 ( .B0(n224), .B1(n38), .A0N(REG1[4]), .A1N(n38), .Y(n166) );
  OAI2BB2X1M U225 ( .B0(n225), .B1(n38), .A0N(REG1[5]), .A1N(n38), .Y(n167) );
  OAI2BB2X1M U226 ( .B0(n226), .B1(n38), .A0N(REG1[6]), .A1N(n38), .Y(n168) );
  OAI2BB2X1M U227 ( .B0(n227), .B1(n38), .A0N(REG1[7]), .A1N(n38), .Y(n169) );
  OAI2BB2X1M U228 ( .B0(n220), .B1(n40), .A0N(REG0[0]), .A1N(n40), .Y(n170) );
  OAI2BB2X1M U229 ( .B0(n221), .B1(n40), .A0N(REG0[1]), .A1N(n40), .Y(n171) );
  OAI2BB2X1M U230 ( .B0(n222), .B1(n40), .A0N(REG0[2]), .A1N(n40), .Y(n172) );
  OAI2BB2X1M U231 ( .B0(n223), .B1(n40), .A0N(REG0[3]), .A1N(n40), .Y(n173) );
  OAI2BB2X1M U232 ( .B0(n224), .B1(n40), .A0N(REG0[4]), .A1N(n40), .Y(n174) );
  OAI2BB2X1M U233 ( .B0(n225), .B1(n40), .A0N(REG0[5]), .A1N(n40), .Y(n175) );
  OAI2BB2X1M U234 ( .B0(n226), .B1(n40), .A0N(REG0[6]), .A1N(n40), .Y(n176) );
  OAI2BB2X1M U235 ( .B0(n227), .B1(n40), .A0N(REG0[7]), .A1N(n40), .Y(n177) );
  OAI2BB2X1M U236 ( .B0(n225), .B1(n36), .A0N(REG3[5]), .A1N(n36), .Y(n151) );
  OAI2BB2X1M U237 ( .B0(n220), .B1(n37), .A0N(REG2[0]), .A1N(n37), .Y(n154) );
  OAI2BB2X1M U238 ( .B0(n227), .B1(n37), .A0N(REG2[7]), .A1N(n37), .Y(n161) );
  OAI2BB1X2M U239 ( .A0N(RdData_VLD), .A1N(n14), .B0(n13), .Y(n49) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  XNOR2X2M U26 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n13, n15, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U32 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  INVX2M U36 ( .A(A[1]), .Y(n30) );
  INVX2M U37 ( .A(A[0]), .Y(n31) );
  INVX2M U38 ( .A(B[6]), .Y(n33) );
  XNOR2X2M U39 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U40 ( .A(A[3]), .Y(n28) );
  INVX2M U41 ( .A(A[2]), .Y(n29) );
  INVX2M U42 ( .A(A[4]), .Y(n27) );
  INVX2M U43 ( .A(A[7]), .Y(n24) );
  INVX2M U44 ( .A(A[6]), .Y(n25) );
  INVX2M U45 ( .A(A[5]), .Y(n26) );
  INVX2M U46 ( .A(B[3]), .Y(n36) );
  INVX2M U47 ( .A(B[7]), .Y(n32) );
  INVX2M U48 ( .A(B[4]), .Y(n35) );
  INVX2M U49 ( .A(B[5]), .Y(n34) );
  INVX2M U50 ( .A(B[0]), .Y(n39) );
  INVX2M U51 ( .A(B[2]), .Y(n37) );
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
endmodule


module ALU ( A, B, ALU_FUN, EN, clk, rst, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, clk, rst;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [15:0] out_alu_comb;

  ALU_DW_div_uns_0 div_51 ( .a({n12, n11, n10, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_DW01_sub_0 sub_43 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_39 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_47 ( .A({n12, n11, n10, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(out_alu_comb[7]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(out_alu_comb[6]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(out_alu_comb[5]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(out_alu_comb[4]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(out_alu_comb[3]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(out_alu_comb[2]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(out_alu_comb[1]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(out_alu_comb[0]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[0]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(out_alu_comb[15]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(out_alu_comb[14]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(out_alu_comb[13]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(out_alu_comb[12]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(out_alu_comb[11]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(out_alu_comb[10]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(out_alu_comb[9]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(out_alu_comb[8]), .CK(clk), .RN(rst), .Q(
        ALU_OUT[8]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(clk), .RN(rst), .Q(OUT_VALID) );
  BUFX2M U3 ( .A(A[6]), .Y(n11) );
  OAI2BB1X2M U4 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(out_alu_comb[15]) );
  OAI2BB1X2M U7 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(out_alu_comb[12]) );
  OAI2BB1X2M U8 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(out_alu_comb[13]) );
  OAI2BB1X2M U9 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(out_alu_comb[14]) );
  OAI2BB1X2M U10 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(out_alu_comb[9]) );
  OAI2BB1X2M U11 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(out_alu_comb[10]) );
  OAI2BB1X2M U12 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(out_alu_comb[11]) );
  OAI2BB1X2M U13 ( .A0N(n128), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U14 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  AND2X2M U15 ( .A(n99), .B(n105), .Y(n42) );
  AND2X2M U16 ( .A(n106), .B(n105), .Y(n50) );
  INVX2M U17 ( .A(n100), .Y(n125) );
  BUFX2M U18 ( .A(n41), .Y(n13) );
  NOR2X2M U19 ( .A(n107), .B(n125), .Y(n41) );
  INVX2M U20 ( .A(n107), .Y(n128) );
  NOR2BX2M U21 ( .AN(n106), .B(n125), .Y(n37) );
  NOR2BX2M U22 ( .AN(n35), .B(n129), .Y(n31) );
  INVX2M U23 ( .A(n91), .Y(n126) );
  NOR3BX2M U24 ( .AN(n105), .B(n127), .C(ALU_FUN[2]), .Y(n49) );
  NOR2X2M U25 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  NAND2X2M U26 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U27 ( .A(ALU_FUN[0]), .Y(n124) );
  AND3X2M U28 ( .A(n106), .B(n124), .C(n3), .Y(n46) );
  NAND2X2M U29 ( .A(EN), .B(n123), .Y(n32) );
  INVX2M U30 ( .A(ALU_FUN[1]), .Y(n127) );
  NOR2X2M U31 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  NOR2X2M U32 ( .A(n124), .B(n3), .Y(n105) );
  NAND3X2M U33 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  AND2X2M U34 ( .A(ALU_FUN[2]), .B(n127), .Y(n99) );
  AND4X2M U35 ( .A(N159), .B(n99), .C(n3), .D(n124), .Y(n90) );
  NOR3X2M U36 ( .A(n125), .B(ALU_FUN[2]), .C(n127), .Y(n35) );
  NAND3X2M U37 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  NAND3X2M U38 ( .A(n128), .B(n124), .C(n3), .Y(n36) );
  INVX2M U39 ( .A(EN), .Y(n129) );
  AOI31X2M U40 ( .A0(n93), .A1(n94), .A2(n95), .B0(n129), .Y(out_alu_comb[0])
         );
  AOI22X1M U41 ( .A0(N100), .A1(n50), .B0(N91), .B1(n37), .Y(n93) );
  AOI211X2M U42 ( .A0(n13), .A1(n137), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U43 ( .A0(N109), .A1(n35), .B0(n5), .B1(n42), .C0(N125), .C1(n49), 
        .Y(n94) );
  AOI31X2M U44 ( .A0(n81), .A1(n82), .A2(n83), .B0(n129), .Y(out_alu_comb[1])
         );
  AOI222X1M U45 ( .A0(N92), .A1(n37), .B0(N110), .B1(n35), .C0(N101), .C1(n50), 
        .Y(n81) );
  AOI211X2M U46 ( .A0(n7), .A1(n126), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U47 ( .A0(N126), .A1(n49), .B0(n13), .B1(n136), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U48 ( .A0(n75), .A1(n76), .A2(n77), .B0(n129), .Y(out_alu_comb[2])
         );
  AOI22X1M U49 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n75) );
  AOI221XLM U50 ( .A0(n8), .A1(n126), .B0(n13), .B1(n135), .C0(n78), .Y(n77)
         );
  AOI222X1M U51 ( .A0(N111), .A1(n35), .B0(n7), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n76) );
  AOI31X2M U52 ( .A0(n69), .A1(n70), .A2(n71), .B0(n129), .Y(out_alu_comb[3])
         );
  AOI22X1M U53 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n69) );
  AOI221XLM U54 ( .A0(n9), .A1(n126), .B0(n13), .B1(n134), .C0(n72), .Y(n71)
         );
  AOI222X1M U55 ( .A0(N112), .A1(n35), .B0(n8), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n70) );
  AOI31X2M U56 ( .A0(n63), .A1(n64), .A2(n65), .B0(n129), .Y(out_alu_comb[4])
         );
  AOI22X1M U57 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n63) );
  AOI221XLM U58 ( .A0(n126), .A1(n10), .B0(n13), .B1(n133), .C0(n66), .Y(n65)
         );
  AOI222X1M U59 ( .A0(N113), .A1(n35), .B0(n9), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n64) );
  AOI31X2M U60 ( .A0(n57), .A1(n58), .A2(n59), .B0(n129), .Y(out_alu_comb[5])
         );
  AOI22X1M U61 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n57) );
  AOI221XLM U62 ( .A0(n126), .A1(n11), .B0(n13), .B1(n132), .C0(n60), .Y(n59)
         );
  AOI222X1M U63 ( .A0(N114), .A1(n35), .B0(n10), .B1(n42), .C0(N130), .C1(n49), 
        .Y(n58) );
  AOI31X2M U64 ( .A0(n51), .A1(n52), .A2(n53), .B0(n129), .Y(out_alu_comb[6])
         );
  AOI22X1M U65 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n51) );
  AOI221XLM U66 ( .A0(n126), .A1(n12), .B0(n13), .B1(n131), .C0(n54), .Y(n53)
         );
  AOI222X1M U67 ( .A0(N115), .A1(n35), .B0(n42), .B1(n11), .C0(N131), .C1(n49), 
        .Y(n52) );
  AOI31X2M U68 ( .A0(n38), .A1(n39), .A2(n40), .B0(n129), .Y(out_alu_comb[7])
         );
  AOI22X1M U69 ( .A0(N107), .A1(n50), .B0(N98), .B1(n37), .Y(n38) );
  AOI221XLM U70 ( .A0(n13), .A1(n130), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U71 ( .A0(N132), .A1(n49), .B0(N116), .B1(n35), .Y(n39) );
  AOI21X2M U72 ( .A0(n33), .A1(n34), .B0(n129), .Y(out_alu_comb[8]) );
  AOI21X2M U73 ( .A0(N99), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U74 ( .B0(N117), .B1(n35), .A0N(n130), .A1N(n36), .Y(n34) );
  OAI222X1M U75 ( .A0(n55), .A1(n120), .B0(n4), .B1(n56), .C0(n36), .C1(n132), 
        .Y(n54) );
  AOI221XLM U76 ( .A0(n11), .A1(n46), .B0(n47), .B1(n131), .C0(n13), .Y(n56)
         );
  AOI221XLM U77 ( .A0(n46), .A1(n131), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  INVX2M U78 ( .A(n4), .Y(n120) );
  INVX2M U79 ( .A(n92), .Y(n123) );
  AOI211X2M U80 ( .A0(N108), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  BUFX2M U81 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U82 ( .A(n6), .Y(n136) );
  INVX2M U83 ( .A(n5), .Y(n137) );
  INVX2M U84 ( .A(n11), .Y(n131) );
  INVX2M U85 ( .A(n12), .Y(n130) );
  INVX2M U86 ( .A(n8), .Y(n134) );
  INVX2M U87 ( .A(n7), .Y(n135) );
  INVX2M U88 ( .A(n10), .Y(n132) );
  INVX2M U89 ( .A(n9), .Y(n133) );
  BUFX2M U90 ( .A(B[6]), .Y(n4) );
  BUFX2M U91 ( .A(A[7]), .Y(n12) );
  BUFX2M U92 ( .A(A[5]), .Y(n10) );
  BUFX2M U93 ( .A(A[4]), .Y(n9) );
  BUFX2M U94 ( .A(A[3]), .Y(n8) );
  BUFX2M U95 ( .A(A[2]), .Y(n7) );
  BUFX2M U96 ( .A(A[1]), .Y(n6) );
  BUFX2M U97 ( .A(A[0]), .Y(n5) );
  INVX2M U98 ( .A(n25), .Y(n122) );
  OAI222X1M U99 ( .A0(n79), .A1(n118), .B0(B[2]), .B1(n80), .C0(n36), .C1(n136), .Y(n78) );
  AOI221XLM U100 ( .A0(n7), .A1(n46), .B0(n47), .B1(n135), .C0(n13), .Y(n80)
         );
  AOI221XLM U101 ( .A0(n46), .A1(n135), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U102 ( .A0(n73), .A1(n119), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n135), .Y(n72) );
  AOI221XLM U103 ( .A0(n8), .A1(n46), .B0(n47), .B1(n134), .C0(n13), .Y(n74)
         );
  AOI221XLM U104 ( .A0(n46), .A1(n134), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U105 ( .A0(n67), .A1(n140), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n134), .Y(n66) );
  INVX2M U106 ( .A(B[4]), .Y(n140) );
  AOI221XLM U107 ( .A0(n9), .A1(n46), .B0(n47), .B1(n133), .C0(n13), .Y(n68)
         );
  AOI221XLM U108 ( .A0(n46), .A1(n133), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U109 ( .A0(n61), .A1(n139), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n133), .Y(n60) );
  INVX2M U110 ( .A(B[5]), .Y(n139) );
  AOI221XLM U111 ( .A0(n10), .A1(n46), .B0(n47), .B1(n132), .C0(n13), .Y(n62)
         );
  AOI221XLM U112 ( .A0(n46), .A1(n132), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U113 ( .A0(n44), .A1(n138), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n131), .Y(n43) );
  INVX2M U114 ( .A(B[7]), .Y(n138) );
  AOI221XLM U115 ( .A0(n46), .A1(n12), .B0(n47), .B1(n130), .C0(n13), .Y(n45)
         );
  AOI221XLM U116 ( .A0(n46), .A1(n130), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  INVX2M U117 ( .A(n14), .Y(n121) );
  OAI2B2X1M U118 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n136), .Y(n97) );
  AOI221XLM U119 ( .A0(n46), .A1(n137), .B0(n5), .B1(n48), .C0(n42), .Y(n98)
         );
  OAI2B2X1M U120 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n137), .Y(n85) );
  AOI221XLM U121 ( .A0(n46), .A1(n136), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI21X2M U122 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U123 ( .A0(n5), .A1(n46), .B0(n47), .B1(n137), .C0(n13), .Y(n102)
         );
  AOI31X2M U124 ( .A0(N157), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U125 ( .A(n127), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U126 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U127 ( .A0(n6), .A1(n46), .B0(n47), .B1(n136), .C0(n13), .Y(n87)
         );
  AOI31X2M U128 ( .A0(N158), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U129 ( .A(n124), .B(ALU_FUN[2]), .C(n127), .Y(n89) );
  INVX2M U130 ( .A(B[0]), .Y(n117) );
  INVX2M U131 ( .A(B[2]), .Y(n118) );
  INVX2M U132 ( .A(B[3]), .Y(n119) );
  NOR2X1M U133 ( .A(n130), .B(B[7]), .Y(n113) );
  NAND2BX1M U134 ( .AN(B[4]), .B(n9), .Y(n29) );
  NAND2BX1M U135 ( .AN(n9), .B(B[4]), .Y(n18) );
  CLKNAND2X2M U136 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U137 ( .A(n119), .B(n8), .Y(n26) );
  NOR2X1M U138 ( .A(n118), .B(n7), .Y(n17) );
  NOR2X1M U139 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U140 ( .A(n7), .B(n118), .Y(n28) );
  NAND2BX1M U141 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U142 ( .A0(n14), .A1(n136), .B0(B[1]), .Y(n15) );
  AOI211X1M U143 ( .A0(n6), .A1(n121), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U144 ( .A(n8), .B(n119), .Y(n27) );
  OAI31X1M U145 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U146 ( .AN(n10), .B(B[5]), .Y(n111) );
  OAI211X1M U147 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U148 ( .AN(B[5]), .B(n10), .Y(n30) );
  XNOR2X1M U149 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U150 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n131), .Y(n21)
         );
  CLKNAND2X2M U151 ( .A(B[7]), .B(n130), .Y(n114) );
  OAI21X1M U152 ( .A0(n113), .A1(n21), .B0(n114), .Y(N159) );
  CLKNAND2X2M U153 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U154 ( .A0(n24), .A1(n136), .B0(B[1]), .Y(n22) );
  AOI211X1M U155 ( .A0(n24), .A1(n136), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U156 ( .A0(n122), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U157 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U158 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n120), .Y(
        n115) );
  AOI2B1X1M U159 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  CLKINVX1M U160 ( .A(n116), .Y(N158) );
  NOR2X1M U161 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module clk_gating ( en, clk, gated_clk );
  input en, clk;
  output gated_clk;


  TLATNCAX12M U0_TLATNCAX12M ( .E(en), .CK(clk), .ECK(gated_clk) );
endmodule


module SYS_CTRL ( CLK, RST, ALU_OUT, OUT_Valid, ALU_EN, ALU_FUN, RX_P_Data, 
        RX_D_VLD, TX_P_Data, TX_D_VLD, RdData, RdData_Valid, Address, WrEN, 
        RdEN, WrData, FIFO_FULL, CLK_EN, clk_div_en );
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  input [7:0] RX_P_Data;
  output [7:0] TX_P_Data;
  input [7:0] RdData;
  output [3:0] Address;
  output [7:0] WrData;
  input CLK, RST, OUT_Valid, RX_D_VLD, RdData_Valid, FIFO_FULL;
  output ALU_EN, TX_D_VLD, WrEN, RdEN, CLK_EN, clk_div_en;
  wire   n2, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17, n19,
         n21, n22, n23, n25, n28, n29, n31, n32, n34, n36, n43, n48, n49, n51,
         n71, n72, n73, n75, n76, n77, n79, n84, n85, n86, n87, n88, n89, n90,
         n91, n18, n20, n24, n26, n27, n30, n33, n35, n37, n38, n39, n40, n41,
         n42, n45, n46, n47, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n74, n78, n80, n81, n82,
         n83, n92, n93;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [3:0] addr_prev;

  DFFRQX2M \addr_prev_reg[3]  ( .D(n87), .CK(CLK), .RN(RST), .Q(addr_prev[3])
         );
  DFFRQX2M \addr_prev_reg[2]  ( .D(n86), .CK(CLK), .RN(RST), .Q(addr_prev[2])
         );
  DFFRQX2M \addr_prev_reg[1]  ( .D(n85), .CK(CLK), .RN(RST), .Q(addr_prev[1])
         );
  DFFRQX2M \addr_prev_reg[0]  ( .D(n84), .CK(CLK), .RN(RST), .Q(addr_prev[0])
         );
  DFFRX1M \alu_prev_reg[3]  ( .D(n91), .CK(CLK), .RN(RST), .QN(n54) );
  DFFRX1M \alu_prev_reg[2]  ( .D(n90), .CK(CLK), .RN(RST), .QN(n55) );
  DFFRX1M \alu_prev_reg[1]  ( .D(n89), .CK(CLK), .RN(RST), .QN(n56) );
  DFFRX1M \alu_prev_reg[0]  ( .D(n88), .CK(CLK), .RN(RST), .QN(n57) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  OAI22X2M U5 ( .A0(n59), .A1(n72), .B0(n77), .B1(n40), .Y(Address[2]) );
  OAI22X1M U6 ( .A0(n55), .A1(n23), .B0(n40), .B1(n48), .Y(ALU_FUN[2]) );
  OAI22X1M U7 ( .A0(n56), .A1(n23), .B0(n41), .B1(n48), .Y(ALU_FUN[1]) );
  OAI22X1M U8 ( .A0(n57), .A1(n23), .B0(n42), .B1(n48), .Y(ALU_FUN[0]) );
  NOR4X1M U9 ( .A(n45), .B(current_state[1]), .C(current_state[2]), .D(
        current_state[3]), .Y(n10) );
  NOR2BX2M U10 ( .AN(n2), .B(n36), .Y(n77) );
  INVX2M U11 ( .A(n2), .Y(RdEN) );
  INVX2M U12 ( .A(n36), .Y(n24) );
  INVX2M U13 ( .A(n43), .Y(n27) );
  OAI22X4M U14 ( .A0(n58), .A1(n72), .B0(n77), .B1(n39), .Y(Address[3]) );
  NOR2X2M U15 ( .A(n16), .B(n26), .Y(n36) );
  NAND2X2M U16 ( .A(n79), .B(n45), .Y(n2) );
  OAI22X1M U17 ( .A0(n54), .A1(n23), .B0(n39), .B1(n48), .Y(ALU_FUN[3]) );
  OAI221X1M U18 ( .A0(n77), .A1(n42), .B0(n61), .B1(n72), .C0(n8), .Y(
        Address[0]) );
  OAI222X1M U19 ( .A0(n51), .A1(n67), .B0(n40), .B1(n20), .C0(n18), .C1(n83), 
        .Y(WrData[2]) );
  OAI21X2M U20 ( .A0(FIFO_FULL), .A1(n70), .B0(n47), .Y(n51) );
  OAI222X1M U21 ( .A0(n51), .A1(n69), .B0(n42), .B1(n20), .C0(n18), .C1(n93), 
        .Y(WrData[0]) );
  OAI222X1M U22 ( .A0(n51), .A1(n68), .B0(n41), .B1(n20), .C0(n18), .C1(n92), 
        .Y(WrData[1]) );
  OAI222X1M U23 ( .A0(n51), .A1(n66), .B0(n39), .B1(n20), .C0(n18), .C1(n82), 
        .Y(WrData[3]) );
  OAI222X1M U24 ( .A0(n51), .A1(n65), .B0(n38), .B1(n20), .C0(n18), .C1(n81), 
        .Y(WrData[4]) );
  NAND2X2M U25 ( .A(TX_D_VLD), .B(n70), .Y(n76) );
  OAI22X1M U26 ( .A0(n93), .A1(n75), .B0(n69), .B1(n76), .Y(TX_P_Data[0]) );
  OAI22X1M U27 ( .A0(n92), .A1(n75), .B0(n68), .B1(n76), .Y(TX_P_Data[1]) );
  OAI22X1M U28 ( .A0(n83), .A1(n75), .B0(n67), .B1(n76), .Y(TX_P_Data[2]) );
  OAI22X1M U29 ( .A0(n82), .A1(n75), .B0(n66), .B1(n76), .Y(TX_P_Data[3]) );
  OAI22X1M U30 ( .A0(n81), .A1(n75), .B0(n65), .B1(n76), .Y(TX_P_Data[4]) );
  OAI22X1M U31 ( .A0(n80), .A1(n75), .B0(n64), .B1(n76), .Y(TX_P_Data[5]) );
  OAI22X1M U32 ( .A0(n78), .A1(n75), .B0(n63), .B1(n76), .Y(TX_P_Data[6]) );
  OAI22X1M U33 ( .A0(n74), .A1(n75), .B0(n62), .B1(n76), .Y(TX_P_Data[7]) );
  INVX2M U34 ( .A(n71), .Y(n20) );
  AOI31X2M U35 ( .A0(n72), .A1(n8), .A2(n13), .B0(n26), .Y(n71) );
  NAND3X2M U36 ( .A(n45), .B(n53), .C(n73), .Y(n8) );
  INVX2M U37 ( .A(n23), .Y(TX_D_VLD) );
  NAND2X2M U38 ( .A(n18), .B(n20), .Y(WrEN) );
  INVX2M U39 ( .A(n7), .Y(n47) );
  OAI22X1M U40 ( .A0(n60), .A1(n72), .B0(n77), .B1(n41), .Y(Address[1]) );
  NAND2X2M U41 ( .A(n4), .B(n5), .Y(next_state[2]) );
  AND4X2M U42 ( .A(n6), .B(n2), .C(n7), .D(n8), .Y(n5) );
  AOI211X2M U43 ( .A0(n9), .A1(n10), .B0(n11), .C0(n46), .Y(n4) );
  INVX2M U44 ( .A(n13), .Y(n46) );
  AOI2BB2XLM U45 ( .B0(n33), .B1(n10), .A0N(n26), .A1N(n8), .Y(n14) );
  INVX2M U46 ( .A(n25), .Y(n33) );
  AOI31X2M U47 ( .A0(n42), .A1(n38), .A2(n17), .B0(n9), .Y(n25) );
  OAI22X1M U48 ( .A0(n36), .A1(n59), .B0(n40), .B1(n24), .Y(n86) );
  OAI22X1M U49 ( .A0(n36), .A1(n61), .B0(n42), .B1(n24), .Y(n84) );
  OAI22X1M U50 ( .A0(n36), .A1(n60), .B0(n41), .B1(n24), .Y(n85) );
  OAI22X1M U51 ( .A0(n36), .A1(n58), .B0(n39), .B1(n24), .Y(n87) );
  OAI22X1M U52 ( .A0(n43), .A1(n55), .B0(n27), .B1(n40), .Y(n90) );
  OAI22X1M U53 ( .A0(n43), .A1(n57), .B0(n27), .B1(n42), .Y(n88) );
  OAI22X1M U54 ( .A0(n43), .A1(n56), .B0(n27), .B1(n41), .Y(n89) );
  OAI22X1M U55 ( .A0(n43), .A1(n54), .B0(n27), .B1(n39), .Y(n91) );
  NAND2X2M U56 ( .A(n7), .B(n48), .Y(n43) );
  OAI21X2M U57 ( .A0(n26), .A1(n2), .B0(n27), .Y(next_state[3]) );
  NAND2X2M U58 ( .A(n31), .B(n32), .Y(n11) );
  NAND4X2M U59 ( .A(n28), .B(n10), .C(n42), .D(n38), .Y(n32) );
  NOR2X2M U60 ( .A(n52), .B(current_state[1]), .Y(n73) );
  NAND3X2M U61 ( .A(n73), .B(n45), .C(current_state[3]), .Y(n23) );
  NAND4X2M U62 ( .A(current_state[0]), .B(current_state[1]), .C(n52), .D(n53), 
        .Y(n16) );
  INVX2M U63 ( .A(current_state[0]), .Y(n45) );
  AND3X2M U64 ( .A(current_state[1]), .B(n53), .C(current_state[2]), .Y(n79)
         );
  NAND2X2M U65 ( .A(RX_D_VLD), .B(ALU_EN), .Y(n48) );
  INVX2M U66 ( .A(n31), .Y(ALU_EN) );
  INVX2M U67 ( .A(current_state[3]), .Y(n53) );
  NAND2X2M U68 ( .A(current_state[0]), .B(n79), .Y(n31) );
  INVX2M U69 ( .A(current_state[2]), .Y(n52) );
  OAI222X1M U70 ( .A0(n51), .A1(n64), .B0(n37), .B1(n20), .C0(n18), .C1(n80), 
        .Y(WrData[5]) );
  INVX2M U71 ( .A(RX_P_Data[5]), .Y(n37) );
  OAI222X1M U72 ( .A0(n51), .A1(n63), .B0(n35), .B1(n20), .C0(n18), .C1(n78), 
        .Y(WrData[6]) );
  INVX2M U73 ( .A(RX_P_Data[6]), .Y(n35) );
  OAI222X1M U74 ( .A0(n51), .A1(n62), .B0(n30), .B1(n20), .C0(n18), .C1(n74), 
        .Y(WrData[7]) );
  INVX2M U75 ( .A(RX_P_Data[7]), .Y(n30) );
  NAND2X2M U76 ( .A(TX_D_VLD), .B(RdData_Valid), .Y(n75) );
  NAND4X2M U77 ( .A(current_state[1]), .B(n45), .C(n52), .D(n53), .Y(n72) );
  NAND3X2M U78 ( .A(n73), .B(current_state[0]), .C(current_state[3]), .Y(n7)
         );
  NAND3X2M U79 ( .A(current_state[0]), .B(n53), .C(n73), .Y(n13) );
  INVX2M U80 ( .A(RX_P_Data[0]), .Y(n42) );
  INVX2M U81 ( .A(RX_P_Data[1]), .Y(n41) );
  INVX2M U82 ( .A(RX_P_Data[3]), .Y(n39) );
  INVX2M U83 ( .A(RX_D_VLD), .Y(n26) );
  INVX2M U84 ( .A(RX_P_Data[2]), .Y(n40) );
  BUFX2M U85 ( .A(n49), .Y(n18) );
  NAND3BX2M U86 ( .AN(FIFO_FULL), .B(n47), .C(RdData_Valid), .Y(n49) );
  INVX2M U87 ( .A(addr_prev[1]), .Y(n60) );
  INVX2M U88 ( .A(addr_prev[3]), .Y(n58) );
  INVX2M U89 ( .A(addr_prev[2]), .Y(n59) );
  INVX2M U90 ( .A(addr_prev[0]), .Y(n61) );
  NAND4X2M U91 ( .A(RX_P_Data[4]), .B(RX_P_Data[0]), .C(n17), .D(n10), .Y(n6)
         );
  AND4X2M U92 ( .A(n29), .B(RX_P_Data[5]), .C(RX_P_Data[3]), .D(RX_P_Data[7]), 
        .Y(n17) );
  NOR3X2M U93 ( .A(n41), .B(RX_P_Data[6]), .C(RX_P_Data[2]), .Y(n29) );
  AND4X2M U94 ( .A(n34), .B(RX_P_Data[2]), .C(RX_P_Data[7]), .D(RX_P_Data[6]), 
        .Y(n28) );
  NOR3X2M U95 ( .A(n39), .B(RX_P_Data[5]), .C(RX_P_Data[1]), .Y(n34) );
  NAND4X2M U96 ( .A(n14), .B(n15), .C(n6), .D(n16), .Y(next_state[1]) );
  NAND3X2M U97 ( .A(n26), .B(n53), .C(current_state[1]), .Y(n15) );
  NAND3BX2M U98 ( .AN(n11), .B(n14), .C(n19), .Y(next_state[0]) );
  AOI221XLM U99 ( .A0(FIFO_FULL), .A1(n47), .B0(RX_D_VLD), .B1(n21), .C0(n22), 
        .Y(n19) );
  AOI21X2M U100 ( .A0(n16), .A1(n13), .B0(RX_D_VLD), .Y(n22) );
  OAI21X2M U101 ( .A0(current_state[3]), .A1(current_state[0]), .B0(n23), .Y(
        n21) );
  INVX2M U102 ( .A(RdData_Valid), .Y(n70) );
  AND3X2M U103 ( .A(n28), .B(RX_P_Data[4]), .C(RX_P_Data[0]), .Y(n9) );
  INVX2M U104 ( .A(RX_P_Data[4]), .Y(n38) );
  INVX2M U105 ( .A(RdData[0]), .Y(n93) );
  INVX2M U106 ( .A(RdData[1]), .Y(n92) );
  INVX2M U107 ( .A(RdData[2]), .Y(n83) );
  INVX2M U108 ( .A(RdData[3]), .Y(n82) );
  INVX2M U109 ( .A(RdData[4]), .Y(n81) );
  INVX2M U110 ( .A(RdData[5]), .Y(n80) );
  INVX2M U111 ( .A(RdData[6]), .Y(n78) );
  INVX2M U112 ( .A(RdData[7]), .Y(n74) );
  INVX2M U113 ( .A(ALU_OUT[0]), .Y(n69) );
  INVX2M U114 ( .A(ALU_OUT[1]), .Y(n68) );
  INVX2M U115 ( .A(ALU_OUT[2]), .Y(n67) );
  INVX2M U116 ( .A(ALU_OUT[3]), .Y(n66) );
  INVX2M U117 ( .A(ALU_OUT[4]), .Y(n65) );
  INVX2M U118 ( .A(ALU_OUT[5]), .Y(n64) );
  INVX2M U119 ( .A(ALU_OUT[6]), .Y(n63) );
  INVX2M U120 ( .A(ALU_OUT[7]), .Y(n62) );
  BUFX2M U121 ( .A(ALU_EN), .Y(CLK_EN) );
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


module ClkDiv_RATIO_WD8_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_RATIO_WD8_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  DFFRQX2M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  OR2X2M U4 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U5 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n6) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n25) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n24) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n23) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n22) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n21) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n20) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n19) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U26 ( .A(div_clk), .B(n11), .Y(n18) );
  AOI21X1M U27 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U28 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n13), .Y(n17) );
  OR2X1M U30 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U31 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U32 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U33 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U36 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U39 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U40 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2X1M U41 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U42 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U43 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U48 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U49 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
  INVX2M U11 ( .A(IN[1]), .Y(n14) );
  NAND4BX1M U12 ( .AN(IN[4]), .B(IN[3]), .C(n16), .D(n15), .Y(n6) );
  NAND4BX1M U13 ( .AN(IN[3]), .B(IN[4]), .C(n16), .D(n15), .Y(n7) );
  NOR3X2M U14 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR4X1M U15 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U16 ( .A(n17), .B(n14), .C(IN[2]), .Y(n5) );
  NOR3X2M U17 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  OAI211X2M U18 ( .A0(n8), .A1(n9), .B0(n17), .C0(n14), .Y(OUT[0]) );
  NAND2X2M U19 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U20 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n16), .Y(n8) );
  INVX2M U21 ( .A(IN[2]), .Y(n16) );
  INVX2M U22 ( .A(IN[0]), .Y(n17) );
  INVX2M U23 ( .A(IN[5]), .Y(n15) );
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


module ClkDiv_RATIO_WD8_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_RATIO_WD8_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, 
        N18, N17, N16}) );
  DFFRQX2M div_clk_reg ( .D(n50), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n51), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[5]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[4]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[6]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[0]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[2]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  OR2X2M U4 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U5 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n6) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n43) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n44) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n45) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n46) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n47) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n48) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n49) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U26 ( .A(div_clk), .B(n11), .Y(n50) );
  AOI21X1M U27 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U28 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n13), .Y(n51) );
  OR2X1M U30 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U31 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U32 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U33 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U36 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U39 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U40 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2X1M U41 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U42 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U43 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U48 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U49 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
endmodule


module serializer ( P_DATA, ser_en, Data_Valid, busy, clk, rst, ser_data, 
        ser_done );
  input [7:0] P_DATA;
  input ser_en, Data_Valid, busy, clk, rst;
  output ser_data, ser_done;
  wire   N2, N3, N4, \data_counter[3] , N11, n2, n4, n5, n7, n10, n11, n12,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n1, n3, n6, n8, n9, n13, n14, n29, n30;
  wire   [7:0] data;

  DFFRQX2M ser_data_reg ( .D(n24), .CK(clk), .RN(rst), .Q(ser_data) );
  DFFRQX2M \data_counter_reg[2]  ( .D(n25), .CK(clk), .RN(rst), .Q(N4) );
  DFFRQX2M \data_counter_reg[3]  ( .D(n27), .CK(clk), .RN(rst), .Q(
        \data_counter[3] ) );
  DFFRQX2M \data_reg[5]  ( .D(n20), .CK(clk), .RN(rst), .Q(data[5]) );
  DFFRQX2M \data_reg[1]  ( .D(n16), .CK(clk), .RN(rst), .Q(data[1]) );
  DFFRQX2M \data_reg[7]  ( .D(n22), .CK(clk), .RN(rst), .Q(data[7]) );
  DFFRQX2M \data_reg[3]  ( .D(n18), .CK(clk), .RN(rst), .Q(data[3]) );
  DFFRQX2M \data_reg[6]  ( .D(n21), .CK(clk), .RN(rst), .Q(data[6]) );
  DFFRQX2M \data_reg[2]  ( .D(n17), .CK(clk), .RN(rst), .Q(data[2]) );
  DFFRQX2M \data_reg[4]  ( .D(n19), .CK(clk), .RN(rst), .Q(data[4]) );
  DFFRQX2M \data_reg[0]  ( .D(n15), .CK(clk), .RN(rst), .Q(data[0]) );
  DFFRQX2M \data_counter_reg[1]  ( .D(n26), .CK(clk), .RN(rst), .Q(N3) );
  DFFRQX2M ser_done_reg ( .D(n23), .CK(clk), .RN(rst), .Q(ser_done) );
  DFFRQX2M \data_counter_reg[0]  ( .D(n28), .CK(clk), .RN(rst), .Q(N2) );
  AOI21X2M U3 ( .A0(n13), .A1(ser_en), .B0(n8), .Y(n11) );
  INVX2M U4 ( .A(ser_en), .Y(n6) );
  OAI21X2M U5 ( .A0(n4), .A1(n29), .B0(n5), .Y(n27) );
  INVX2M U6 ( .A(n2), .Y(n9) );
  INVX2M U7 ( .A(n5), .Y(n8) );
  OAI32X1M U8 ( .A0(n29), .A1(\data_counter[3] ), .A2(n4), .B0(n5), .B1(n30), 
        .Y(n23) );
  INVX2M U9 ( .A(ser_done), .Y(n30) );
  OAI32X1M U10 ( .A0(n12), .A1(n13), .A2(n6), .B0(n11), .B1(n14), .Y(n26) );
  NAND2X2M U11 ( .A(n5), .B(n14), .Y(n12) );
  INVX2M U12 ( .A(N3), .Y(n14) );
  OAI32X1M U13 ( .A0(n4), .A1(N4), .A2(n8), .B0(n10), .B1(n29), .Y(n25) );
  OA21X2M U14 ( .A0(n6), .A1(N3), .B0(n11), .Y(n10) );
  OAI32X1M U15 ( .A0(n6), .A1(N2), .A2(n8), .B0(n13), .B1(n5), .Y(n28) );
  NOR2BX2M U16 ( .AN(Data_Valid), .B(busy), .Y(n2) );
  NAND2X2M U17 ( .A(\data_counter[3] ), .B(ser_en), .Y(n5) );
  NAND3X2M U18 ( .A(N3), .B(N2), .C(ser_en), .Y(n4) );
  MX4X1M U19 ( .A(data[0]), .B(data[1]), .C(data[2]), .D(data[3]), .S0(N2), 
        .S1(N3), .Y(n3) );
  AO2B2X2M U20 ( .B0(N11), .B1(n7), .A0(ser_data), .A1N(n7), .Y(n24) );
  MX2X2M U21 ( .A(n3), .B(n1), .S0(N4), .Y(N11) );
  NOR2X2M U22 ( .A(n6), .B(\data_counter[3] ), .Y(n7) );
  MX4X1M U23 ( .A(data[4]), .B(data[5]), .C(data[6]), .D(data[7]), .S0(N2), 
        .S1(N3), .Y(n1) );
  AO22X1M U24 ( .A0(data[0]), .A1(n9), .B0(P_DATA[0]), .B1(n2), .Y(n15) );
  AO22X1M U25 ( .A0(data[1]), .A1(n9), .B0(P_DATA[1]), .B1(n2), .Y(n16) );
  AO22X1M U26 ( .A0(data[2]), .A1(n9), .B0(P_DATA[2]), .B1(n2), .Y(n17) );
  AO22X1M U27 ( .A0(data[3]), .A1(n9), .B0(P_DATA[3]), .B1(n2), .Y(n18) );
  AO22X1M U28 ( .A0(data[4]), .A1(n9), .B0(P_DATA[4]), .B1(n2), .Y(n19) );
  AO22X1M U29 ( .A0(data[5]), .A1(n9), .B0(P_DATA[5]), .B1(n2), .Y(n20) );
  AO22X1M U30 ( .A0(data[6]), .A1(n9), .B0(P_DATA[6]), .B1(n2), .Y(n21) );
  AO22X1M U31 ( .A0(data[7]), .A1(n9), .B0(P_DATA[7]), .B1(n2), .Y(n22) );
  INVX2M U32 ( .A(N2), .Y(n13) );
  INVX2M U33 ( .A(N4), .Y(n29) );
endmodule


module parity_calc ( P_DATA, Data_Valid, busy, PAR_EN, PAR_TYP, clk, rst, 
        par_bit );
  input [7:0] P_DATA;
  input Data_Valid, busy, PAR_EN, PAR_TYP, clk, rst;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n2
;
  wire   [7:0] data;

  DFFRQX2M par_bit_reg ( .D(n8), .CK(clk), .RN(rst), .Q(par_bit) );
  DFFRQX2M \data_reg[5]  ( .D(n14), .CK(clk), .RN(rst), .Q(data[5]) );
  DFFRQX2M \data_reg[1]  ( .D(n10), .CK(clk), .RN(rst), .Q(data[1]) );
  DFFRQX2M \data_reg[4]  ( .D(n13), .CK(clk), .RN(rst), .Q(data[4]) );
  DFFRQX2M \data_reg[0]  ( .D(n9), .CK(clk), .RN(rst), .Q(data[0]) );
  DFFRQX2M \data_reg[2]  ( .D(n11), .CK(clk), .RN(rst), .Q(data[2]) );
  DFFRQX2M \data_reg[3]  ( .D(n12), .CK(clk), .RN(rst), .Q(data[3]) );
  DFFRQX2M \data_reg[6]  ( .D(n15), .CK(clk), .RN(rst), .Q(data[6]) );
  DFFRQX2M \data_reg[7]  ( .D(n16), .CK(clk), .RN(rst), .Q(data[7]) );
  NOR2BX2M U2 ( .AN(Data_Valid), .B(busy), .Y(n7) );
  XNOR2X2M U3 ( .A(data[2]), .B(data[3]), .Y(n5) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  INVX2M U5 ( .A(PAR_EN), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U7 ( .A(data[1]), .B(data[0]), .C(n5), .Y(n4) );
  XOR3XLM U8 ( .A(data[5]), .B(data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U9 ( .A(data[7]), .B(data[6]), .Y(n6) );
  AO2B2X2M U10 ( .B0(P_DATA[0]), .B1(n7), .A0(data[0]), .A1N(n7), .Y(n9) );
  AO2B2X2M U11 ( .B0(P_DATA[1]), .B1(n7), .A0(data[1]), .A1N(n7), .Y(n10) );
  AO2B2X2M U12 ( .B0(P_DATA[2]), .B1(n7), .A0(data[2]), .A1N(n7), .Y(n11) );
  AO2B2X2M U13 ( .B0(P_DATA[3]), .B1(n7), .A0(data[3]), .A1N(n7), .Y(n12) );
  AO2B2X2M U14 ( .B0(P_DATA[4]), .B1(n7), .A0(data[4]), .A1N(n7), .Y(n13) );
  AO2B2X2M U15 ( .B0(P_DATA[5]), .B1(n7), .A0(data[5]), .A1N(n7), .Y(n14) );
  AO2B2X2M U16 ( .B0(P_DATA[6]), .B1(n7), .A0(data[6]), .A1N(n7), .Y(n15) );
  AO2B2X2M U17 ( .B0(P_DATA[7]), .B1(n7), .A0(data[7]), .A1N(n7), .Y(n16) );
endmodule


module MUX ( mux_sel, ser_data, par_bit, clk, rst, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit, clk, rst;
  output TX_OUT;
  wire   N13, n1;

  DFFSQX2M TX_OUT_reg ( .D(N13), .CK(clk), .SN(rst), .Q(TX_OUT) );
  OAI2BB1X2M U3 ( .A0N(ser_data), .A1N(mux_sel[0]), .B0(n1), .Y(N13) );
  OAI21X2M U4 ( .A0(mux_sel[0]), .A1(par_bit), .B0(mux_sel[1]), .Y(n1) );
endmodule


module FSM ( Data_Valid, PAR_EN, ser_done, clk, rst, ser_en, mux_sel, busy );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, clk, rst;
  output ser_en, busy;
  wire   busy_c, n4, n5, n6, n7, n8, n9, n1, n2, n3;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M busy_reg ( .D(busy_c), .CK(clk), .RN(rst), .Q(busy) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  INVX2M U3 ( .A(n6), .Y(n1) );
  NOR3X2M U4 ( .A(n4), .B(ser_done), .C(current_state[2]), .Y(ser_en) );
  OAI21X2M U5 ( .A0(current_state[1]), .A1(n2), .B0(n9), .Y(n6) );
  NAND2X2M U6 ( .A(current_state[1]), .B(n2), .Y(n9) );
  NAND2X2M U7 ( .A(n1), .B(current_state[0]), .Y(n4) );
  INVX2M U8 ( .A(current_state[0]), .Y(n2) );
  AOI21X2M U9 ( .A0(n1), .A1(n4), .B0(current_state[2]), .Y(next_state[1]) );
  AOI21X2M U10 ( .A0(n7), .A1(n8), .B0(current_state[2]), .Y(next_state[0]) );
  NAND2BX2M U11 ( .AN(ser_done), .B(current_state[0]), .Y(n7) );
  OAI21X2M U12 ( .A0(Data_Valid), .A1(current_state[0]), .B0(n3), .Y(n8) );
  OAI2B2X1M U13 ( .A1N(current_state[2]), .A0(n9), .B0(current_state[2]), .B1(
        n6), .Y(mux_sel[0]) );
  OAI21X2M U14 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n9), .Y(
        mux_sel[1]) );
  NOR3X2M U15 ( .A(n3), .B(current_state[2]), .C(n5), .Y(next_state[2]) );
  AOI2B1X1M U16 ( .A1N(PAR_EN), .A0(ser_done), .B0(n2), .Y(n5) );
  OAI21X2M U17 ( .A0(current_state[2]), .A1(n2), .B0(n9), .Y(busy_c) );
  INVX2M U18 ( .A(current_state[1]), .Y(n3) );
endmodule


module UART_TX_DWIDTH8 ( P_DATA, Data_Valid, PAR_EN, PAR_TYP, clk, rst, TX_OUT, 
        busy );
  input [7:0] P_DATA;
  input Data_Valid, PAR_EN, PAR_TYP, clk, rst;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  serializer u_serializer ( .P_DATA(P_DATA), .ser_en(ser_en), .Data_Valid(
        Data_Valid), .busy(busy), .clk(clk), .rst(n1), .ser_data(ser_data), 
        .ser_done(ser_done) );
  parity_calc u_parity_calc ( .P_DATA(P_DATA), .Data_Valid(Data_Valid), .busy(
        busy), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .clk(clk), .rst(n1), 
        .par_bit(par_bit) );
  MUX u_mux ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), .clk(
        clk), .rst(n1), .TX_OUT(TX_OUT) );
  FSM u_fsm ( .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), .ser_done(ser_done), 
        .clk(clk), .rst(n1), .ser_en(ser_en), .mux_sel(mux_sel), .busy(busy)
         );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module edge_bit_counter ( enable, prescale, PAR_EN, CLK, RST, bit_cnt, 
        edge_cnt );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input enable, PAR_EN, CLK, RST;
  wire   N10, N11, N12, N13, N15, N16, N17, N18, N42, N43, N44, N45, N46, N47,
         n7, n9, n10, n13, n16, n17, n18, n19, n22, n24, n25, n26, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, \add_41/carry[5] ,
         \add_41/carry[4] , \add_41/carry[3] , \add_41/carry[2] , n1, n2, n3,
         n4, n5, n6, n8, n11, n12, n14, n15, n20, n21, n23, n27, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55;

  DFFRQX2M \bit_cnt_reg[2]  ( .D(n36), .CK(CLK), .RN(RST), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n37), .CK(CLK), .RN(RST), .Q(bit_cnt[1]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(n33), .CK(CLK), .RN(RST), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(n28), .CK(CLK), .RN(RST), .Q(edge_cnt[1]) );
  DFFRQX2M \edge_cnt_reg[5]  ( .D(n32), .CK(CLK), .RN(RST), .Q(edge_cnt[5]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(n31), .CK(CLK), .RN(RST), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(n30), .CK(CLK), .RN(RST), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(n29), .CK(CLK), .RN(RST), .Q(edge_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n38), .CK(CLK), .RN(RST), .Q(bit_cnt[0]) );
  DFFRX1M \bit_cnt_reg[3]  ( .D(n35), .CK(CLK), .RN(RST), .Q(bit_cnt[3]), .QN(
        n34) );
  INVX2M U3 ( .A(n24), .Y(n47) );
  AOI21X2M U4 ( .A0(n50), .A1(N18), .B0(n49), .Y(n24) );
  INVX2M U5 ( .A(N17), .Y(n50) );
  INVX2M U6 ( .A(n16), .Y(n48) );
  INVX2M U7 ( .A(n17), .Y(n52) );
  INVX2M U8 ( .A(n39), .Y(n46) );
  INVX2M U9 ( .A(n15), .Y(n44) );
  OAI211X2M U10 ( .A0(n25), .A1(n26), .B0(n24), .C0(N17), .Y(n16) );
  NAND2X2M U11 ( .A(n54), .B(bit_cnt[3]), .Y(n26) );
  AOI33X2M U12 ( .A0(n55), .A1(n53), .A2(bit_cnt[0]), .B0(PAR_EN), .B1(n51), 
        .B2(bit_cnt[1]), .Y(n25) );
  INVX2M U13 ( .A(PAR_EN), .Y(n55) );
  OAI32X1M U14 ( .A0(n16), .A1(bit_cnt[1]), .A2(n51), .B0(n22), .B1(n53), .Y(
        n37) );
  AOI21X2M U15 ( .A0(n48), .A1(n51), .B0(n47), .Y(n22) );
  OAI32X1M U16 ( .A0(n18), .A1(n50), .A2(n17), .B0(n19), .B1(n54), .Y(n36) );
  NAND2X2M U17 ( .A(enable), .B(n54), .Y(n18) );
  AOI21XLM U18 ( .A0(N17), .A1(n17), .B0(n47), .Y(n19) );
  OAI22X1M U19 ( .A0(n24), .A1(n51), .B0(bit_cnt[0]), .B1(n16), .Y(n38) );
  AND3X2M U20 ( .A(N18), .B(n50), .C(enable), .Y(n7) );
  NAND2X2M U21 ( .A(n9), .B(n10), .Y(n35) );
  NAND4X2M U22 ( .A(n34), .B(bit_cnt[2]), .C(n48), .D(n52), .Y(n10) );
  OAI21X2M U23 ( .A0(n13), .A1(n47), .B0(bit_cnt[3]), .Y(n9) );
  AOI21X2M U24 ( .A0(bit_cnt[2]), .A1(n52), .B0(n16), .Y(n13) );
  INVX2M U25 ( .A(edge_cnt[3]), .Y(n43) );
  INVX2M U26 ( .A(edge_cnt[2]), .Y(n42) );
  INVX2M U27 ( .A(edge_cnt[5]), .Y(n45) );
  AO22X1M U28 ( .A0(edge_cnt[1]), .A1(n49), .B0(N43), .B1(n7), .Y(n28) );
  AO22X1M U29 ( .A0(edge_cnt[2]), .A1(n49), .B0(N44), .B1(n7), .Y(n29) );
  AO22X1M U30 ( .A0(edge_cnt[3]), .A1(n49), .B0(N45), .B1(n7), .Y(n30) );
  AO22X1M U31 ( .A0(edge_cnt[4]), .A1(n49), .B0(N46), .B1(n7), .Y(n31) );
  AO22X1M U32 ( .A0(edge_cnt[5]), .A1(n49), .B0(N47), .B1(n7), .Y(n32) );
  AO22X1M U33 ( .A0(edge_cnt[0]), .A1(n49), .B0(N42), .B1(n7), .Y(n33) );
  NAND2X2M U34 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .Y(n17) );
  INVX2M U35 ( .A(bit_cnt[0]), .Y(n51) );
  INVX2M U36 ( .A(bit_cnt[2]), .Y(n54) );
  INVX2M U37 ( .A(bit_cnt[1]), .Y(n53) );
  INVX2M U38 ( .A(enable), .Y(n49) );
  ADDHX1M U39 ( .A(edge_cnt[2]), .B(\add_41/carry[2] ), .CO(\add_41/carry[3] ), 
        .S(N44) );
  ADDHX1M U40 ( .A(edge_cnt[3]), .B(\add_41/carry[3] ), .CO(\add_41/carry[4] ), 
        .S(N45) );
  ADDHX1M U41 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_41/carry[2] ), .S(
        N43) );
  ADDHX1M U42 ( .A(edge_cnt[4]), .B(\add_41/carry[4] ), .CO(\add_41/carry[5] ), 
        .S(N46) );
  OR2X2M U43 ( .A(prescale[1]), .B(prescale[0]), .Y(n2) );
  AOI21BX2M U44 ( .A0(n4), .A1(prescale[4]), .B0N(n5), .Y(n1) );
  CLKINVX1M U45 ( .A(prescale[0]), .Y(N10) );
  OAI2BB1X1M U46 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n2), .Y(N11) );
  OR2X1M U47 ( .A(n2), .B(prescale[2]), .Y(n3) );
  OAI2BB1X1M U48 ( .A0N(n2), .A1N(prescale[2]), .B0(n3), .Y(N12) );
  OR2X1M U49 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U50 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N13) );
  OR2X1M U51 ( .A(n4), .B(prescale[4]), .Y(n5) );
  NOR2X1M U52 ( .A(n5), .B(prescale[5]), .Y(N16) );
  AO21XLM U53 ( .A0(n5), .A1(prescale[5]), .B0(N16), .Y(N15) );
  CLKINVX1M U54 ( .A(edge_cnt[0]), .Y(N42) );
  CLKXOR2X2M U55 ( .A(\add_41/carry[5] ), .B(edge_cnt[5]), .Y(N47) );
  NOR2X1M U56 ( .A(n43), .B(N13), .Y(n20) );
  CLKNAND2X2M U57 ( .A(edge_cnt[4]), .B(n1), .Y(n15) );
  NOR2BX1M U58 ( .AN(edge_cnt[0]), .B(N10), .Y(n6) );
  OAI2B2X1M U59 ( .A1N(N11), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n8) );
  NAND3BX1M U60 ( .AN(n20), .B(n15), .C(n8), .Y(n41) );
  NOR2X1M U61 ( .A(n42), .B(N12), .Y(n40) );
  NAND2BX1M U62 ( .AN(edge_cnt[0]), .B(N10), .Y(n12) );
  AOI2BB1X1M U63 ( .A0N(n12), .A1N(edge_cnt[1]), .B0(N11), .Y(n11) );
  AOI211X1M U64 ( .A0(edge_cnt[1]), .A1(n12), .B0(n40), .C0(n11), .Y(n14) );
  AOI221XLM U65 ( .A0(N13), .A1(n43), .B0(N12), .B1(n42), .C0(n14), .Y(n21) );
  OAI32X1M U66 ( .A0(n21), .A1(n20), .A2(n44), .B0(edge_cnt[4]), .B1(n1), .Y(
        n23) );
  NOR2X1M U67 ( .A(n45), .B(N15), .Y(n39) );
  AOI221XLM U68 ( .A0(n23), .A1(n46), .B0(N15), .B1(n45), .C0(N16), .Y(n27) );
  CLKINVX1M U69 ( .A(n27), .Y(N18) );
  NOR4X1M U70 ( .A(n41), .B(n40), .C(N18), .D(n39), .Y(N17) );
endmodule


module data_sampling ( RX_IN, prescale, edge_cnt, dat_samp_en, CLK, RST, 
        sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input RX_IN, dat_samp_en, CLK, RST;
  output sampled_bit;
  wire   sampling1, sampling2, sampling3, N8, N9, N10, N11, N12, N16, N17, N18,
         N19, N20, N35, n21, n22, n23, \sub_23/carry[4] , \sub_23/carry[3] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40;
  assign N8 = prescale[1];

  DFFRQX2M sampling3_reg ( .D(n21), .CK(CLK), .RN(RST), .Q(sampling3) );
  DFFRQX2M sampling2_reg ( .D(n22), .CK(CLK), .RN(RST), .Q(sampling2) );
  DFFRQX2M sampling1_reg ( .D(n23), .CK(CLK), .RN(RST), .Q(sampling1) );
  DFFRQX2M sampled_bit_reg ( .D(N35), .CK(CLK), .RN(RST), .Q(sampled_bit) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_23/carry[4] ), .Y(n1) );
  INVX2M U4 ( .A(N8), .Y(n2) );
  INVX2M U5 ( .A(prescale[2]), .Y(N9) );
  XNOR2X1M U6 ( .A(\sub_23/carry[4] ), .B(prescale[5]), .Y(N12) );
  OR2X1M U7 ( .A(prescale[4]), .B(\sub_23/carry[3] ), .Y(\sub_23/carry[4] ) );
  XNOR2X1M U8 ( .A(\sub_23/carry[3] ), .B(prescale[4]), .Y(N11) );
  OR2X1M U9 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_23/carry[3] ) );
  XNOR2X1M U10 ( .A(prescale[2]), .B(prescale[3]), .Y(N10) );
  NAND2BX1M U11 ( .AN(prescale[2]), .B(n2), .Y(n3) );
  OAI2BB1X1M U12 ( .A0N(N8), .A1N(prescale[2]), .B0(n3), .Y(N16) );
  OR2X1M U13 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U14 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N17) );
  XNOR2X1M U15 ( .A(prescale[4]), .B(n4), .Y(N18) );
  NOR3X1M U16 ( .A(prescale[4]), .B(prescale[5]), .C(n4), .Y(N20) );
  OAI21X1M U17 ( .A0(prescale[4]), .A1(n4), .B0(prescale[5]), .Y(n5) );
  NAND2BX1M U18 ( .AN(N20), .B(n5), .Y(N19) );
  CLKMX2X2M U19 ( .A(sampling1), .B(RX_IN), .S0(n6), .Y(n23) );
  NOR2X1M U20 ( .A(n7), .B(n8), .Y(n6) );
  CLKMX2X2M U21 ( .A(sampling2), .B(RX_IN), .S0(n9), .Y(n22) );
  NOR2X1M U22 ( .A(n10), .B(n11), .Y(n9) );
  CLKMX2X2M U23 ( .A(sampling3), .B(RX_IN), .S0(n12), .Y(n21) );
  NOR4X1M U24 ( .A(n13), .B(n14), .C(n10), .D(n15), .Y(n12) );
  CLKXOR2X2M U25 ( .A(N8), .B(edge_cnt[0]), .Y(n15) );
  CLKNAND2X2M U26 ( .A(dat_samp_en), .B(n7), .Y(n10) );
  NAND4X1M U27 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n7) );
  NOR3X1M U28 ( .A(n20), .B(n24), .C(n25), .Y(n19) );
  CLKXOR2X2M U29 ( .A(edge_cnt[4]), .B(N12), .Y(n25) );
  CLKXOR2X2M U30 ( .A(edge_cnt[0]), .B(N8), .Y(n24) );
  CLKXOR2X2M U31 ( .A(edge_cnt[5]), .B(n1), .Y(n20) );
  XNOR2X1M U32 ( .A(edge_cnt[2]), .B(N10), .Y(n18) );
  XNOR2X1M U33 ( .A(edge_cnt[3]), .B(N11), .Y(n17) );
  CLKXOR2X2M U34 ( .A(n26), .B(N9), .Y(n16) );
  CLKNAND2X2M U35 ( .A(n11), .B(n27), .Y(n14) );
  NAND4X1M U36 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n11) );
  NOR3X1M U37 ( .A(n32), .B(n33), .C(n34), .Y(n31) );
  CLKXOR2X2M U38 ( .A(edge_cnt[4]), .B(N19), .Y(n34) );
  CLKXOR2X2M U39 ( .A(edge_cnt[1]), .B(N16), .Y(n33) );
  CLKXOR2X2M U40 ( .A(edge_cnt[0]), .B(n2), .Y(n32) );
  XNOR2X1M U41 ( .A(edge_cnt[2]), .B(N17), .Y(n30) );
  XNOR2X1M U42 ( .A(edge_cnt[3]), .B(N18), .Y(n29) );
  CLKXOR2X2M U43 ( .A(n27), .B(N20), .Y(n28) );
  CLKINVX1M U44 ( .A(edge_cnt[5]), .Y(n27) );
  NAND4X1M U45 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n13) );
  CLKXOR2X2M U46 ( .A(n26), .B(prescale[2]), .Y(n38) );
  CLKINVX1M U47 ( .A(edge_cnt[1]), .Y(n26) );
  XNOR2X1M U48 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n37) );
  XNOR2X1M U49 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n36) );
  XNOR2X1M U50 ( .A(edge_cnt[4]), .B(prescale[5]), .Y(n35) );
  AOI21X1M U51 ( .A0(n39), .A1(n40), .B0(n8), .Y(N35) );
  CLKINVX1M U52 ( .A(dat_samp_en), .Y(n8) );
  OAI21X1M U53 ( .A0(sampling1), .A1(sampling2), .B0(sampling3), .Y(n40) );
  CLKNAND2X2M U54 ( .A(sampling2), .B(sampling1), .Y(n39) );
endmodule


module deserializer ( sampled_bit, deser_en, data_valid, prescale, bit_cnt, 
        edge_cnt, CLK, RST, P_DATA, data );
  input [5:0] prescale;
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  output [7:0] P_DATA;
  output [7:0] data;
  input sampled_bit, deser_en, data_valid, CLK, RST;
  wire   N3, N4, N5, N6, N7, N8, N9, n5, n14, n15, n16, n17, n18, n19, n20,
         n21, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33;

  DFFRQX2M \data_reg[6]  ( .D(n20), .CK(CLK), .RN(RST), .Q(data[6]) );
  DFFRQX2M \data_reg[1]  ( .D(n15), .CK(CLK), .RN(RST), .Q(data[1]) );
  DFFRQX2M \data_reg[5]  ( .D(n19), .CK(CLK), .RN(RST), .Q(data[5]) );
  DFFRQX2M \data_reg[0]  ( .D(n14), .CK(CLK), .RN(RST), .Q(data[0]) );
  DFFRQX2M \data_reg[4]  ( .D(n18), .CK(CLK), .RN(RST), .Q(data[4]) );
  DFFRQX2M \data_reg[2]  ( .D(n16), .CK(CLK), .RN(RST), .Q(data[2]) );
  DFFRQX2M \data_reg[7]  ( .D(n21), .CK(CLK), .RN(RST), .Q(data[7]) );
  DFFRQX2M \data_reg[3]  ( .D(n17), .CK(CLK), .RN(RST), .Q(data[3]) );
  INVX2M U3 ( .A(data_valid), .Y(n24) );
  OAI22X1M U4 ( .A0(n25), .A1(n33), .B0(n5), .B1(n32), .Y(n14) );
  OAI22X1M U5 ( .A0(n25), .A1(n32), .B0(n5), .B1(n31), .Y(n15) );
  OAI22X1M U6 ( .A0(n25), .A1(n31), .B0(n5), .B1(n30), .Y(n16) );
  OAI22X1M U7 ( .A0(n25), .A1(n30), .B0(n5), .B1(n29), .Y(n17) );
  OAI22X1M U8 ( .A0(n25), .A1(n29), .B0(n5), .B1(n28), .Y(n18) );
  OAI22X1M U9 ( .A0(n25), .A1(n28), .B0(n5), .B1(n27), .Y(n19) );
  OAI22X1M U10 ( .A0(n25), .A1(n27), .B0(n5), .B1(n26), .Y(n20) );
  INVX2M U11 ( .A(n5), .Y(n25) );
  NOR2X2M U12 ( .A(n33), .B(n24), .Y(P_DATA[0]) );
  NOR2X2M U13 ( .A(n32), .B(n24), .Y(P_DATA[1]) );
  NOR2X2M U14 ( .A(n31), .B(n24), .Y(P_DATA[2]) );
  NOR2X2M U15 ( .A(n30), .B(n24), .Y(P_DATA[3]) );
  NOR2X2M U16 ( .A(n29), .B(n24), .Y(P_DATA[4]) );
  NOR2X2M U17 ( .A(n28), .B(n24), .Y(P_DATA[5]) );
  NOR2X2M U18 ( .A(n27), .B(n24), .Y(P_DATA[6]) );
  NOR2X2M U19 ( .A(n26), .B(n24), .Y(P_DATA[7]) );
  NAND2X2M U20 ( .A(deser_en), .B(N9), .Y(n5) );
  OAI2BB2X1M U21 ( .B0(n25), .B1(n26), .A0N(sampled_bit), .A1N(n25), .Y(n21)
         );
  INVX2M U22 ( .A(data[7]), .Y(n26) );
  INVX2M U23 ( .A(data[3]), .Y(n30) );
  INVX2M U24 ( .A(data[2]), .Y(n31) );
  INVX2M U25 ( .A(data[4]), .Y(n29) );
  INVX2M U26 ( .A(data[5]), .Y(n28) );
  INVX2M U27 ( .A(data[1]), .Y(n32) );
  INVX2M U28 ( .A(data[6]), .Y(n27) );
  INVX2M U29 ( .A(data[0]), .Y(n33) );
  OR2X2M U30 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  INVX2M U31 ( .A(prescale[3]), .Y(n6) );
  CLKINVX1M U32 ( .A(prescale[0]), .Y(N3) );
  OAI2BB1X1M U33 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N4) );
  NOR2X1M U34 ( .A(n1), .B(prescale[2]), .Y(n2) );
  AO21XLM U35 ( .A0(n1), .A1(prescale[2]), .B0(n2), .Y(N5) );
  CLKNAND2X2M U36 ( .A(n2), .B(n6), .Y(n3) );
  OAI21X1M U37 ( .A0(n2), .A1(n6), .B0(n3), .Y(N6) );
  XNOR2X1M U38 ( .A(prescale[4]), .B(n3), .Y(N7) );
  NOR2X1M U39 ( .A(prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U40 ( .A(prescale[5]), .B(n4), .Y(N8) );
  NOR2BX1M U41 ( .AN(edge_cnt[0]), .B(N3), .Y(n7) );
  OAI2B2X1M U42 ( .A1N(N4), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n11) );
  NOR2BX1M U43 ( .AN(N3), .B(edge_cnt[0]), .Y(n8) );
  OAI2B2X1M U44 ( .A1N(edge_cnt[1]), .A0(n8), .B0(N4), .B1(n8), .Y(n10) );
  XNOR2X1M U45 ( .A(N8), .B(edge_cnt[5]), .Y(n9) );
  NAND3X1M U46 ( .A(n11), .B(n10), .C(n9), .Y(n23) );
  CLKXOR2X2M U47 ( .A(N7), .B(edge_cnt[4]), .Y(n22) );
  CLKXOR2X2M U48 ( .A(N5), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U49 ( .A(N6), .B(edge_cnt[3]), .Y(n12) );
  NOR4X1M U50 ( .A(n23), .B(n22), .C(n13), .D(n12), .Y(N9) );
endmodule


module start_check ( sampled_bit, strt_check_en, edge_cnt, prescale, CLK, RST, 
        strt_glitch );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input sampled_bit, strt_check_en, CLK, RST;
  output strt_glitch;
  wire   N6, N7, N8, N9, N10, N11, n5, n6, \add_19/carry[4] ,
         \add_19/carry[3] , \add_19/carry[2] , n1, n2, n3, n4, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16;

  DFFRQX2M strt_glitch_reg ( .D(n6), .CK(CLK), .RN(RST), .Q(strt_glitch) );
  INVX2M U3 ( .A(prescale[1]), .Y(n1) );
  INVX2M U4 ( .A(N8), .Y(n12) );
  INVX2M U5 ( .A(edge_cnt[3]), .Y(n14) );
  INVX2M U6 ( .A(N7), .Y(n11) );
  INVX2M U7 ( .A(edge_cnt[2]), .Y(n13) );
  AO2B2X2M U8 ( .B0(strt_glitch), .B1(n5), .A0(sampled_bit), .A1N(n5), .Y(n6)
         );
  NAND2X2M U9 ( .A(strt_check_en), .B(N11), .Y(n5) );
  INVX2M U10 ( .A(edge_cnt[4]), .Y(n15) );
  INVX2M U11 ( .A(edge_cnt[5]), .Y(n16) );
  ADDHX1M U12 ( .A(prescale[3]), .B(\add_19/carry[2] ), .CO(\add_19/carry[3] ), 
        .S(N7) );
  ADDHX1M U13 ( .A(prescale[4]), .B(\add_19/carry[3] ), .CO(\add_19/carry[4] ), 
        .S(N8) );
  ADDHX1M U14 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_19/carry[2] ), .S(
        N6) );
  ADDHX1M U15 ( .A(prescale[5]), .B(\add_19/carry[4] ), .CO(N10), .S(N9) );
  NOR2X1M U16 ( .A(N9), .B(n15), .Y(n9) );
  NAND2BX1M U17 ( .AN(n1), .B(edge_cnt[0]), .Y(n3) );
  AOI2BB1X1M U18 ( .A0N(n3), .A1N(N6), .B0(edge_cnt[1]), .Y(n2) );
  AOI221XLM U19 ( .A0(N7), .A1(n13), .B0(N6), .B1(n3), .C0(n2), .Y(n4) );
  AOI221XLM U20 ( .A0(edge_cnt[3]), .A1(n12), .B0(edge_cnt[2]), .B1(n11), .C0(
        n4), .Y(n7) );
  AOI221XLM U21 ( .A0(N9), .A1(n15), .B0(N8), .B1(n14), .C0(n7), .Y(n8) );
  OAI2BB2X1M U22 ( .B0(n9), .B1(n8), .A0N(n16), .A1N(N10), .Y(n10) );
  OAI21X1M U23 ( .A0(N10), .A1(n16), .B0(n10), .Y(N11) );
endmodule


module parity_check ( sampled_bit, par_check_en, PAR_TYP, prescale, data, 
        bit_cnt, edge_cnt, CLK, RST, par_err );
  input [5:0] prescale;
  input [7:0] data;
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input sampled_bit, par_check_en, PAR_TYP, CLK, RST;
  output par_err;
  wire   N10, N11, N12, N13, N14, N15, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         \add_23/carry[4] , \add_23/carry[3] , \add_23/carry[2] , n1, n2, n3,
         n4, n14, n15, n16, n17, n18, n19;

  DFFRQX2M par_err_reg ( .D(n13), .CK(CLK), .RN(RST), .Q(par_err) );
  INVX2M U3 ( .A(prescale[1]), .Y(n1) );
  NOR3BX2M U4 ( .AN(N15), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n7) );
  XOR3XLM U5 ( .A(data[6]), .B(data[5]), .C(n11), .Y(n9) );
  XNOR2X2M U6 ( .A(sampled_bit), .B(data[7]), .Y(n11) );
  XOR3XLM U7 ( .A(data[1]), .B(data[0]), .C(n12), .Y(n8) );
  XNOR2X2M U8 ( .A(data[4]), .B(data[3]), .Y(n12) );
  OAI2BB2X1M U9 ( .B0(n5), .B1(n6), .A0N(par_err), .A1N(n6), .Y(n13) );
  XOR3XLM U10 ( .A(n8), .B(n9), .C(n10), .Y(n5) );
  NAND4X2M U11 ( .A(bit_cnt[3]), .B(bit_cnt[0]), .C(par_check_en), .D(n7), .Y(
        n6) );
  XNOR2X2M U12 ( .A(data[2]), .B(PAR_TYP), .Y(n10) );
  ADDHX1M U13 ( .A(prescale[3]), .B(\add_23/carry[2] ), .CO(\add_23/carry[3] ), 
        .S(N11) );
  ADDHX1M U14 ( .A(prescale[4]), .B(\add_23/carry[3] ), .CO(\add_23/carry[4] ), 
        .S(N12) );
  ADDHX1M U15 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_23/carry[2] ), .S(
        N10) );
  ADDHX1M U16 ( .A(prescale[5]), .B(\add_23/carry[4] ), .CO(N14), .S(N13) );
  NOR2BX1M U17 ( .AN(edge_cnt[0]), .B(n1), .Y(n2) );
  OAI2B2X1M U18 ( .A1N(N10), .A0(n2), .B0(edge_cnt[1]), .B1(n2), .Y(n15) );
  NOR2BX1M U19 ( .AN(n1), .B(edge_cnt[0]), .Y(n3) );
  OAI2B2X1M U20 ( .A1N(edge_cnt[1]), .A0(n3), .B0(N10), .B1(n3), .Y(n14) );
  XNOR2X1M U21 ( .A(N14), .B(edge_cnt[5]), .Y(n4) );
  NAND3X1M U22 ( .A(n15), .B(n14), .C(n4), .Y(n19) );
  CLKXOR2X2M U23 ( .A(N13), .B(edge_cnt[4]), .Y(n18) );
  CLKXOR2X2M U24 ( .A(N11), .B(edge_cnt[2]), .Y(n17) );
  CLKXOR2X2M U25 ( .A(N12), .B(edge_cnt[3]), .Y(n16) );
  NOR4X1M U26 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(N15) );
endmodule


module stop_check ( sampled_bit, stp_check_en, edge_cnt, prescale, CLK, RST, 
        stp_err );
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input sampled_bit, stp_check_en, CLK, RST;
  output stp_err;
  wire   N6, N7, N8, N9, N10, N11, n5, n6, \add_19/carry[4] ,
         \add_19/carry[3] , \add_19/carry[2] , n1, n2, n3, n4, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16;

  DFFRQX2M stp_err_reg ( .D(n6), .CK(CLK), .RN(RST), .Q(stp_err) );
  INVX2M U3 ( .A(prescale[1]), .Y(n1) );
  INVX2M U4 ( .A(N8), .Y(n12) );
  INVX2M U5 ( .A(edge_cnt[3]), .Y(n14) );
  INVX2M U6 ( .A(N7), .Y(n11) );
  OAI2BB2X1M U7 ( .B0(sampled_bit), .B1(n5), .A0N(stp_err), .A1N(n5), .Y(n6)
         );
  NAND2X2M U8 ( .A(stp_check_en), .B(N11), .Y(n5) );
  INVX2M U9 ( .A(edge_cnt[2]), .Y(n13) );
  INVX2M U10 ( .A(edge_cnt[4]), .Y(n15) );
  INVX2M U11 ( .A(edge_cnt[5]), .Y(n16) );
  ADDHX1M U12 ( .A(prescale[3]), .B(\add_19/carry[2] ), .CO(\add_19/carry[3] ), 
        .S(N7) );
  ADDHX1M U13 ( .A(prescale[4]), .B(\add_19/carry[3] ), .CO(\add_19/carry[4] ), 
        .S(N8) );
  ADDHX1M U14 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_19/carry[2] ), .S(
        N6) );
  ADDHX1M U15 ( .A(prescale[5]), .B(\add_19/carry[4] ), .CO(N10), .S(N9) );
  NOR2X1M U16 ( .A(N9), .B(n15), .Y(n9) );
  NAND2BX1M U17 ( .AN(n1), .B(edge_cnt[0]), .Y(n3) );
  AOI2BB1X1M U18 ( .A0N(n3), .A1N(N6), .B0(edge_cnt[1]), .Y(n2) );
  AOI221XLM U19 ( .A0(N7), .A1(n13), .B0(N6), .B1(n3), .C0(n2), .Y(n4) );
  AOI221XLM U20 ( .A0(edge_cnt[3]), .A1(n12), .B0(edge_cnt[2]), .B1(n11), .C0(
        n4), .Y(n7) );
  AOI221XLM U21 ( .A0(N9), .A1(n15), .B0(N8), .B1(n14), .C0(n7), .Y(n8) );
  OAI2BB2X1M U22 ( .B0(n9), .B1(n8), .A0N(n16), .A1N(N10), .Y(n10) );
  OAI21X1M U23 ( .A0(N10), .A1(n16), .B0(n10), .Y(N11) );
endmodule


module RX_FSM ( RX_IN, PAR_EN, bit_cnt, edge_cnt, prescale, strt_glitch, 
        par_err, stp_err, CLK, RST, enable, dat_samp_en, deser_en, 
        strt_check_en, par_check_en, stp_check_en, data_valid );
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [5:0] prescale;
  input RX_IN, PAR_EN, strt_glitch, par_err, stp_err, CLK, RST;
  output enable, dat_samp_en, deser_en, strt_check_en, par_check_en,
         stp_check_en, data_valid;
  wire   enable_c, deser_en_c, strt_check_en_c, par_check_en_c, stp_check_en_c,
         N42, N43, N44, N45, N46, N47, N48, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n46, n47, n48, n49;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M par_check_en_reg ( .D(par_check_en_c), .CK(CLK), .RN(RST), .Q(
        par_check_en) );
  DFFRQX2M stp_check_en_reg ( .D(stp_check_en_c), .CK(CLK), .RN(RST), .Q(
        stp_check_en) );
  DFFRQX2M deser_en_reg ( .D(deser_en_c), .CK(CLK), .RN(RST), .Q(deser_en) );
  DFFRQX2M strt_check_en_reg ( .D(strt_check_en_c), .CK(CLK), .RN(RST), .Q(
        strt_check_en) );
  DFFRQX2M dat_samp_en_reg ( .D(enable_c), .CK(CLK), .RN(RST), .Q(dat_samp_en)
         );
  DFFRQX2M enable_reg ( .D(enable_c), .CK(CLK), .RN(RST), .Q(enable) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  INVX2M U3 ( .A(n36), .Y(n26) );
  NAND3X2M U4 ( .A(n47), .B(n48), .C(n34), .Y(n32) );
  NOR2X2M U5 ( .A(n31), .B(n28), .Y(n36) );
  INVX2M U6 ( .A(deser_en_c), .Y(n25) );
  NOR2X2M U7 ( .A(n26), .B(n2), .Y(stp_check_en_c) );
  NOR4X1M U8 ( .A(stp_err), .B(par_err), .C(n26), .D(n1), .Y(data_valid) );
  OR4X1M U9 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(n1) );
  OR2X2M U10 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  OAI221X1M U11 ( .A0(current_state[2]), .A1(n29), .B0(RX_IN), .B1(n46), .C0(
        n31), .Y(enable_c) );
  NOR4X1M U12 ( .A(n28), .B(n46), .C(n27), .D(RX_IN), .Y(n30) );
  OAI31X1M U13 ( .A0(n29), .A1(current_state[2]), .A2(current_state[1]), .B0(
        n24), .Y(strt_check_en_c) );
  INVX2M U14 ( .A(n30), .Y(n24) );
  OAI2B11X2M U15 ( .A1N(n32), .A0(n25), .B0(n40), .C0(n41), .Y(next_state[0])
         );
  NAND3X2M U16 ( .A(n46), .B(n28), .C(n43), .Y(n40) );
  AOI31X2M U17 ( .A0(n36), .A1(n42), .A2(n34), .B0(n30), .Y(n41) );
  OAI22X1M U18 ( .A0(current_state[0]), .A1(RX_IN), .B0(n44), .B1(n27), .Y(n43) );
  NOR2BX2M U19 ( .AN(RX_IN), .B(current_state[0]), .Y(n29) );
  NOR3BX2M U20 ( .AN(bit_cnt[3]), .B(n1), .C(bit_cnt[2]), .Y(n34) );
  NOR4BX1M U21 ( .AN(strt_glitch), .B(n45), .C(bit_cnt[0]), .D(n1), .Y(n44) );
  OR3X2M U22 ( .A(bit_cnt[2]), .B(bit_cnt[3]), .C(bit_cnt[1]), .Y(n45) );
  OAI31X1M U23 ( .A0(n25), .A1(PAR_EN), .A2(n32), .B0(n33), .Y(next_state[2])
         );
  AOI31X2M U24 ( .A0(bit_cnt[0]), .A1(n34), .A2(n35), .B0(n36), .Y(n33) );
  NOR3X2M U25 ( .A(n31), .B(par_err), .C(bit_cnt[1]), .Y(n35) );
  NAND3X2M U26 ( .A(n26), .B(n25), .C(n37), .Y(next_state[1]) );
  AOI2BB2XLM U27 ( .B0(n38), .B1(n39), .A0N(n31), .A1N(par_err), .Y(n37) );
  NOR4X1M U28 ( .A(strt_glitch), .B(current_state[2]), .C(bit_cnt[3]), .D(
        bit_cnt[2]), .Y(n39) );
  NOR4X1M U29 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(n27), .D(n1), .Y(n38) );
  OAI33X2M U30 ( .A0(n48), .A1(bit_cnt[0]), .A2(n49), .B0(n47), .B1(bit_cnt[1]), .B2(PAR_EN), .Y(n42) );
  INVX2M U31 ( .A(PAR_EN), .Y(n49) );
  NOR3X2M U32 ( .A(n27), .B(current_state[2]), .C(n46), .Y(deser_en_c) );
  OR4X1M U33 ( .A(n23), .B(n22), .C(n21), .D(n20), .Y(n2) );
  NOR3X2M U34 ( .A(n2), .B(current_state[2]), .C(n31), .Y(par_check_en_c) );
  NAND2X2M U35 ( .A(current_state[1]), .B(n27), .Y(n31) );
  INVX2M U36 ( .A(current_state[0]), .Y(n27) );
  INVX2M U37 ( .A(current_state[2]), .Y(n28) );
  INVX2M U38 ( .A(current_state[1]), .Y(n46) );
  INVX2M U39 ( .A(bit_cnt[0]), .Y(n47) );
  INVX2M U40 ( .A(bit_cnt[1]), .Y(n48) );
  CLKINVX1M U41 ( .A(prescale[0]), .Y(N42) );
  OAI2BB1X1M U42 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(N43) );
  OR2X1M U43 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U44 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N44) );
  OR2X1M U45 ( .A(n4), .B(prescale[3]), .Y(n5) );
  OAI2BB1X1M U46 ( .A0N(n4), .A1N(prescale[3]), .B0(n5), .Y(N45) );
  OR2X1M U47 ( .A(n5), .B(prescale[4]), .Y(n6) );
  OAI2BB1X1M U48 ( .A0N(n5), .A1N(prescale[4]), .B0(n6), .Y(N46) );
  NOR2X1M U49 ( .A(n6), .B(prescale[5]), .Y(N48) );
  AO21XLM U50 ( .A0(n6), .A1(prescale[5]), .B0(N48), .Y(N47) );
  NOR2BX1M U51 ( .AN(N42), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U52 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N43), .B1(n7), .Y(n11) );
  XNOR2X1M U53 ( .A(N47), .B(edge_cnt[5]), .Y(n10) );
  NOR2BX1M U54 ( .AN(edge_cnt[0]), .B(N42), .Y(n8) );
  OAI2B2X1M U55 ( .A1N(N43), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n9) );
  NAND4BX1M U56 ( .AN(N48), .B(n11), .C(n10), .D(n9), .Y(n15) );
  CLKXOR2X2M U57 ( .A(N46), .B(edge_cnt[4]), .Y(n14) );
  CLKXOR2X2M U58 ( .A(N44), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U59 ( .A(N45), .B(edge_cnt[3]), .Y(n12) );
  NOR2BX1M U60 ( .AN(edge_cnt[0]), .B(prescale[1]), .Y(n16) );
  OAI2B2X1M U61 ( .A1N(prescale[2]), .A0(n16), .B0(edge_cnt[1]), .B1(n16), .Y(
        n19) );
  NOR2BX1M U62 ( .AN(prescale[1]), .B(edge_cnt[0]), .Y(n17) );
  OAI2B2X1M U63 ( .A1N(edge_cnt[1]), .A0(n17), .B0(prescale[2]), .B1(n17), .Y(
        n18) );
  NAND3BX1M U64 ( .AN(edge_cnt[5]), .B(n19), .C(n18), .Y(n23) );
  CLKXOR2X2M U65 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n22) );
  CLKXOR2X2M U66 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n21) );
  CLKXOR2X2M U67 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n20) );
endmodule


module UART_RX_DWIDTH8 ( RX_IN, prescale, PAR_EN, PAR_TYP, CLK, RST, P_DATA, 
        Parity_Error, Stop_Error, data_valid );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output Parity_Error, Stop_Error, data_valid;
  wire   enable, dat_samp_en, sampled_bit, deser_en, strt_check_en,
         strt_glitch, par_check_en, stp_check_en, n1, n2, n3, n4;
  wire   [3:0] bit_cnt;
  wire   [5:0] edge_cnt;
  wire   [7:0] data;

  edge_bit_counter u_counter ( .enable(enable), .prescale({prescale[5:2], n3, 
        prescale[0]}), .PAR_EN(PAR_EN), .CLK(CLK), .RST(n1), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt) );
  data_sampling u_sampling ( .RX_IN(RX_IN), .prescale({prescale[5:2], n3, 
        prescale[0]}), .edge_cnt(edge_cnt), .dat_samp_en(dat_samp_en), .CLK(
        CLK), .RST(n1), .sampled_bit(sampled_bit) );
  deserializer u_deser ( .sampled_bit(sampled_bit), .deser_en(deser_en), 
        .data_valid(data_valid), .prescale({prescale[5:2], n3, prescale[0]}), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .CLK(CLK), .RST(n1), .P_DATA(
        P_DATA), .data(data) );
  start_check u_strt ( .sampled_bit(sampled_bit), .strt_check_en(strt_check_en), .edge_cnt(edge_cnt), .prescale({prescale[5:2], n3, prescale[0]}), .CLK(CLK), 
        .RST(n1), .strt_glitch(strt_glitch) );
  parity_check u_par ( .sampled_bit(sampled_bit), .par_check_en(par_check_en), 
        .PAR_TYP(PAR_TYP), .prescale({prescale[5:2], n3, prescale[0]}), .data(
        data), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .CLK(CLK), .RST(n1), 
        .par_err(Parity_Error) );
  stop_check u_stp ( .sampled_bit(sampled_bit), .stp_check_en(stp_check_en), 
        .edge_cnt(edge_cnt), .prescale({prescale[5:2], n3, prescale[0]}), 
        .CLK(CLK), .RST(n1), .stp_err(Stop_Error) );
  RX_FSM u_fsm ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .bit_cnt(bit_cnt), .edge_cnt(
        edge_cnt), .prescale({prescale[5:2], n3, prescale[0]}), .strt_glitch(
        strt_glitch), .par_err(Parity_Error), .stp_err(Stop_Error), .CLK(CLK), 
        .RST(n1), .enable(enable), .dat_samp_en(dat_samp_en), .deser_en(
        deser_en), .strt_check_en(strt_check_en), .par_check_en(par_check_en), 
        .stp_check_en(stp_check_en), .data_valid(data_valid) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX4M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(RST), .Y(n2) );
  INVX2M U4 ( .A(prescale[1]), .Y(n4) );
endmodule


module UART_TOP_DWIDTH8 ( RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_P, TX_IN_V, 
        Prescale, PAR_EN, PAR_TYP, RX_OUT_P, RX_OUT_V, TX_OUT_S, TX_OUT_V, 
        Parity_Error, Stop_Error );
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, PAR_EN, PAR_TYP;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, Parity_Error, Stop_Error;
  wire   n1, n2, n3;

  UART_TX_DWIDTH8 u0_UART_TX ( .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), 
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .clk(TX_CLK), .rst(n1), .TX_OUT(
        TX_OUT_S), .busy(TX_OUT_V) );
  UART_RX_DWIDTH8 u0_UART_RX ( .RX_IN(RX_IN_S), .prescale({Prescale[5:2], n3, 
        Prescale[0]}), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .CLK(RX_CLK), .RST(
        n1), .P_DATA(RX_OUT_P), .Parity_Error(Parity_Error), .Stop_Error(
        Stop_Error), .data_valid(RX_OUT_V) );
  BUFX2M U1 ( .A(Prescale[1]), .Y(n3) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(RST), .Y(n2) );
endmodule


module PULSE_GEN ( clk, rst, lvl_sig, pulse_sig );
  input clk, rst, lvl_sig;
  output pulse_sig;
  wire   pls_flop, rcv_flop;

  DFFRQX2M rcv_flop_reg ( .D(lvl_sig), .CK(clk), .RN(rst), .Q(rcv_flop) );
  DFFRQX2M pls_flop_reg ( .D(rcv_flop), .CK(clk), .RN(rst), .Q(pls_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( unsync_bus, bus_enable, CLK, RST, 
        sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse_reg, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_reg;

  EDFFHQX2M pulse_reg_reg ( .D(sync_reg[1]), .E(RST), .CK(CLK), .Q(pulse_reg)
         );
  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(CLK), .RN(RST), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  EDFFHQX2M enable_pulse_reg ( .D(n10), .E(RST), .CK(CLK), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  AO22X1M U4 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U5 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U7 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U8 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U9 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7)
         );
  AO22X1M U10 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U11 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
  NAND2BX2M U12 ( .AN(pulse_reg), .B(sync_reg[1]), .Y(n1) );
endmodule


module FIFO_WR ( winc, wclk, wrst_n, wq2_rptr, waddr, wptr, wfull );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, wclk, wrst_n;
  output wfull;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [3:0] g_wptr_comb;

  DFFRQX2M \b_wptr_reg[3]  ( .D(n11), .CK(wclk), .RN(wrst_n), .Q(
        g_wptr_comb[3]) );
  DFFRQX2M \b_wptr_reg[2]  ( .D(n12), .CK(wclk), .RN(wrst_n), .Q(waddr[2]) );
  DFFRQX2M \wptr_reg[2]  ( .D(g_wptr_comb[2]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[2]) );
  DFFRQX2M \wptr_reg[1]  ( .D(g_wptr_comb[1]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[1]) );
  DFFRQX2M \wptr_reg[0]  ( .D(g_wptr_comb[0]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[0]) );
  DFFRX1M \b_wptr_reg[0]  ( .D(n14), .CK(wclk), .RN(wrst_n), .Q(waddr[0]), 
        .QN(n1) );
  DFFRQX2M \b_wptr_reg[1]  ( .D(n13), .CK(wclk), .RN(wrst_n), .Q(waddr[1]) );
  DFFRQX2M \wptr_reg[3]  ( .D(g_wptr_comb[3]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[3]) );
  NAND2X2M U3 ( .A(winc), .B(n2), .Y(n6) );
  INVX2M U4 ( .A(n2), .Y(wfull) );
  XNOR2X2M U5 ( .A(g_wptr_comb[1]), .B(wq2_rptr[1]), .Y(n7) );
  XNOR2X2M U6 ( .A(n1), .B(waddr[1]), .Y(g_wptr_comb[0]) );
  NOR2X2M U7 ( .A(n6), .B(n1), .Y(n5) );
  XNOR2X2M U8 ( .A(g_wptr_comb[3]), .B(n3), .Y(n11) );
  NAND2BX2M U9 ( .AN(n4), .B(waddr[2]), .Y(n3) );
  NAND4X2M U10 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  CLKXOR2X2M U11 ( .A(wq2_rptr[3]), .B(g_wptr_comb[3]), .Y(n10) );
  XNOR2X2M U12 ( .A(g_wptr_comb[0]), .B(wq2_rptr[0]), .Y(n8) );
  CLKXOR2X2M U13 ( .A(wq2_rptr[2]), .B(g_wptr_comb[2]), .Y(n9) );
  NAND2X2M U14 ( .A(n5), .B(waddr[1]), .Y(n4) );
  CLKXOR2X2M U15 ( .A(g_wptr_comb[3]), .B(waddr[2]), .Y(g_wptr_comb[2]) );
  CLKXOR2X2M U16 ( .A(waddr[1]), .B(waddr[2]), .Y(g_wptr_comb[1]) );
  XNOR2X2M U17 ( .A(waddr[2]), .B(n4), .Y(n12) );
  CLKXOR2X2M U18 ( .A(waddr[1]), .B(n5), .Y(n13) );
  CLKXOR2X2M U19 ( .A(n1), .B(n6), .Y(n14) );
endmodule


module FIFO_RD ( rinc, rclk, rrst_n, rq2_wptr, raddr, rptr, rempty );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, rclk, rrst_n;
  output rempty;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [3:0] g_rptr_comb;

  DFFRX1M \b_rptr_reg[0]  ( .D(n14), .CK(rclk), .RN(rrst_n), .Q(raddr[0]), 
        .QN(n1) );
  DFFRQX2M \b_rptr_reg[3]  ( .D(n11), .CK(rclk), .RN(rrst_n), .Q(
        g_rptr_comb[3]) );
  DFFRQX2M \b_rptr_reg[2]  ( .D(n12), .CK(rclk), .RN(rrst_n), .Q(raddr[2]) );
  DFFRQX2M \rptr_reg[3]  ( .D(g_rptr_comb[3]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[3]) );
  DFFRQX2M \rptr_reg[2]  ( .D(g_rptr_comb[2]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[2]) );
  DFFRQX2M \rptr_reg[1]  ( .D(g_rptr_comb[1]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[1]) );
  DFFRQX2M \rptr_reg[0]  ( .D(g_rptr_comb[0]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[0]) );
  DFFRQX2M \b_rptr_reg[1]  ( .D(n13), .CK(rclk), .RN(rrst_n), .Q(raddr[1]) );
  INVX2M U3 ( .A(n2), .Y(rempty) );
  XNOR2X2M U4 ( .A(g_rptr_comb[1]), .B(rq2_wptr[1]), .Y(n7) );
  XNOR2X2M U5 ( .A(n1), .B(raddr[1]), .Y(g_rptr_comb[0]) );
  NOR2X2M U6 ( .A(n6), .B(n1), .Y(n5) );
  XNOR2X2M U7 ( .A(raddr[2]), .B(n4), .Y(n12) );
  NAND4X2M U8 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  XNOR2X2M U9 ( .A(g_rptr_comb[3]), .B(rq2_wptr[3]), .Y(n9) );
  XNOR2X2M U10 ( .A(g_rptr_comb[2]), .B(rq2_wptr[2]), .Y(n10) );
  XNOR2X2M U11 ( .A(g_rptr_comb[0]), .B(rq2_wptr[0]), .Y(n8) );
  NAND2X2M U12 ( .A(n5), .B(raddr[1]), .Y(n4) );
  NAND2X2M U13 ( .A(rinc), .B(n2), .Y(n6) );
  XNOR2X2M U14 ( .A(g_rptr_comb[3]), .B(n3), .Y(n11) );
  NAND2BX2M U15 ( .AN(n4), .B(raddr[2]), .Y(n3) );
  CLKXOR2X2M U16 ( .A(raddr[1]), .B(raddr[2]), .Y(g_rptr_comb[1]) );
  CLKXOR2X2M U17 ( .A(g_rptr_comb[3]), .B(raddr[2]), .Y(g_rptr_comb[2]) );
  CLKXOR2X2M U18 ( .A(raddr[1]), .B(n5), .Y(n13) );
  CLKXOR2X2M U19 ( .A(n1), .B(n6), .Y(n14) );
endmodule


module DF_SYNC_0 ( ptr, clk, rst_n, sync );
  input [3:0] ptr;
  output [3:0] sync;
  input clk, rst_n;

  wire   [3:0] sync_0;

  DFFRQX2M \sync_1_reg[3]  ( .D(sync_0[3]), .CK(clk), .RN(rst_n), .Q(sync[3])
         );
  DFFRQX2M \sync_1_reg[2]  ( .D(sync_0[2]), .CK(clk), .RN(rst_n), .Q(sync[2])
         );
  DFFRQX2M \sync_1_reg[1]  ( .D(sync_0[1]), .CK(clk), .RN(rst_n), .Q(sync[1])
         );
  DFFRQX2M \sync_1_reg[0]  ( .D(sync_0[0]), .CK(clk), .RN(rst_n), .Q(sync[0])
         );
  DFFRQX2M \sync_0_reg[3]  ( .D(ptr[3]), .CK(clk), .RN(rst_n), .Q(sync_0[3])
         );
  DFFRQX2M \sync_0_reg[2]  ( .D(ptr[2]), .CK(clk), .RN(rst_n), .Q(sync_0[2])
         );
  DFFRQX2M \sync_0_reg[1]  ( .D(ptr[1]), .CK(clk), .RN(rst_n), .Q(sync_0[1])
         );
  DFFRQX2M \sync_0_reg[0]  ( .D(ptr[0]), .CK(clk), .RN(rst_n), .Q(sync_0[0])
         );
endmodule


module DF_SYNC_1 ( ptr, clk, rst_n, sync );
  input [3:0] ptr;
  output [3:0] sync;
  input clk, rst_n;

  wire   [3:0] sync_0;

  DFFRQX2M \sync_1_reg[1]  ( .D(sync_0[1]), .CK(clk), .RN(rst_n), .Q(sync[1])
         );
  DFFRQX2M \sync_1_reg[0]  ( .D(sync_0[0]), .CK(clk), .RN(rst_n), .Q(sync[0])
         );
  DFFRQX2M \sync_1_reg[3]  ( .D(sync_0[3]), .CK(clk), .RN(rst_n), .Q(sync[3])
         );
  DFFRQX2M \sync_1_reg[2]  ( .D(sync_0[2]), .CK(clk), .RN(rst_n), .Q(sync[2])
         );
  DFFRQX2M \sync_0_reg[3]  ( .D(ptr[3]), .CK(clk), .RN(rst_n), .Q(sync_0[3])
         );
  DFFRQX2M \sync_0_reg[2]  ( .D(ptr[2]), .CK(clk), .RN(rst_n), .Q(sync_0[2])
         );
  DFFRQX2M \sync_0_reg[1]  ( .D(ptr[1]), .CK(clk), .RN(rst_n), .Q(sync_0[1])
         );
  DFFRQX2M \sync_0_reg[0]  ( .D(ptr[0]), .CK(clk), .RN(rst_n), .Q(sync_0[0])
         );
endmodule


module FIFO_MEM ( wdata, waddr, raddr, winc, wfull, wclk, wrst_n, rdata );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input winc, wfull, wclk, wrst_n;
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
         \MEM[7][4] , \MEM[7][3] , \MEM[7][2] , \MEM[7][1] , \MEM[7][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];

  DFFRQX2M \MEM_reg[1][7]  ( .D(n77), .CK(wclk), .RN(n101), .Q(\MEM[1][7] ) );
  DFFRQX2M \MEM_reg[1][6]  ( .D(n76), .CK(wclk), .RN(n101), .Q(\MEM[1][6] ) );
  DFFRQX2M \MEM_reg[1][5]  ( .D(n75), .CK(wclk), .RN(n101), .Q(\MEM[1][5] ) );
  DFFRQX2M \MEM_reg[1][4]  ( .D(n74), .CK(wclk), .RN(n101), .Q(\MEM[1][4] ) );
  DFFRQX2M \MEM_reg[1][3]  ( .D(n73), .CK(wclk), .RN(n101), .Q(\MEM[1][3] ) );
  DFFRQX2M \MEM_reg[1][2]  ( .D(n72), .CK(wclk), .RN(n102), .Q(\MEM[1][2] ) );
  DFFRQX2M \MEM_reg[1][1]  ( .D(n71), .CK(wclk), .RN(n102), .Q(\MEM[1][1] ) );
  DFFRQX2M \MEM_reg[1][0]  ( .D(n70), .CK(wclk), .RN(n102), .Q(\MEM[1][0] ) );
  DFFRQX2M \MEM_reg[5][7]  ( .D(n45), .CK(wclk), .RN(n104), .Q(\MEM[5][7] ) );
  DFFRQX2M \MEM_reg[5][6]  ( .D(n44), .CK(wclk), .RN(n104), .Q(\MEM[5][6] ) );
  DFFRQX2M \MEM_reg[5][5]  ( .D(n43), .CK(wclk), .RN(n104), .Q(\MEM[5][5] ) );
  DFFRQX2M \MEM_reg[5][4]  ( .D(n42), .CK(wclk), .RN(n104), .Q(\MEM[5][4] ) );
  DFFRQX2M \MEM_reg[5][3]  ( .D(n41), .CK(wclk), .RN(n104), .Q(\MEM[5][3] ) );
  DFFRQX2M \MEM_reg[5][2]  ( .D(n40), .CK(wclk), .RN(n104), .Q(\MEM[5][2] ) );
  DFFRQX2M \MEM_reg[5][1]  ( .D(n39), .CK(wclk), .RN(n104), .Q(\MEM[5][1] ) );
  DFFRQX2M \MEM_reg[5][0]  ( .D(n38), .CK(wclk), .RN(n104), .Q(\MEM[5][0] ) );
  DFFRQX2M \MEM_reg[3][7]  ( .D(n61), .CK(wclk), .RN(n102), .Q(\MEM[3][7] ) );
  DFFRQX2M \MEM_reg[3][6]  ( .D(n60), .CK(wclk), .RN(n102), .Q(\MEM[3][6] ) );
  DFFRQX2M \MEM_reg[3][5]  ( .D(n59), .CK(wclk), .RN(n103), .Q(\MEM[3][5] ) );
  DFFRQX2M \MEM_reg[3][4]  ( .D(n58), .CK(wclk), .RN(n103), .Q(\MEM[3][4] ) );
  DFFRQX2M \MEM_reg[3][3]  ( .D(n57), .CK(wclk), .RN(n103), .Q(\MEM[3][3] ) );
  DFFRQX2M \MEM_reg[3][2]  ( .D(n56), .CK(wclk), .RN(n103), .Q(\MEM[3][2] ) );
  DFFRQX2M \MEM_reg[3][1]  ( .D(n55), .CK(wclk), .RN(n103), .Q(\MEM[3][1] ) );
  DFFRQX2M \MEM_reg[3][0]  ( .D(n54), .CK(wclk), .RN(n103), .Q(\MEM[3][0] ) );
  DFFRQX2M \MEM_reg[7][7]  ( .D(n29), .CK(wclk), .RN(n105), .Q(\MEM[7][7] ) );
  DFFRQX2M \MEM_reg[7][6]  ( .D(n28), .CK(wclk), .RN(n105), .Q(\MEM[7][6] ) );
  DFFRQX2M \MEM_reg[7][5]  ( .D(n27), .CK(wclk), .RN(n105), .Q(\MEM[7][5] ) );
  DFFRQX2M \MEM_reg[7][4]  ( .D(n26), .CK(wclk), .RN(n105), .Q(\MEM[7][4] ) );
  DFFRQX2M \MEM_reg[7][3]  ( .D(n25), .CK(wclk), .RN(n105), .Q(\MEM[7][3] ) );
  DFFRQX2M \MEM_reg[7][2]  ( .D(n24), .CK(wclk), .RN(n105), .Q(\MEM[7][2] ) );
  DFFRQX2M \MEM_reg[7][1]  ( .D(n23), .CK(wclk), .RN(n105), .Q(\MEM[7][1] ) );
  DFFRQX2M \MEM_reg[7][0]  ( .D(n22), .CK(wclk), .RN(n105), .Q(\MEM[7][0] ) );
  DFFRQX2M \MEM_reg[2][7]  ( .D(n69), .CK(wclk), .RN(n102), .Q(\MEM[2][7] ) );
  DFFRQX2M \MEM_reg[2][6]  ( .D(n68), .CK(wclk), .RN(n102), .Q(\MEM[2][6] ) );
  DFFRQX2M \MEM_reg[2][5]  ( .D(n67), .CK(wclk), .RN(n102), .Q(\MEM[2][5] ) );
  DFFRQX2M \MEM_reg[2][4]  ( .D(n66), .CK(wclk), .RN(n102), .Q(\MEM[2][4] ) );
  DFFRQX2M \MEM_reg[2][3]  ( .D(n65), .CK(wclk), .RN(n102), .Q(\MEM[2][3] ) );
  DFFRQX2M \MEM_reg[2][2]  ( .D(n64), .CK(wclk), .RN(n102), .Q(\MEM[2][2] ) );
  DFFRQX2M \MEM_reg[2][1]  ( .D(n63), .CK(wclk), .RN(n102), .Q(\MEM[2][1] ) );
  DFFRQX2M \MEM_reg[2][0]  ( .D(n62), .CK(wclk), .RN(n102), .Q(\MEM[2][0] ) );
  DFFRQX2M \MEM_reg[6][7]  ( .D(n37), .CK(wclk), .RN(n104), .Q(\MEM[6][7] ) );
  DFFRQX2M \MEM_reg[6][6]  ( .D(n36), .CK(wclk), .RN(n104), .Q(\MEM[6][6] ) );
  DFFRQX2M \MEM_reg[6][5]  ( .D(n35), .CK(wclk), .RN(n104), .Q(\MEM[6][5] ) );
  DFFRQX2M \MEM_reg[6][4]  ( .D(n34), .CK(wclk), .RN(n104), .Q(\MEM[6][4] ) );
  DFFRQX2M \MEM_reg[6][3]  ( .D(n33), .CK(wclk), .RN(n105), .Q(\MEM[6][3] ) );
  DFFRQX2M \MEM_reg[6][2]  ( .D(n32), .CK(wclk), .RN(n105), .Q(\MEM[6][2] ) );
  DFFRQX2M \MEM_reg[6][1]  ( .D(n31), .CK(wclk), .RN(n105), .Q(\MEM[6][1] ) );
  DFFRQX2M \MEM_reg[6][0]  ( .D(n30), .CK(wclk), .RN(n105), .Q(\MEM[6][0] ) );
  DFFRQX2M \MEM_reg[0][7]  ( .D(n85), .CK(wclk), .RN(n101), .Q(\MEM[0][7] ) );
  DFFRQX2M \MEM_reg[0][6]  ( .D(n84), .CK(wclk), .RN(n101), .Q(\MEM[0][6] ) );
  DFFRQX2M \MEM_reg[0][5]  ( .D(n83), .CK(wclk), .RN(n101), .Q(\MEM[0][5] ) );
  DFFRQX2M \MEM_reg[0][4]  ( .D(n82), .CK(wclk), .RN(n101), .Q(\MEM[0][4] ) );
  DFFRQX2M \MEM_reg[0][3]  ( .D(n81), .CK(wclk), .RN(n101), .Q(\MEM[0][3] ) );
  DFFRQX2M \MEM_reg[0][2]  ( .D(n80), .CK(wclk), .RN(n101), .Q(\MEM[0][2] ) );
  DFFRQX2M \MEM_reg[0][1]  ( .D(n79), .CK(wclk), .RN(n101), .Q(\MEM[0][1] ) );
  DFFRQX2M \MEM_reg[0][0]  ( .D(n78), .CK(wclk), .RN(n101), .Q(\MEM[0][0] ) );
  DFFRQX2M \MEM_reg[4][7]  ( .D(n53), .CK(wclk), .RN(n103), .Q(\MEM[4][7] ) );
  DFFRQX2M \MEM_reg[4][6]  ( .D(n52), .CK(wclk), .RN(n103), .Q(\MEM[4][6] ) );
  DFFRQX2M \MEM_reg[4][5]  ( .D(n51), .CK(wclk), .RN(n103), .Q(\MEM[4][5] ) );
  DFFRQX2M \MEM_reg[4][4]  ( .D(n50), .CK(wclk), .RN(n103), .Q(\MEM[4][4] ) );
  DFFRQX2M \MEM_reg[4][3]  ( .D(n49), .CK(wclk), .RN(n103), .Q(\MEM[4][3] ) );
  DFFRQX2M \MEM_reg[4][2]  ( .D(n48), .CK(wclk), .RN(n103), .Q(\MEM[4][2] ) );
  DFFRQX2M \MEM_reg[4][1]  ( .D(n47), .CK(wclk), .RN(n103), .Q(\MEM[4][1] ) );
  DFFRQX2M \MEM_reg[4][0]  ( .D(n46), .CK(wclk), .RN(n104), .Q(\MEM[4][0] ) );
  BUFX2M U2 ( .A(n11), .Y(n98) );
  BUFX2M U3 ( .A(n13), .Y(n97) );
  BUFX2M U4 ( .A(n14), .Y(n96) );
  BUFX2M U5 ( .A(n17), .Y(n95) );
  BUFX2M U6 ( .A(n19), .Y(n94) );
  BUFX2M U7 ( .A(n20), .Y(n93) );
  BUFX2M U8 ( .A(n99), .Y(n103) );
  BUFX2M U9 ( .A(n99), .Y(n102) );
  BUFX2M U10 ( .A(n99), .Y(n101) );
  BUFX2M U11 ( .A(n100), .Y(n104) );
  BUFX2M U12 ( .A(n100), .Y(n105) );
  NOR2BX2M U13 ( .AN(winc), .B(wfull), .Y(n16) );
  BUFX2M U14 ( .A(wrst_n), .Y(n99) );
  BUFX2M U15 ( .A(wrst_n), .Y(n100) );
  NAND3X2M U16 ( .A(n106), .B(n107), .C(n12), .Y(n15) );
  NAND3X2M U17 ( .A(n106), .B(n107), .C(n18), .Y(n21) );
  INVX2M U18 ( .A(wdata[0]), .Y(n108) );
  INVX2M U19 ( .A(wdata[1]), .Y(n109) );
  INVX2M U20 ( .A(wdata[2]), .Y(n110) );
  INVX2M U21 ( .A(wdata[3]), .Y(n111) );
  INVX2M U22 ( .A(wdata[4]), .Y(n112) );
  INVX2M U23 ( .A(wdata[5]), .Y(n113) );
  INVX2M U24 ( .A(wdata[6]), .Y(n114) );
  INVX2M U25 ( .A(wdata[7]), .Y(n115) );
  NOR2BX2M U26 ( .AN(n16), .B(waddr[2]), .Y(n18) );
  OAI2BB2X1M U27 ( .B0(n108), .B1(n21), .A0N(\MEM[0][0] ), .A1N(n21), .Y(n78)
         );
  OAI2BB2X1M U28 ( .B0(n109), .B1(n21), .A0N(\MEM[0][1] ), .A1N(n21), .Y(n79)
         );
  OAI2BB2X1M U29 ( .B0(n110), .B1(n21), .A0N(\MEM[0][2] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U30 ( .B0(n111), .B1(n21), .A0N(\MEM[0][3] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U31 ( .B0(n112), .B1(n21), .A0N(\MEM[0][4] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U32 ( .B0(n113), .B1(n21), .A0N(\MEM[0][5] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U33 ( .B0(n114), .B1(n21), .A0N(\MEM[0][6] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U34 ( .B0(n115), .B1(n21), .A0N(\MEM[0][7] ), .A1N(n21), .Y(n85)
         );
  OAI2BB2X1M U35 ( .B0(n108), .B1(n15), .A0N(\MEM[4][0] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U36 ( .B0(n109), .B1(n15), .A0N(\MEM[4][1] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U37 ( .B0(n110), .B1(n15), .A0N(\MEM[4][2] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U38 ( .B0(n111), .B1(n15), .A0N(\MEM[4][3] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U39 ( .B0(n112), .B1(n15), .A0N(\MEM[4][4] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U40 ( .B0(n113), .B1(n15), .A0N(\MEM[4][5] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U41 ( .B0(n114), .B1(n15), .A0N(\MEM[4][6] ), .A1N(n15), .Y(n52)
         );
  OAI2BB2X1M U42 ( .B0(n115), .B1(n15), .A0N(\MEM[4][7] ), .A1N(n15), .Y(n53)
         );
  OAI2BB2X1M U43 ( .B0(n108), .B1(n97), .A0N(\MEM[6][0] ), .A1N(n97), .Y(n30)
         );
  OAI2BB2X1M U44 ( .B0(n109), .B1(n97), .A0N(\MEM[6][1] ), .A1N(n97), .Y(n31)
         );
  OAI2BB2X1M U45 ( .B0(n110), .B1(n97), .A0N(\MEM[6][2] ), .A1N(n97), .Y(n32)
         );
  OAI2BB2X1M U46 ( .B0(n111), .B1(n97), .A0N(\MEM[6][3] ), .A1N(n97), .Y(n33)
         );
  OAI2BB2X1M U47 ( .B0(n112), .B1(n97), .A0N(\MEM[6][4] ), .A1N(n97), .Y(n34)
         );
  OAI2BB2X1M U48 ( .B0(n113), .B1(n97), .A0N(\MEM[6][5] ), .A1N(n97), .Y(n35)
         );
  OAI2BB2X1M U49 ( .B0(n114), .B1(n97), .A0N(\MEM[6][6] ), .A1N(n97), .Y(n36)
         );
  OAI2BB2X1M U50 ( .B0(n115), .B1(n97), .A0N(\MEM[6][7] ), .A1N(n97), .Y(n37)
         );
  OAI2BB2X1M U51 ( .B0(n108), .B1(n96), .A0N(\MEM[5][0] ), .A1N(n96), .Y(n38)
         );
  OAI2BB2X1M U52 ( .B0(n109), .B1(n96), .A0N(\MEM[5][1] ), .A1N(n96), .Y(n39)
         );
  OAI2BB2X1M U53 ( .B0(n110), .B1(n96), .A0N(\MEM[5][2] ), .A1N(n96), .Y(n40)
         );
  OAI2BB2X1M U54 ( .B0(n111), .B1(n96), .A0N(\MEM[5][3] ), .A1N(n96), .Y(n41)
         );
  OAI2BB2X1M U55 ( .B0(n112), .B1(n96), .A0N(\MEM[5][4] ), .A1N(n96), .Y(n42)
         );
  OAI2BB2X1M U56 ( .B0(n113), .B1(n96), .A0N(\MEM[5][5] ), .A1N(n96), .Y(n43)
         );
  OAI2BB2X1M U57 ( .B0(n114), .B1(n96), .A0N(\MEM[5][6] ), .A1N(n96), .Y(n44)
         );
  OAI2BB2X1M U58 ( .B0(n115), .B1(n96), .A0N(\MEM[5][7] ), .A1N(n96), .Y(n45)
         );
  OAI2BB2X1M U59 ( .B0(n108), .B1(n95), .A0N(\MEM[3][0] ), .A1N(n95), .Y(n54)
         );
  OAI2BB2X1M U60 ( .B0(n109), .B1(n95), .A0N(\MEM[3][1] ), .A1N(n95), .Y(n55)
         );
  OAI2BB2X1M U61 ( .B0(n110), .B1(n95), .A0N(\MEM[3][2] ), .A1N(n95), .Y(n56)
         );
  OAI2BB2X1M U62 ( .B0(n111), .B1(n95), .A0N(\MEM[3][3] ), .A1N(n95), .Y(n57)
         );
  OAI2BB2X1M U63 ( .B0(n112), .B1(n95), .A0N(\MEM[3][4] ), .A1N(n95), .Y(n58)
         );
  OAI2BB2X1M U64 ( .B0(n113), .B1(n95), .A0N(\MEM[3][5] ), .A1N(n95), .Y(n59)
         );
  OAI2BB2X1M U65 ( .B0(n114), .B1(n95), .A0N(\MEM[3][6] ), .A1N(n95), .Y(n60)
         );
  OAI2BB2X1M U66 ( .B0(n115), .B1(n95), .A0N(\MEM[3][7] ), .A1N(n95), .Y(n61)
         );
  OAI2BB2X1M U67 ( .B0(n108), .B1(n94), .A0N(\MEM[2][0] ), .A1N(n94), .Y(n62)
         );
  OAI2BB2X1M U68 ( .B0(n109), .B1(n94), .A0N(\MEM[2][1] ), .A1N(n94), .Y(n63)
         );
  OAI2BB2X1M U69 ( .B0(n110), .B1(n94), .A0N(\MEM[2][2] ), .A1N(n94), .Y(n64)
         );
  OAI2BB2X1M U70 ( .B0(n111), .B1(n94), .A0N(\MEM[2][3] ), .A1N(n94), .Y(n65)
         );
  OAI2BB2X1M U71 ( .B0(n112), .B1(n94), .A0N(\MEM[2][4] ), .A1N(n94), .Y(n66)
         );
  OAI2BB2X1M U72 ( .B0(n113), .B1(n94), .A0N(\MEM[2][5] ), .A1N(n94), .Y(n67)
         );
  OAI2BB2X1M U73 ( .B0(n114), .B1(n94), .A0N(\MEM[2][6] ), .A1N(n94), .Y(n68)
         );
  OAI2BB2X1M U74 ( .B0(n115), .B1(n94), .A0N(\MEM[2][7] ), .A1N(n94), .Y(n69)
         );
  OAI2BB2X1M U75 ( .B0(n108), .B1(n93), .A0N(\MEM[1][0] ), .A1N(n93), .Y(n70)
         );
  OAI2BB2X1M U76 ( .B0(n109), .B1(n93), .A0N(\MEM[1][1] ), .A1N(n93), .Y(n71)
         );
  OAI2BB2X1M U77 ( .B0(n110), .B1(n93), .A0N(\MEM[1][2] ), .A1N(n93), .Y(n72)
         );
  OAI2BB2X1M U78 ( .B0(n111), .B1(n93), .A0N(\MEM[1][3] ), .A1N(n93), .Y(n73)
         );
  OAI2BB2X1M U79 ( .B0(n112), .B1(n93), .A0N(\MEM[1][4] ), .A1N(n93), .Y(n74)
         );
  OAI2BB2X1M U80 ( .B0(n113), .B1(n93), .A0N(\MEM[1][5] ), .A1N(n93), .Y(n75)
         );
  OAI2BB2X1M U81 ( .B0(n114), .B1(n93), .A0N(\MEM[1][6] ), .A1N(n93), .Y(n76)
         );
  OAI2BB2X1M U82 ( .B0(n115), .B1(n93), .A0N(\MEM[1][7] ), .A1N(n93), .Y(n77)
         );
  OAI2BB2X1M U83 ( .B0(n98), .B1(n108), .A0N(\MEM[7][0] ), .A1N(n98), .Y(n22)
         );
  OAI2BB2X1M U84 ( .B0(n98), .B1(n109), .A0N(\MEM[7][1] ), .A1N(n98), .Y(n23)
         );
  OAI2BB2X1M U85 ( .B0(n98), .B1(n110), .A0N(\MEM[7][2] ), .A1N(n98), .Y(n24)
         );
  OAI2BB2X1M U86 ( .B0(n98), .B1(n111), .A0N(\MEM[7][3] ), .A1N(n98), .Y(n25)
         );
  OAI2BB2X1M U87 ( .B0(n98), .B1(n112), .A0N(\MEM[7][4] ), .A1N(n98), .Y(n26)
         );
  OAI2BB2X1M U88 ( .B0(n98), .B1(n113), .A0N(\MEM[7][5] ), .A1N(n98), .Y(n27)
         );
  OAI2BB2X1M U89 ( .B0(n98), .B1(n114), .A0N(\MEM[7][6] ), .A1N(n98), .Y(n28)
         );
  OAI2BB2X1M U90 ( .B0(n98), .B1(n115), .A0N(\MEM[7][7] ), .A1N(n98), .Y(n29)
         );
  AND2X2M U91 ( .A(waddr[2]), .B(n16), .Y(n12) );
  NAND3X2M U92 ( .A(n12), .B(n107), .C(waddr[0]), .Y(n14) );
  NAND3X2M U93 ( .A(n12), .B(n106), .C(waddr[1]), .Y(n13) );
  NAND3X2M U94 ( .A(waddr[1]), .B(waddr[0]), .C(n18), .Y(n17) );
  NAND3X2M U95 ( .A(waddr[0]), .B(n107), .C(n18), .Y(n20) );
  NAND3X2M U96 ( .A(waddr[1]), .B(n106), .C(n18), .Y(n19) );
  NAND3X2M U97 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n11) );
  INVX2M U98 ( .A(waddr[0]), .Y(n106) );
  INVX2M U99 ( .A(waddr[1]), .Y(n107) );
  BUFX4M U100 ( .A(N9), .Y(n92) );
  MX2X2M U101 ( .A(n2), .B(n1), .S0(N11), .Y(rdata[0]) );
  MX4X1M U102 ( .A(\MEM[4][0] ), .B(\MEM[5][0] ), .C(\MEM[6][0] ), .D(
        \MEM[7][0] ), .S0(n92), .S1(N10), .Y(n1) );
  MX4X1M U103 ( .A(\MEM[0][0] ), .B(\MEM[1][0] ), .C(\MEM[2][0] ), .D(
        \MEM[3][0] ), .S0(n92), .S1(N10), .Y(n2) );
  MX2X2M U104 ( .A(n4), .B(n3), .S0(N11), .Y(rdata[1]) );
  MX4X1M U105 ( .A(\MEM[4][1] ), .B(\MEM[5][1] ), .C(\MEM[6][1] ), .D(
        \MEM[7][1] ), .S0(n92), .S1(N10), .Y(n3) );
  MX4X1M U106 ( .A(\MEM[0][1] ), .B(\MEM[1][1] ), .C(\MEM[2][1] ), .D(
        \MEM[3][1] ), .S0(n92), .S1(N10), .Y(n4) );
  MX2X2M U107 ( .A(n6), .B(n5), .S0(N11), .Y(rdata[2]) );
  MX4X1M U108 ( .A(\MEM[4][2] ), .B(\MEM[5][2] ), .C(\MEM[6][2] ), .D(
        \MEM[7][2] ), .S0(n92), .S1(N10), .Y(n5) );
  MX4X1M U109 ( .A(\MEM[0][2] ), .B(\MEM[1][2] ), .C(\MEM[2][2] ), .D(
        \MEM[3][2] ), .S0(n92), .S1(N10), .Y(n6) );
  MX2X2M U110 ( .A(n8), .B(n7), .S0(N11), .Y(rdata[3]) );
  MX4X1M U111 ( .A(\MEM[4][3] ), .B(\MEM[5][3] ), .C(\MEM[6][3] ), .D(
        \MEM[7][3] ), .S0(n92), .S1(N10), .Y(n7) );
  MX4X1M U112 ( .A(\MEM[0][3] ), .B(\MEM[1][3] ), .C(\MEM[2][3] ), .D(
        \MEM[3][3] ), .S0(n92), .S1(N10), .Y(n8) );
  MX2X2M U113 ( .A(n10), .B(n9), .S0(N11), .Y(rdata[4]) );
  MX4X1M U114 ( .A(\MEM[4][4] ), .B(\MEM[5][4] ), .C(\MEM[6][4] ), .D(
        \MEM[7][4] ), .S0(n92), .S1(N10), .Y(n9) );
  MX4X1M U115 ( .A(\MEM[0][4] ), .B(\MEM[1][4] ), .C(\MEM[2][4] ), .D(
        \MEM[3][4] ), .S0(n92), .S1(N10), .Y(n10) );
  MX2X2M U116 ( .A(n87), .B(n86), .S0(N11), .Y(rdata[5]) );
  MX4X1M U117 ( .A(\MEM[4][5] ), .B(\MEM[5][5] ), .C(\MEM[6][5] ), .D(
        \MEM[7][5] ), .S0(n92), .S1(N10), .Y(n86) );
  MX4X1M U118 ( .A(\MEM[0][5] ), .B(\MEM[1][5] ), .C(\MEM[2][5] ), .D(
        \MEM[3][5] ), .S0(n92), .S1(N10), .Y(n87) );
  MX2X2M U119 ( .A(n89), .B(n88), .S0(N11), .Y(rdata[6]) );
  MX4X1M U120 ( .A(\MEM[4][6] ), .B(\MEM[5][6] ), .C(\MEM[6][6] ), .D(
        \MEM[7][6] ), .S0(n92), .S1(N10), .Y(n88) );
  MX4X1M U121 ( .A(\MEM[0][6] ), .B(\MEM[1][6] ), .C(\MEM[2][6] ), .D(
        \MEM[3][6] ), .S0(n92), .S1(N10), .Y(n89) );
  MX2X2M U122 ( .A(n91), .B(n90), .S0(N11), .Y(rdata[7]) );
  MX4X1M U123 ( .A(\MEM[4][7] ), .B(\MEM[5][7] ), .C(\MEM[6][7] ), .D(
        \MEM[7][7] ), .S0(n92), .S1(N10), .Y(n90) );
  MX4X1M U124 ( .A(\MEM[0][7] ), .B(\MEM[1][7] ), .C(\MEM[2][7] ), .D(
        \MEM[3][7] ), .S0(n92), .S1(N10), .Y(n91) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, 
        WR_DATA, FULL, EMPTY, RD_DATA );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   n1, n2;
  wire   [3:0] wq2_rptr;
  wire   [2:0] waddr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;

  FIFO_WR u_wr_ptr ( .winc(W_INC), .wclk(W_CLK), .wrst_n(n1), .wq2_rptr(
        wq2_rptr), .waddr(waddr), .wptr(wptr), .wfull(FULL) );
  FIFO_RD u_rd_ptr ( .rinc(R_INC), .rclk(R_CLK), .rrst_n(R_RST), .rq2_wptr(
        rq2_wptr), .raddr(raddr), .rptr(rptr), .rempty(EMPTY) );
  DF_SYNC_0 u0_sync ( .ptr(wptr), .clk(R_CLK), .rst_n(R_RST), .sync(rq2_wptr)
         );
  DF_SYNC_1 u1_sync ( .ptr(rptr), .clk(W_CLK), .rst_n(n1), .sync(wq2_rptr) );
  FIFO_MEM u_mem ( .wdata(WR_DATA), .waddr(waddr), .raddr(raddr), .winc(W_INC), 
        .wfull(FULL), .wclk(W_CLK), .wrst_n(n1), .rdata(RD_DATA) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   SYNC_REF_RST, RF_WrEn, RF_RdEn, RF_RdData_VLD, ALU_CLK, ALU_EN,
         ALU_OUT_VLD, CLKG_EN, FIFO_FULL, UART_RX_V_SYNC, UART_TX_VLD,
         SYNC_UART_RST, UART_TX_CLK, UART_RX_CLK, UART_RX_V_OUT, UART_TX_Busy,
         UART_TX_V_SYNC, UART_TX_Busy_PULSE, n1, n2, n3, n4, n5, n6, n7, n8,
         n9;
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

  reg_file_WIDTH8_DEPTH16_ADDR4 U0_RegFile ( .WrData(RF_WrData), .Address({
        RF_Address[3:2], n7, n6}), .WrEn(RF_WrEn), .RdEn(RF_RdEn), .clk(
        REF_CLK), .rst(n8), .RdData(RF_RdData), .RdData_VLD(RF_RdData_VLD), 
        .REG0(Operand_A), .REG1(Operand_B), .REG2(UART_Config), .REG3(
        DIV_RATIO) );
  ALU U0_ALU ( .A(Operand_A), .B(Operand_B), .ALU_FUN(ALU_FUN), .EN(ALU_EN), 
        .clk(ALU_CLK), .rst(n8), .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VLD) );
  clk_gating U0_CLK_GATE ( .en(CLKG_EN), .clk(REF_CLK), .gated_clk(ALU_CLK) );
  SYS_CTRL U0_SYS_CTRL ( .CLK(REF_CLK), .RST(n8), .ALU_OUT(ALU_OUT), 
        .OUT_Valid(ALU_OUT_VLD), .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), 
        .RX_P_Data(UART_RX_SYNC), .RX_D_VLD(UART_RX_V_SYNC), .TX_P_Data(
        UART_TX_IN), .TX_D_VLD(UART_TX_VLD), .RdData(RF_RdData), 
        .RdData_Valid(RF_RdData_VLD), .Address(RF_Address), .WrEN(RF_WrEn), 
        .RdEN(RF_RdEn), .WrData(RF_WrData), .FIFO_FULL(FIFO_FULL), .CLK_EN(
        CLKG_EN) );
  ClkDiv_RATIO_WD8_0 U0_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst(n2), .i_clk_en(
        1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN({UART_Config[7:4], n4, UART_Config[2]}), 
        .OUT({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  ClkDiv_RATIO_WD8_1 U1_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst(n2), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO_RX[3:0]}), 
        .o_div_clk(UART_RX_CLK) );
  UART_TOP_DWIDTH8 U0_UART ( .RST(n2), .TX_CLK(UART_TX_CLK), .RX_CLK(
        UART_RX_CLK), .RX_IN_S(UART_RX_IN), .TX_IN_P(UART_TX_SYNC), .TX_IN_V(
        n1), .Prescale({UART_Config[7:4], n4, UART_Config[2]}), .PAR_EN(
        UART_Config[0]), .PAR_TYP(UART_Config[1]), .RX_OUT_P(UART_RX_OUT), 
        .RX_OUT_V(UART_RX_V_OUT), .TX_OUT_S(UART_TX_O), .TX_OUT_V(UART_TX_Busy), .Parity_Error(parity_error), .Stop_Error(framing_error) );
  PULSE_GEN U0_PULSE_GEN ( .clk(UART_TX_CLK), .rst(n2), .lvl_sig(UART_TX_Busy), 
        .pulse_sig(UART_TX_Busy_PULSE) );
  RST_SYNC_NUM_STAGES2_0 U0_RST_SYNC ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(
        SYNC_UART_RST) );
  RST_SYNC_NUM_STAGES2_1 U1_RST_SYNC ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(
        SYNC_REF_RST) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 U0_ref_sync ( .unsync_bus(UART_RX_OUT), 
        .bus_enable(UART_RX_V_OUT), .CLK(REF_CLK), .RST(n8), .sync_bus(
        UART_RX_SYNC), .enable_pulse(UART_RX_V_SYNC) );
  ASYNC_FIFO_DATA_WIDTH8 U0_UART_FIFO ( .W_CLK(REF_CLK), .W_RST(n8), .W_INC(
        UART_TX_VLD), .R_CLK(UART_TX_CLK), .R_RST(n2), .R_INC(
        UART_TX_Busy_PULSE), .WR_DATA(UART_TX_IN), .FULL(FIFO_FULL), .EMPTY(
        UART_TX_V_SYNC), .RD_DATA(UART_TX_SYNC) );
  BUFX2M U2 ( .A(RF_Address[0]), .Y(n6) );
  BUFX2M U3 ( .A(RF_Address[1]), .Y(n7) );
  INVX2M U4 ( .A(UART_TX_V_SYNC), .Y(n1) );
  INVX2M U5 ( .A(n5), .Y(n4) );
  INVX2M U6 ( .A(UART_Config[3]), .Y(n5) );
  INVX4M U7 ( .A(n9), .Y(n8) );
  INVX2M U8 ( .A(SYNC_REF_RST), .Y(n9) );
  INVX4M U9 ( .A(n3), .Y(n2) );
  INVX2M U10 ( .A(SYNC_UART_RST), .Y(n3) );
endmodule

