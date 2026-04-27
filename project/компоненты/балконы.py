import math
from solid2 import *
from project.настройки.параметры import *

def balcony_outer(w, d, h, r_xy, r_z):
    return hull()(
        translate([-w / 2 + r_xy, -d + r_xy, h])(cylinder(r=r_xy, h=0.1)),
        translate([w / 2 - r_xy, -d + r_xy, h])(cylinder(r=r_xy, h=0.1)),
        translate([-w / 2, wall, h])(cube([w, 0.1, 0.1])),
        translate([-w / 2 + r_xy, -d + r_xy, r_z])(sphere(r=r_z)),
        translate([w / 2 - r_xy, -d + r_xy, r_z])(sphere(r=r_z)),
        translate([-w / 2, wall, 0])(cube([w, 0.1, r_z]))
    )

def balcony_inner(w_b, d, h, r_xy):
    return hull()(
        translate([-w_b / 2 + r_xy, -d + r_xy, 0])(cylinder(r=r_xy, h=h)),
        translate([w_b / 2 - r_xy, -d + r_xy, 0])(cylinder(r=r_xy, h=h)),
        translate([-w_b / 2, wall + 2, 0])(cube([w_b, 0.1, h]))
    )

def u_shape_lid(w_b, d_b, holes):
    w_in = w_b - 2 * (wall + gap_lid)
    d_in = d_b - (wall + gap_lid)
    r_in_lip = max(0.1, R_out - wall - gap_lid)

    prof_out = hull()(
        translate([-w_b / 2, 0])(square([w_b, 0.1])),
        translate([-w_b / 2 + R_out, -d_b + R_out])(circle(r=R_out)),
        translate([w_b / 2 - R_out, -d_b + R_out])(circle(r=R_out))
    )

    prof_ins = translate([0, -gap_lid])(hull()(
        translate([-w_in / 2, 0])(square([w_in, 0.1])),
        translate([-w_in / 2 + r_in_lip, -d_in + r_in_lip])(circle(r=r_in_lip)),
        translate([w_in / 2 - r_in_lip, -d_in + r_in_lip])(circle(r=r_in_lip))
    ))

    w_cav = w_in - 2 * wall
    d_cav = d_in - wall
    r_cav = max(0.1, r_in_lip - wall)
    prof_cav = translate([0, -gap_lid - wall])(hull()(
        translate([-w_cav / 2, 10])(square([w_cav, 0.1])),
        translate([-w_cav / 2 + r_cav, -d_cav + r_cav])(circle(r=r_cav)),
        translate([w_cav / 2 - r_cav, -d_cav + r_cav])(circle(r=r_cav))
    ))

    body_solid = translate([0, 0, -8])(linear_extrude(8)(prof_ins)) + \
                 (linear_extrude(100)(prof_out) - translate([0, -d_b, H_front])(
                     rotate([slope_angle, 0, 0])(translate([-w_b, 0, 0])(cube([w_b * 2, 200, 200])))))

    body_cavity = translate([0, 0, -9])(linear_extrude(120)(prof_cav)) - \
                  translate([0, -d_b, H_front - (wall / math.cos(math.radians(slope_angle)))])(
                      rotate([slope_angle, 0, 0])(translate([-w_b, -50, 0])(cube([w_b * 2, 200, 200]))))

    hole_cuts = [translate([nx, 25, -50])(cylinder(d=pot_d, h=100)) for nx in holes]

    return color("OliveDrab")(
        body_solid - body_cavity - translate([0, -d_b, H_front])(rotate([slope_angle, 0, 0])(union()(*hole_cuts))))
