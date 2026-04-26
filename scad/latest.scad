$fn = 64; // Устанавливаем высокое качество рендера (64 грани для скруглений)

// ==========================================
//      ОБЩИЕ ГАБАРИТЫ И ПАРАМЕТРЫ ФЕРМЫ
// ==========================================
L = 300; // Общая длина основного бака (по оси X)
W = 200; // Общая ширина основного бака (по оси Y)
H_bot = 200; // Высота нижнего бака (водохранилища)
H_top = 100; // Высота верхних ярусов с растениями
wall = 4; // Стандартная толщина всех стенок
base = 5; // Толщина монолитного дна у каждого яруса

// --- ПАРАМЕТРЫ СТЫКОВКИ ЯРУСОВ ---
lip_h = 10; // Высота нижней стыковочной юбки (которая вставляется в нижний ярус)
gap_tier = 0.4; // Зазор (допуск) для легкого соединения ярусов
R_out = 15; // Внешний радиус скругления углов бака
R_in = R_out - wall; // Внутренний радиус скругления (вычисляется математически)

// --- ПАРАМЕТРЫ ТРУБ ---
p_id = 14; // Внутренний диаметр трубы подачи воды (от насоса вверх)
p_od = 20; // Внешний диаметр трубы подачи
p_x = p_od / 2; // Центр трубы по оси X (прижата к левой стенке)
p_y = W / 2; // Центр трубы по оси Y (ровно посередине бака)
drain_h = 40; // Высота переливной трубы (определяет уровень воды в ярусе)
drain_d = 24; // Диаметр центральной переливной трубы для слива воды вниз

// --- ПАРАМЕТРЫ БАЛКОНОВ ---
pot_d = 40.5; // Диаметр отверстий под посадочные стаканчики
H_balc = 55;  // Высота ванночки балкона (должна быть выше drain_h)
gap_lid = 0.5; // Зазор для крышек балконов, чтобы они легко снимались
slope = 35; // Угол наклона лицевой крышки балкона
H_front = 5; // Высота ровной передней кромки крышки перед началом наклона

// --- ПАРАМЕТРЫ СЕТКИ SKADIS (ЭКЗОСКЕЛЕТ) ---
sk_w = 5.2; // Ширина овального отверстия Skadis (чуть больше 5мм для печати)
sk_h = 16; // Высота прямой части отверстия Skadis
sk_step = 20; // Шаг между центрами отверстий (стандарт ИКЕА)
panel_th = 5; // Толщина пластика сетки (очень жесткая рама)
offset = 6; // ВЫНОС СЕТКИ ОТ СТЕНЫ: ровно 6 мм (идеально для зацепа крючков)


// ==========================================
//      БАЗОВЫЕ МОДУЛИ ФОРМООБРАЗОВАНИЯ
// ==========================================

// Универсальная функция создания коробки со скругленными углами
module r_box(l, w, h, r) {
    actual_r = max(r, 0.1); // Защита от нулевого радиуса
    hull() { // Объединяем 4 угловых цилиндра в единый контур
        translate([actual_r, actual_r, 0]) cylinder(r=actual_r, h=h); // Левый ближний
        translate([l-actual_r, actual_r, 0]) cylinder(r=actual_r, h=h); // Правый ближний
        translate([actual_r, w-actual_r, 0]) cylinder(r=actual_r, h=h); // Левый дальний
        translate([l-actual_r, w-actual_r, 0]) cylinder(r=actual_r, h=h); // Правый дальний
    }
}


// ==========================================
//      НОВЫЙ ЛЮЧОК (ХОППЕР) И ПОПЛАВОК
// ==========================================

// Внешний контур наклонного лючка на передней стенке
module hatch_outer() {
    hull() { // Создаем плавный переход от верхней рамки к стенке бака
        translate([L - 90, -45, H_bot - 20]) r_box(70, 45, 20, 5); // Верхняя выступающая часть лючка
        translate([L - 90, 0, H_bot - 70]) cube([70, 0.1, 70]); // Нижняя часть, плавно уходящая в стенку
    }
}

