import three;

// define germanium coloring
material germanium = material(
    diffusepen=gray(0.8),
    emissivepen=black
);

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
        return shift(0,-this.height/2) * p;
    }
}

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
        return shift(0,-this.height/2) * p;
    }
}

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

        return shift(0,-this.height/2) * p;
    }
}

void gedetplot(path det, picture pic=currentpicture, triple pos=O, int angle1=0, int angle2=360) {
    path3 profile = path3(det, plane=YZplane);
    draw(shift(pos) * surface(profile -- cycle, c=O, axis=Z, angle1=angle1, angle2=angle2), surfacepen=germanium);
    draw(shift(pos) * rotate(angle1, Z) * surface(profile -- cycle), surfacepen=germanium);
    draw(shift(pos) * rotate(angle2, Z) * surface(profile -- cycle), surfacepen=germanium);
}
