SetFactory("OpenCASCADE");
Merge "wing_smooth.STEP";



//+
Curve Loop(35) = {17, -21, -29, -8};
//+
Surface(29) = {35};
//+
Extrude {0, 0, -2000} {
  Surface{29}; 
}
//+
Extrude {0, 0, -2000} {
  Surface{19}; 
}
//+
Point(53) = {1000, 1000, 0, 1.0};
//+
Point(54) = {-1000, 1000, 0, 1.0};
//+
Point(55) = {-1000, -1000, 0, 1.0};
//+
Point(56) = {1000, -1000, 0, 1.0};
//+
Line(83) = {53, 54};
//+
Line(84) = {54, 55};
//+
Line(85) = {55, 56};
//+
Line(86) = {56, 53};
//+
Curve Loop(48) = {83, 84, 85, 86};
//+
Plane Surface(40) = {48};
//+
//BooleanIntersection{ Volume{4}; Delete; }{ Surface{40}; Delete; }
//+
BooleanIntersection{ Volume{4}; Volume{5}; Delete; }{ Surface{40}; Delete; }
//+
Recursive Delete {
  Volume{1}; 
}
//+
Recursive Delete {
  Volume{3}; Volume{2}; 
}
//+
Rotate {{0, 0, 1}, {0, 0, 0}, 0} {
  Surface{30}; Surface{29}; 
}
//+
Dilate {{0, 0, 0}, {0.00346020761, 0.00346020761, 1}} {
  Surface{30}; Surface{29}; 
}
//+
Translate {-1.83627117008, -3.02, 0} {
  Surface{30}; Surface{29}; 
}
//+

// Outer Domain Points
x_f = -5;
x_b = 10;	
y = 4;
w = 1;

Point(73) = {x_f, -y, 0, 1.0};
Point(74) = {x_b, -y, 0, 1.0};
Point(75) = {x_b, y, 0, 1.0};
Point(76) = {x_f, y, 0, 1.0};

//+
Point(79) = {1, y, 0, 1.0};
Point(80) = {1, -y, 0, 1.0};

// Outer Domain Points
x_f = -5;
x_b = 10;	
y = 4;

// PML Points
Point(81) = {x_f-w, -y-w, 0, 1.0};
Point(82) = {x_b+w, -y-w, 0, 1.0};
Point(83) = {x_b+w, y+w, 0, 1.0};
Point(84) = {x_f-w, y+w, 0, 1.0};

Point(85) = {x_f, -y-w, 0, 1.0};
Point(86) = {x_b, -y-w, 0, 1.0};
Point(87) = {x_b, y+w, 0, 1.0};
Point(88) = {x_f, y+w, 0, 1.0};

Point(89) = {x_f-w, -y, 0, 1.0};
Point(90) = {x_b+w, -y, 0, 1.0};
Point(91) = {x_b+w, y, 0, 1.0};
Point(92) = {x_f-w, y, 0, 1.0};
//



//+
Point(103) = {0.06920415219, 0, 0, 1.0};
//+
Point(104) = {-0.01290861926, 0, 0, 1.0};
//+
Point(105) = {0.095, 0.1, 0, 1.0};
//+
Point(106) = {0.095, -0.1, 0, 1.0};

//+
Line(95) = {105, 106};
//+
BooleanFragments{ Curve{95}; Delete; }{ Curve{87}; Curve{88}; Delete; }
//+
Recursive Delete {
  Curve{95}; Curve{96}; Curve{97};}
//+
Line(104) = {106, 72};
//+
Line(105) = {107, 70};
//+
Line(106) = {109, 71};
//+
Ellipse(107) = {104, 103, 68, 72};
//+
Ellipse(108) = {104, 103, 68, 70};

Point(111) = {0.01, y, 0, 1.0};
Point(112) = {0.01, -y, 0, 1.0};

Point(113) = {x_b, 0, 0, 1.0};
Point(114) = {x_b+w, 0, 0, 1.0};

Point(115) = {0.01, y+w, 0, 1.0};
Point(116) = {0.01, -y-w, 0, 1.0};

Point(117) = {1, y+w, 0, 1.0};
Point(118) = {1, -y-w, 0, 1.0};
Point(119) = {x_f, 0, 0, 1.0};
Point(120) = {x_f-w, 0, 0, 1.0};
Point(121) = {x_f-w, 0, 0, 1.0};

