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
x_b = 15;	
y = 5;
w = 1;

Point(73) = {x_f, -y, 0, 1.0};
Point(74) = {x_b, -y, 0, 1.0};
Point(75) = {x_b, y, 0, 1.0};
Point(76) = {x_f, y, 0, 1.0};
//+
Line(95) = {76, 75};
Line(96) = {75, 74};
Line(97) = {74, 73};
Line(98) = {73, 76};
//+
Circle(99) = {0.06, 0, 0, 2, Pi/2, 3*Pi/2};
//+
Point(79) = {10, 2, 0, 1.0};
Point(80) = {10, -2, 0, 1.0};

Line(100) = {77, 79};
Line(101) = {78, 80};
Line(102) = {79, 80};


// Outer Domain Points
x_f = -5;
x_b = 15;	
y = 5;

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
Line(103) = {84, 92};
Line(104) = {92, 89};
Line(105) = {89, 81};
Line(106) = {81, 85};
Line(107) = {85, 86};
Line(108) = {86, 82};
Line(109) = {82, 90};
Line(110) = {90, 91};
Line(111) = {91, 83};
Line(112) = {83, 87};
Line(113) = {87, 88};
Line(114) = {88, 84};
Line(115) = {84, 92};
Line(116) = {92, 76};
Line(117) = {76, 88};
Line(118) = {87, 75};
Line(119) = {75, 91};
Line(120) = {90, 74};
Line(121) = {74, 86};
Line(122) = {89, 73};
Line(123) = {73, 85};


//+
Curve Loop(46) = {103, 116, 117, 114};
Plane Surface(31) = {46};
Curve Loop(47) = {95, -118, 113, -117};
Plane Surface(32) = {47};
Curve Loop(48) = {112, 118, 119, 111};
Plane Surface(33) = {48};
Curve Loop(49) = {110, -119, 96, -120};
Plane Surface(34) = {49};
Curve Loop(50) = {109, 120, 121, 108};
Plane Surface(35) = {50};
Curve Loop(51) = {97, 123, 107, -121};
Plane Surface(36) = {51};
Curve Loop(52) = {122, 123, -106, -105};
Plane Surface(37) = {52};
Curve Loop(53) = {98, -116, 104, 122};
Plane Surface(38) = {53};

//+
Curve Loop(54) = {99, 101, -102, -100};
Surface(39) = {54};
BooleanDifference{ Surface{39}; Delete; }{ Surface{30}; Surface{29}; Delete; }
BooleanDifference{ Surface{39}; Delete; }{ Surface{40}; Delete; }
Curve Loop(58) = {98, 95, 96, 97};
Curve Loop(59) = {125, 127, -126, -124};
Plane Surface(40) = {58, 59};


//
cp = 100*0.25;
c_s = 100*0.25;
a_s = 200*0.25;
ishl_s = 200*0.25;
isvl_s = 200*0.25;
pmls_s = 5;
pmlv_s = 50*0.5;
pmlh_s = 100*0.5;

// Mesh Sizing

Mesh.MinimumCirclePoints = cp;

// Cylinder Sizing
Transfinite Curve {128, 129, 131, 132} = c_s Using Progression 1;

// Airfoil Sizing
Transfinite Curve {130, 133} = a_s Using Progression 1;

// Inner Surface Horizontal Lines
Transfinite Curve {125, 126} = ishl_s Using Progression 1;

// Inner Surface Vertical Line
Transfinite Curve {127} = isvl_s Using Progression 1;

// Pml Short Lines
Transfinite Curve {122, 106, 116, 114, 103, 117, 112, 118, 111, 119, 108, 121, 109, 120, 123, 105} = pmls_s Using Progression 1;

// Pml Vertical Lines
Transfinite Curve {98, 104, 96, 110} = pmlv_s Using Progression 1;

// Pml Horizontal Lines
Transfinite Curve {95, 113, 97, 107} = pmlh_s Using Progression 1;


// Physical Tags
// Curves
Physical Curve("Wall_Cyl", 10) = {128, 129};
Physical Curve("Wall_Airfoil", 1) = {131, 132, 130, 133};
Physical Curve("Inflow", 2) = {104, 103, 105, 106, 107, 108, 112, 113, 114};
Physical Curve("Outflow", 3) = {111, 110, 109};

// Surfaces
Physical Surface("Interior", 9) = {40, 39};
Physical Surface("XPML", 100) = {38, 34};
Physical Surface("YPML", 200) = {32, 36};
Physical Surface("XYPML", 300) = {31, 37, 35, 33};

