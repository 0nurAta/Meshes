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
Point(122) = {xmin, ymax, zmax, 1.0};
Point(124) = {xmin, ymin, zmax, 1.0};
Point(135) = {xmin, 0,    zmax, 1.0};	
Point(123) = {xmin, ymin, zmin, 1.0};
Point(136) = {xmin, 0,    zmin, 1.0};
Point(121) = {xmin, ymax, zmin, 1.0};
Point(117) = {xmin, ymax, 0, 1.0};

Point(128) = {xmax, ymax, zmax, 1.0};
Point(125) = {xmax, ymin, zmax, 1.0};

Point(126) = {xmax, ymin, zmin, 1.0};
Point(127) = {xmax, ymax, zmin, 1.0};

//+
Point(148) = {xmin, 0, 0, 1.0};

//+ Cube Edges
//Line(116) = {124, 123};
//Line(118) = {121, 122};
//Line(120) = {124, 125};
//Line(121) = {125, 126};
//Line(122) = {126, 123};
//Line(123) = {122, 128};
//Line(124) = {125, 128};
//Line(125) = {126, 127};
//Line(126) = {128, 127};
//Line(127) = {127, 121};


//+ Circle Points
//+Point(133) = {-9, 0, -5, 1.0};
//+Point(134) = {-9, 0, 5, 1.0};

//+ Cirge Edges
//+Line(130) = {134, 133};
//+Circle(135) = {122, 135, 134};
//+Circle(136) = {134, 135, 124};
//+Circle(137) = {121, 136, 133};
//+Circle(138) = {133, 136, 123};



//+
//Line(128) = {123, 121};
//+
//Line(129) = {122, 124};
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
Point(177) = {xlocO, yO, -zO, 1.0};
Point(178) = {xlocO, -yO, -zO, 1.0};
Point(179) = {xlocO, yO, zO, 1.0};
Point(180) = {xlocO, -yO, zO, 1.0};
//+
Line(163) = {177, 178};
//+
Line(164) = {179, 180};
//+

//+ Inflation Layer (Mid Circle 2)
z2 = 1;
y2 = (radius2^2-z2^2)^(0.5);
//+
Point(161) = {xloc2, y2, -z2, 1.0};
Point(162) = {xloc2, -y2, -z2, 1.0};
Point(163) = {xloc2, y2, z2, 1.0};
Point(164) = {xloc2, -y2, z2, 1.0};
//+
Line(153) = {161, 162};
//+
Line(156) = {163, 164};
//+

//+ Inflation Layer (Mid Circle 1)
z1 = 1;
y1 = (radius1^2-z2^2)^(0.5);
//+
Point(165) = {xloc1, y1, -z1, 1.0};
Point(166) = {xloc1, -y1, -z1, 1.0};
Point(167) = {xloc1, y1, z1, 1.0};
Point(168) = {xloc1, -y1, z1, 1.0};
//+
Line(157) = {167, 168};
//+
Line(158) = {165, 166};

//+ Inflation Layer (Mid Circle 3)
z3 = 1;
y3 = (radius3^2-z3^2)^(0.5);
//+
Point(169) = {xloc3, y3, -z3, 1.0};
Point(170) = {xloc3, -y3, -z3, 1.0};
Point(171) = {xloc3, y3, z3, 1.0};
Point(172) = {xloc3, -y3, z3, 1.0};
//+
//+
Line(159) = {171, 172};
//+
Line(160) = {169, 170};

//+ Inflation Layer (Mid Circle 4)
z4 = 1;
y4 = (radius4^2-z4^2)^(0.5);
//+
Point(173) = {xloc4, y4, -z4, 1.0};
Point(174) = {xloc4, -y4, -z4, 1.0};
Point(175) = {xloc4, y4, z4, 1.0};
Point(176) = {xloc4, -y4, z4, 1.0};

//+
Line(161) = {175, 176};
//+
Line(162) = {173, 174};



//+ Outer Circle

Point(119) = {xlocO, radiusO, 0, 1.0};
Point(137) = {xlocO, 0, radiusO, 1.0};
Point(138) = {xlocO, 0, -radiusO, 1.0};
Point(120) = {xlocO, -radiusO, 0, 1.0};
Point(139) = {xlocO, 0, 0, 1.0}; 
Circle(130) = {138, 139, 177};
Circle(131) = {179, 139, 137};
Circle(132) = {137, 139, 180};
Circle(133) = {178, 139, 138};
Circle(181) = {180, 139, 178};
Circle(182) = {179, 139, 177};

