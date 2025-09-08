//+ Outer Domain _ VFE-2

Include "VFE-2-Inflation.geo";

//+ Control Parameters
//+ Outer Boundary Dimension
xmax = 10.0; 
xmin = -10.0;
ymax = 10.0;
ymin = -10.0;
zmax = 10.0; 
zmin = -10.0;

//+ Mesh Density
n_inlet = 10;
n_side = 10;
n_outlet = 10;

	
//+ Cube Points

//+
Point(22) = {xmin, ymax, zmax, 1.0};
Point(24) = {xmin, ymin, zmax, 1.0};
Point(35) = {xmin, 0,    zmax, 1.0};	
Point(23) = {xmin, ymin, zmin, 1.0};
Point(36) = {xmin, 0,    zmin, 1.0};
Point(21) = {xmin, ymax, zmin, 1.0};
Point(17) = {xmin, ymax, 0, 1.0};

Point(28) = {xmax, ymax, zmax, 1.0};
Point(25) = {xmax, ymin, zmax, 1.0};

Point(26) = {xmax, ymin, zmin, 1.0};
Point(27) = {xmax, ymax, zmin, 1.0};

//+
Point(48) = {xmin, 0, 0, 1.0};

//+ Cube Edges
Line(16) = {24, 23};
Line(18) = {21, 22};
Line(20) = {24, 25};
Line(21) = {25, 26};
Line(22) = {26, 23};
Line(23) = {22, 28};
Line(24) = {25, 28};
Line(25) = {26, 27};
Line(26) = {28, 27};
Line(27) = {27, 21};


//+ Circle Points
//+Point(33) = {-9, 0, -5, 1.0};
//+Point(34) = {-9, 0, 5, 1.0};

//+ Cirge Edges
//+Line(30) = {34, 33};
//+Circle(35) = {22, 35, 34};
//+Circle(36) = {34, 35, 24};
//+Circle(37) = {21, 36, 33};
//+Circle(38) = {33, 36, 23};



//+
Line(28) = {23, 21};
//+
Line(29) = {22, 24};
//+
//+
radiusO = 10.0;
xlocO = 10.0;
radius1 = 8.0;
xloc1 = 1.2;
radius2 = 7.55;
xloc2 = -0.5;
radius3 = 5.5;
xloc3 = -5.0;
radius4 = 2.3;
xloc4 = -8.5;
//+



//+ Inflation Layer (Circle O.)
zO = 1;
yO = (radiusO^2-zO^2)^(0.5);
//+
Point(77) = {xlocO, yO, -zO, 1.0};
Point(78) = {xlocO, -yO, -zO, 1.0};
Point(79) = {xlocO, yO, zO, 1.0};
Point(80) = {xlocO, -yO, zO, 1.0};
//+
Line(63) = {77, 78};
//+
Line(64) = {79, 80};
//+

//+ Inflation Layer (Mid Circle 2)
z2 = 1;
y2 = (radius2^2-z2^2)^(0.5);
//+
Point(61) = {xloc2, y2, -z2, 1.0};
Point(62) = {xloc2, -y2, -z2, 1.0};
Point(63) = {xloc2, y2, z2, 1.0};
Point(64) = {xloc2, -y2, z2, 1.0};
//+
Line(53) = {61, 62};
//+
Line(56) = {63, 64};
//+

//+ Inflation Layer (Mid Circle 1)
z1 = 1;
y1 = (radius1^2-z2^2)^(0.5);
//+
Point(65) = {xloc1, y1, -z1, 1.0};
Point(66) = {xloc1, -y1, -z1, 1.0};
Point(67) = {xloc1, y1, z1, 1.0};
Point(68) = {xloc1, -y1, z1, 1.0};
//+
Line(57) = {67, 68};
//+
Line(58) = {65, 66};

//+ Inflation Layer (Mid Circle 3)
z3 = 1;
y3 = (radius3^2-z3^2)^(0.5);
//+
Point(69) = {xloc3, y3, -z3, 1.0};
Point(70) = {xloc3, -y3, -z3, 1.0};
Point(71) = {xloc3, y3, z3, 1.0};
Point(72) = {xloc3, -y3, z3, 1.0};
//+
//+
Line(59) = {71, 72};
//+
Line(60) = {69, 70};

