import math
from solid2 import *
from project.настройки.параметры import *


def generate_skadis_cutters(L_wrap, W_wrap, H_exo, R_wrap):
    cutters = []

    # Длины всех 9 участков периметра (начинаем с центра задней стенки)
    s1 = L_wrap / 2 - R_wrap
    arc = math.pi / 2 * R_wrap
    s2 = arc
    s3 = W_wrap - 2 * R_wrap
    s4 = arc
    s5 = L_wrap - 2 * R_wrap
    s6 = arc
    s7 = W_wrap - 2 * R_wrap
    s8 = arc
    s9 = L_wrap / 2 - R_wrap
    total_p = s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9

    def get_wrap_pos(s):
        # Вычисляет X, Y и угол поворота пробойника в зависимости от пройденного пути s
        if s < s1: return L_wrap / 2 - s, W_wrap, 0
        s -= s1
        if s < s2:
            a = math.pi / 2 + s / R_wrap
            return R_wrap + R_wrap * math.cos(a), W_wrap - R_wrap + R_wrap * math.sin(a), math.degrees(a) - 90
        s -= s2
        if s < s3: return 0, W_wrap - R_wrap - s, 90
        s -= s3
        if s < s4:
            a = math.pi + s / R_wrap
            return R_wrap + R_wrap * math.cos(a), R_wrap + R_wrap * math.sin(a), math.degrees(a) - 90
        s -= s4
        if s < s5: return R_wrap + s, 0, 0
        s -= s5
        if s < s6:
            a = math.pi * 1.5 + s / R_wrap
            return L_wrap - R_wrap + R_wrap * math.cos(a), R_wrap + R_wrap * math.sin(a), math.degrees(a) - 90
        s -= s6
        if s < s7: return L_wrap, R_wrap + s, 90
        s -= s7
        if s < s8:
            a = s / R_wrap
            return L_wrap - R_wrap + R_wrap * math.cos(a), W_wrap - R_wrap + R_wrap * math.sin(a), math.degrees(a) - 90
        s -= s8
        if s <= total_p + 0.1: return L_wrap - R_wrap - s, W_wrap, 0
        return None

    def single_punch():
        # Форма единичного отверстия Skadis (пробивает насквозь)
        return hull()(
            translate([0, 0, sk_h / 2])(rotate([90, 0, 0])(cylinder(d=sk_w, h=20, center=True))),
            translate([0, 0, -sk_h / 2])(rotate([90, 0, 0])(cylinder(d=sk_w, h=20, center=True)))
        )

    # Генерация только тех отверстий, которые ЦЕЛИКОМ помещаются по высоте (отступ 15 сверху и снизу)
    for z in range(15, int(H_exo) - 14, sk_step):
        shift = 0 if ((z - 15) // sk_step) % 2 == 0 else sk_step / 2
        s_val = shift
        while s_val < total_p:
            pos = get_wrap_pos(s_val)
            if pos:
                x, y, a = pos
                cutters.append(translate([x, y, z])(rotate([0, 0, a])(single_punch())))
            s_val += sk_step

    return union()(*cutters) if cutters else union()