//+ Delta Wing Geometry

Include "VFE-2.geo";

// Set-up Parameters

Pv = 1.4; // horizontal progression
Ph = 1.0; // vertical   progression
Nv = 30;  // horizontal cell number
Nh = 30;  // vertical   cell number


// Extrusions of side surfaces //
Extrude {1*0.0098, 0, 20*0.001666} {
  Curve{2}; Curve{14}; Curve{5}; Curve{12};  Recombine;
}
Extrude {1*0.0098, 0, -20*0.001666} {
  Curve{15}; Curve{8}; Curve{13}; Curve{2};  Recombine;
}
Extrude {0, 0, -20*0.001666} {
   Point{1};  Recombine;
}
Extrude {0, 0, 20*0.001666} {
  Point{1};  Recombine;
}
Extrude {0, 0, 20*0.001666} {
  Point{9};  Recombine;
}
Extrude {0, 0, -20*0.001666} {
  Point{10};  Recombine;
}

// Volume 1
Curve Loop(9) = {28, 16, -20, 24};
Surface(48) = {9};
Surface Loop(1) = {31, 19, 23, 48, 27, 3};
Volume(1) = {1};

// Volume 2
Curve Loop(10) = {44, -32, -36, 40};
Surface(49) = {10};
Surface Loop(2) = {49, 47, 35, 39, 43, 7};
Volume(2) = {2};

// Volume 3
Line(52) = {21, 29};
Line(53) = {19, 29};
Curve Loop(11) = {24, -53, 52 };
Surface(50) = {11};
Curve Loop(12) = {53, 21,4, -50 };
Surface(51) = {12};
Curve Loop(13) = {-6, 26, 52, -50};
Surface(52) = {13};
Surface Loop(3) = {50, 51, 52, 27, 1};
Volume(3) = {3};

// Volume 4
Line(54) = {18, 28};
Line(55) = {29, 28};
Curve Loop(14) = {54, -49, 1, 18};
Surface(53) = {14};
Curve Loop(15) = {55, -49, 10, 50};
Surface(54) = {15};
Curve Loop(16) = {54, -55, -53, 20};
Surface(55) = {16};
Surface Loop(4) = {55, 53, 54, 51, 2, 23};
Volume(4) = {4};

// Volume 5
Line(56) = {28, 17};
Curve Loop(17) = {56, -17, -3, 49};
Surface(56) = {17};
Curve Loop(18) = {55, 56, -28, 52};
Surface(57) = {18};
Surface Loop(5) = {57, 56, 54, 31, 52, 4};
Volume(5) = {5};

// Volume 6
Line(57) = {30, 24};
Line(58) = {22, 30};
Curve Loop(19) = {58, 57, 36};
Surface(58) = {19};
Curve Loop(20) = {9, 51, -58, -33};
Surface(59) = {20};
Curve Loop(21) = {7, 37, -57, -51};
Surface(60) = {21};
Surface Loop(6) = {58, 59, 60, 39, 8};
Volume(6) = {6};

// Volume 7
Line(59) = {27, 23};
Line(60) = {27, 30};
Curve Loop(22) = {59, -32, 58, -60};
Surface(61) = {22};
Curve Loop(23) = {11, 48, 60, -51};
Surface(62) = {23};
Curve Loop(24) = {1, 34, -59, -48};
Surface(63) = {24};
Transfinite Surface {63};
Surface Loop(7) = {61, 63, 62, 35, 59, 6};
Volume(7) = {7};

// Volume 8
Line(61) = {26, 27};
Curve Loop(25) = {3, 42, 61, -48};
Surface(64) = {25};
Curve Loop(26) = {61, 60, 57, 40};
Surface(65) = {26};
Surface Loop(8) = {43, 60, 65, 64, 62, 5};
Volume(8) = {8};



// Vertical Curves
Transfinite Curve {18, 21, 26, 17, 42, 37, 33, 34, 48, 49, 50, 51} = Nv Using Progression Pv;
// Horizontal Curves
Transfinite Curve {24, 5, 16, 2, 20, 14, 28, 12, 13, 40, 15, 32,36, 8, 44, 53, 52, 4, 6, 55, 54, 1, 10, 49, 56, 3, 7, 9, 58, 57, 60, 59, 11, 61} = Nh Using Progression Ph;

// Surfaces
Transfinite Surface {48};
Transfinite Surface {23};
Transfinite Surface {31};
Transfinite Surface {19};
Transfinite Surface {27};
Transfinite Surface {3};
Transfinite Surface {35};
Transfinite Surface {43};
Transfinite Surface {47};
Transfinite Surface {39};
Transfinite Surface {49};
Transfinite Surface {7};
Transfinite Surface {51};
Transfinite Surface {52};
Transfinite Surface {50};
Transfinite Surface {1};
Transfinite Surface {55};
Transfinite Surface {54};
Transfinite Surface {53};
Transfinite Surface {2};
Transfinite Surface {56};
Transfinite Surface {57};
Transfinite Surface {4};
Transfinite Surface {8};
Transfinite Surface {60};
Transfinite Surface {59};
Transfinite Surface {58};
Transfinite Surface {6};
Transfinite Surface {62};
Transfinite Surface {61};
Transfinite Surface {65};
Transfinite Surface {64};
Transfinite Surface {5};

// Volumes
Transfinite Volume{1};
Transfinite Volume{2};
Transfinite Volume{3};
Transfinite Volume{4};
Transfinite Volume{5};
Transfinite Volume{6};
Transfinite Volume{7};
Transfinite Volume{8};