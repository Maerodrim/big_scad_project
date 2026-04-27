from solid2 import *
from project.настройки.параметры import *
from project.базовые_формы.примитивы import r_box


def hatch_outer():
    base_shape = hull()(
        translate([L - 90, -45, H_bot - 20])(r_box(70, 45, 20, 5)),
        translate([L - 90, 0, H_bot - 70])(cube([70, 0.1, 70]))
    )

    # Шарнирные "ушки" на самом баке
    knuckles = translate([L - 75, -4, H_bot + 2])(rotate([0, 90, 0])(cylinder(d=6, h=9))) + \
               translate([L - 44, -4, H_bot + 2])(rotate([0, 90, 0])(cylinder(d=6, h=9)))
    knuckle_bases = translate([L - 75, -4, H_bot])(cube([9, 4, 2])) + \
                    translate([L - 44, -4, H_bot])(cube([9, 4, 2]))

    # Сквозное отверстие для вставки оси петли (например, куска филамента 1.75/3мм)
    pin_hole = translate([L - 55, -4, H_bot + 2])(rotate([0, 90, 0])(cylinder(d=3, h=80, center=True)))

    return base_shape + knuckles + knuckle_bases - pin_hole


def hatch_inner():
    # Убрали старый вырез (cube 50x20x50), который был каналом для поплавка.
    # Теперь воронка идеально гладкая и сплошная.
    return hull()(
        translate([L - 86, -41, H_bot - 19])(r_box(62, 41, 20, 3)),
        translate([L - 86, 0, H_bot - 66])(cube([62, 0.1, 66]))
    )


def hatch_lid(open_angle=0):
    # Угол open_angle позволяет отрендерить крышку приоткрытой
    lid_body = r_box(70, 45, 4, 5) + translate([4, 4, -4])(r_box(62, 37, 4, 3))

    # Вместо сквозной дырки делаем монолитную выступающую ручку (чтобы свет не попадал внутрь)
    handle = translate([25, 2, 4])(r_box(20, 8, 4, 2))

    # Ответная центральная петля на самой крышке
    lid_knuckle = translate([35, 41, 2])(rotate([0, 90, 0])(cylinder(d=6, h=19, center=True)))
    lid_arm = translate([25.5, 37, 0])(cube([19, 4, 4]))
    pin_hole = translate([35, 41, 2])(rotate([0, 90, 0])(cylinder(d=3.5, h=80, center=True)))

    lid_assembly = lid_body + handle + lid_knuckle + lid_arm - pin_hole

    # Механика откидывания (вращение вокруг оси петель)
    hinged_lid = translate([35, 41, 2])(
        rotate([open_angle, 0, 0])(
            translate([-35, -41, -2])(lid_assembly)
        )
    )

    return color("OliveDrab")(translate([L - 90, -45, H_bot])(hinged_lid))


def water_level_indicator():
    # Автономная деталь для отдельной печати со штырьками
    tube = color("LightBlue", alpha=0.4)(
        translate([0, 0, 15])(cylinder(d=10, h=H_bot - 30))
    )

    # Соединительные штуцеры (с направляющими пинами d=5.5 под отверстия d=6)
    tube += color("DarkSlateGray")(
        # Верхний крепеж
        translate([0, 0, 20])(rotate([-90, 0, 0])(cylinder(d=10, h=6))) +
        translate([0, 6, 20])(rotate([-90, 0, 0])(cylinder(d=5.5, h=10))) +  # Пин

        # Нижний крепеж
        translate([0, 0, H_bot - 20])(rotate([-90, 0, 0])(cylinder(d=10, h=6))) +
        translate([0, 6, H_bot - 20])(rotate([-90, 0, 0])(cylinder(d=5.5, h=10)))  # Пин
    )

    # Сам поплавок
    float_obj = color("Red")(
        translate([0, 0, 22])(cylinder(d=5, h=40)) +
        translate([0, 0, 62])(sphere(d=6))
    )

    # Смещаем готовую деталь на её место в сборке башни
    return translate([30, -6, 0])(tube + float_obj)

