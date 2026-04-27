from solid2 import *
from project.настройки.параметры import *
from project.компоненты.балконы import balcony_outer, balcony_inner, u_shape_lid

def place_outer(x, y, rot, length):
    return translate([x, y, base])(rotate([0, 0, rot])(balcony_outer(length, 45, H_balc - base, R_out, 15)))

def place_inner(x, y, rot, length):
    return translate([x, y, base + wall])(rotate([0, 0, rot])(balcony_inner(length - 2 * wall, 45 - wall, H_balc - base - wall + 0.1, R_in)))

def place_lid(x, y, rot, length, holes, z):
    return translate([x, y, z])(rotate([0, 0, rot])(u_shape_lid(length, 45, holes)))

def exo_cutout(x, y, rot, length):
    # Делаем вырез значительно выше, чтобы он не мешал установке крышки
    w_hole = length + 6
    h_hole = H_balc + 40
    hole = translate([-w_hole / 2, -offset_skadis - panel_th - 2, base - 3])(
        cube([w_hole, offset_skadis + panel_th + 4, h_hole])
    )
    return translate([x, y, 0])(rotate([0, 0, rot])(hole))

def exo_border(x, y, rot, length):
    # Исправлено: стартуем строго от 0, чтобы рама не вылезала вниз и не мешала стыковке!
    w_out = length + 18
    h_out = H_balc + base + 15
    w_hole = length + 6
    h_hole = h_out + 5 # Прорываем верхнюю грань для U-формы

    outer = translate([-w_out / 2, -offset_skadis - panel_th, 0])(
        cube([w_out, offset_skadis + panel_th, h_out])
    )
    inner = translate([-w_hole / 2, -offset_skadis - panel_th - 1, base - 3])(
        cube([w_hole, offset_skadis + panel_th + 2, h_hole])
    )
    border = outer - inner
    return translate([x, y, 0])(rotate([0, 0, rot])(border))

def layout_exo_features(style, func):
    styles = {
        1: [func(160, 0, 0, 180)],
        2: [func(160, W, 180, 180)],
        3: [func(100, 0, 0, 120), func(220, W, 180, 120)],
        4: [func(220, 0, 0, 120), func(100, W, 180, 120)],
        5: [func(160, 0, 0, 240)],
        6: [func(160, W, 180, 240)],
        7: [func(70, 0, 0, 60), func(250, 0, 0, 60), func(70, W, 180, 60), func(250, W, 180, 60)],
        8: [func(L, W / 2, 90, 180)],
        9: [func(160, 0, 0, 180), func(160, W, 180, 180), func(L, W / 2, 90, 120)],
        10: [func(160, 0, 0, 240), func(160, W, 180, 240), func(L, W / 2, 90, 60)]
    }
    objs = styles.get(style, [])
    return union()(*objs) if objs else union()

def layout_outer(style):
    return layout_exo_features(style, place_outer)

def layout_inner(style):
    return layout_exo_features(style, place_inner)

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
    return layout_exo_features(style, exo_cutout)

def layout_exo_borders(style):
    return layout_exo_features(style, exo_border)