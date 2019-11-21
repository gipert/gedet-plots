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

import three;

// define germanium coloring
material germanium = material(
    diffusepen=gray(0.8),
    emissivepen=black
);

/*
 * BEGe geometry. Also base struct for the other detector geometries
 */

struct BEGe {
    real height;
    real radius;
    real groove_depth;
    real groove_inner_r;
    real groove_outer_r;
    real cone_radius;
    real cone_height;
    bool cone_on_top;

    void operator init(real keyword height, real keyword radius, real keyword groove_depth,
                       real keyword groove_inner_r, real keyword groove_outer_r,
                       real keyword cone_radius=0, real keyword cone_height=0,
                       bool keyword cone_on_top=true) {
        this.height = height;
        this.radius = radius;
        this.groove_depth = groove_depth;
        this.groove_inner_r = groove_inner_r;
        this.groove_outer_r = groove_outer_r;
        this.cone_radius = cone_radius;
        this.cone_height = cone_height;
        this.cone_on_top = cone_on_top;
    }

    path getprofile() {
        path p = (0,0) -- (this.groove_inner_r,0) -- (this.groove_inner_r,this.groove_depth) --
                 (this.groove_outer_r,this.groove_depth) -- (this.groove_outer_r,0);
        if (this.cone_on_top == true) {
            p = p -- (this.radius,0) -- (this.radius,this.height-this.cone_height) --
                (this.radius-this.cone_radius,this.height) -- (0,this.height);
        }
        else {
            p = p -- (this.radius-this.cone_radius,0) -- (this.radius,this.cone_height) --
                (this.radius,this.height) -- (0,this.height);
        }
        // center profile (detector) in origin
        return shift(0,-this.height/2) * p;
    }
}

/*
 * Semi-coaxial geometry
 */

struct SemiCoax {
    BEGe base;
    unravel base;

    real borehole_depth;
    real borehole_radius;

    void operator init(real keyword height, real keyword radius, real keyword groove_depth,
                       real keyword groove_inner_r, real keyword groove_outer_r,
                       real keyword borehole_radius, real keyword borehole_depth,
                       real keyword cone_radius=0, real keyword cone_height=0,
                       bool keyword cone_on_top=true) {
        base.operator init(height=height, radius=radius, groove_depth=groove_depth,
                           groove_inner_r=groove_inner_r, groove_outer_r=groove_outer_r,
                           cone_radius=cone_radius, cone_height=cone_height, cone_on_top=cone_on_top);
        this.borehole_radius = borehole_radius;
        this.borehole_depth = borehole_depth;
    }
    path getprofile() {
        path p = (0,this.borehole_depth) -- (this.borehole_radius,this.borehole_depth) --
                 (this.borehole_radius,0) -- (this.groove_inner_r,0) --
                 (this.groove_inner_r,this.groove_depth) --
                 (this.groove_outer_r,this.groove_depth) -- (this.groove_outer_r,0);
        if (this.cone_on_top == true) {
            p = p -- (this.radius,0) -- (this.radius,this.height-this.cone_height) --
                (this.radius-this.cone_radius,this.height) -- (0,this.height);
        }
        else {
            p = p -- (this.radius-this.cone_radius,0) -- (this.radius,this.cone_height) --
                (this.radius,this.height) -- (0,this.height);
        }
        // center profile (detector) in origin
        return shift(0,-this.height/2) * p;
    }
}

/*
 * Inverted-coaxial geometry
 */

struct InvCoax {
    BEGe base;
    unravel base;

    real borehole_depth;
    real borehole_radius;

    void operator init(real keyword height, real keyword radius, real keyword groove_depth,
                       real keyword groove_inner_r, real keyword groove_outer_r,
                       real keyword borehole_radius, real keyword borehole_depth,
                       real keyword cone_radius=0, real keyword cone_height=0,
                       bool keyword cone_on_top=true) {
        base.operator init(height=height, radius=radius, groove_depth=groove_depth,
                           groove_inner_r=groove_inner_r, groove_outer_r=groove_outer_r,
                           cone_radius=cone_radius, cone_height=cone_height, cone_on_top=cone_on_top);
        this.borehole_radius = borehole_radius;
        this.borehole_depth = borehole_depth;
    }
    path getprofile() {
        path p = (0,0) -- (this.groove_inner_r,0) -- (this.groove_inner_r,this.groove_depth) --
                 (this.groove_outer_r,this.groove_depth) -- (this.groove_outer_r,0);
        if (this.cone_on_top == true) {
            p = p -- (this.radius,0) -- (this.radius,this.height-this.cone_height) --
                (this.radius-this.cone_radius,this.height);
        }
        else {
            p = p -- (this.radius-this.cone_radius,0) -- (this.radius,this.cone_height) --
                (this.radius,this.height);
        }
        p = p -- (this.borehole_radius,this.height) --
            (this.borehole_radius,this.height-this.borehole_depth) --
            (0,this.height-this.borehole_depth);
        // center profile (detector) in origin
        return shift(0,-this.height/2) * p;
    }
}

void gedetdraw(path det, picture pic=currentpicture, triple pos=O, real angle1=0, real angle2=360) {
    if (angle1 >= angle2 || angle2-angle1 > 360) abort("gedetdraw(): invalid input");
    path3 profile = path3(det, plane=YZplane);
    draw(shift(pos) * surface(profile -- cycle, c=O, axis=Z, angle1=angle1, angle2=angle2), surfacepen=germanium);
    if (angle2-angle1 != 360) {
        draw(shift(pos) * rotate(angle1, Z) * surface(profile -- cycle), surfacepen=germanium);
        draw(shift(pos) * rotate(angle2, Z) * surface(profile -- cycle), surfacepen=germanium);
    }
}
