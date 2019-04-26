#include "inc/base.pov"
#include "inc/danyMaterial.pov"






// setting up camera and shit
niceCamera(<0, 7, 0>)
sun(1.0)
object {ocean}


#declare txtTree = texture{rusty}


#local bing1 = union {
    #local Leaf = #include "inc/tree/oak/leaf1.inc";
    #include "inc/tree/oak/1.inc"
    #include "inc/tree/oak/foliage1.inc"
}

#local bing2 = union {
    #local Leaf = #include "inc/tree/oak/leaf2.inc";
    #include "inc/tree/oak/2.inc"
    #include "inc/tree/oak/foliage2.inc"
}

#local bing3 = union {
    #local Leaf = #include "inc/tree/oak/leaf3.inc";
    #include "inc/tree/oak/3.inc"
    #include "inc/tree/oak/foliage3.inc"
}

#local trees = array[3];
#local trees[0] = bing1
#local trees[1] = bing2
#local trees[2] = bing3


#declare stream = seed(2);
#for (i, 1, 50, 1)
    object {
        trees[floor(rand(stream) * 3)]
        rotate <0, rand(stream) * 360, 0>
        translate <6 + rand(stream) * 150, 0, 0>
        rotate <0, rand(stream) * 360, 0>
    }

#end
