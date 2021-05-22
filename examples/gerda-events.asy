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
settings.maxtile = (300,300);
settings.tex = "xelatex";

// garamond font
usepackage("ebgaramond", options="lining");
usepackage("unicode-math", options="math-style=ISO, bold-style=ISO");
texpreamble("\setmathfont{Garamond-Math.otf}");
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

label("\textsc{signal-like}", label_zpos);

GD91A.draw(angle1=0, angle2=240, pos=O, empty=true, hi_pplus=true);
GD02D.draw(pos=vert_sp, hi_pplus=true);

triple bb = (0, 0.4*GD91A.radius, -0.1*GD91A.height);
draw(bb{-Y} .. {-Z}(0, 0, -GD91A.height/2), hole);
draw(bb{Y} .. {-Z}(0, GD91A.radius*2/3, -GD91A.height/2), electron);
draw(shift(bb)*edep, edepstyle);
label("\tiny$\upbeta\upbeta$", bb, N);

/*
 * granularity
 */

label("\textsc{granularity cut}", label_zpos+hor_sp);

triple top_det = O+hor_sp;
triple bot_det = O+hor_sp+vert_sp;

GD00A.draw(angle1=0  , angle2=240, pos=top_det, empty=true, flip=true, hi_pplus=true);
GD02C.draw(angle1=-60, angle2=180, pos=bot_det, empty=true, hi_pplus=true);

triple start_gamma = top_det -0.65*GD00A.radius*Y +GD00A.height*Z/2 +10Z;
triple edep_top = top_det -0.6*GD00A.radius*Y +0.2*GD00A.height*Z;
triple edep_bot = bot_det -0.3*GD02C.radius*Y +0.2*GD00A.height*Z;

label("\tiny$\upgamma$", start_gamma, N);
draw(start_gamma -- edep_top -- edep_bot, gamma);

draw(shift(edep_top)*edep, edepstyle);
draw(edep_top{Y} .. {Z}(top_det+GD00A.height*Z/2), hole);
draw(edep_top{-Y} .. {Z}(top_det+GD00A.height*Z/2-0.8*GD00A.radius*Y), electron);

draw(shift(edep_bot)*edep, edepstyle);
draw(edep_bot{Y-Z} .. {-Z}(bot_det-GD02C.height*Z/2), hole);
draw(edep_bot{-Y+Z} .. {Z}(bot_det+GD02C.height*Z/2-0.5*GD02C.radius*Y), electron);

/*
 * PSD
 */

label(minipage("\centering\textsc{pulse-shape discrimination}", 80), label_zpos+2*hor_sp);

SemiCoax dummy = SemiCoax("GTF32",
    height=68, radius=37,
    groove_depth=2, groove_inner_r=15, groove_outer_r=20,
    borehole_depth=41.5, borehole_radius=6.00,
    is_passivated=true);

triple det_center = O+2*hor_sp+vert_sp/2 -2Z;

dummy.draw(angle1=0, angle2=240, pos=det_center, hi_pplus=true, empty=true);

start_gamma = det_center + dummy.radius*Y + dummy.height*Z/2 + 10Y+15Z;
triple edep_1 = det_center + 25Y+25Z;
triple edep_2 = det_center + 10Y+15Z;
triple edep_3 = det_center + -10Y+10Z;
triple edep_4 = det_center + -13Y-15Z;

// MSE
label("\tiny$\upgamma$", start_gamma, NE);
draw(start_gamma -- edep_1 -- edep_2 -- edep_3 -- edep_4, gamma);

draw(shift(edep_1)*edep, edepstyle);
draw(edep_1{Z} .. {Z}(det_center+25*Y+dummy.height*Z/2), electron);
draw(edep_1{-Z} .. {-Y}(det_center+dummy.borehole_radius*Y-1*Z), hole);

draw(shift(edep_2)*edep, edepstyle);
draw(edep_2{Z} .. {Z}(det_center+10*Y+dummy.height*Z/2), electron);
draw(edep_2{-Z} .. {-Y}(det_center+dummy.borehole_radius*Y+1*Z), hole);

draw(shift(edep_3)*edep, edepstyle);
draw(edep_3{-Y} .. {-Y}(det_center-dummy.radius*Y+10*Z), electron);
draw(edep_3{Y} .. {-Z}(det_center-dummy.height*Z/2+dummy.borehole_depth*Z-4*Y), hole);

draw(shift(edep_4)*edep, edepstyle);
draw(edep_4{-Y} .. {-Y}(det_center-det_center.z*Z-dummy.radius*Y+edep_4.z*Z), electron);
draw(edep_4{Y} .. {Y}(det_center-det_center.z*Z-dummy.borehole_radius*Y+edep_4.z*Z), hole);

// surface alpha
triple alpha_pos = det_center+dummy.borehole_radius*Y-dummy.height*Z/4;
label("\tiny$\upalpha$", alpha_pos, W);
draw(shift(alpha_pos)*alpha_v, alpha);
draw(alpha_pos{Y} .. {-Z}(det_center+25*Y-dummy.height*Z/2), electron);

// surface beta
triple beta_pos = det_center+dummy.radius*Y-dummy.height*Z/3;
label("\tiny$\upbeta$", beta_pos, E);
draw(shift(beta_pos)*beta_v, beta);
draw(beta_pos{-Y} .. {-Z}(det_center+12*Y-dummy.height*Z/2), hole);

/*
 * LAr veto
 */

label("\textsc{LAr veto}", label_zpos+3*hor_sp);

// photon lines
// warning: assumes that the X axis is normal to the drawing
guide3 squiggly(path3 g, real stepsize=3, real slope=50) {
    real len = arclength(g);
    real step = len/round(len/stepsize);
    guide3 squig;
    for (real u = 0; u < len; u += step) {
        real a = arctime(g, u);
        real b = arctime(g, u + step/2);
        triple p = point(g, a);
        triple q = point(g, b);
        triple np = unit(rotate(slope, X) * dir(g,a));
        triple nq = unit(rotate(-slope, X) * dir(g,b));
        squig = squig .. p{np} .. q{nq};
    }
    squig = squig .. point(g, length(g)){unit(rotate(slope, X)*dir(g, length(g)))};
    return squig;
}

det_center = O+3*hor_sp;

GD91A.draw(angle1=-60, angle2=180, pos=det_center, empty=true, hi_pplus=true);

start_gamma = det_center +GD91A.radius*Y +GD91A.height*Z/2;
edep_top = det_center -0.7GD91A.radius*Y;
triple edep_lar = det_center -50Z -10Y;

label("\tiny$\upgamma$", start_gamma, NE);
draw(start_gamma -- edep_top -- edep_lar, gamma);
draw(edep_top{Y} .. {-Z}(det_center-GD91A.height*Z/2), hole);
draw(edep_top{-Y} .. {-Y}(det_center-GD91A.radius*Y), electron);
draw(shift(edep_top)*edep, edepstyle);
draw(shift(edep_lar)*edeplar, edeplarstyle);

draw(squiggly(edep_lar -- edep_lar + 25Z+25Y), optphoton);
draw(squiggly(edep_lar -- edep_lar + 20Z-20Y), optphoton);
draw(squiggly(edep_lar -- edep_lar + -8Z+20Y), optphoton);
draw(squiggly(edep_lar -- edep_lar + 3Z+40Y), optphoton);
