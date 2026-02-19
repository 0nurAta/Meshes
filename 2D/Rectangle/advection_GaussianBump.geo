cl__1 = 0.4;
cl__2 = 0.6;
Point(1) = {0, 0, 0, cl__1};
Point(2) = {5, 0, 0, cl__1};
Point(3) = {5, 2, 0, cl__1};
Point(4) = {0, 2, 0, cl__1};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

Transfinite Curve {4, 2} = 10 Using Progression 1;
Transfinite Curve {3, 1} = 25 Using Progression 1;

Line Loop(6) = {4, 1, 2, 3};
Plane Surface(6) = {6};
Transfinite Surface {6};
Physical Line("Outflow",3) = {1,2,3};
Physical Line("Inflow",2) = {4};
Physical Surface("Domain",9) = {6};



//+
Point(8) = {1.145833, 1.000000, 0, 1.0};
//+
Point(9) = {1.145833, 0.888889, 0, 1.0};
//+
Point(10) = {1.250000, 1.000000, 0, 1.0};
//+
Point(11) = {1.770833, 1.000000, 0, 1.0};
//+
Point(12) = {1.770833, 0.888889, 0, 1.0};
//+
Point(13) = {1.875000, 1.000000, 0, 1.0};
