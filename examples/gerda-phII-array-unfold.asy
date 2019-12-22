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
import three;

currentprojection = orthographic((0,10,-2));
real delta = 90;

// string 1
GD91A.draw(pos=(0,0,75.09));
GD35B.draw(pos=(0,0,17.05));
GD02B.draw(pos=(0,0,-38.17));
GD00B.draw(pos=(0,0,-96.27));
GD61A.draw(pos=(0,0,-152.72));
GD89B.draw(pos=(0,0,-210.57));
GD02D.draw(pos=(0,0,-275.75), flip=true);
GD91C.draw(pos=(0,0,-309.61));

// string 2
ANG5.draw(pos=(delta,0,29.00));
RG1 .draw(pos=(delta,0,-103.00));
ANG3.draw(pos=(delta,0,-240.00));

// string 3
GD02A.draw(pos=(2*delta,0,67.44), flip=true);
GD32B.draw(pos=(2*delta,0,32.58));
GD32A.draw(pos=(2*delta,0,-34.40));
GD32C.draw(pos=(2*delta,0,-68.42));
GD89C.draw(pos=(2*delta,0,-126.13));
GD61C.draw(pos=(2*delta,0,-178.78));
GD76B.draw(pos=(2*delta,0,-241.72), flip=true);
GD00C.draw(pos=(2*delta,0,-276.68));

// string 4
GD35C.draw(pos=(3*delta,0,67.84), flip=true);
GD76C.draw(pos=(3*delta,0,33.09));
GD89D.draw(pos=(3*delta,0,-25.55));
GD79C.draw(pos=(3*delta,0,-133.89));
GD35A.draw(pos=(3*delta,0,-189.83));
GD91B.draw(pos=(3*delta,0,-245.87));
GD61B.draw(pos=(3*delta,0,-299.39));

// string 5
RG2 .draw(pos=(4*delta,0,-103.00));
ANG4.draw(pos=(4*delta,0,-236.50));
ANG2.draw(pos=(4*delta,0,30.00));

// string 6
GD00A.draw(pos=(5*delta,0,67.30), flip=true);
GD02C.draw(pos=(5*delta,0,32.80));
GD79B.draw(pos=(5*delta,0,-22.48));
GD91D.draw(pos=(5*delta,0,-74.56));
GD32D.draw(pos=(5*delta,0,-127.94));
GD89A.draw(pos=(5*delta,0,-183.33));
ANG1 .draw(pos=(5*delta,0,-253.00));

// string 7
GTF45 .draw(pos=(6*delta,0,-189.00));
GTF32 .draw(pos=(6*delta,0,-89.50));
GTF112.draw(pos=(6*delta,0,26.50));