// Внутренняя пустота лючка (вырезается из бака)
module hatch_inner() {
    hull() { // Создаем объемную пустоту внутри лючка
        translate([L - 86, -41, H_bot - 19]) r_box(62, 41, 20, 3); // Верхняя пустота (под крышку)
        translate([L - 86, 0, H_bot - 66]) cube([62, 0.1, 66]); // Нижняя сужающаяся пустота
    }
    translate([L - 80, -10, H_bot - 60]) cube([50, 20, 50]); // Прорубаем дыру насквозь в основной бак
}

// Крышка лючка и сам поплавок
module hatch_lid_and_float() {
    float_x = L - 55; // Центр поплавка по X (внутри лючка)
    float_y = -20; // Центр поплавка по Y (вынесен вперед)

    color("OliveDrab") translate([L - 90, -45, H_bot]) { // Отрисовка крышки лючка
        difference() { // Вырезаем дырочку в крышке
            union() { // Складываем саму крышку и внутренний паз
                r_box(70, 45, 4, 5); // Верхняя плоская крышка
                translate([4, 4, -4]) r_box(62, 37, 4, 3); // Внутренняя направляющая юбка
            }
            translate([35, 25, -10]) cylinder(d=6, h=20); // Сверлим отверстие под шток поплавка
        }
    }

    color("Red") translate([float_x, float_y, base + 20]) { // Отрисовка красного поплавка
        cylinder(d=4, h=H_bot - base + 20); // Длинный шток-индикатор
        cylinder(d=12, h=30); // Само тело поплавка (бочонок с воздухом)
        translate([0, 0, H_bot - base + 20]) sphere(d=8); // Шарик на верхушке штока для красоты
    }
}


// ==========================================
//      ДИНАМИЧЕСКИЕ БАЛКОНЫ И КРЫШКИ
// ==========================================

// Внешний контур ванночки балкона
module balcony_outer(w, d, h, r_xy, r_z) {
    hull() { // Сливаем верхний плоский контур со скругленным сферическим дном
        translate([-w/2 + r_xy, -d + r_xy, h]) cylinder(r=r_xy, h=0.1); // Левый край верха
        translate([w/2 - r_xy, -d + r_xy, h]) cylinder(r=r_xy, h=0.1); // Правый край верха
        translate([-w/2, wall, h]) cube([w, 0.1, 0.1]); // Задняя кромка вплавляется в бак
        translate([-w/2 + r_xy, -d + r_xy, r_z]) sphere(r=r_z); // Левое скругление дна
        translate([w/2 - r_xy, -d + r_xy, r_z]) sphere(r=r_z); // Правое скругление дна
        translate([-w/2, wall, 0]) cube([w, 0.1, r_z]); // Заднее дно вплавляется в бак
    }
}

// Внутренняя пустота балкона (где стоит вода)
module balcony_inner(w, d, h, r_xy) {
    hull() { // Формируем вырез
        translate([-w/2 + r_xy, -d + r_xy, 0]) cylinder(r=r_xy, h=h); // Скругление пустоты
        translate([w/2 - r_xy, -d + r_xy, 0]) cylinder(r=r_xy, h=h); // Скругление пустоты
        translate([-w/2, wall + 2, 0]) cube([w, 0.1, h]); // Прорезаем стенку основного бака насквозь
    }
}

// Наклонная крышка балкона (колпак)
module u_shape_lid(w_b, d_b, holes) {
    w_in = w_b - 2*(wall + gap_lid); // Ширина внутреннего паза
    d_in = d_b - (wall + gap_lid); // Глубина внутреннего паза
    r_in_lip = max(0.1, R_out - wall - gap_lid); // Скругление внутреннего паза

