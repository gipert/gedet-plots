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

from detector_db access *;

real delta = 90;
real labz = 110;

// string 1
label("\Large\texttt{S1}", (0,labz));
GD91A.draw(pos=(0,75.09));
GD35B.draw(pos=(0,17.05));
GD02B.draw(pos=(0,-38.17));
GD00B.draw(pos=(0,-96.27));
GD61A.draw(pos=(0,-152.72));
GD89B.draw(pos=(0,-210.57));
GD02D.draw(pos=(0,-275.75), flip=true);
GD91C.draw(pos=(0,-309.61));

// string 2
label("\Large\texttt{S2}", (delta,labz));
ANG5.draw(pos=(delta,29.00));
RG1 .draw(pos=(delta,-103.00));
ANG3.draw(pos=(delta,-240.00));

// string 3
label("\Large\texttt{S3}", (2*delta,labz));
GD02A.draw(pos=(2*delta,67.44), flip=true);
GD32B.draw(pos=(2*delta,32.58));
GD32A.draw(pos=(2*delta,-34.40));
GD32C.draw(pos=(2*delta,-68.42));
GD89C.draw(pos=(2*delta,-126.13));
GD61C.draw(pos=(2*delta,-178.78));
GD76B.draw(pos=(2*delta,-241.72), flip=true);
GD00C.draw(pos=(2*delta,-276.68));

// string 4
label("\Large\texttt{S4}", (3*delta,labz));
GD35C.draw(pos=(3*delta,67.84), flip=true);
GD76C.draw(pos=(3*delta,33.09));
GD89D.draw(pos=(3*delta,-25.55));
GD00D.draw(pos=(3*delta,-79.36));
GD79C.draw(pos=(3*delta,-133.89));
GD35A.draw(pos=(3*delta,-189.83));
GD91B.draw(pos=(3*delta,-245.87));
GD61B.draw(pos=(3*delta,-299.39));

// string 5
label("\Large\texttt{S5}", (4*delta,labz));
RG2 .draw(pos=(4*delta,-103.00));
ANG4.draw(pos=(4*delta,-236.50));
ANG2.draw(pos=(4*delta,30.00));

// string 6
label("\Large\texttt{S6}", (5*delta,labz));
GD00A.draw(pos=(5*delta,67.30), flip=true);
GD02C.draw(pos=(5*delta,32.80));
GD79B.draw(pos=(5*delta,-22.48));
GD91D.draw(pos=(5*delta,-74.56));
GD32D.draw(pos=(5*delta,-127.94));
GD89A.draw(pos=(5*delta,-183.33));
ANG1 .draw(pos=(5*delta,-253.00));

// string 7
label("\Large\texttt{S7}", (6*delta,labz));
GTF45 .draw(pos=(6*delta,-189.00));
GTF32 .draw(pos=(6*delta,-89.50));
GTF112.draw(pos=(6*delta,26.50));
