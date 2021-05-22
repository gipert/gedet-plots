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

settings.outformat = "pdf";
settings.prc = false;

real delta = 90;
real labz = 110;

// string 1
label("\Large\texttt{S1}", (0,labz));
GD91A.draw(pos=(0,  78.59));
GD35B.draw(pos=(0,  24.05));
GD02B.draw(pos=(0, -31.17));
GD00B.draw(pos=(0, -85.77));
GD61A.draw(pos=(0,-142.22));
GD89B.draw(pos=(0,-200.08));
GD02D.draw(pos=(0,-253.55));
GD91C.draw(pos=(0,-307.61));

// string 2
label("\Large\texttt{S2}", (delta,labz));
ANG5.draw(pos=(delta,  29.00));
RG1 .draw(pos=(delta,-103.00));
ANG3.draw(pos=(delta,-240.00));

// string 3
label("\Large\texttt{S3}", (2*delta,labz));
GD02A.draw(pos=(2*delta,  76.78));
GD32B.draw(pos=(2*delta,  24.08));
GD32A.draw(pos=(2*delta, -34.55));
GD32C.draw(pos=(2*delta, -88.93));
GD89C.draw(pos=(2*delta,-146.63));
GD61C.draw(pos=(2*delta,-199.28));
GD76B.draw(pos=(2*delta,-254.36));
GD00C.draw(pos=(2*delta,-309.18));

// string 4
label("\Large\texttt{S4}", (3*delta,labz));
GD35C.draw(pos=(3*delta,  76.16));
GD76C.draw(pos=(3*delta,  21.09));
GD89D.draw(pos=(3*delta, -37.56));
GD00D.draw(pos=(3*delta, -91.36));
GD79C.draw(pos=(3*delta,-145.89));
GD35A.draw(pos=(3*delta,-201.83));
GD91B.draw(pos=(3*delta,-257.87));
GD61B.draw(pos=(3*delta,-311.40));

// string 5
label("\Large\texttt{S5}", (4*delta,labz));
ANG2.draw(pos=(4*delta,  30.00));
RG2 .draw(pos=(4*delta,-103.00));
ANG4.draw(pos=(4*delta,-236.50));

// string 6
label("\Large\texttt{S6}", (5*delta,labz));
GD00A.draw(pos=(5*delta,  76.21));
GD02C.draw(pos=(5*delta,  24.30));
GD79B.draw(pos=(5*delta, -30.98));
GD91D.draw(pos=(5*delta, -83.06));
GD32D.draw(pos=(5*delta,-136.44));
GD89A.draw(pos=(5*delta,-191.83));
IC48B.draw(pos=(5*delta,-267.25));

// string 7
label("\Large\texttt{S7}", (6*delta,labz));
IC50B.draw(pos=(6*delta,  48.20));
IC48A.draw(pos=(6*delta, -55.80));
IC50A.draw(pos=(6*delta,-157.30));
IC74A.draw(pos=(6*delta,-257.85));
