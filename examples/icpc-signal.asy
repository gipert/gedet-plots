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

settings.outformat = "png";
settings.prc = false;
settings.render = 8;
settings.maxtile = (400,400);
settings.tex = "xelatex";

usepackage("fontspec");
texpreamble("\setmainfont[BoldFont={Fira Sans SemiBold}]{Fira Sans Book}");
texpreamble("\setmonofont{Fira Code}[Contextuals=Alternate, Scale=MatchLowercase]");
texpreamble("\usepackage[mathrm=sym]{unicode-math}");
texpreamble("\setmathfont{Fira Math}");
defaultpen(fontsize(8pt));

from "lib/paultolcolors" access *;
from "lib/detector_db" access *;
import three;
currentprojection = orthographic((5,0,1));

// predefined stuff
triple vert_sp = -40Z;
triple hor_sp  = 85Y;
triple label_zpos = -75Z;

surface edep = scale3(1.2)*unitsphere;
surface edeplar = scale3(1.3)*unitsphere;
surface alpha_v = scale3(1.2)*unitsphere;
surface beta_v = scale3(1.2)*unitsphere;

pen edepstyle = tolviborange;
pen edeplarstyle = tolvibcyan;
pen hole = linetype(new real[] {4, 2});
pen electron = linetype(new real[] {0, 2});
pen gamma = tolvibred;
pen alpha = tolbripurple;
pen beta = tolbrigreen;
pen optphoton = tolvibblue;

/*
 * signal
 */

InvCoax ICPC = InvCoax("IC50A",
    height=70,
    radius=33,
    groove_depth=2,
    groove_inner_r=9.5,
    groove_outer_r=13.5,
    borehole_depth=40.0,
    borehole_radius=6
);

ICPC.draw(angle1=0, angle2=240, pos=O, empty=true, hi_pplus=true);

triple bb = (0, 0.4*ICPC.radius, -0.3*ICPC.height);
draw(bb{-Y} .. {-Z}(0, 0, -ICPC.height/2), hole);
draw(bb{Y} .. {-Z}(0, ICPC.radius*2/3, -ICPC.height/2), electron);
draw(shift(bb)*edep, edepstyle);
label("\tiny$\upbeta\upbeta$", bb, N);
