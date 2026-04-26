from solid2 import *
from настройки.параметры import *
from базовые_формы.примитивы import r_box
from каркас.сетка import skadis_mesh_panel
from стили.раскладка import layout_exo_cutouts

def exoskeleton_wrap(type_id, style=1):
    H_exo = H_bot if type_id == 1 else H_top
    L_wrap = L + (offset_skadis + panel_th) * 2
    W_wrap = W + (offset_skadis + panel_th) * 2
    R_wrap = R_out + offset_skadis + panel_th

    off_x = offset_skadis + panel_th
    off_y = offset_skadis + panel_th

    frame = r_box(L_wrap, W_wrap, H_exo, R_wrap) - \
            translate([panel_th, panel_th, -1])(
                r_box(L_wrap - 2 * panel_th, W_wrap - 2 * panel_th, H_exo + 2, R_wrap - panel_th))

    frame -= translate([R_wrap + 2, -10, 7])(cube([L_wrap - 2 * R_wrap - 4, 100, H_exo - 14]))
    frame -= translate([R_wrap + 2, W_wrap - 90, 7])(cube([L_wrap - 2 * R_wrap - 4, 100, H_exo - 14]))
    frame -= translate([-10, R_wrap + 2, 7])(cube([100, W_wrap - 2 * R_wrap - 4, H_exo - 14]))
    frame -= translate([L_wrap - 90, R_wrap + 2, 7])(cube([100, W_wrap - 2 * R_wrap - 4, H_exo - 14]))

    meshes = union()(
        translate([R_wrap, 0, 5])(rotate([90, 0, 0])(skadis_mesh_panel(L_wrap - 2 * R_wrap, H_exo - 10))),
        translate([L_wrap - R_wrap, W_wrap, 5])(rotate([90, 0, 180])(skadis_mesh_panel(L_wrap - 2 * R_wrap, H_exo - 10))),
        translate([0, W_wrap - R_wrap, 5])(rotate([90, 0, -90])(skadis_mesh_panel(W_wrap - 2 * R_wrap, H_exo - 10))),
        translate([L_wrap, R_wrap, 5])(rotate([90, 0, 90])(skadis_mesh_panel(W_wrap - 2 * R_wrap, H_exo - 10)))
    )

    z_pins = [20, 90, 180] if type_id == 1 else [20, 80]
    pins = union()
    for iz in z_pins:
        for ix in [50, 150, 250]:
            pins += translate([off_x + ix, off_y + 1, iz])(rotate([90, 0, 0])(cylinder(d1=10, d2=6, h=offset_skadis + 2)))
            pins += translate([off_x + ix, off_y + W - 1, iz])(rotate([-90, 0, 0])(cylinder(d1=10, d2=6, h=offset_skadis + 2)))
        for iy in [50, 150]:
            pins += translate([off_x + 1, off_y + iy, iz])(rotate([0, -90, 0])(cylinder(d1=10, d2=6, h=offset_skadis + 2)))
        for iy in [30, 170]:
            pins += translate([off_x + L - 1, off_y + iy, iz])(rotate([0, 90, 0])(cylinder(d1=10, d2=6, h=offset_skadis + 2)))

    exo_body = frame + meshes + pins

    cuts = union()
    if type_id == 1:
        cuts += translate([L_wrap - 130, -10, H_bot - 100])(cube([120, offset_skadis + panel_th + 20, 110]))
    if type_id == 2:
        cuts += translate([off_x, off_y, 0])(layout_exo_cutouts(style))

    return exo_body - cuts
