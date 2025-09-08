//+ Delta Wing Geometry


//+ Main Triangle
Point(1) = {0, 0, 0, 1.0};
Point(7) = {0.98, -0.45717, 0, 1.0};
Point(8) = {0.98, 0.45717, 0, 1.0};
Point(4) = {0.98, 0, 0, 1.0};

Line(1) = {1, 8};
Line(2) = {7, 8};
Line(3) = {1, 7};
//+

//+ Upper Flat Plate
Point(9) = {0.147, -0, 0.01666, 1.0};
Point(13) = {0.882, 0.342736, 0.01666, 1.0};
Point(16) = {0.882, -0.342736, 0.01666, 1.0};
Point(5) = {0, 0, 0, 1.0};

Line(4) = {9, 13};
Line(5) = {13, 16};
Line(6) = {16, 9};

Curve Loop(1) = {4, 5, 6};
Plane Surface(1) = {1};
//+


//+ Lower Flat Plate
Point(10) = {0.147, 0, -0.01666, 1.0};
Point(11) = {0.882, 0, 0.01666, 1.0};
Point(14) = {0.882, 0.342736, -0.01666, 1.0};
Point(15) = {0.882, -0.342736, -0.01666, 1.0};

Line(7) = {10, 15};
Line(8) = {15, 14};
Line(9) = {14, 10};
//+ 

Line(10) = {1, 9};
Line(11) = {10, 1};
Line(12) = {16, 7};
Line(13) = {15, 7};
Line(14) = {13, 8};
Line(15) = {14, 8};

//+
Curve Loop(2) = {10, 4, 14, -1};
Plane Surface(2) = {2};
//+
Curve Loop(3) = {14, -2, -12, -5};
Plane Surface(3) = {3};
//+
Curve Loop(4) = {6, -10, 3, -12};
Plane Surface(4) = {4};
//+
Curve Loop(5) = {3, -13, -7, 11};
Plane Surface(5) = {5};
//+
Curve Loop(6) = {9, 11, 1, -15};
Plane Surface(6) = {6};
//+
Curve Loop(7) = {8, 15, -2, -13};
Plane Surface(7) = {7};
//+
Curve Loop(8) = {9, 7, 8};
Plane Surface(8) = {8};


//+ Outer Domain

Point(17) = {1, 10, 0, 1.0};
Point(19) = {10, -10, 0, 1.0};
Point(20) = {10, 10, 0, 1.0};
Point(21) = {1, 10, -5, 1.0};
Point(22) = {1, 10, 5, 1.0};
Point(23) = {1, -10, -5, 1.0};
Point(24) = {1, -10, 5, 1.0};

//+
Line(16) = {24, 23};
Line(17) = {24, 22};
Line(18) = {21, 22};
Line(19) = {23, 21};
//+
Point(25) = {10, -10, 5, 1.0};
Point(26) = {10, -10, -5, 1.0};
Point(27) = {10, 10, -5, 1.0};
Point(28) = {10, 10, 5, 1.0};
//+
Line(20) = {24, 25};
Line(21) = {25, 26};
Line(22) = {26, 23};
Line(23) = {22, 28};
Line(24) = {25, 28};
Line(25) = {26, 27};
Line(26) = {28, 27};
Line(27) = {27, 21};

//+
Point(33) = {-9, 0, -5, 1.0};
Point(34) = {-9, 0, 5, 1.0};
//+
Line(30) = {34, 33};

//+
Point(35) = {1, 0, 5, 1.0};
Point(36) = {1, 0, -5, 1.0};

//+
Delete {
  Curve{17}; 
}
//+
Delete {
  Curve{19}; 
}
//+
Line(31) = {22, 35};
//+
Line(32) = {24, 35};
//+
Line(33) = {21, 36};
//+
Line(34) = {23, 36};
//+
Circle(35) = {22, 35, 34};
//+
Circle(36) = {34, 35, 24};
//+
Circle(37) = {21, 36, 33};
//+
Circle(38) = {33, 36, 23};
//+
Curve Loop(9) = {30, -37, 18, 35};
Plane Surface(9) = {9};
//+
Curve Loop(10) = {36, 16, -38, -30};
Plane Surface(10) = {10};
//+
Curve Loop(11) = {20, 24, -23, 31, -32};
Plane Surface(11) = {11};
//+
Curve Loop(12) = {16, -22, -21, -20};
Plane Surface(12) = {12};
//+
Curve Loop(13) = {24, 26, -25, -21};
Plane Surface(13) = {13};
//+
Curve Loop(14) = {23, 26, 27, 18};
Plane Surface(14) = {14};
//+
Curve Loop(15) = {34, -33, 18, 31, -32, 16};
Plane Surface(15) = {15};
//+
Curve Loop(16) = {35, 36, 32, -31};
Plane Surface(16) = {16};
//+
Curve Loop(17) = {37, 38, 34, -33};
Plane Surface(17) = {17};
//+