//+ Mid Circle 1

Point(140) = {xloc1, radius1, 0, 1.0};
Point(141) = {xloc1, -radius1, 0, 1.0};
Point(142) = {xloc1, 0, radius1, 1.0};
Point(143) = {xloc1, 0, -radius1, 1.0};
Point(150) = {xloc1, 0, 0, 1.0};
Circle(134) = {165, 150, 143};
Circle(135) = {143, 150, 166};
Circle(136) = {168, 150, 142};
Circle(137) = {142, 150, 167};
Circle(179) = {168, 150, 166};
Circle(180) = {167, 150, 165};
//+
//+ Mid Circle 2
Point(144) = {xloc2, radius2, 0, 1.0};
Point(145) = {xloc2, -radius2, 0, 1.0};
Point(146) = {xloc2, 0, radius2, 1.0};
Point(147) = {xloc2, 0, -radius2, 1.0};
Point(149) = {xloc2, 0, 0, 1.0};
Circle(138) = {161, 149, 147};
Circle(139) = {147, 149, 162};
Circle(140) = {164, 149, 146};
Circle(141) = {146, 149, 163};
Circle(177) = {163, 149, 161};
Circle(178) = {164, 149, 162};


//+ Mid Circle 3
Point(151) = {xloc3, radius3, 0, 1.0};
Point(152) = {xloc3, -radius3, 0, 1.0};
Point(153) = {xloc3, 0, radius3, 1.0};
Point(154) = {xloc3, 0, -radius3, 1.0};
Point(155) = {xloc3, 0, 0, 1.0};
Circle(142) = {151, 155, 154};
Circle(143) = {154, 155, 152};
Circle(144) = {152, 155, 153};
Circle(145) = {153, 155, 151};
//+
//+ Mid Circle 4
Point(156) = {xloc4, radius4, 0, 1.0};
Point(157) = {xloc4, -radius4, 0, 1.0};
Point(158) = {xloc4, 0, radius4, 1.0};
Point(159) = {xloc4, 0, -radius4, 1.0};
Point(160) = {xloc4, 0, 0, 1.0};
Circle(146) = {173, 160, 159};
Circle(147) = {159, 160, 174};
Circle(148) = {176, 160, 158};
Circle(149) = {158, 160, 175};
Circle(186) = {175, 160, 173};
Circle(187) = {176, 160, 174};

//+ Spline Curves
Spline(150) = {138, 143};
Spline(151) = {143, 147};
Spline(152) = {147, 154, 159};
Spline(165) = {163, 171, 175};
Spline(166) = {161, 169, 173};
Spline(167) = {164, 172, 176};
Spline(168) = {162, 170, 174};
Spline(169) = {168, 164};
Spline(170) = {166, 162};
Spline(171) = {167, 163};
Spline(172) = {165, 161};
Spline(173) = {179, 167};
Spline(174) = {177, 165};
Spline(175) = {180, 168};
Spline(176) = {178, 166};
Spline(183) = {137, 142};
Spline(184) = {142, 146};
Spline(185) = {146, 153, 158};



// Vertical Curves
// Dense area
Transfinite Curve {178, 177, 180, 179} = 25 Using Progression 1;

Transfinite Curve {187, 186, 181, 182} = 25 Using Progression 1;

// Horizontal Curves
Transfinite Curve {168, 167, 166, 165, 172,  170, 176, 175, 173, 161, 162, 164, 163, 174} = 15 Using Progression 1;
// Dense area
Transfinite Curve {153, 156, 157, 158} = 40 Using Progression 1;
Transfinite Curve {136, 140, 184, 169, 141, 137, 171, 134, 135, 138, 139, 151} = 25 Using Progression 1;
//+
Transfinite Curve {148, 149, 131, 132, 183, 185, 152, 150, 147, 146, 133, 130} = 15 Using Progression 1;


//+
Recursive Delete {
  Curve{144}; Curve{145}; Curve{159}; Curve{160}; Curve{142}; Curve{143}; 
}