//+ Inflation Layer (Mid Circle 4)
z4 = 1;
y4 = (radius4^2-z4^2)^(0.5);
//+
Point(73) = {xloc4, y4, -z4, 1.0};
Point(74) = {xloc4, -y4, -z4, 1.0};
Point(75) = {xloc4, y4, z4, 1.0};
Point(76) = {xloc4, -y4, z4, 1.0};

//+
Line(61) = {75, 76};
//+
Line(62) = {73, 74};



//+ Outer Circle

Point(19) = {xlocO, radiusO, 0, 1.0};
Point(37) = {xlocO, 0, radiusO, 1.0};
Point(38) = {xlocO, 0, -radiusO, 1.0};
Point(20) = {xlocO, -radiusO, 0, 1.0};
Point(39) = {xlocO, 0, 0, 1.0}; 
Circle(30) = {38, 39, 77};
Circle(31) = {79, 39, 37};
Circle(32) = {37, 39, 80};
Circle(33) = {78, 39, 38};
Circle(81) = {80, 39, 78};
Circle(82) = {79, 39, 77};

//+ Mid Circle 1

Point(40) = {xloc1, radius1, 0, 1.0};
Point(41) = {xloc1, -radius1, 0, 1.0};
Point(42) = {xloc1, 0, radius1, 1.0};
Point(43) = {xloc1, 0, -radius1, 1.0};
Point(50) = {xloc1, 0, 0, 1.0};
Circle(34) = {65, 50, 43};
Circle(35) = {43, 50, 66};
Circle(36) = {68, 50, 42};
Circle(37) = {42, 50, 67};
Circle(79) = {68, 50, 66};
Circle(80) = {67, 50, 65};
//+
//+ Mid Circle 2
Point(44) = {xloc2, radius2, 0, 1.0};
Point(45) = {xloc2, -radius2, 0, 1.0};
Point(46) = {xloc2, 0, radius2, 1.0};
Point(47) = {xloc2, 0, -radius2, 1.0};
Point(49) = {xloc2, 0, 0, 1.0};
Circle(38) = {61, 49, 47};
Circle(39) = {47, 49, 62};
Circle(40) = {64, 49, 46};
Circle(41) = {46, 49, 63};
Circle(77) = {63, 49, 61};
Circle(78) = {64, 49, 62};


//+ Mid Circle 3
Point(51) = {xloc3, radius3, 0, 1.0};
Point(52) = {xloc3, -radius3, 0, 1.0};
Point(53) = {xloc3, 0, radius3, 1.0};
Point(54) = {xloc3, 0, -radius3, 1.0};
Point(55) = {xloc3, 0, 0, 1.0};
Circle(42) = {51, 55, 54};
Circle(43) = {54, 55, 52};
Circle(44) = {52, 55, 53};
Circle(45) = {53, 55, 51};
//+
//+ Mid Circle 4
Point(56) = {xloc4, radius4, 0, 1.0};
Point(57) = {xloc4, -radius4, 0, 1.0};
Point(58) = {xloc4, 0, radius4, 1.0};
Point(59) = {xloc4, 0, -radius4, 1.0};
Point(60) = {xloc4, 0, 0, 1.0};
Circle(46) = {73, 60, 59};
Circle(47) = {59, 60, 74};
Circle(48) = {76, 60, 58};
Circle(49) = {58, 60, 75};
Circle(86) = {75, 60, 73};
Circle(87) = {76, 60, 74};

//+ Spline Curves
Spline(50) = {38, 43};
Spline(51) = {43, 47};
Spline(52) = {47, 54, 59};
Spline(65) = {63, 71, 75};
Spline(66) = {61, 69, 73};
Spline(67) = {64, 72, 76};
Spline(68) = {62, 70, 74};
Spline(69) = {68, 64};
Spline(70) = {66, 62};
Spline(71) = {67, 63};
Spline(72) = {65, 61};
Spline(73) = {79, 67};
Spline(74) = {77, 65};
Spline(75) = {80, 68};
Spline(76) = {78, 66};
Spline(83) = {37, 42};
Spline(84) = {42, 46};
Spline(85) = {46, 53, 58};