    module prof_outer() { hull() { // 2D контур внешнего габарита крышки
        translate([-w_b/2, 0]) square([w_b, 0.1]);
        translate([-w_b/2 + R_out, -d_b + R_out]) circle(r=R_out);
        translate([w_b/2 - R_out, -d_b + R_out]) circle(r=R_out);
    }}
    module prof_insert() { translate([0, -gap_lid]) hull() { // 2D контур юбки (вставляется в балкон)
        translate([-w_in/2, 0]) square([w_in, 0.1]);
        translate([-w_in/2 + r_in_lip, -d_in + r_in_lip]) circle(r=r_in_lip);
        translate([w_in/2 - r_in_lip, -d_in + r_in_lip]) circle(r=r_in_lip);
    }}
    module prof_cavity() { // 2D контур выреза пустоты внутри крышки
        w_cav = w_in - 2*wall; d_cav = d_in - wall; r_cav = max(0.1, r_in_lip - wall);
        translate([0, -gap_lid - wall]) hull() {
            translate([-w_cav/2, 10]) square([w_cav, 0.1]); // Вытягиваем назад, чтобы снести заднюю стенку крышки
            translate([-w_cav/2 + r_cav, -d_cav + r_cav]) circle(r=r_cav);
            translate([w_cav/2 - r_cav, -d_cav + r_cav]) circle(r=r_cav);
        }
    }
    color("OliveDrab") difference() { // Собираем крышку и отнимаем всё лишнее
        union() {
            translate([0, 0, -8]) linear_extrude(8) prof_insert(); // Опускаем юбку вниз
            difference() { // Срезаем крышку под нужным углом
                linear_extrude(100) prof_outer(); // Вытягиваем столб
                translate([0, -d_b, H_front]) rotate([slope, 0, 0]) translate([-w_b, 0, 0]) cube([w_b*2, 200, 200]); // Нож
            }
        }
        difference() { // Делаем крышку полой внутри
            translate([0, 0, -9]) linear_extrude(120) prof_cavity(); // Вырезаем пустоту
            translate([0, -d_b, H_front - (wall/cos(slope))]) rotate([slope, 0, 0]) translate([-w_b, -50, 0]) cube([w_b*2, 200, 200]); // Защищаем потолок крышки
        }
        translate([0, -d_b, H_front]) rotate([slope, 0, 0]) for(nx = holes) { // Сверлим лунки под стаканчики
            translate([nx, 25, -50]) cylinder(d=pot_d, h=100);
        }
    }
}


// ==========================================
//      ВОССТАНОВЛЕННЫЕ 10 СТИЛЕЙ БАЛКОНОВ
// ==========================================

// Вспомогательные функции расстановки в нужные координаты на баке
module place_outer(x, y, rot, len) { translate([x, y, base]) rotate([0, 0, rot]) balcony_outer(len, 45, H_balc - base, R_out, 15); }
module place_inner(x, y, rot, len) { translate([x, y, base + wall]) rotate([0, 0, rot]) balcony_inner(len - 2*wall, 45 - wall, H_balc - base - wall + 0.1, R_in); }
module place_lid(x, y, rot, len, holes, z) { translate([x, y, z]) rotate([0, 0, rot]) u_shape_lid(len, 45, holes); }
module exo_cutout(x, y, rot, len) { translate([x, y, -10]) rotate([0, 0, rot]) translate([-len/2 - 10, -100, 0]) cube([len + 20, 100, 300]); }

// ВСЕ 10 вариантов внешних корпусов
module layout_outer(style) {
    if (style == 1) { place_outer(160, 0, 0, 180); } // 1: Центр перед
    else if (style == 2) { place_outer(160, W, 180, 180); } // 2: Центр зад
    else if (style == 3) { place_outer(100, 0, 0, 120); place_outer(220, W, 180, 120); } // 3: Шахматка А
    else if (style == 4) { place_outer(220, 0, 0, 120); place_outer(100, W, 180, 120); } // 4: Шахматка Б
    else if (style == 5) { place_outer(160, 0, 0, 240); } // 5: Широкий перед
    else if (style == 6) { place_outer(160, W, 180, 240); } // 6: Широкий зад
    else if (style == 7) { place_outer(70, 0, 0, 60); place_outer(250, 0, 0, 60); place_outer(70, W, 180, 60); place_outer(250, W, 180, 60); } // 7: Четыре угла
    else if (style == 8) { place_outer(L, W/2, 90, 180); } // 8: Правый бок
    else if (style == 9) { place_outer(160, 0, 0, 180); place_outer(160, W, 180, 180); place_outer(L, W/2, 90, 120); } // 9: П-образный
    else if (style == 10) { place_outer(160, 0, 0, 240); place_outer(160, W, 180, 240); place_outer(L, W/2, 90, 60); } // 10: Фулл-Хаус
}

