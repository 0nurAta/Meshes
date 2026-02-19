//------------------------------------------------------------
// Slice a 3D STL airfoil at z = 0 and extract 2D boundary
// Resample curve to N points and export as airfoil.dat
//------------------------------------------------------------

// ------------ USER SETTINGS ----------------------
STLFile = "assembly_cfd.stl";    // <-- your STL here
Npts    = 200;              // <-- number of desired points (change later)
zplane  = 0;                // <-- z = 0 section
//---------------------------------------------------

SetFactory("OpenCASCADE");

// Load STL
Merge "assembly_cfd.stl";
CreateTopology;

// Make a large plane at z = zplane
// Define a simple square surface big enough to cut anything
p1 = newp; Point(p1) = {-1000, -1000, zplane+1};
p2 = newp; Point(p2) = { 1000, -1000, zplane+1};
p3 = newp; Point(p3) = { 1000,  1000, zplane+1};
p4 = newp; Point(p4) = {-1000,  1000, zplane+1};

l1 = newl; Line(l1) = {p1, p2};
l2 = newl; Line(l2) = {p2, p3};
l3 = newl; Line(l3) = {p3, p4};
l4 = newl; Line(l4) = {p4, p1};

ll = newll; Line Loop(ll) = {l1, l2, l3, l4};
s_plane = news; Plane Surface(s_plane) = {ll};

// Perform intersection
// STL is imported as Surface ID 1 (usually), so intersect Volume/Surface sets:
v() = Volume "*"; 
s() = Surface "*";

/*
// Intersect everything with the plane surface
BooleanIntersection{ Surface{s_plane}; Delete; }{ Surface{s()}; };

// After intersection, resulting curves contain our airfoil section
Coherence;

// Extract all remaining curves
airfoilCurves() = Curve "*";

// Create a discrete curve loop and reconstruct spline
// This ensures a smooth final curve
spl = news;
Spline(spl) = airfoilCurves();

// Re-sample curve into Npts evenly spaced points
pts[] = {};
For i In {0:Npts-1}
    t = i/(Npts-1);          // parametric coordinate
    p = newp;
    // Evaluate curve using built-in interpolation
    x = CurveEvaluate(spl, t)[0];
    y = CurveEvaluate(spl, t)[1];
    Point(p) = {x, y, 0};
    pts[] += p;
EndFor

// Export points to file
f = fopen("airfoil.dat", "w");
For i In {0:#pts[]-1}
    x = X(pts[i]);
    y = Y(pts[i]);
    fprintf(f, "%.10f %.10f\n", x, y);
EndFor
fclose(f);

Printf("Export finished: %g points written to airfoil.dat", #pts[]);*/

//+


//+

BooleanDifference{ Surface{7}; Delete; }{ Surface{1}; Delete; }
