import math
from solid2 import *
from project.настройки.параметры import *
from project.базовые_формы.примитивы import r_box
from project.каркас.сетка import generate_skadis_cutters
from project.стили.раскладка import layout_exo_cutouts, layout_exo_borders

def exoskeleton_wrap(type_id, style=1):
    H_exo = H_bot if type_id == 1 else H_top
    L_wrap = L + (offset_skadis + panel_th) * 2
    W_wrap = W + (offset_skadis + panel_th) * 2
    R_wrap = R_out + offset_skadis + panel_th

    off_x = offset_skadis + panel_th
    off_y = offset_skadis + panel_th

    # Создаем сплошную монолитную раму (полую внутри)
    frame = r_box(L_wrap, W_wrap, H_exo, R_wrap) - \
            translate([panel_th, panel_th, -1])(
                r_box(L_wrap - 2 * panel_th, W_wrap - 2 * panel_th, H_exo + 2, R_wrap - panel_th))

    # Пробиваем идеальные отверстия Skadis по всему периметру
    skadis_holes = generate_skadis_cutters(L_wrap, W_wrap, H_exo, R_wrap)
    frame -= skadis_holes

    # =======================================================
    # АЛГОРИТМ УМНОЙ РАССТАНОВКИ ОПОР (СТРОГО МЕЖДУ ОТВЕРСТИЯМИ)
    # =======================================================
    # Рассчитываем длину прямых и угловых участков периметра
    arc = math.pi / 2 * R_wrap
    start_left = L_wrap / 2 - R_wrap + arc
    start_front = start_left + W_wrap - 2 * R_wrap + arc
    start_right = start_front + L_wrap - 2 * R_wrap + arc
    start_back = start_right + W_wrap - 2 * R_wrap + arc

    def get_safe_coord(start_s, local_target, iz):
        # Находит ближайшее монолитное перекрестие сетки для заданного Z
        s_target = start_s + local_target
        shift = 0 if ((iz - 15) // sk_step) % 2 == 0 else sk_step / 2
        # Ищем ближайший "чистый" сегмент без дырок
        k = round((s_target - shift - (sk_step / 2)) / sk_step)
        s_safe = shift + (sk_step / 2) + k * sk_step
        return s_safe - start_s

    # Опоры должны совпадать по высоте с рядами отверстий
    z_pins = [35, 95, 175] if type_id == 1 else [35, 95]
    pins = union()

    for iz in z_pins:
        # Передняя стенка (внутренняя грань Y = panel_th)
        for tx in [L_wrap * 0.25, L_wrap * 0.5, L_wrap * 0.75]:
            safe_x = R_wrap + get_safe_coord(start_front, tx - R_wrap, iz)
            pins += translate([safe_x, panel_th, iz])(rotate([-90, 0, 0])(cylinder(d1=10, d2=6, h=offset_skadis + 2)))

        # Правая стенка (внутренняя грань X = L_wrap - panel_th)
        for ty in [W_wrap * 0.3, W_wrap * 0.7]:
            safe_y = R_wrap + get_safe_coord(start_right, ty - R_wrap, iz)
            pins += translate([L_wrap - panel_th, safe_y, iz])(rotate([0, 0, 90])(rotate([-90, 0, 0])(cylinder(d1=10, d2=6, h=offset_skadis + 2))))

        # Задняя стенка (внутренняя грань Y = W_wrap - panel_th)
        for tx in [L_wrap * 0.25, L_wrap * 0.5, L_wrap * 0.75]:
            safe_x = (L_wrap - R_wrap) - get_safe_coord(start_back, (L_wrap - R_wrap) - tx, iz)
            pins += translate([safe_x, W_wrap - panel_th, iz])(rotate([0, 0, 180])(rotate([-90, 0, 0])(cylinder(d1=10, d2=6, h=offset_skadis + 2))))

        # Левая стенка (внутренняя грань X = panel_th)
        for ty in [W_wrap * 0.3, W_wrap * 0.7]:
            safe_y = (W_wrap - R_wrap) - get_safe_coord(start_left, (W_wrap - R_wrap) - ty, iz)
            pins += translate([panel_th, safe_y, iz])(rotate([0, 0, -90])(rotate([-90, 0, 0])(cylinder(d1=10, d2=6, h=offset_skadis + 2))))

    exo_body = frame + pins
    cuts = union()

    if type_id == 1:
        # Окно с рамочкой для трубки уровня воды (спереди слева)
        tube_x = off_x + 30
        exo_body += translate([tube_x - 10, 0, 12])(cube([20, panel_th + offset_skadis, H_bot - 24]))
        cuts += translate([tube_x - 7, -1, 15])(cube([14, panel_th + offset_skadis + 2, H_bot - 30]))

        # Идеально прилегающая U-образная рама вокруг сервисного люка
        hatch_w = 71
        hatch_x = off_x + L - 90.5
        hatch_z = H_bot - 71

        # Наращиваем монолит вплотную к люку
        exo_body += translate([hatch_x - 4, 0, hatch_z - 4])(
            cube([hatch_w + 8, panel_th + offset_skadis, 80])
        )
        # Вырезаем сердцевину точно по размеру люка (ширина люка 70, окно 71 - зазор всего 0.5мм с каждой стороны)
        cuts += translate([hatch_x, -1, hatch_z])(
            cube([hatch_w, panel_th + offset_skadis + 2, 80])
        )

    if type_id == 2:
        exo_body += translate([off_x, off_y, 0])(layout_exo_borders(style))
        cuts += translate([off_x, off_y, 0])(layout_exo_cutouts(style))

    return exo_body - cuts