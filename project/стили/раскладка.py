from solid2 import *
from настройки.параметры import *
from компоненты.балконы import balcony_outer, balcony_inner, u_shape_lid

def place_outer(x, y, rot, length):
    return translate([x, y, base])(rotate([0, 0, rot])(balcony_outer(length, 45, H_balc - base, R_out, 15)))

def place_inner(x, y, rot, length):
    return translate([x, y, base + wall])(rotate([0, 0, rot])(balcony_inner(length - 2 * wall, 45 - wall, H_balc - base - wall + 0.1, R_in)))

def place_lid(x, y, rot, length, holes, z):
    return translate([x, y, z])(rotate([0, 0, rot])(u_shape_lid(length, 45, holes)))

def exo_cutout(x, y, rot, length):
    return translate([x, y, -10])(rotate([0, 0, rot])(translate([-length / 2 - 10, -100, 0])(cube([length + 20, 100, 300]))))

def layout_outer(style):
    styles = {
        1: [place_outer(160, 0, 0, 180)],
        2: [place_outer(160, W, 180, 180)],
        3: [place_outer(100, 0, 0, 120), place_outer(220, W, 180, 120)],
        4: [place_outer(220, 0, 0, 120), place_outer(100, W, 180, 120)],
        5: [place_outer(160, 0, 0, 240)],
        6: [place_outer(160, W, 180, 240)],
        7: [place_outer(70, 0, 0, 60), place_outer(250, 0, 0, 60), place_outer(70, W, 180, 60), place_outer(250, W, 180, 60)],
        8: [place_outer(L, W / 2, 90, 180)],
        9: [place_outer(160, 0, 0, 180), place_outer(160, W, 180, 180), place_outer(L, W / 2, 90, 120)],
        10: [place_outer(160, 0, 0, 240), place_outer(160, W, 180, 240), place_outer(L, W / 2, 90, 60)]
    }
    objs = styles.get(style, [])
    return union()(*objs) if objs else union()

def layout_inner(style):
    styles = {
        1: [place_inner(160, 0, 0, 180)],
        2: [place_inner(160, W, 180, 180)],
        3: [place_inner(100, 0, 0, 120), place_inner(220, W, 180, 120)],
        4: [place_inner(220, 0, 0, 120), place_inner(100, W, 180, 120)],
        5: [place_inner(160, 0, 0, 240)],
        6: [place_inner(160, W, 180, 240)],
        7: [place_inner(70, 0, 0, 60), place_inner(250, 0, 0, 60), place_inner(70, W, 180, 60), place_inner(250, W, 180, 60)],
        8: [place_inner(L, W / 2, 90, 180)],
        9: [place_inner(160, 0, 0, 180), place_inner(160, W, 180, 180), place_inner(L, W / 2, 90, 120)],
        10: [place_inner(160, 0, 0, 240), place_inner(160, W, 180, 240), place_inner(L, W / 2, 90, 60)]
    }
    objs = styles.get(style, [])
    return union()(*objs) if objs else union()

def layout_lids(style, z):
    styles = {
        1: [place_lid(160, 0, 0, 180, [-60, 0, 60], z)],
        2: [place_lid(160, W, 180, 180, [-60, 0, 60], z)],
        3: [place_lid(100, 0, 0, 120, [-30, 30], z), place_lid(220, W, 180, 120, [-30, 30], z)],
        4: [place_lid(220, 0, 0, 120, [-30, 30], z), place_lid(100, W, 180, 120, [-30, 30], z)],
        5: [place_lid(160, 0, 0, 240, [-90, -30, 30, 90], z)],
        6: [place_lid(160, W, 180, 240, [-90, -30, 30, 90], z)],
        7: [place_lid(70, 0, 0, 60, [0], z), place_lid(250, 0, 0, 60, [0], z), place_lid(70, W, 180, 60, [0], z), place_lid(250, W, 180, 60, [0], z)],
        8: [place_lid(L, W / 2, 90, 180, [-60, 0, 60], z)],
        9: [place_lid(160, 0, 0, 180, [-60, 0, 60], z), place_lid(160, W, 180, 180, [-60, 0, 60], z), place_lid(L, W / 2, 90, 120, [-30, 30], z)],
        10: [place_lid(160, 0, 0, 240, [-90, -30, 30, 90], z), place_lid(160, W, 180, 240, [-90, -30, 30, 90], z), place_lid(L, W / 2, 90, 60, [0], z)]
    }
    objs = styles.get(style, [])
    return union()(*objs) if objs else union()

def layout_exo_cutouts(style):
    styles = {
        1: [exo_cutout(160, 0, 0, 180)],
        2: [exo_cutout(160, W, 180, 180)],
        3: [exo_cutout(100, 0, 0, 120), exo_cutout(220, W, 180, 120)],
        4: [exo_cutout(220, 0, 0, 120), exo_cutout(100, W, 180, 120)],
        5: [exo_cutout(160, 0, 0, 240)],
        6: [exo_cutout(160, W, 180, 240)],
        7: [exo_cutout(70, 0, 0, 60), exo_cutout(250, 0, 0, 60), exo_cutout(70, W, 180, 60), exo_cutout(250, W, 180, 60)],
        8: [exo_cutout(L, W / 2, 90, 180)],
        9: [exo_cutout(160, 0, 0, 180), exo_cutout(160, W, 180, 180), exo_cutout(L, W / 2, 90, 120)],
        10: [exo_cutout(160, 0, 0, 240), exo_cutout(160, W, 180, 240), exo_cutout(L, W / 2, 90, 60)]
    }
    objs = styles.get(style, [])
    return union()(*objs) if objs else union()
