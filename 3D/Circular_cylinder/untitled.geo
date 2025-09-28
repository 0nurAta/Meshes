
// Control Parameters
cyl_point = 0.35355339059;
scale_R = 10*0.35355339059;
y_dom = 6;
x_front = 1+scale_R;
x_back = 10;
w = 2; // PML width

//+
Point(2) = {cyl_point, cyl_point, 0, 1.0};
Point(3) = {-cyl_point, cyl_point, 0, 1.0};
Point(4) = {-cyl_point, -cyl_point, 0, 1.0};
Point(5) = {cyl_point, -cyl_point, 0, 1.0};

//+
Point(6) = {scale_R, scale_R, 0, 1.0};
Point(7) = {-scale_R, scale_R, 0, 1.0};
Point(8) = {-scale_R, -scale_R, 0, 1.0};
Point(9) = {scale_R, -scale_R, 0, 1.0};

//+

Point(10) = {scale_R, y_dom, 0, 1.0};
Point(11) = {-scale_R, y_dom, 0, 1.0};
Point(12) = {-scale_R, -y_dom, 0, 1.0};
Point(13) = {scale_R, -y_dom, 0, 1.0};

Point(14) = {x_back, y_dom, 0, 1.0};
Point(15) = {-x_front, y_dom, 0, 1.0};
Point(16) = {-x_front, -y_dom, 0, 1.0};
Point(17) = {x_back, -y_dom, 0, 1.0};

Point(18) = {x_back, scale_R, 0, 1.0};
Point(19) = {-x_front, scale_R, 0, 1.0};
Point(20) = {-x_front, -scale_R, 0, 1.0};
Point(21) = {x_back, -scale_R, 0, 1.0};

// PML Points

Point(22) = {x_back+w, y_dom, 0, 1.0};
Point(23) = {-x_front-w, y_dom, 0, 1.0};
Point(24) = {-x_front-w, -y_dom, 0, 1.0};
Point(25) = {x_back+w, -y_dom, 0, 1.0};
Point(26) = {x_back+w, scale_R, 0, 1.0};
Point(27) = {-x_front-w, scale_R, 0, 1.0};
Point(28) = {-x_front-w, -scale_R, 0, 1.0};
Point(29) = {x_back+w, -scale_R, 0, 1.0};
Point(30) = {x_back+w, y_dom+w, 0, 1.0};
Point(31) = {-x_front-w, y_dom+w, 0, 1.0};
Point(32) = {-x_front-w, -y_dom-w, 0, 1.0};
Point(33) = {x_back+w, -y_dom-w, 0, 1.0};
Point(34) = {x_back, y_dom+w, 0, 1.0};
Point(35) = {-x_front, y_dom+w, 0, 1.0};
Point(36) = {-x_front, -y_dom-w, 0, 1.0};
Point(37) = {x_back, -y_dom-w, 0, 1.0};
Point(38) = {scale_R, y_dom+w, 0, 1.0};
Point(39) = {-scale_R, y_dom+w, 0, 1.0};
Point(40) = {-scale_R, -y_dom-w, 0, 1.0};
Point(41) = {scale_R, -y_dom-w, 0, 1.0};
//+
Line(2) = {2, 6};
Line(3) = {3, 7};
Line(4) = {4, 8};
Line(5) = {5, 9};

Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 9};
Line(9) = {9, 6};

Line(10) = {6, 10};
Line(11) = {7, 11};
Line(12) = {8, 12};
Line(13) = {9, 13};

Line(14) = {11, 10};
Line(15) = {12, 13};

Line(16) = {10, 14};
Line(17) = {11, 15};
Line(18) = {12, 16};
Line(19) = {13, 17};

Line(20) = {6, 18};
Line(21) = {7, 19};
Line(22) = {8, 20};
Line(23) = {9, 21};

Line(24) = {14, 18};
Line(25) = {15, 19};
Line(26) = {16, 20};
Line(27) = {17, 21};
Line(28) = {18, 21};
Line(29) = {19, 20};


Line(30) = {31, 23};
Line(31) = {23, 27};
Line(32) = {27, 28};
Line(33) = {28, 24};
Line(34) = {24, 32};
Line(35) = {32, 36};
Line(36) = {36, 40};
Line(37) = {40, 41};
Line(38) = {41, 37};
Line(39) = {37, 33};
Line(40) = {33, 25};
Line(41) = {25, 29};
Line(42) = {29, 26};
Line(43) = {26, 22};
Line(44) = {22, 30};
Line(45) = {30, 34};
Line(46) = {34, 38};
Line(47) = {38, 39};
Line(48) = {39, 35};
Line(49) = {35, 31};
Line(50) = {15, 35};
Line(51) = {15, 23};
Line(52) = {11, 39};
Line(53) = {19, 27};
Line(54) = {20, 28};
Line(55) = {10, 38};
Line(56) = {14, 34};
Line(57) = {14, 22};
Line(58) = {18, 26};
Line(59) = {21, 29};
Line(60) = {17, 25};
Line(61) = {17, 37};
Line(62) = {13, 41};
Line(63) = {12, 40};
Line(64) = {16, 36};
Line(65) = {16, 24};

//+
Point(42) = {0, 0, 0, 1.0};
//+
Circle(66) = {3, 42, 4};
Circle(67) = {4, 42, 5};
Circle(68) = {5, 42, 2};
Circle(69) = {2, 42, 3};

