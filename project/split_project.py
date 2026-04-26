import os

# Структура папок и содержимое файлов
PROJECT_FILES = {
    "настройки/параметры.py": '''\
# настройки/параметры.py
L = 300
W = 200
H_bot = 200
H_top = 100
wall = 4
base = 5
lip_h = 10
gap = 0.4
gap_tier = 0.4
R_out = 15
R_in = R_out - wall
p_id = 14
p_od = 20
p_x = p_od / 2
p_y = W / 2
drain_h = 40
drain_d = 24
pot_d = 40.5
H_balc = 55
gap_lid = 0.5
slope_angle = 35
H_front = 5
sk_w = 5.2
sk_h = 16
sk_step = 20
panel_th = 5
offset_skadis = 6
''',

    "базовые_формы/примитивы.py": '''\
from solid2 import *

def r_box(l, w, h, r):
    actual_r = max(r, 0.1)
    return hull()(
        translate([actual_r, actual_r, 0])(cylinder(r=actual_r, h=h)),
        translate([l - actual_r, actual_r, 0])(cylinder(r=actual_r, h=h)),
        translate([actual_r, w - actual_r, 0])(cylinder(r=actual_r, h=h)),
        translate([l - actual_r, w - actual_r, 0])(cylinder(r=actual_r, h=h))
    )
''',

    "компоненты/люк.py": '''\
from solid2 import *
from настройки.параметры import *
from базовые_формы.примитивы import r_box

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
''',

    "компоненты/балконы.py": '''\
import math
from solid2 import *
from настройки.параметры import *

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

    body_solid = translate([0, 0, -8])(linear_extrude(8)(prof_ins)) + \\
                 (linear_extrude(100)(prof_out) - translate([0, -d_b, H_front])(
                     rotate([slope_angle, 0, 0])(translate([-w_b, 0, 0])(cube([w_b * 2, 200, 200])))))

    body_cavity = translate([0, 0, -9])(linear_extrude(120)(prof_cav)) - \\
                  translate([0, -d_b, H_front - (wall / math.cos(math.radians(slope_angle)))])(
                      rotate([slope_angle, 0, 0])(translate([-w_b, -50, 0])(cube([w_b * 2, 200, 200]))))

    hole_cuts = [translate([nx, 25, -50])(cylinder(d=pot_d, h=100)) for nx in holes]

    return color("OliveDrab")(
        body_solid - body_cavity - translate([0, -d_b, H_front])(rotate([slope_angle, 0, 0])(union()(*hole_cuts))))
''',

    "стили/раскладка.py": '''\
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
''',

    "каркас/сетка.py": '''\
import math
from solid2 import *
from настройки.параметры import *

def skadis_mesh_cell():
    outer = hull()(
        translate([0, 15])(circle(r=2)), translate([0, -15])(circle(r=2)),
        translate([15, 0])(circle(r=2)), translate([-15, 0])(circle(r=2))
    )
    inner = hull()(
        translate([0, sk_h / 2])(circle(d=sk_w)), translate([0, -sk_h / 2])(circle(d=sk_w))
    )
    return outer - inner

def skadis_mesh_panel(w, h):
    cols = math.floor(w / sk_step) + 1
    rows = math.floor(h / sk_step) + 1
    cells = []
    for r in range(rows + 1):
        shift = 0 if (r % 2 == 0) else sk_step / 2
        for c in range(cols + 1):
            cells.append(translate([c * sk_step + shift, r * sk_step, 0])(skadis_mesh_cell()))

    return intersection()(
        cube([w, h, panel_th + 2]),
        linear_extrude(panel_th)(union()(*cells))
    )
''',

    "каркас/экзоскелет.py": '''\
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

    frame = r_box(L_wrap, W_wrap, H_exo, R_wrap) - \\
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
''',

    "система/гидропоника.py": '''\
from solid2 import *
from настройки.параметры import *
from базовые_формы.примитивы import r_box
from компоненты.люк import hatch_outer, hatch_inner
from стили.раскладка import layout_outer, layout_inner

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
        drain_supports = [rotate([0, 0, a])(translate([drain_d / 2 + 1, 0, drain_h])(cylinder(d=3, h=10))) for a in [0, 120, 240]]
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
''',

    "сборка_главная.py": '''\
import os
from datetime import datetime
from solid2 import *

from настройки.параметры import *
from базовые_формы.примитивы import r_box
from компоненты.люк import hatch_lid_and_float
from стили.раскладка import layout_lids
from каркас.экзоскелет import exoskeleton_wrap
from система.гидропоника import hydro_system


def build_farm():
    # Меняйте стиль балконов здесь (от 1 до 10)
    active_style = 3

    # --- ЯРУС 1 ---
    tier1 = color("CornflowerBlue")(hydro_system(1)) + \\
            translate([-(offset_skadis + panel_th), -(offset_skadis + panel_th), 0])(color("DarkSlateGray")(exoskeleton_wrap(1))) + \\
            hatch_lid_and_float()

    # --- ЯРУС 2 ---
    tier2 = translate([0, 0, H_bot + 10])(
        color("MediumSeaGreen")(hydro_system(2, active_style)) +
        translate([-(offset_skadis + panel_th), -(offset_skadis + panel_th), 0])(
            color("DarkSlateGray")(exoskeleton_wrap(2, active_style))) +
        layout_lids(active_style, H_balc + 40)
    )

    # --- ЯРУС 3 (Крышка-поддон) ---
    top_cover_holes = union()(*[
        translate([nx, ny, -5])(cylinder(d=pot_d, h=15)) 
        for nx in [40, 85, 130, 175, 220, 265] 
        for ny in [55, 145]
    ])

    top_cover = translate([0, 0, H_top + 10])(
        color("OliveDrab")(
            r_box(L, W, 4, R_out) + 
            translate([wall + gap, wall + gap, -4])(r_box(L - 2 * (wall + gap), W - 2 * (wall + gap), 4, R_in - gap)) -
            top_cover_holes
        )
    )

    tier3 = translate([0, 0, H_bot + H_top + 20])(
        color("PaleGreen")(hydro_system(3)) +
        translate([-(offset_skadis + panel_th), -(offset_skadis + panel_th), 0])(color("DarkSlateGray")(exoskeleton_wrap(3))) +
        top_cover
    )

    return tier1 + tier2 + tier3


if __name__ == '__main__':
    # Ограничиваем область выполнения скрипта
    set_global_fn(64)
    farm_assembly = build_farm()

    # Создаем папку output для SCAD файлов, если её еще нет
    os.makedirs("output", exist_ok=True)
    time_str = datetime.now().strftime("%Y%m%d_%H%M%S")
    output_filename = f"output/hydroponic_tower_{time_str}.scad"

    scad_render_to_file(farm_assembly, output_filename)
    print(f"Файл {output_filename} успешно сгенерирован!")
'''
}


def generate_project():
    print("Создание модульной структуры проекта...")
    folders_created = set()

    for filepath, content in PROJECT_FILES.items():
        # Получаем имя папки
        dir_name = os.path.dirname(filepath)

        # Если есть папка, создаем её и добавляем пустой __init__.py для Python
        if dir_name and dir_name not in folders_created:
            os.makedirs(dir_name, exist_ok=True)
            init_file = os.path.join(dir_name, "__init__.py")
            if not os.path.exists(init_file):
                with open(init_file, "w", encoding="utf-8") as f:
                    f.write("")
            folders_created.add(dir_name)

        # Создаем сам .py файл
        with open(filepath, "w", encoding="utf-8") as f:
            f.write(content)

        print(f" -> Создан файл: {filepath}")

    print("\nПроект успешно разбит на модули! 🎉")
    print("Запустите файл `сборка_главная.py` для генерации вашей модели башни.")


if __name__ == "__main__":
    generate_project()