//+
Curve Loop(9) = {36, -83, 32, 75};
//+
Surface(9) = {9};
//+
Curve Loop(10) = {83, 37, -73, 31};
//+
Surface(10) = {10};
//+
Curve Loop(11) = {37, 57, 36};
//+
Surface(11) = {11};
//+
Curve Loop(12) = {32, -64, 31};
//+
Surface(12) = {12};
//+
Curve Loop(13) = {73, 57, -75, -64};
//+
Surface(13) = {13};
//+
Surface Loop(1) = {10, 9, 11, 13, 12};
//+
Volume(1) = {1};

//+ The Volume Around the Airfoil
Curve Loop(14) = {56, -69, -57, 71};
//+
Surface(14) = {14};
//+
Curve Loop(15) = {69, 78, -70, -79};
//+
Surface(15) = {15};
//+
Curve Loop(16) = {53, -70, -58, 72};
//+
Surface(16) = {16};
//+
Curve Loop(17) = {77, -72, -80, 71};
//+
Surface(17) = {17};
//+
Curve Loop(18) = {57, 79, -58, -80};
//+
Surface(18) = {18};
//+
Curve Loop(19) = {56, 78, -53, -77};
//+
Surface(19) = {19};
//+
Surface Loop(2) = {19, 14, 15, 16, 18, 17};
//+
Surface Loop(3) = {1, 2, 4, 5, 7, 8, 6, 3};
//+
Volume(2) = {2, 3};
//+
Transfinite Curve {77, 78, 79, 80} = 30 Using Progression 1;
//+
Transfinite Curve {69, 70, 71, 72} = 30 Using Progression 1;
//+
Transfinite Curve {53, 56, 57, 58} = 30 Using Progression 1;
//+
Transfinite Surface {19};
//+
Transfinite Surface {15};
//+
Transfinite Surface {14};
//+
Transfinite Surface {18};
//+
Transfinite Surface {16};
//+
Transfinite Surface {17};
//+
//////////////////+ airfoil mesh density
Transfinite Curve {4, 1, 10, 11, 9, 14, 15, 2, 5, 8, 12, 13, 3, 6, 7} = 10 Using Progression 1;
//+
Transfinite Surface {1, 2, 3, 4, 5, 6, 7, 8};

//+
Transfinite Volume{2};


Curve Loop(20) = {75, 79, -76, -81};
//+
Surface(20) = {20};
//+
Curve Loop(21) = {63, -81, -64, 82};
//+
Surface(21) = {21};
//+
Curve Loop(22) = {73, 80, -74, -82};
//+
Surface(22) = {22};
//+
Curve Loop(23) = {76, -58, -74, 63};
//+
Surface(23) = {23};
//+
Surface Loop(4) = {23, 20, 21, 22, 18, 13};
//+
Volume(3) = {4};
//+
Transfinite Curve {79, 81, 80, 82} = 30 Using Progression 1;
//+
Transfinite Curve {75, 76, 74, 73} = 30 Using Progression 1;
//+
Transfinite Curve {64, 63, 57, 58} = 30 Using Progression 1;
//+
Transfinite Surface {20};
//+
Transfinite Surface {21};
//+
Transfinite Surface {23};
//+
Transfinite Surface {22};
//+
Transfinite Surface {13};
//+
Transfinite Volume{3};
//+
Transfinite Curve {37, 36, 32, 31} = 10 Using Progression 1;
//+
Transfinite Curve {83} = 30 Using Progression 1;
//+
Transfinite Surface {12};
//+
Transfinite Surface {10};
//+
Transfinite Surface {11};
//+
Transfinite Surface {9};
//+
Transfinite Volume{1};
//+
Transfinite Curve {35, 34, 30, 33} = 10 Using Progression 1;
//+
Transfinite Curve {50} = 30 Using Progression 1;
//+
Curve Loop(24) = {35, -58, 34};
//+
Surface(24) = {24};
//+
Curve Loop(25) = {35, -76, 33, 50};
//+
Surface(25) = {25};
//+
Curve Loop(26) = {34, -50, 30, 74};
//+
Surface(26) = {26};
//+
Curve Loop(27) = {33, 30, 63};
//+
Surface(27) = {27};
//+
Transfinite Surface {27};
//+
Transfinite Surface {26};
//+
Transfinite Surface {25};
//+
Transfinite Surface {24};
//+
Surface Loop(5) = {25, 24, 26, 27, 23};
//+
Volume(4) = {5};
//+
Transfinite Volume{4};
//+
Curve Loop(28) = {40, -84, -36, 69};
//+
Surface(28) = {28};
//+
Curve Loop(29) = {41, -71, -37, 84};
//+
Surface(29) = {29};
//+
Curve Loop(30) = {41, 56, 40};
//+
Surface(30) = {30};
//+
Surface Loop(6) = {30, 29, 28, 11, 14};
//+
Volume(5) = {6};
//+
Transfinite Curve {41, 40} = 10 Using Progression 1;
Transfinite Curve {84} = 30 Using Progression 1;
//+
Transfinite Surface {30};
//+
Transfinite Surface {29};
//+
Transfinite Surface {28};
//+
Transfinite Volume{5};
//*********************************

