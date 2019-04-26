#include "inc/Maketree.pov"
#declare stream = seed(69);
#declare nTrees = 3;

#declare rd = seed(69);
#declare rdl = seed(69);
#declare dofile = false;
#declare ffname = "no.txt";
#declare dotexture = true;

/**
 * Makes you a bespoke tree of a given type.
 * @param string species is the type of tree to make.
 * @return a tree object with textures on and all that hlel yeah.
 */
#macro getTree(species)
    #include concat("inc/tree/", species, ".pov")
    object {
        #if (leafproba>0)
            #declare Leaf = object{
                MakeLeaf(lsize, seg, ll, wl, fl, lpow, al, apow, ndents, nlobes, alobes, qlobes, ls, ws, as, dofile, ffname)
                texture {txtLeaf}
            }
        #end
        MakeTree()
    }
#end
