import os
from datetime import datetime
from solid2 import *

from project.настройки.параметры import *
from project.базовые_формы.примитивы import r_box
from project.компоненты.люк import hatch_lid, water_level_indicator
from project.стили.раскладка import layout_lids
from project.каркас.экзоскелет import exoskeleton_wrap
from project.система.гидропоника import hydro_system


def build_farm(mode="print"):
    """
    mode:
      "assembly" - собирает башню вертикально (для предпросмотра)
      "print" - раскладывает все детали плашмя на столе для 3D печати
    """
    # Меняйте стиль балконов здесь (от 1 до 10)
    active_style = 3

    # Сборка отверстий для крышки-поддона
    top_cover_holes = union()(*[
        translate([nx, ny, -5])(cylinder(d=pot_d, h=15))
        for nx in [40, 85, 130, 175, 220, 265]
        for ny in [55, 145]
    ])

    if mode == "assembly":
        # --- ВЕРТИКАЛЬНАЯ СБОРКА (ДЛЯ ПРОСМОТРА) ---
        tier1 = color("CornflowerBlue")(hydro_system(1)) + \
                translate([-(offset_skadis + panel_th), -(offset_skadis + panel_th), 0])(
                    color("DarkSlateGray")(exoskeleton_wrap(1))) + \
                hatch_lid() + water_level_indicator()

        tier2 = translate([0, 0, H_bot + 10])(
            color("MediumSeaGreen")(hydro_system(2, active_style)) +
            translate([-(offset_skadis + panel_th), -(offset_skadis + panel_th), 0])(
                color("DarkSlateGray")(exoskeleton_wrap(2, active_style))) +
            layout_lids(active_style, H_balc + 40)
        )

        top_cover = translate([0, 0, H_top + 10])(
            color("OliveDrab")(
                r_box(L, W, 4, R_out) +
                translate([wall + gap, wall + gap, -4])(
                    r_box(L - 2 * (wall + gap), W - 2 * (wall + gap), 4, R_in - gap)) -
                top_cover_holes
            )
        )

        tier3 = translate([0, 0, H_bot + H_top + 20])(
            color("PaleGreen")(hydro_system(3)) +
            translate([-(offset_skadis + panel_th), -(offset_skadis + panel_th), 0])(
                color("DarkSlateGray")(exoskeleton_wrap(3))) +
            top_cover
        )

        return tier1 + tier2 + tier3

    elif mode == "print":
        # --- РАСКЛАДКА ДЛЯ 3D ПЕЧАТИ (Z=0 ДЛЯ ВСЕХ ДЕТАЛЕЙ) ---
        # Задаем отступы между колонками (X) и рядами (Y)
        step_x = L + 100
        step_y = W + 100
        acc_y = -(W + 50)  # Ряд для мелких аксессуаров

        # === ЯРУС 1 ===
        t1_tank = color("CornflowerBlue")(hydro_system(1))
        t1_exo = color("DarkSlateGray")(exoskeleton_wrap(1))

        # Опускаем крышку люка на Z=0 (компенсируем её внутренний сдвиг)
        t1_hatch = color("OliveDrab")(translate([-(L - 90), 45, -H_bot])(hatch_lid(open_angle=0)))

        # Кладем индикатор уровня воды горизонтально на стол
        t1_indicator = translate([-30, 30, 10])(rotate([-90, 0, 0])(water_level_indicator()))

        tier1_layout = t1_tank + \
                       translate([0, step_y, 0])(t1_exo) + \
                       translate([0, acc_y, 0])(t1_hatch + t1_indicator)

        # === ЯРУС 2 ===
        t2_tank = color("MediumSeaGreen")(hydro_system(2, active_style))
        t2_exo = color("DarkSlateGray")(exoskeleton_wrap(2, active_style))
        # Генерируем крышки балконов сразу на высоте Z=0
        t2_lids = layout_lids(active_style, 0)

        tier2_layout = translate([step_x, 0, 0])(
            t2_tank + \
            translate([0, step_y, 0])(t2_exo) + \
            translate([0, acc_y, 0])(t2_lids)
        )

        # === ЯРУС 3 (и крышка-поддон) ===
        t3_tank = color("PaleGreen")(hydro_system(3))
        t3_exo = color("DarkSlateGray")(exoskeleton_wrap(3))

        top_cover = color("OliveDrab")(
            r_box(L, W, 4, R_out) +
            translate([wall + gap, wall + gap, -4])(r_box(L - 2 * (wall + gap), W - 2 * (wall + gap), 4, R_in - gap)) -
            top_cover_holes
        )

        tier3_layout = translate([step_x * 2, 0, 0])(
            t3_tank + \
            translate([0, step_y, 0])(t3_exo) + \
            translate([0, acc_y, 0])(top_cover)
        )

        return tier1_layout + tier2_layout + tier3_layout


if __name__ == '__main__':
    # Ограничиваем полигональность для быстрого рендера (можно увеличить до 128 перед экспортом в STL)
    set_global_fn(64)

    # Меняем режим: "assembly" (собранная башня) или "print" (разложено по столу)
    current_mode = "print"

    farm_assembly = build_farm(mode=current_mode)

    # Создаем папку output для SCAD файлов, если её еще нет
    os.makedirs("output", exist_ok=True)
    output_filename = f"output/hydroponic_tower_{current_mode}.scad"

    scad_render_to_file(farm_assembly, output_filename)
    print(f"Файл {output_filename} успешно сгенерирован в режиме '{current_mode}'!")