//*********************************
//+
Transfinite Curve {39, 38} = 10 Using Progression 1;
//+
Transfinite Curve {51} = 30 Using Progression 1;
//+
Curve Loop(31) = {39, -53, 38};
//+
Surface(31) = {31};
//+
Curve Loop(32) = {39, -70, -35, 51};
//+
Surface(32) = {32};
//+
Curve Loop(33) = {38, -51, -34, 72};
//+
Surface(33) = {33};
//+
Transfinite Surface {33};
//+
Transfinite Surface {31};
//+
Transfinite Surface {32};
//+
Surface Loop(7) = {33, 31, 32, 24, 16};
//+
Volume(6) = {7};
//+
Transfinite Volume{6};
//*********************************
//+
Curve Loop(34) = {85, 49, -65, -41};
//+
Surface(34) = {34};
//+
Curve Loop(35) = {85, -48, -67, 40};
//+
Surface(35) = {35};
//+
Curve Loop(36) = {65, 61, -67, -56};
//+
Surface(36) = {36};
//+
Curve Loop(37) = {49, 61, 48};
//+
Surface(37) = {37};
//+

Surface Loop(9) = {34, 35, 37, 36, 30};
//+
Volume(8) = {9};
//+
Transfinite Curve {65, 67} = 10 Using Progression 1;
//+
Transfinite Curve {61} = 10 Using Progression 1;
//+
Transfinite Curve {49, 48} = 10 Using Progression 1;
//+
Transfinite Curve {85} = 10 Using Progression 1;
//*********************************//+
Curve Loop(38) = {66, 46, -52, -38};
//+
Surface(38) = {38};
//+
Curve Loop(39) = {52, 47, -68, -39};
//+
Surface(39) = {39};
//+
Curve Loop(40) = {66, 62, -68, -53};
//+
Surface(40) = {40};
//+
Curve Loop(41) = {46, 47, -62};
//+
Surface(41) = {41};
//+
Surface Loop(8) = {41, 38, 40, 39, 31};
//+
Volume(7) = {8};

//+
Transfinite Curve {46, 47} = 10 Using Progression 1;
//+
Transfinite Curve {62} = 10 Using Progression 1;
//+
Transfinite Curve {52} = 10 Using Progression 1;
//+
Transfinite Curve {68, 66} = 10 Using Progression 1;
//*********************************//+
//+
Curve Loop(42) = {65, 86, -66, -77};
//+
Surface(42) = {42};
//+
Curve Loop(43) = {61, 87, -62, -86};
//+
Surface(43) = {43};
//+
Curve Loop(44) = {67, 87, -68, -78};
//+
Surface(44) = {44};
//+
Surface Loop(10) = {42, 43, 44, 36, 40, 19};
//+
Volume(9) = {10};
//+
Transfinite Curve {86, 87} = 10 Using Progression 1;
//+



