#include "inc/Maketree.pov"
#include "inc/danyMaterial.pov"


#declare txtTree = texture{rusty}
#declare txtLeaf = texture{concrete}
// structure parameters
#declare level0 = 3;
#declare nseg0 = 12;
#declare nb = 3;
#declare dotop = true;
#declare lb0 = 13;
#declare rb0 = 0.6;
#declare ab0 = 35;
#declare qlb = 0.67;
#declare qrb = 0.59;
#declare qab = 0.88;
#declare stdax = 10;
#declare stday = 10;
#declare branchproba = 1;
#declare jb = 0.7;
#declare fgnarl = 0.25;
#declare stdlseg = 0.5;
#declare twigproba = 0.59;
#declare v0 = <0,1,0>;
#declare pos0 = <0,0,0>;
// forces upon the trees.
#declare vpush=<0,-1,0>;
#declare fpush = 0.2;
#declare aboveground = 0;
#declare belowsky = 140;
// root parameters
#declare rootproba = 1;
#declare nroot = 5;
#declare vroot = <1,0,0>;
#declare yroot = <0,0.5,0>;
// leaf parameters
#declare leafproba = 0.8;
#declare leaflevel = 4;
#declare alz0 = 100;
#declare alx0 = -10;
#declare stdalx = 40;
#declare stdlsize = 0.1;
// leaf structure
#declare lsize = 0.3;
#declare seg = 10;
#declare ll = 5;
#declare wl = 1.2;
#declare fl = 0.5;
#declare lpow = 1;
#declare al = 100;
#declare apow = 1;
#declare ndents = 0;
#declare nlobes = 3;
#declare alobes = 110;
#declare qlobes = 0.7;
#declare ls = 3;
#declare ws = 0.12;
#declare as = 10;
