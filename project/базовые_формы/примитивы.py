from solid2 import *

def r_box(l, w, h, r):
    actual_r = max(r, 0.1)
    return hull()(
        translate([actual_r, actual_r, 0])(cylinder(r=actual_r, h=h)),
        translate([l - actual_r, actual_r, 0])(cylinder(r=actual_r, h=h)),
        translate([actual_r, w - actual_r, 0])(cylinder(r=actual_r, h=h)),
        translate([l - actual_r, w - actual_r, 0])(cylinder(r=actual_r, h=h))
    )