// ВСЕ 10 вариантов внутренних вырезов
module layout_inner(style) {
    if (style == 1) { place_inner(160, 0, 0, 180); }
    else if (style == 2) { place_inner(160, W, 180, 180); }
    else if (style == 3) { place_inner(100, 0, 0, 120); place_inner(220, W, 180, 120); }
    else if (style == 4) { place_inner(220, 0, 0, 120); place_inner(100, W, 180, 120); }
    else if (style == 5) { place_inner(160, 0, 0, 240); }
    else if (style == 6) { place_inner(160, W, 180, 240); }
    else if (style == 7) { place_inner(70, 0, 0, 60); place_inner(250, 0, 0, 60); place_inner(70, W, 180, 60); place_inner(250, W, 180, 60); }
    else if (style == 8) { place_inner(L, W/2, 90, 180); }
    else if (style == 9) { place_inner(160, 0, 0, 180); place_inner(160, W, 180, 180); place_inner(L, W/2, 90, 120); }
    else if (style == 10) { place_inner(160, 0, 0, 240); place_inner(160, W, 180, 240); place_inner(L, W/2, 90, 60); }
}

// ВСЕ 10 вариантов установки крышек
module layout_lids(style, z) {
    if (style == 1) { place_lid(160, 0, 0, 180, [-60, 0, 60], z); }
    else if (style == 2) { place_lid(160, W, 180, 180, [-60, 0, 60], z); }
    else if (style == 3) { place_lid(100, 0, 0, 120, [-30, 30], z); place_lid(220, W, 180, 120, [-30, 30], z); }
    else if (style == 4) { place_lid(220, 0, 0, 120, [-30, 30], z); place_lid(100, W, 180, 120, [-30, 30], z); }
    else if (style == 5) { place_lid(160, 0, 0, 240, [-90, -30, 30, 90], z); }
    else if (style == 6) { place_lid(160, W, 180, 240, [-90, -30, 30, 90], z); }
    else if (style == 7) { place_lid(70, 0, 0, 60, [0], z); place_lid(250, 0, 0, 60, [0], z); place_lid(70, W, 180, 60, [0], z); place_lid(250, W, 180, 60, [0], z); }
    else if (style == 8) { place_lid(L, W/2, 90, 180, [-60, 0, 60], z); }
    else if (style == 9) { place_lid(160, 0, 0, 180, [-60, 0, 60], z); place_lid(160, W, 180, 180, [-60, 0, 60], z); place_lid(L, W/2, 90, 120, [-30, 30], z); }
    else if (style == 10) { place_lid(160, 0, 0, 240, [-90, -30, 30, 90], z); place_lid(160, W, 180, 240, [-90, -30, 30, 90], z); place_lid(L, W/2, 90, 60, [0], z); }
}

// ВСЕ 10 вариантов вырезов в броне (чтобы сетка не мешала балконам)
module layout_exo_cutouts(style) {
    if (style == 1) { exo_cutout(160, 0, 0, 180); }
    else if (style == 2) { exo_cutout(160, W, 180, 180); }
    else if (style == 3) { exo_cutout(100, 0, 0, 120); exo_cutout(220, W, 180, 120); }
    else if (style == 4) { exo_cutout(220, 0, 0, 120); exo_cutout(100, W, 180, 120); }
    else if (style == 5) { exo_cutout(160, 0, 0, 240); }
    else if (style == 6) { exo_cutout(160, W, 180, 240); }
    else if (style == 7) { exo_cutout(70, 0, 0, 60); exo_cutout(250, 0, 0, 60); exo_cutout(70, W, 180, 60); exo_cutout(250, W, 180, 60); }
    else if (style == 8) { exo_cutout(L, W/2, 90, 180); }
    else if (style == 9) { exo_cutout(160, 0, 0, 180); exo_cutout(160, W, 180, 180); exo_cutout(L, W/2, 90, 120); }
    else if (style == 10) { exo_cutout(160, 0, 0, 240); exo_cutout(160, W, 180, 240); exo_cutout(L, W/2, 90, 60); }
}


