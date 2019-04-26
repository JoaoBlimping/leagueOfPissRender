#include "inc/base.pov"
#include "inc/danyMaterial.pov"
#include "inc/treeManager.pov"


// setting up camera and shit
//niceCamera(<0, 2, 0>)
normalCamera(<0, 2, 0>, <0, 2, 2>)
sun(1.0)
plane {
    y, 0
    texture {concrete}
}




#declare stream = seed(2);
#for (i, 1, 10, 1)
    object {
        getTree("mangrove")
        translate <25, 0, 0>
        rotate <0, i * 36, 0>
    }
#end
