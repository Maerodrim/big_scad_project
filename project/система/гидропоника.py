from solid2 import *
from project.настройки.параметры import *
from project.базовые_формы.примитивы import r_box
from project.компоненты.люк import hatch_outer, hatch_inner
from project.стили.раскладка import layout_outer, layout_inner


def hydro_system(type_id, style=1):
    H_val = H_bot if type_id == 1 else H_top
    h_t_base = H_val - 25

    body = r_box(L, W, H_val, R_out)
    if type_id > 1:
        body += translate([wall + gap_tier, wall + gap_tier, -lip_h])(
            r_box(L - 2 * (wall + gap_tier), W - 2 * (wall + gap_tier), lip_h, R_in - gap_tier))
    if type_id == 1:
        body += hatch_outer()

    cavity = translate([wall, wall, base])(r_box(L - 2 * wall, W - 2 * wall, H_val + 1, R_in))
    if type_id == 1:
        cavity += hatch_inner()

    main_tank = body - cavity

    if type_id == 2:
        main_tank += layout_outer(style)

    pipes = union()
    if type_id == 1:
        pipes += translate([p_x, p_y, H_val / 2])(
            cylinder(d=p_od, h=H_val / 2) + translate([0, 0, H_val / 2])(cylinder(d=p_id - 0.5, h=8)))
    elif type_id == 2:
        pipes += translate([p_x, p_y, 0])(
            cylinder(d=p_od, h=H_val) + translate([0, 0, H_val])(cylinder(d=p_id - 0.5, h=8)))
    elif type_id == 3:
        pipes += translate([p_x, p_y, 0])(
            cylinder(d=p_od, h=h_t_base) +
            translate([0, 0, h_t_base])(
                sphere(d=p_od) + rotate([0, 90, 0])(cylinder(d=p_od, h=25)) +
                translate([25, 0, 0])(sphere(d=p_od) + translate([0, 0, -15])(cylinder(d=p_od, h=15)))
            )
        )

    if type_id > 1:
        drain_supports = [rotate([0, 0, a])(translate([drain_d / 2 + 1, 0, drain_h])(cylinder(d=3, h=10))) for a in
                          [0, 120, 240]]
        pipes += translate([L / 2, W / 2, base])(
            cylinder(d=drain_d + 4, h=drain_h) +
            translate([0, 0, drain_h + 10])(cylinder(h=8, d1=drain_d + 20, d2=drain_d + 5)) +
            union()(*drain_supports)
        )

    main_tank += pipes

    cuts = union()
    if type_id == 2:
        cuts += layout_inner(style)

    if type_id == 1:
        cuts += translate([p_x, p_y, H_val / 2 - 0.1])(cylinder(d=p_id, h=H_val / 2 + 20))
        cuts += translate([-1, p_y + p_od / 2 + 2, H_val - 15])(cube([wall + 2, 10, 16]))

        # Пробиваем отверстия к трубке уровня воды в основном баке
        cuts += translate([30, -5, 20])(rotate([-90, 0, 0])(cylinder(d=6, h=20)))
        cuts += translate([30, -5, H_bot - 20])(rotate([-90, 0, 0])(cylinder(d=6, h=20)))

    elif type_id == 2:
        cuts += translate([p_x, p_y, -lip_h - 1])(cylinder(d=p_id, h=H_val + lip_h + 20))
    elif type_id == 3:
        cuts += translate([p_x, p_y, -lip_h - 1])(cylinder(d=p_id, h=h_t_base + lip_h + 1))
        cuts += translate([p_x, p_y, h_t_base])(
            sphere(d=p_id) + rotate([0, 90, 0])(cylinder(d=p_id, h=25)) +
            translate([25, 0, 0])(sphere(d=p_id) + translate([0, 0, -16])(cylinder(d=p_id, h=16)))
        )

    if type_id > 1:
        cuts += translate([L / 2, W / 2, -lip_h - 1])(cylinder(d=drain_d, h=base + lip_h + drain_h + 2))

    return main_tank - cuts