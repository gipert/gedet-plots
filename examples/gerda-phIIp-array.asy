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

from "lib/detector_db" access *;

settings.outformat = "png";
settings.prc = false;
settings.render = 4;
settings.maxtile = (256,256);
settings.tex = "xelatex";

// garamond font
usepackage("ebgaramond", options="lining");
usepackage("unicode-math", options="math-style=ISO, bold-style=ISO");
texpreamble("\setmathfont{Garamond-Math.otf}");
defaultpen(fontsize(16pt));

import three;
currentprojection = orthographic((2,10,4));

void draw_label(string lab, real x, real y) {
    path3 l1 = (x,y,90) -- (x,y,170);
    draw(l1);
    label(Label("\texttt{" + lab + "}", position=EndPoint), l1);
}

label(rotate(90)*("\Huge\textsc{Phase II$^+$}"), (170,0,-280));

// string 1
draw_label("S1", 110, 0);
GD91A.draw(pos=(110,0,  75.09));
GD35B.draw(pos=(110,0,  17.05));
GD02B.draw(pos=(110,0, -38.17));
GD00B.draw(pos=(110,0, -96.27));
GD61A.draw(pos=(110,0,-152.72));
GD89B.draw(pos=(110,0,-210.57));
GD02D.draw(pos=(110,0,-275.75));
GD91C.draw(pos=(110,0,-309.61));

// string 2
draw_label("S2", 55, 95.26);
ANG5.draw(pos=(55.00,95.26,  29.00), 60, 300, hi_pplus=true);
RG1 .draw(pos=(55.00,95.26,-103.00));
ANG3.draw(pos=(55.00,95.26,-240.00));

// string 3
draw_label("S3", -55, 95.26);
GD02A.draw(pos=(-55.00,95.26,  76.78), 60, 300, hi_pplus=true);
GD32B.draw(pos=(-55.00,95.26,  24.08));
GD32A.draw(pos=(-55.00,95.26, -34.55));
GD32C.draw(pos=(-55.00,95.26, -88.93));
GD89C.draw(pos=(-55.00,95.26,-146.63));
GD61C.draw(pos=(-55.00,95.26,-199.28));
GD76B.draw(pos=(-55.00,95.26,-254.36));
GD00C.draw(pos=(-55.00,95.26,-309.18));

// string 4
draw_label("S4", -110, 0);
GD35C.draw(pos=(-110.00,0.00,  76.16));
GD76C.draw(pos=(-110.00,0.00,  21.09));
GD89D.draw(pos=(-110.00,0.00, -37.56));
GD00D.draw(pos=(-110.00,0.00, -91.36));
GD79C.draw(pos=(-110.00,0.00,-145.89));
GD35A.draw(pos=(-110.00,0.00,-201.83));
GD91B.draw(pos=(-110.00,0.00,-257.87));
GD61B.draw(pos=(-110.00,0.00,-311.40));

// string 5
draw_label("S5", -55, -95.26);
ANG2.draw(pos=(-55.00,-95.26,  30.00));
RG2 .draw(pos=(-55.00,-95.26,-103.00));
ANG4.draw(pos=(-55.00,-95.26,-236.50));

// string 6
draw_label("S6", 55, -95.26);
GD00A.draw(pos=(55.00,-95.26,  76.21));
GD02C.draw(pos=(55.00,-95.26,  24.30));
GD79B.draw(pos=(55.00,-95.26, -30.98));
GD91D.draw(pos=(55.00,-95.26, -83.06));
GD32D.draw(pos=(55.00,-95.26,-136.44));
GD89A.draw(pos=(55.00,-95.26,-191.83));
IC48B.draw(pos=(55.00,-95.26,-267.25));

// string 7
draw_label("S7", 0, 0);
IC50B.draw(pos=(0.00,0.00,  48.20), 60, 300, hi_pplus=true);
IC48A.draw(pos=(0.00,0.00, -55.80));
IC50A.draw(pos=(0.00,0.00,-157.30));
IC74A.draw(pos=(0.00,0.00,-257.85));
