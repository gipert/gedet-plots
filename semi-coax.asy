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

gedetplot(ANG5.getprofile(), angle1=0, angle2=220);