// ==========================================
//      ГЛАВНЫЙ БЛОК БАШНИ (ГИДРОПОНИКА)
// ==========================================

// Основной модуль сборки яруса (type 1 - бак, 2 - балконы, 3 - крыша)
module hydro_system(type, style=1) {
    H = (type == 1) ? H_bot : H_top; // Выбор высоты в зависимости от типа
    h_t_base = H - 25; // Высота загиба верхней трубки

    difference() { // Отнимаем все пустоты
        union() { // Складываем все твердые тела
            difference() { // Вырезаем полость в баке
                union() {
                    r_box(L, W, H, R_out); // Главный корпус
                    if (type > 1) translate([wall+gap_tier, wall+gap_tier, -lip_h]) // Если ярус средний или верхний...
                        r_box(L-2*(wall+gap_tier), W-2*(wall+gap_tier), lip_h, R_in-gap_tier); // ...добавляем направляющую юбку
                    if (type == 1) hatch_outer(); // Если ярус нижний, добавляем наклонный лючок
                }
                translate([wall, wall, base]) r_box(L-2*wall, W-2*wall, H+1, R_in); // Вырезаем внутреннюю ванну
                if (type == 1) hatch_inner(); // Вырезаем пустоту внутри лючка
            }

            if (type == 2) layout_outer(style); // Наращиваем балконы (для 2го яруса)

            translate([p_x, p_y, (type == 1) ? H/2 : 0]) { // Труба подачи воды (левая)
                if (type == 1) { // В нижнем баке труба идет с середины (чтобы влез насос)
                    cylinder(d=p_od, h=H/2);
                    translate([0,0,H/2]) cylinder(d=p_id-0.5, h=8); // Стыковочный шип
                } else if (type == 2) { // В среднем ярусе труба идет насквозь
                    cylinder(d=p_od, h=H);
                    translate([0,0,H]) cylinder(d=p_id-0.5, h=8); // Стыковочный шип
                } else if (type == 3) { // В верхнем ярусе труба образует Г-образный гусак
                    cylinder(d=p_od, h=h_t_base); // Вертикаль
                    translate([0, 0, h_t_base]) {
                        sphere(d=p_od); // Скругленный угол
                        rotate([0, 90, 0]) cylinder(d=p_od, h=25); // Горизонталь
                        translate([25, 0, 0]) {
                            sphere(d=p_od); // Скругленный угол
                            translate([0, 0, -15]) cylinder(d=p_od, h=15); // Сопло вниз
                        }
                    }
                }
            }

            if (type > 1) { // Центральный перелив (для слива воды вниз)
                translate([L/2, W/2, base]) { // Центр бака
                    cylinder(d=drain_d+4, h=drain_h); // Трубка перелива
                    translate([0,0,drain_h+10]) cylinder(h=8, d1=drain_d+20, d2=drain_d+5); // Воронка перелива
                    for(a=[0,120,240]) rotate([0,0,a]) // Опоры воронки (3 шт)
                        translate([drain_d/2+1,0,drain_h]) cylinder(d=3, h=10);
                }
            }
        }

        if (type == 2) layout_inner(style); // Прорубаем дыры в баке, соединяя его с балконами

        translate([p_x, p_y, 0]) { // Высверливаем пустоты внутри трубы подачи
            if (type == 1) {
                translate([0, 0, H/2 - 0.1]) cylinder(d=p_id, h=H/2 + 20); // Сверло снизу
            } else if (type == 2) {
                translate([0, 0, -lip_h-1]) cylinder(d=p_id, h=H+lip_h+20); // Сверло насквозь
            } else if (type == 3) {
                translate([0, 0, -lip_h-1]) cylinder(d=p_id, h=h_t_base + lip_h + 1); // Сверло вертикали
                translate([0, 0, h_t_base]) {
                    sphere(d=p_id);
                    rotate([0, 90, 0]) cylinder(d=p_id, h=25); // Сверло горизонтали
                    translate([25, 0, 0]) {
                        sphere(d=p_id);
                        translate([0, 0, -16]) cylinder(d=p_id, h=16); // Сверло сопла
                    }
                }
            }
        }

        if (type > 1) { // Сверлим дыру в дне для перелива
            translate([L/2, W/2, -lip_h-1]) cylinder(d=drain_d, h=base+lip_h+drain_h+2);
        }

        if (type == 1) { // Вырез под провод насоса в нижнем баке
            translate([-1, p_y+p_od/2+2, H-15]) cube([wall+2, 10, 16]);
        }
    }
}


