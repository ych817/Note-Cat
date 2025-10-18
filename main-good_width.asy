defaultpen(fontsize(10 pt));
settings.prc = false;


settings.outformat = "pdf" ;
settings.render = 0 ;
// settings.outformat = "png" ;
// settings.render = 32 ;
settings.prc = false ;
settings.tex="xelatex";

usepackage("amsmath")   ;
usepackage("amssymb")   ;
usepackage("amsfonts")  ;
usepackage("mathtools") ;
usepackage("xcolor")    ;
usepackage("ctex")      ;

import graph3;
import smoothcontour3;

currentprojection=perspective(20,3,10);

size(200,0);

real f(real x, real y, real z) {
    return 81*(x^3 + y^3 + z^3) - 189*(x^2*y + x^2*z + y^2*x + y^2*z + z^2*x + z^2*y) + 54*(x*y*z) + 126*(x*y + x*z + y*z) - 9*(x^2 + y^2 + z^2) - 9*(x + y + z) + 1;
}

surface s=implicitsurface(
     f
    ,(-1,-1,-1)
    ,(+1,+1,+1)
    ,n=30
    ,overlapedges=true
    ,maxdepth=8
    ,usetriangles=true
);

draw(
     s
    ,surfacepen = material(
         lightgray+opacity(0.95)
        ,emissivepen = gray(0.3)
    )
    // ,nolight
    ,meshpen=heavygray + linewidth(0.05)
    ,render(merge=true)
);
