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

// settings.outformat = "png";
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

gedetdraw(ANG5.getprofile(), angle1=0, angle2=220);