// ==========================================
//      УНИВЕРСАЛЬНЫЙ ЭКЗОСКЕЛЕТ SKADIS
// ==========================================

// Отрисовка одной ячейки (ромба) сетки
module skadis_mesh_cell() {
    difference() { // Срезаем овал из ромба
        hull() { // Силовой ромб
            translate([0, 15]) circle(r=2); translate([0, -15]) circle(r=2);
            translate([15, 0]) circle(r=2); translate([-15, 0]) circle(r=2);
        }
        hull() { // Отверстие Skadis
            translate([0, sk_h/2]) circle(d=sk_w); translate([0, -sk_h/2]) circle(d=sk_w);
        }
    }
}

// Генерация большого листа сетки
module skadis_mesh_panel(w, h) {
    cols = floor(w / sk_step) + 1; rows = floor(h / sk_step) + 1; // Рассчитываем количество дырок
    intersection() { // Обрезаем края
        cube([w, h, panel_th + 2]); // Граница обрезки
        linear_extrude(panel_th) for (r = [0 : rows]) { // Выдавливаем в 3D
            shift = (r % 2 == 0) ? 0 : sk_step / 2; // Шахматный порядок
            for (c = [0 : cols]) translate([c * sk_step + shift, r * sk_step, 0]) skadis_mesh_cell();
        }
    }
}

// Главный модуль генерации "брони" для каждого яруса
module exoskeleton_wrap(type, style=1) {
    H_exo = (type == 1) ? H_bot : H_top; // Подгоняем высоту брони
    L_wrap = L + (offset + panel_th)*2; // Длина с учетом выноса 6мм
    W_wrap = W + (offset + panel_th)*2; // Ширина с учетом выноса 6мм
    R_wrap = R_out + offset + panel_th; // Скругление брони

    off_x = offset + panel_th; off_y = offset + panel_th; // Координаты смещения для центровки

