// Pinball geometry and mesh for ins solver in libparanumal

// Outer box dimensions
SetFactory("OpenCASCADE");
X_i = 6;
X_o = 20;
Y = 6; 

// Circle geometry
R = 0.5;
X_f = -1.3; // -3/2cos30
Y_f = 0; 
X_b = 0;
Y_b = -0.75;
X_t = 0;
Y_t = 0.75;

// Mesh Parameters
Sz = 0.1;

Point(1) = {X_o, -Y, 0, 1.0};
//+
Point(2) = {-X_i, -Y, 0, 1.0};
//+
Point(3) = {-X_i, Y, 0, 1.0};
//+
Point(4) = {X_o, Y, 0, 1.0};
//+
Line(1) = {3, 4};
//+
Line(2) = {2, 1};
//+
Line(3) = {2, 3};
//+
Line(4) = {1, 4};
//+

Circle(5) = {X_f, Y_f, 0, R, 0, 2*Pi};
//+
Circle(6) = {X_b, Y_b, 0, R, 0, 2*Pi};
//+
Circle(7) = {X_t, Y_t, 0, R, 0, 2*Pi};


//+
Circle(8) = {0.5, 0, 0, 3, Pi/2, 3*Pi/2};
//+
Point(10) = {13.5, 3, 0, Sz};
//+
Point(11) = {13.5, -3, 0, Sz};
//+
Line(9) = {8, 10};
//+
Line(10) = {9, 11};
//+
Line(11) = {11, 10};
//+
Curve Loop(1) = {8, 10, 11, -9};
//+
Curve Loop(2) = {7};
//+
Curve Loop(3) = {5};
//+
Curve Loop(4) = {6};
//+
Plane Surface(1) = {1, 2, 3, 4};
//+
Curve Loop(5) = {3, 1, -4, -2};
//+
Curve Loop(6) = {9, -11, -10, -8};
//+
Plane Surface(2) = {5, 6};

Mesh.MinimumCirclePoints = 100;


//+
Transfinite Curve {10, 9} = 100 Using Progression 1;
//+
Physical Curve("Inflow", 2) = {3};
//+
Physical Curve("Outflow", 3) = {2, 1, 4};
//+
Physical Curve("Wall", 1) = {5, 7, 6};
//+
Physical Surface("Domain", 9) = {2, 1};
