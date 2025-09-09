
Include "airfoil.geo";

// Main Domain Boundaries
ymax = 4;
xmax = 10;
xmin = -5;

// Pml Boundaries
w = 1;


n_inlet = 60;
n_vertical = 90;
r_vertical = 1/0.95;
n_airfoil = 50;
n_wake = 100;
r_wake = 1/0.95;

Point(1289) = {-0.5, ymax, 0, 1.0};
Point(1290) = {-0.5, -ymax, 0, 1.0};
Point(1291) = {1, ymax, 0, 1.0};
Point(1292) = {1, -ymax, 0, 1.0};
Point(1293) = {xmax, ymax, 0, 1.0};
Point(1294) = {xmax, -ymax, 0, 1.0};
Point(1295) = {xmax, 0, 0, 1.0};
Point(1296) = {xmin, -ymax, 0, 1.0};
Point(1297) = {xmin, 0, 0, 1.0};
Point(1298) = {xmin, ymax, 0, 1.0};

// Pml Points
Point(1299) = {-0.5, ymax+w, 0, 1.0};
Point(1300) = {-0.5, -ymax-w, 0, 1.0};
Point(1301) = {1, ymax+w, 0, 1.0};
Point(1302) = {1, -ymax-w, 0, 1.0};
Point(1303) = {xmax+w, ymax, 0, 1.0};
Point(1304) = {xmax, ymax+w, 0, 1.0};
Point(1305) = {xmax+w, ymax+w, 0, 1.0};
Point(1306) = {xmax+w, -ymax-w, 0, 1.0};
Point(1307) = {xmax, -ymax-w, 0, 1.0};
Point(1308) = {xmax+w, -ymax, 0, 1.0};
Point(1309) = {xmax+w, 0, 0, 1.0};
Point(1310) = {xmin-w, -ymax-w, 0, 1.0};
Point(1311) = {xmin-w, -ymax, 0, 1.0};
Point(1312) = {xmin, -ymax-w, 0, 1.0};
Point(1313) = {xmin-w, 0, 0, 1.0};
Point(1314)=  {xmin-w, ymax, 0, 1.0};
Point(1315)=  {xmin-w, ymax+w, 0, 1.0};
Point(1316)=  {xmin, ymax+w, 0, 1.0};


Line(2) = {1298, 1289};
Line(3) = {1289, 1291};
Line(4) = {1291, 1293};
Line(5) = {1295, 1293};
Line(6) = {1295, 1294};
Line(7) = {1297, 1298};
Line(8) = {1297, 1296};
Line(9) = {1296, 1290};
Line(10) = {1290, 1292};
Line(11) = {1292, 1294};
Line(12) = {1297, 1};
Line(13) = {644, 1295};

Line(14) = {1, 1289};
Line(15) = {1, 1290};
Line(16) = {644, 1291};
Line(17) = {644, 1292};

Split Curve {1} Point {1, 644};
//+

Line(20) = {1298, 1314};
Line(21) = {1314, 1315};
Line(22) = {1315, 1316};
Line(23) = {1316, 1298};
Line(24) = {1316, 1299};
Line(25) = {1299, 1301};
Line(26) = {1301, 1304};
Line(27) = {1304, 1305};
Line(28) = {1305, 1303};
Line(29) = {1309, 1303};
Line(30) = {1309, 1308};
Line(31) = {1308, 1306};
Line(32) = {1306, 1307};
Line(33) = {1307, 1294};
Line(34) = {1294, 1308};
Line(35) = {1295, 1309};
Line(36) = {1293, 1303};
Line(37) = {1291, 1301};
Line(38) = {1289, 1299};
Line(39) = {1313, 1314};
Line(40) = {1313, 1297};
Line(41) = {1313, 1311};
Line(42) = {1296, 1311};
Line(43) = {1311, 1310};
Line(44) = {1310, 1312};
Line(45) = {1312, 1296};
Line(46) = {1312, 1300};
Line(47) = {1300, 1290};
Line(48) = {1302, 1292};
Line(49) = {1302, 1307};
Line(50) = {1302, 1300};
Line(51) = {1304, 1293};

