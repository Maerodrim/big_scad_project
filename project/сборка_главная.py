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
    tier1 = color("CornflowerBlue")(hydro_system(1)) + \
            translate([-(offset_skadis + panel_th), -(offset_skadis + panel_th), 0])(color("DarkSlateGray")(exoskeleton_wrap(1))) + \
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