Point(122) = {-3.5, y, 0, 1.0};
Point(123) = {-3.5, y+w, 0, 1.0};
Point(124) = {-3.5, -y, 0, 1.0};
Point(125) = {-3.5, -y-w, 0, 1.0};
//+
Line(109) = {104, 122};
//+
Line(110) = {104, 124};
//+
Line(111) = {124, 73};
//+
Line(112) = {122, 76};
//+
Line(113) = {119, 76};
//+
Line(114) = {119, 73};
//+
Line(115) = {122, 111};
//+
Line(116) = {124, 112};
//+
Line(117) = {72, 111};
//+
Line(118) = {70, 112};
//+
Line(119) = {69, 80};
//+
Line(120) = {69, 79};
//+
Line(121) = {111, 79};
//+
Line(122) = {112, 80};
//+
Line(123) = {80, 74};
//+
Line(124) = {74, 90};
//+
Line(125) = {79, 75};
//+
Line(126) = {75, 91};
//+
Line(127) = {91, 114};
//+
Line(128) = {90, 114};
//+
Line(129) = {74, 113};
//+
Line(130) = {75, 113};
//+
Line(131) = {113, 114};
//+
Line(132) = {69, 113};
//+
Line(133) = {73, 89};
//+
Line(134) = {85, 81};
//+
Line(135) = {81, 89};
//+
Line(136) = {85, 73};
//+
Line(137) = {122, 123};
//+
Line(138) = {111, 115};
//+
Line(139) = {79, 117};
//+
Line(140) = {76, 88};
//+
Line(141) = {76, 92};
//+
Line(142) = {89, 120};
//+
Line(143) = {92, 84};
//+
Line(144) = {84, 88};
//+
Line(145) = {88, 123};
//+
Line(146) = {123, 115};
//+
Line(147) = {115, 117};
//+
Line(148) = {117, 87};
//+
Line(149) = {87, 83};

Line(150) = {83, 91};
Line(151) = {87, 75};
Line(152) = {90, 82};
Line(153) = {86, 74};
Line(154) = {85, 125};
Line(155) = {125, 116};
Line(156) = {116, 118};
Line(157) = {118, 86};
Line(158) = {86, 82};
Line(159) = {118, 80};
Line(160) = {112, 116};
Line(161) = {125, 124};

//+
Line(162) = {110, 104};
Line(164) = {92, 120};
//+
Curve Loop(46) = {107, -93, -92, -108};
//+
Recursive Delete {
  Surface{30}; 
}
//+
Curve Loop(47) = {117, 121, -120, 94};
//+
Plane Surface(30) = {47};
//+
Curve Loop(48) = {91, 118, 122, -119};
//+
Plane Surface(31) = {48};
//+
Curve Loop(50) = {93, -104, -98, 106};
//+
Surface(32) = {50};
//+
Curve Loop(52) = {92, -106, -101, 105};
//+
Surface(33) = {52};
//+
Recursive Delete {
  Surface{29}; 
}
//+
Curve Loop(54) = {104, -107, -162, -99};
//+
Surface(34) = {54};
//+
Curve Loop(56) = {100, 105, -108, -162};
//+
Surface(35) = {56};
//+
Curve Loop(58) = {118, -116, -110, 108};
//+
Surface(36) = {58};
//+
Curve Loop(60) = {117, -115, -109, 107};
//+
Surface(37) = {60};

//+
Curve Loop(65) = {132, -130, -125, -120};
//+
Surface(39) = {65};
//+
Curve Loop(67) = {129, -132, 119, 123};
//+
Curve Loop(68) = {132, -129, -123, -119};
//+
Surface(40) = {68};
//+
Curve Loop(70) = {124, 128, -131, -129};
//+
Surface(41) = {70};
//+
Curve Loop(72) = {130, 131, -127, -126};
//+
Curve Loop(73) = {130, 131, -127, -126};
//+
Plane Surface(42) = {73};
//+
Curve Loop(74) = {149, 150, -126, -151};
//+
Plane Surface(43) = {74};
//+
Curve Loop(75) = {125, -151, -148, -139};
//+
Plane Surface(44) = {75};
//+
Curve Loop(76) = {147, -139, -121, 138};
//+
Plane Surface(45) = {76};
//+
Curve Loop(77) = {115, 138, -146, -137};
//+
Plane Surface(46) = {77};
//+
Curve Loop(78) = {145, -137, 112, 140};
//+
Plane Surface(47) = {78};
//+
Curve Loop(79) = {144, -140, 141, 143};
//+
Plane Surface(48) = {79};
//+