// Control points for mesh size
pt = 50;
rt = 50;
pv_l = 6;
pv_s = 6;
ph_pml = 6;
ph_f = 4;
ph_b = 14;
// Tangential Points total = pt*16
Transfinite Curve {66, 69, 68, 67, 7, 6, 9, 8, 29, 32, 14, 47, 15, 37, 28, 42} = pt Using Bump 15;
// Radial Points total = rt*4
Transfinite Curve {4, 5, 2, 3} = rt Using Progression 1.05;
// First vertical set (longer) total = pv_l*12
Transfinite Curve {33, 26, 12, 13, 27, 41, 43, 24, 10, 11, 25, 31} = pv_l Using Progression 1;
// Second vertical set (shorter) total = pv_s*12
Transfinite Curve {34, 64, 63, 62, 61, 40, 44, 56, 55, 52, 50, 30} = pv_s Using Progression 1;
// First horizontal set (PML) total = ph_pml*12
Transfinite Curve {49, 51, 53, 54, 65, 35, 39, 60, 59, 58, 57, 45} = ph_pml Using Progression 1;
// Second horizontal set (front) total = ph_f*6
Transfinite Curve {48, 17, 21, 22, 18, 36} = ph_f Using Progression 1;
// Third horizontal set (back) total = ph_b*6
Transfinite Curve {46, 16, 20, 23, 19, 38} = ph_b Using Progression 1;
//+
Curve Loop(1) = {66, 4, -7, -3};
//+
Surface(1) = {1};
//+
Curve Loop(2) = {4, 8, -5, -67};
//+
Surface(2) = {2};
//+
Curve Loop(3) = {9, -2, -68, 5};
//+
Surface(3) = {3};
//+
Curve Loop(4) = {69, 3, -6, -2};
//+
Surface(4) = {4};
//+
Curve Loop(5) = {6, 11, 14, -10};
//+
Surface(5) = {5};
//+
Curve Loop(6) = {8, 13, -15, -12};
//+
Surface(6) = {6};
//+
Curve Loop(7) = {7, 22, -29, -21};
//+
Surface(7) = {7};
//+
Curve Loop(8) = {20, 28, -23, 9};
//+
Surface(8) = {8};
//+
Curve Loop(9) = {12, 18, 26, -22};
//+
Surface(9) = {9};
//+
Curve Loop(10) = {19, 27, -23, 13};
//+
Surface(10) = {10};
//+
Curve Loop(11) = {20, -24, -16, -10};
//+
Surface(11) = {11};
//+
Curve Loop(12) = {11, 17, 25, -21};
//+
Surface(12) = {12};
//+
Curve Loop(13) = {14, 55, 47, -52};
//+
Surface(13) = {13};
//+
Curve Loop(14) = {52, 48, -50, -17};
//+
Surface(14) = {14};
//+
Curve Loop(15) = {50, 49, 30, -51};
//+
Surface(15) = {15};
//+
Curve Loop(16) = {16, 56, 46, -55};
//+
Surface(16) = {16};
//+
Curve Loop(17) = {57, 44, 45, -56};
//+
Surface(17) = {17};
//+
Curve Loop(18) = {43, -57, 24, 58};
//+
Surface(18) = {18};
//+
Curve Loop(19) = {42, -58, 28, 59};
//+
Surface(19) = {19};
//+
Curve Loop(20) = {27, 59, -41, -60};
//+
Surface(20) = {20};
//+
Curve Loop(21) = {40, -60, 61, 39};
//+
Surface(21) = {21};
//+
Curve Loop(22) = {19, 61, -38, -62};
//+
Surface(22) = {22};
//+
Curve Loop(23) = {15, 62, -37, -63};
//+
Surface(23) = {23};
//+
Curve Loop(24) = {18, 64, 36, -63};
//+
Surface(24) = {24};
//+
Curve Loop(25) = {64, -35, -34, -65};
//+
Surface(25) = {25};
//+
Curve Loop(26) = {54, 33, -65, 26};
//+
Surface(26) = {26};
//+
Curve Loop(27) = {32, -54, -29, 53};
//+
Surface(27) = {27};
//+
Curve Loop(28) = {25, 53, -31, -51};
//+
Surface(28) = {28};

//+
Transfinite Surface {:};
Recombine Surface{:};
Extrude {0, 0, 1.5} {Surface{:}; Layers {30}; Recombine;}
//+
Physical Surface("Wall", 1) = {78, 144, 130, 112};
Physical Surface("Inflow", 2) = {394, 680, 650, 632, 614};
Physical Surface("Outflow", 3) = {390, 368, 350, 416, 438, 434, 452, 474, 504, 518, 530, 548, 570, 592, 610};
Physical Surface("Symmetry", 4) = {421, 355, 377, 399, 685, 663, 641, 619, 575, 597, 553, 531, 509, 289, 201, 267, 223, 91, 135, 245, 311, 179, 333, 157, 113, 17, 16, 13, 14, 15, 28, 27, 26, 25, 19, 8, 3, 1, 2, 4, 5, 11, 18, 21, 20, 10, 22, 23, 6, 7, 9, 24, 12};

Physical Volume("Interior", 9) = {12, 5, 11, 8, 3, 4, 1, 2, 7, 9, 6, 10};
Physical Volume("XPML", 100) = {27, 28, 26, 20, 19, 18};
Physical Volume("YPML", 200) = {14, 13, 16, 22, 23, 24};
Physical Volume("XYPML", 300) = {15, 17, 21, 25};

