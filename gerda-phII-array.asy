from "gedet-plots.asy" access *;
from "detector_db.asy" access *;

// settings.outformat = "pdf";

settings.prc = false;
// settings.render = 0;

defaultpen(fontsize(11pt));
unitsize(1mm);

void showaxes(picture pic=currentpicture, triple pos=O) {
    draw(pos -- pos + 100X, arrow=Arrow3(TeXHead2));
    draw(pos -- pos + 100Y, arrow=Arrow3(TeXHead2));
    draw(pos -- pos + 100Z, arrow=Arrow3(TeXHead2));
    label("$x$", pos + 100X, align=SW);
    label("$y$", pos + 100Y, align=SE);
    label("$z$", pos + 100Z, align=N);
}

// currentprojection=orthographic((1,1,1));
// showaxes();

// string 1
gedetplot(GD91C.getprofile(), pos=(110,0,-309.61));
gedetplot(GD02D.getprofile(), pos=(110,0,-275.75));
gedetplot(GD89B.getprofile(), pos=(110,0,-210.57));
gedetplot(GD61A.getprofile(), pos=(110,0,-152.72));
gedetplot(GD00B.getprofile(), pos=(110,0,-96.27));
gedetplot(GD02B.getprofile(), pos=(110,0,-38.17));
gedetplot(GD35B.getprofile(), pos=(110,0,17.05));
gedetplot(GD91A.getprofile(), pos=(110,0,75.09));

// string 2
gedetplot(ANG5.getprofile(),  pos=(55.00,95.26,29.00));
gedetplot(RG1.getprofile(),   pos=(55.00,95.26,-103.00));
gedetplot(ANG3.getprofile(),  pos=(55.00,95.26,-240.00));

// string 3
gedetplot(GD02A.getprofile(), pos=(-55.00,95.26,67.44));
gedetplot(GD32B.getprofile(), pos=(-55.00,95.26,32.58));
gedetplot(GD32A.getprofile(), pos=(-55.00,95.26,-34.40));
gedetplot(GD32C.getprofile(), pos=(-55.00,95.26,-68.42));
gedetplot(GD89C.getprofile(), pos=(-55.00,95.26,-126.13));
gedetplot(GD61C.getprofile(), pos=(-55.00,95.26,-178.78));
gedetplot(GD76B.getprofile(), pos=(-55.00,95.26,-241.72));
gedetplot(GD00C.getprofile(), pos=(-55.00,95.26,-276.68));

// string 4
gedetplot(GD35C.getprofile(), pos=(-110.00,0.00,67.84));
gedetplot(GD76C.getprofile(), pos=(-110.00,0.00,33.09));
gedetplot(GD89D.getprofile(), pos=(-110.00,0.00,-25.55));
gedetplot(GD79C.getprofile(), pos=(-110.00,0.00,-133.89));
gedetplot(GD35A.getprofile(), pos=(-110.00,0.00,-189.83));
gedetplot(GD91B.getprofile(), pos=(-110.00,0.00,-245.87));
gedetplot(GD61B.getprofile(), pos=(-110.00,0.00,-299.39));

// string 5
gedetplot(RG2.getprofile(),   pos=(-55.00,-95.26,-103.00));
gedetplot(ANG4.getprofile(),  pos=(-55.00,-95.26,-236.50));
gedetplot(ANG2.getprofile(),  pos=(-55.00,-95.26,30.00));

// string 6
gedetplot(GD00A.getprofile(), pos=(55.00,-95.26,67.30));
gedetplot(GD02C.getprofile(), pos=(55.00,-95.26,32.80));
gedetplot(GD79B.getprofile(), pos=(55.00,-95.26,-22.48));
gedetplot(GD91D.getprofile(), pos=(55.00,-95.26,-74.56));
gedetplot(GD32D.getprofile(), pos=(55.00,-95.26,-127.94));
gedetplot(GD89A.getprofile(), pos=(55.00,-95.26,-183.33));
gedetplot(ANG1.getprofile(),  pos=(55.00,-95.26,-253.00));

// string 7
gedetplot(GTF45.getprofile(),  pos=(0.00,0.00,-189.00));
gedetplot(GTF32.getprofile(),  pos=(0.00,0.00,-89.50));
gedetplot(GTF112.getprofile(), pos=(0.00,0.00,26.50));