//+
Curve Loop(81) = {136, 133, -135, -134};
//+
Plane Surface(50) = {81};
//+
Curve Loop(82) = {154, 161, 111, -136};
//+
Plane Surface(51) = {82};
//+
Curve Loop(83) = {116, 160, -155, 161};
//+
Plane Surface(52) = {83};
//+
Curve Loop(84) = {156, 159, -122, 160};
//+
Plane Surface(53) = {84};
//+
Curve Loop(85) = {123, -153, -157, 159};
//+
Plane Surface(54) = {85};
//+
Curve Loop(86) = {158, -152, -124, -153};
//+
Plane Surface(55) = {86};
//+
Line(163) = {120, 119};
//+
Curve Loop(87) = {164, 163, 113, 141};
//+
Plane Surface(56) = {87};
//+
Curve Loop(88) = {114, 133, 142, 163};
//+
Plane Surface(57) = {88};
//+
Line(165) = {119, 104};
//+
Curve Loop(89) = {113, -112, -109, -165};
//+
Plane Surface(58) = {89};
//+
Curve Loop(90) = {165, 110, 111, -114};
//+
Curve Loop(91) = {114, -111, -110, -165};
//+
Plane Surface(59) = {91};

//Meshing (Coarse)
//v = 60/1.25;
//v_prog = 1.125;
//v_prog2 = 1/v_prog;
//h_1 = 40/1.25;
//h_prog = 1.15;
//h_prog2 = 1/h_prog;
//h_2 = 60/1.25;
//h_3 = 40/1.25;
//h_3_bump = 0.15;
//h_4 = 80/1.25;
//h_prog4 = 1.07;
//cyl_v = 20/1.25;
//cyl_b = 10*2.5;
//pml_s = 5;

//Meshing (Mid)
//v = 60*1.25;
//v_prog = 1.125;
//v_prog2 = 1/v_prog;
//h_1 = 40*1.25;
//h_prog = 1.15;
//h_prog2 = 1/h_prog;
//h_2 = 60*1.25;
//h_3 = 40*1.25;
//h_3_bump = 0.15;
//h_4 = 80*1.25;
//h_prog4 = 1.07;
//cyl_v = 20*1.25;
//cyl_b = 10*2.5;
//pml_s = 5;

//Meshing (Fine)
v = 60*1.25*1.25;
v_prog = 1.075;
v_prog2 = 1/v_prog;
h_1 = 40*1.25*1.25;
h_prog = 1.1;
h_prog2 = 1/h_prog;
h_2 = 60*1.25*1.25;
h_3 = 40*1.25*1.25;
h_3_bump = 0.15;
h_4 = 80*1.25*1.25*1.25;
h_prog4 = 1.03;
cyl_v = 20*1.25*1.25;
cyl_b = 10*2.5*1.25;
pml_s = 5;

// Vertical Domain lines
Transfinite Curve {113, 109, 117, 120, 119, 118, 110, 114} = v Using Progression v_prog;
Transfinite Curve {129,130, 142,164,127,128} = v Using Progression v_prog2;
// Horizontal Domain Lines 1
Transfinite Curve {111,112} = h_1 Using Progression h_prog;
Transfinite Curve {154,165,145} = h_1 Using Progression h_prog2;
// Horizontal Domain Lines 2
Transfinite Curve {146, 115, 99, 107, 108, 100, 116, 155} = h_2 Using Progression 1;
// Horizontal Domain Lines 3
Transfinite Curve {91, 94, 122, 156, 121, 147} = h_3 Using Bump h_3_bump;
// Horizontal Domain Lines 4
Transfinite Curve {157, 123, 132, 125, 148} = h_4 Using Progression h_prog4;
// Cylinder Back Arcs
Transfinite Curve {98, 93, 92, 101} = cyl_b Using Progression 1;
// Cylinder Vertical lines
Transfinite Curve {106, 104, 162, 105} = cyl_v Using Bump 0.2;
// PML Short Lines
Transfinite Curve {135, 136, 161, 160, 159, 153, 152, 150, 151, 139, 138, 137, 140, 143, 144, 141, 133, 134, 158, 124, 126, 149,163,131} = pml_s Using Progression 1;
//+
Transfinite Surface {:};
Recombine Surface{:};
//+
Physical Curve("Inflow", 2) = {164, 143, 142, 135};
//+
Physical Curve("Outflow", 3) = {144, 145, 146, 147, 148, 149, 150, 127, 128, 152, 158, 157, 156, 155, 154, 134};
//+
//Physical Curve("Wall1", 10) = {100, 101, 98, 99};
//+
Physical Curve("Wall2", 1) = {91, 92, 93, 94,100, 101, 98, 99};
//+
Physical Surface("Interior", 9) = {58, 37, 30, 39, 40, 31, 36, 59, 35, 33, 32, 34};
//+
Physical Surface("XPML", 100) = {56, 57, 41, 42};
//+
Physical Surface("YPML", 200) = {51, 52, 53, 54, 44, 45, 46, 47};
//+
Physical Surface("XYPML", 300) = {48, 50, 43, 55};