Curve Loop(27) = {153, -178, -156, 177};
Surface(66) = {27};
Curve Loop(28) = {158, -179, -157, 180};
Surface(67) = {28};
Curve Loop(29) = {178, -170, -179, 169};
Surface(68) = {29};
Curve Loop(30) = {172, -177, -171, 180};
Surface(69) = {30};
Curve Loop(31) = {153, -170, -158, 172};
Surface(70) = {31};
Curve Loop(32) = {156, -169, -157, 171};
Surface(71) = {32};
//+
//Transfinite Surface {66};
//Transfinite Surface {67};
//Transfinite Surface {68};
//Transfinite Surface {69};
//Transfinite Surface {71};
//Transfinite Surface {70};


Surface Loop(9) = {69, 70, 66, 68, 67, 71, 50, 57, 55, 48, 53, 63, 19, 47, 56, 64, 49, 65, 61, 58};
Volume(9) = {9};
//+
Curve Loop(33) = {140, -184, -136, 169};
//+
Surface(72) = {33};
//+
Curve Loop(40) = {139, -170, -135, 151};
//+
Surface(79) = {40};
//+
Curve Loop(41) = {141, -171, -137, 184};
//+
Surface(80) = {41};
//+
Curve Loop(42) = {141, 156, 140};
//+
Surface(81) = {42};
//+
Curve Loop(43) = {139, -153, 138};
//+
Surface(82) = {43};
//+
Curve Loop(44) = {136, 137, 157};
//+
Surface(83) = {44};
//+
Curve Loop(45) = {134, 135, -158};
//+
Surface(84) = {45};
//+
Curve Loop(46) = {134, 151, -138, -172};
//+
Surface(85) = {46};
//+
Surface Loop(10) = {84, 85, 79, 82, 70};
//+
Volume(10) = {10};
//+
Surface Loop(11) = {80, 81, 72, 83, 71};
//+
Curve Loop(47) = {131, 183, 137, -173};
//+
Surface(86) = {47};
//+
Curve Loop(48) = {173, 180, -174, -182};
//+
Surface(87) = {48};
//+
Curve Loop(49) = {130, 174, 134, -150};
//+
Surface(88) = {49};
//+
Curve Loop(50) = {150, 135, -176, 133};
//+
Surface(89) = {50};
//+
Curve Loop(51) = {176, -179, -175, 181};
//+
Surface(90) = {51};
//+
Curve Loop(52) = {136, -183, 132, 175};
//+
Surface(91) = {52};
//+
Curve Loop(53) = {133, 130, 163};
//+
Surface(92) = {53};
//+
Curve Loop(54) = {182, 163, -181, -164};
//+
Surface(93) = {54};
//+
Curve Loop(55) = {132, -164, 131};
//+
Surface(94) = {55};
//+
Surface Loop(12) = {89, 88, 92, 93, 87, 86, 94, 91, 90, 83, 84, 67};
//+
Volume(11) = {12};
//+
Curve Loop(56) = {185, -148, -167, 140};
//+
Surface(95) = {56};
//+
Curve Loop(57) = {167, 187, -168, -178};
//+
Surface(96) = {57};
//+
Curve Loop(58) = {168, -147, -152, 139};
//+
Surface(97) = {58};
//+
Curve Loop(59) = {152, -146, -166, 138};
//+
Surface(98) = {59};
//+
Curve Loop(60) = {166, -186, -165, 177};
//+
Surface(99) = {60};
//+
Curve Loop(61) = {165, -149, -185, 141};
//+
Surface(100) = {61};
//+
Curve Loop(62) = {186, 162, -187, -161};
//+
Surface(101) = {62};
//+
Curve Loop(63) = {146, 147, -162};
//+
Surface(102) = {63};
//+
Curve Loop(64) = {149, 161, 148};
//+
Surface(103) = {64};
//+
Surface Loop(13) = {98, 97, 96, 95, 100, 99, 101, 102, 103, 82, 66, 81};
//+
Volume(12) = {13};
//+
Volume(13) = {11};
//+
Physical Volume("fluid", 188) = {11, 10, 13, 12, 9};
//+
Physical Surface("farfield", 189) = {101, 102, 103, 100, 98, 97, 99, 96, 95, 80, 72, 79, 68, 85, 69, 89, 91, 86, 88, 87, 90, 94, 93, 92};

Physical Surface("walltop", 190) = {1,3,4,2};

Physical Surface("wallbot", 191) = {8,6,7,5};

