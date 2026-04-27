import math
from solid2 import *
from project.настройки.параметры import *

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