Transfinite Curve {7, 14, 16, 5, 17, 15, 8, 6} = 25 Using Progression 1.1;
Transfinite Curve {9, 12, 2} = 15 Using Progression 1;
Transfinite Curve {3, 19, 18, 10} = 25 Using Progression 1;
Transfinite Curve {4, 13, 11} = 25 Using Progression 1.1;
//+

Transfinite Curve {21, 22, 20, 23, 38, 37, 51, 27, 36, 28, 35, 34, 31, 33, 32, 48, 47, 45, 42, 43, 44, 40} = 4 Using Progression 1;
Transfinite Curve {39, 41, 29, 30} = 25 Using Progression 1.1;
Transfinite Curve {46, 24, 24, 46} = 15 Using Progression 1;
Transfinite Curve {25, 50} = 25 Using Progression 1;
Transfinite Curve {49, 26} = 25 Using Progression 1.1;

Curve Loop(1) = {12, 14, -2, -7};
Surface(1) = {1};
Curve Loop(2) = {12, 15, -9, -8};
Surface(2) = {2};
Curve Loop(3) = {14, 3, -16, -19};
Surface(3) = {3};
Curve Loop(4) = {18, 15, 10, -17};
Surface(4) = {4};
Curve Loop(5) = {11, -6, -13, 17};
Surface(5) = {5};
Curve Loop(6) = {13, 5, -4, -16};
Surface(6) = {6};

// Pml Surfaces
Curve Loop(7) = {-39, 40, 7, 20};
Surface(7) = {7};
Curve Loop(8) = {41, -42, -8, -40};
Surface(8) = {8};
Curve Loop(9) = {21, 22, 23, 20};
Surface(9) = {9};
Curve Loop(10) = {2, 38, -24, 23};
Surface(10) = {10};
Curve Loop(11) = {25, -37, -3, 38};
Surface(11) = {11};
Curve Loop(12) = {26, 51, -4, 37};
Surface(12) = {12};
Curve Loop(13) = {27, 28, -36, -51};
Surface(13) = {13};
Curve Loop(14) = {-5, 35, 29, -36};
Surface(14) = {14};
Curve Loop(15) = {35, 30, -34, -6};
Surface(15) = {15};
Curve Loop(16) = {31, 32, 33, 34};
Surface(16) = {16};
Curve Loop(17) = {33, -11, -48, 49};
Surface(17) = {17};
Curve Loop(18) = {48, -10, -47, -50};
Surface(18) = {18};
Curve Loop(19) = {47, -9, -45, 46};
Surface(19) = {19};
Curve Loop(20) = {42,43,44,45};
Surface(20) = {20};

//+
Transfinite Surface {1};
Transfinite Surface {2};
Transfinite Surface {3};
Transfinite Surface {4};
Transfinite Surface {5};
Transfinite Surface {6};
Transfinite Surface {7};
Transfinite Surface {8};
Transfinite Surface {9};
Transfinite Surface {10};
Transfinite Surface {11};
Transfinite Surface {12};
Transfinite Surface {13};
Transfinite Surface {14};
Transfinite Surface {15};
Transfinite Surface {16};
Transfinite Surface {17};
Transfinite Surface {18};
Transfinite Surface {19};
Transfinite Surface {20};

Recombine Surface{:};

Extrude {0, 0, 2} {Surface{:}; Layers {20}; Recombine;}
//
Physical Surface("Wall", 1) = {126, 116};
Physical Surface("Inflow", 2) = {214, 192, 236, 482};
Physical Surface("Outflow", 3) = {328, 354, 372, 390};
Physical Surface("Outflow", 3) += {324, 302, 280, 266, 240, 486, 468, 446, 424, 394};
Physical Surface("Symmetry", 4) = {73, 117, 183, 359, 381, 161, 139, 95, 227, 403, 425, 447, 469, 491, 205, 249, 271, 315, 293, 337};
Physical Surface("Symmetry", 4) += {1, 3, 6, 14, 15, 5, 2, 8, 7, 9, 10, 11, 12, 17, 16, 4, 19, 20, 18, 13};

//
Physical Volume("Interior", 9) = {6, 3, 1, 2, 4, 5};
Physical Volume("XPML", 100) = {7, 8, 14, 15};
Physical Volume("YPML", 200) = {12, 11, 10, 19, 18, 17};
Physical Volume("XYPML", 300) = {9, 13, 16, 20};

