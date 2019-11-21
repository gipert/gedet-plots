// The MIT License (MIT)
//
// Copyright (c) 2019 Luigi Pertoldi
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

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
gedetdraw(GD91C.getprofile(), pos=(110,0,-309.61));
gedetdraw(GD02D.getprofile(), pos=(110,0,-275.75));
gedetdraw(GD89B.getprofile(), pos=(110,0,-210.57));
gedetdraw(GD61A.getprofile(), pos=(110,0,-152.72));
gedetdraw(GD00B.getprofile(), pos=(110,0,-96.27));
gedetdraw(GD02B.getprofile(), pos=(110,0,-38.17));
gedetdraw(GD35B.getprofile(), pos=(110,0,17.05));
gedetdraw(GD91A.getprofile(), pos=(110,0,75.09));

// string 2
gedetdraw(ANG5.getprofile(),  pos=(55.00,95.26,29.00));
gedetdraw(RG1.getprofile(),   pos=(55.00,95.26,-103.00));
gedetdraw(ANG3.getprofile(),  pos=(55.00,95.26,-240.00));

// string 3
gedetdraw(GD02A.getprofile(), pos=(-55.00,95.26,67.44));
gedetdraw(GD32B.getprofile(), pos=(-55.00,95.26,32.58));
gedetdraw(GD32A.getprofile(), pos=(-55.00,95.26,-34.40));
gedetdraw(GD32C.getprofile(), pos=(-55.00,95.26,-68.42));
gedetdraw(GD89C.getprofile(), pos=(-55.00,95.26,-126.13));
gedetdraw(GD61C.getprofile(), pos=(-55.00,95.26,-178.78));
gedetdraw(GD76B.getprofile(), pos=(-55.00,95.26,-241.72));
gedetdraw(GD00C.getprofile(), pos=(-55.00,95.26,-276.68));

// string 4
gedetdraw(GD35C.getprofile(), pos=(-110.00,0.00,67.84));
gedetdraw(GD76C.getprofile(), pos=(-110.00,0.00,33.09));
gedetdraw(GD89D.getprofile(), pos=(-110.00,0.00,-25.55));
gedetdraw(GD79C.getprofile(), pos=(-110.00,0.00,-133.89));
gedetdraw(GD35A.getprofile(), pos=(-110.00,0.00,-189.83));
gedetdraw(GD91B.getprofile(), pos=(-110.00,0.00,-245.87));
gedetdraw(GD61B.getprofile(), pos=(-110.00,0.00,-299.39));

// string 5
gedetdraw(RG2.getprofile(),   pos=(-55.00,-95.26,-103.00));
gedetdraw(ANG4.getprofile(),  pos=(-55.00,-95.26,-236.50));
gedetdraw(ANG2.getprofile(),  pos=(-55.00,-95.26,30.00));

// string 6
gedetdraw(GD00A.getprofile(), pos=(55.00,-95.26,67.30));
gedetdraw(GD02C.getprofile(), pos=(55.00,-95.26,32.80));
gedetdraw(GD79B.getprofile(), pos=(55.00,-95.26,-22.48));
gedetdraw(GD91D.getprofile(), pos=(55.00,-95.26,-74.56));
gedetdraw(GD32D.getprofile(), pos=(55.00,-95.26,-127.94));
gedetdraw(GD89A.getprofile(), pos=(55.00,-95.26,-183.33));
gedetdraw(ANG1.getprofile(),  pos=(55.00,-95.26,-253.00));

// string 7
gedetdraw(GTF45.getprofile(),  pos=(0.00,0.00,-189.00));
gedetdraw(GTF32.getprofile(),  pos=(0.00,0.00,-89.50));
gedetdraw(GTF112.getprofile(), pos=(0.00,0.00,26.50));
