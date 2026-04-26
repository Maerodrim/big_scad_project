$fn = 64;

// --- ГАБАРИТЫ (в мм) ---
L = 300; W = 200; 
H_bot = 200; H_top = 100;
wall = 8; base = 10;

// Стыковка ящиков
lip_h = 12; gap = 0.5;
R_out = 20; R_in = R_out - wall;

// --- ТРУБА ПОДАЧИ (Слева) ---
p_id = 16;       // Внутренний диаметр основной трубы
p_od = 22;       // Внешний диаметр (22 мм)
// Центрируем так, чтобы радиус трубы (11) совпадал с краем (x=0). Не выступает!
p_x = p_od / 2;  
p_y = W / 2;     // Посередине левой стенки

// --- ПЕРЕЛИВ (Центр) ---
drain_h = 60;
drain_d = 25;
cap_gap = 10;    // Зазор до крышки
cap_h = 10;      // Толщина крышки

// --- ВСПОМОГАТЕЛЬНЫЙ МОДУЛЬ (Скругленный куб) ---
module r_box(l, w, h, r) {
    actual_r = max(r, 0.1);
    hull() {
        translate([actual_r, actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([l-actual_r, actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([actual_r, w-actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([l-actual_r, w-actual_r, 0]) cylinder(r=actual_r, h=h);
    }
}

// --- МОДУЛЬ КОНТЕЙНЕРА ---
module hydro_system(type) {
    H = (type == 1) ? H_bot : H_top;

    difference() {
        union() {
            // 1. ОСНОВНОЙ КОРПУС И ВОРОНКА
            difference() {
                union() {
                    r_box(L, W, H, R_out);
                    // Юбка для стыковки ящиков (снизу)
                    if (type > 1) {
                        translate([wall+gap, wall+gap, -lip_h])
                            r_box(L-2*(wall+gap), W-2*(wall+gap), lip_h, R_in-gap);
                    }
                    
                    // Воронка для долива (только в баке 1, справа)
                    if (type == 1) {
                        translate([L - wall, W/2 - 30, 0])
                            hull() {
                                translate([0, 0, 0]) cube([1, 60, H]); // Прилегает к стенке
                                translate([30, 10, 0]) r_box(10, 40, H, 5); // Выступает
                            }
                    }
                }
                
                // Внутренняя полость контейнера (дно остается целым)
                translate([wall, wall, base]) 
                    r_box(L-2*wall, W-2*wall, H+1, R_in);
                
                // Внутренняя полость воронки
                if (type == 1) {
                    translate([L - wall - 5, W/2 - 25, base + 20])
                        hull() {
                            translate([0, 0, 0]) cube([1, 50, H]);
                            translate([30, 10, 0]) r_box(6, 30, H, 3);
                        }
                }
            }

            // 2. ТРУБА ПОДАЧИ (Интегрирована в левую стенку)
            translate([p_x, p_y, (type == 1) ? H/2 : 0]) {
                // Основное тело трубы
                cylinder(d=p_od, h = (type == 1) ? H/2 : H);
                
                // Шип (паз-в-паз) для стыковки со следующим ярусом
                translate([0, 0, (type == 1) ? H/2 : H]) 
                    cylinder(d=p_id - 0.5, h=10);
            }

            // 3. ЦЕНТРАЛЬНЫЙ ПЕРЕЛИВ С КОНУСОМ (Только лотки 2 и 3)
            if (type > 1) {
                translate([L/2, W/2, base]) {
                    // Труба слива
                    difference() {
                        cylinder(d=drain_d + 6, h=drain_h);
                        translate([0,0,-1]) cylinder(d=drain_d, h=drain_h+2);
                    }
                    // Скругление верха
                    rotate_extrude() translate([drain_d/2 + 3, drain_h, 0]) circle(r=3);

                    // Ножки для крышки
                    for(a=[0, 120, 240]) rotate([0,0,a])
                        translate([drain_d/2 + 2, 0, drain_h]) 
                            cylinder(d=4, h=cap_gap);

                    // Крышка (расплющенный конус)
                    translate([0, 0, drain_h + cap_gap])
                        cylinder(h=cap_h, d1=drain_d + 25, d2=drain_d + 10);
                }
            }
        }

        // --- СКВОЗНЫЕ ВЫРЕЗЫ ---
        
        // Канал внутри трубы подачи
        if (type == 1) {
            // В нижнем баке дырка не пробивает дно, начинается с половины!
            translate([p_x, p_y, H/2 - 0.1]) 
                cylinder(d=p_id, h=H/2 + 0.2);
            // Отверстие внутри шипа
            translate([p_x, p_y, H - 0.1]) 
                cylinder(d=p_id - 4, h=11);
        } else {
            // В верхних ярусах дырка идет сквозь дно и юбку, чтобы принять шип снизу
            translate([p_x, p_y, -lip_h - 1]) 
                cylinder(d=p_id, h=H + lip_h + 1);
            // Отверстие внутри шипа
            translate([p_x, p_y, H - 0.1]) 
                cylinder(d=p_id - 4, h=11);
        }

        // Отверстие под перелив в дне (ТОЛЬКО для верхних ярусов)
        if (type > 1) {
            translate([L/2, W/2, -lip_h-1]) 
                cylinder(d=drain_d, h=base + lip_h + 2);
        }

        // --- ОТВЕРСТИЕ ДЛЯ ПРОВОДА ПОМПЫ ---
        // Делаем только в нижнем баке, рядом с трубой (в левой стенке)
        if (type == 1) {
            // p_y + p_od/2 - это край трубы. Отступаем 5 мм и режем.
            translate([-1, p_y + p_od/2 + 5, H - 15])
                cube([wall + 5, 10, 20]);
        }
        
        // Отверстие в стенке для протока воды из воронки в бак
        if (type == 1) {
            translate([L - wall - 1, W/2 - 20, base + 20])
                cube([wall + 2, 40, H]);
        }
    }
}

// --- ВИЗУАЛИЗАЦИЯ ---
color("CornflowerBlue") hydro_system(1);

translate([0, 0, H_bot + 40]) 
color("MediumSeaGreen") hydro_system(2);

translate([0, 0, H_bot + H_top + 80]) 
color("PaleGreen") hydro_system(3);