// Gmsh script for golf ball with dimples
SetFactory("OpenCASCADE");
Geometry.Tolerance = 1e-8;
Sphere(1) = {0, 0, 0, 0.5};
Sphere(2) = {0.0, 0.698752, 0.0, 0.203752};
Sphere(3) = {-0.18802642159782315, 0.6505622068965518, 0.17224760446231435, 0.203752};
Sphere(4) = {0.030959303574124193, 0.6023724137931035, -0.3527652960925656, 0.203752};
Sphere(5) = {0.25895202271606593, 0.5541826206896552, 0.3377570581953896, 0.203752};
Sphere(6) = {-0.47453139123525956, 0.5059928275862069, -0.08393792151134122, 0.203752};
Sphere(7) = {0.4454122898149754, 0.4578030344827586, -0.283334839375885, 0.203752};
Sphere(8) = {-0.14696248768648482, 0.40961324137931043, 0.5466931289157883, 0.203752};
Sphere(9) = {-0.2756314370827936, 0.36142344827586204, -0.5307115595425252, 0.203752};
Sphere(10) = {0.5867105145629388, 0.3132336551724138, 0.21426573891460354, 0.203752};
Sphere(11) = {-0.5976207551102078, 0.2650438620689655, 0.24668916016937645, 0.203752};
Sphere(12) = {0.2815398961163334, 0.21685406896551723, -0.6016344049104098, 0.203752};
Sphere(13) = {0.2029415438184013, 0.168664275862069, 0.6470096207511352, 0.203752};
Sphere(14) = {-0.5955144212128684, 0.1204744827586207, -0.3451127795888546, 0.203752};
Sphere(15) = {0.6787926707879742, 0.0722846896551724, -0.14923066450962455, 0.203752};
Sphere(16) = {-0.4016338422158271, 0.02409489655172411, 0.5712828110936945, 0.203752};
Sphere(17) = {-0.08974369853926432, -0.024094896551724188, -0.6925459277453412, 0.203752};
Sphere(18) = {0.5314334069256322, -0.0722846896551724, 0.44789263797127854, 0.203752};
Sphere(19) = {-0.6877001561606811, -0.12047448275862063, 0.02843856052295213, 0.203752};
Sphere(20) = {0.480650488490084, -0.168664275862069, -0.47831143355158007, 0.203752};
Sphere(21) = {-0.030682689098060455, -0.21685406896551723, 0.6635414402031047, 0.203752};
Sphere(22) = {-0.4142401945643513, -0.2650438620689656, -0.4963981969053228, 0.203752};
Sphere(23) = {0.6190329628293907, -0.3132336551724138, 0.0832900096169742, 0.203752};
Sphere(24) = {-0.4908893788286328, -0.36142344827586204, 0.3415480439025004, 0.203752};
Sphere(25) = {0.12424881797520329, -0.40961324137931043, -0.5522984530328684, 0.203752};
Sphere(26) = {0.2624581716192288, -0.4578030344827586, 0.45802450510062187, 0.203752};
Sphere(27) = {-0.4591006782425808, -0.5059928275862069, -0.14646563819721506, 0.203752};
Sphere(28) = {0.38635656813110003, -0.5541826206896552, -0.17850653403028235, 0.203752};
Sphere(29) = {-0.13671241823636715, -0.6023724137931035, 0.32666733430974526, 0.203752};
Sphere(30) = {-0.08630411844492406, -0.6505622068965519, -0.2399474350797122, 0.203752};
Sphere(31) = {0.0, -0.698752, 0.0, 0.203752};
//BooleanFragments{ Volume{1}; Delete; }{ Volume{2};};
// Volume{3}; Volume{4}; Volume{5}; Volume{6}; Volume{7}; Volume{8}; Volume{9}; Volume{10}; Volume{11}; Volume{12}; Volume{13}; Volume{14}; Volume{15}; Volume{16}; Volume{17}; Volume{18}; Volume{19}; Volume{20}; Volume{21}; Volume{22}; Volume{23}; Volume{24}; Volume{25}; Volume{26}; Volume{27}; Volume{28}; Volume{29}; Volume{30}; Volume{31}; };
//BooleanDifference{ Volume{32}; Delete;}{ Volume{2}; Delete; };
/*BooleanDifference{ Volume{1}; Delete;}{ Volume{3}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{4}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{5}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{6}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{7}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{8}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{9}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{10}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{11}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{12}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{13}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{14}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{15}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{16}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{17}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{18}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{19}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{20}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{21}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{22}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{23}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{24}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{25}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{26}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{27}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{28}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{29}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{30}; Delete; };
BooleanDifference{ Volume{1}; Delete;}{ Volume{31}; Delete; };
*/



//+