    difference() { // Отнимаем окна под балконы и лючки
        union() { // Собираем раму, сетку и штыри
            difference() { // Формируем каркас рамы
                r_box(L_wrap, W_wrap, H_exo, R_wrap); // Внешний куб
                translate([panel_th, panel_th, -1])
                    r_box(L_wrap - 2*panel_th, W_wrap - 2*panel_th, H_exo + 2, R_wrap - panel_th); // Внутренняя пустота

                // Прорубаем 4 окна в раме, чтобы вставить сетку
                translate([R_wrap + 2, -10, 7]) cube([L_wrap - 2*R_wrap - 4, 100, H_exo - 14]);
                translate([R_wrap + 2, W_wrap - 90, 7]) cube([L_wrap - 2*R_wrap - 4, 100, H_exo - 14]);
                translate([-10, R_wrap + 2, 7]) cube([100, W_wrap - 2*R_wrap - 4, H_exo - 14]);
                translate([L_wrap - 90, R_wrap + 2, 7]) cube([100, W_wrap - 2*R_wrap - 4, H_exo - 14]);
            }

            // Вставляем листы ячеистой сетки в окна
            translate([R_wrap, 0, 5]) rotate([90,0,0]) skadis_mesh_panel(L_wrap - 2*R_wrap, H_exo - 10);
            translate([L_wrap - R_wrap, W_wrap, 5]) rotate([90,0,180]) skadis_mesh_panel(L_wrap - 2*R_wrap, H_exo - 10);
            translate([0, W_wrap - R_wrap, 5]) rotate([90,0,-90]) skadis_mesh_panel(W_wrap - 2*R_wrap, H_exo - 10);
            translate([L_wrap, R_wrap, 5]) rotate([90,0,90]) skadis_mesh_panel(W_wrap - 2*R_wrap, H_exo - 10);

            // Конусные штифты (опоры), пробивающие сетку и стенку бака для жесткости
            z_pins = (type == 1) ? [20, 90, 180] : [20, 80]; // Разное количество опор для разных ярусов
            for (ix = [50, 150, 250], iz = z_pins) translate([off_x + ix, off_y + 1, iz]) rotate([90,0,0]) cylinder(d1=10, d2=6, h=offset+2);
            for (ix = [50, 150, 250], iz = z_pins) translate([off_x + ix, off_y + W - 1, iz]) rotate([-90,0,0]) cylinder(d1=10, d2=6, h=offset+2);
            for (iy = [50, 150], iz = z_pins) translate([off_x + 1, off_y + iy, iz]) rotate([0,-90,0]) cylinder(d1=10, d2=6, h=offset+2);
            for (iy = [30, 170], iz = z_pins) translate([off_x + L - 1, off_y + iy, iz]) rotate([0,90,0]) cylinder(d1=10, d2=6, h=offset+2);
        }

        // --- ДИНАМИЧЕСКИЕ ВЫРЕЗЫ В БРОНЕ ---

        if (type == 1) {
            // Огромный вырез на лицевой части экзоскелета для доступа к лючку
            // Удаляем кусок 120х60 мм прямо напротив хоппера!
            translate([L_wrap - 130, -10, H_bot - 100]) cube([120, offset + panel_th + 20, 110]);
        }

        if (type == 2) {
            // Вырезаем куски сетки там, где у нас растут балконы (зависит от стиля)
            translate([off_x, off_y, 0]) layout_exo_cutouts(style);
        }
    }
}


// ==========================================
//      ФИНАЛЬНАЯ СБОРКА И ВИЗУАЛИЗАЦИЯ
// ==========================================

// Выберите стиль (от 1 до 10) для балконов на среднем ярусе
active_style = 3;

// --- ЯРУС 1 (Нижний бак с новым лючком) ---
union() {
    color("CornflowerBlue") hydro_system(1); // Базовый бак
    translate([-(offset+panel_th), -(offset+panel_th), 0]) color("DarkSlateGray") exoskeleton_wrap(1); // Броня бака
}
hatch_lid_and_float(); // Устанавливаем крышечку и поплавок в лючок!

// --- ЯРУС 2 (Средний блок) ---
translate([0, 0, H_bot + 10]) { // +10мм для эффекта взрыв-схемы
    union() {
        color("MediumSeaGreen") hydro_system(2, active_style); // Бак с балконами
        translate([-(offset+panel_th), -(offset+panel_th), 0]) color("DarkSlateGray") exoskeleton_wrap(2, active_style); // Броня с вырезами под балконы
    }
    layout_lids(active_style, H_balc + 40); // Крышки на балконы
}

// --- ЯРУС 3 (Верхний блок) ---
translate([0, 0, H_bot + H_top + 20]) { // +20мм для взрыв-схемы
    union() {
        color("PaleGreen") hydro_system(3); // Бак с Гусаком
        translate([-(offset+panel_th), -(offset+panel_th), 0]) color("DarkSlateGray") exoskeleton_wrap(3); // Сплошная броня
    }

    // Крышка-поддон (самый верхний элемент башни)
    translate([0, 0, H_top + 10]) {
        color("OliveDrab") difference() {
            union() { r_box(L, W, 4, R_out); translate([wall+gap, wall+gap, -4]) r_box(L-2*(wall+gap), W-2*(wall+gap), 4, R_in-gap); }
            for (nx=[40, 85, 130, 175, 220, 265], ny=[55, 145]) translate([nx, ny, -5]) cylinder(d=pot_d, h=15); // Прорубаем 12 лунок
        }
    }
}