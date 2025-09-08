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

//+ Surfaces
Curve Loop(1) = {5,6,4};
Plane Surface(1) = {1};

Curve Loop(2) = {10, 4, 14, -1};
Plane Surface(2) = {2};

Curve Loop(3) = {14, -2, -12, -5};
Plane Surface(3) = {3};

Curve Loop(4) = {6, -10, 3, -12};
Plane Surface(4) = {4};

Curve Loop(5) = {3, -13, -7, 11};
Plane Surface(5) = {5};

Curve Loop(6) = {9, 11, 1, -15};
Plane Surface(6) = {6};

Curve Loop(7) = {8, 15, -2, -13};
Plane Surface(7) = {7};

Curve Loop(8) = {9, 7, 8};
Plane Surface(8) = {8};

