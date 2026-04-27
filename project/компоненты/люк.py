from solid2 import *
from project.настройки.параметры import *
from project.базовые_формы.примитивы import r_box

from project.настройки.параметры import *


def hatch_outer():
    return hull()(
        translate([L - 90, -45, H_bot - 20])(r_box(70, 45, 20, 5)),
        translate([L - 90, 0, H_bot - 70])(cube([70, 0.1, 70]))
    )

def hatch_inner():
    return hull()(
        translate([L - 86, -41, H_bot - 19])(r_box(62, 41, 20, 3)),
        translate([L - 86, 0, H_bot - 66])(cube([62, 0.1, 66]))
    ) + translate([L - 80, -10, H_bot - 60])(cube([50, 20, 50]))

def hatch_lid_and_float():
    float_x = L - 55
    float_y = -20
    lid_body = r_box(70, 45, 4, 5) + translate([4, 4, -4])(r_box(62, 37, 4, 3))
    lid_hole = translate([35, 25, -10])(cylinder(d=6, h=20))
    lid = color("OliveDrab")(translate([L - 90, -45, H_bot])(lid_body - lid_hole))

    float_obj = color("Red")(translate([float_x, float_y, base + 20])(
        cylinder(d=4, h=H_bot - base + 20) +
        cylinder(d=12, h=30) +
        translate([0, 0, H_bot - base + 20])(sphere(d=8))
    ))
    return lid + float_obj
