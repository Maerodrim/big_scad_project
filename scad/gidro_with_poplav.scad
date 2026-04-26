$fn = 64;

// --- НОВЫЕ ПАРАМЕТРЫ ТОЛЩИНЫ (в мм) ---
L = 300; W = 200; 
H_bot = 200; H_top = 100;
wall = 4;        // Тонкая, но герметичная стенка
base = 5;        // Оптимальное дно

// Стыковка ящиков
lip_h = 10; gap = 0.4;
R_out = 15; R_in = R_out - wall;

// --- ТРУБА ПОДАЧИ (Слева) ---
p_id = 16; p_od = 20;       
p_x = p_od / 2; p_y = W / 2;     

// --- ПЕРЕЛИВ (Центр) ---
drain_h = 60; drain_d = 25;
cap_gap = 10; cap_h = 8;      

// --- ШАБЛОНЫ ВОРОНКИ ---
// Координаты смещены, чтобы поплавок не бил в стенку
f_offset_x = L - wall;
f_w = 50; // Ширина воронки

module funnel_outer(h) {
    translate([f_offset_x, W/2 - f_w/2, 0])
        hull() {
            translate([0, 0, 0]) cube([0.1, f_w, h]); 
            translate([25, 5, 0]) r_box(10, f_w-10, h, 5); 
        }
}

module funnel_inner(h) {
    translate([f_offset_x - 2, W/2 - (f_w-10)/2, 0])
        hull() {
            translate([0, 0, 0]) cube([0.1, f_w-10, h]);
            translate([25, 5, 0]) r_box(6, f_w-20, h, 3);
        }
}

// --- ВСПОМОГАТЕЛЬНЫЙ МОДУЛЬ ---
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
            // 1. КОРПУС И ВОРОНКА
            difference() {
                union() {
                    r_box(L, W, H, R_out);
                    if (type > 1) {
                        translate([wall+gap, wall+gap, -lip_h])
                            r_box(L-2*(wall+gap), W-2*(wall+gap), lip_h, R_in-gap);
                    }
                    if (type == 1) funnel_outer(H);
                }
                translate([wall, wall, base]) r_box(L-2*wall, W-2*wall, H+1, R_in);
                if (type == 1) translate([0, 0, base + 15]) funnel_inner(H);
            }

            // 2. ТРУБА ПОДАЧИ 
            translate([p_x, p_y, (type == 1) ? H/2 : 0]) {
                cylinder(d=p_od, h = (type == 1) ? H/2 : H);
                translate([0, 0, (type == 1) ? H/2 : H]) cylinder(d=p_id - 0.5, h=8);
            }

            // 3. ПЕРЕЛИВ С КОНУСОМ
            if (type > 1) {
                translate([L/2, W/2, base]) {
                    difference() {
                        cylinder(d=drain_d + 4, h=drain_h);
                        translate([0,0,-1]) cylinder(d=drain_d, h=drain_h+2);
                    }
                    rotate_extrude() translate([drain_d/2 + 2, drain_h, 0]) circle(r=2);
                    for(a=[0, 120, 240]) rotate([0,0,a])
                        translate([drain_d/2 + 1, 0, drain_h]) cylinder(d=3, h=cap_gap);
                    translate([0, 0, drain_h + cap_gap])
                        cylinder(h=cap_h, d1=drain_d + 20, d2=drain_d + 5);
                }
            }
        }

        // --- ВЫРЕЗЫ ---
        if (type == 1) {
            translate([p_x, p_y, H/2 - 0.1]) cylinder(d=p_id, h=H/2 + 0.2);
            translate([p_x, p_y, H - 0.1]) cylinder(d=p_id - 4, h=9);
        } else {
            translate([p_x, p_y, -lip_h - 1]) cylinder(d=p_id, h=H + lip_h + 1);
            translate([p_x, p_y, H - 0.1]) cylinder(d=p_id - 4, h=9);
        }

        if (type > 1) {
            translate([L/2, W/2, -lip_h-1]) cylinder(d=drain_d, h=base + lip_h + 2);
        }

        if (type == 1) { // Провод помпы
            translate([-1, p_y + p_od/2 + 4, H - 12]) cube([wall + 2, 8, 15]);
            // Проток из воронки
            translate([L - wall - 1, W/2 - 15, base + 15]) cube([wall + 2, 30, H]);
        }
    }
}

// --- КРЫШКА И ПОПЛАВОК ---
module funnel_lid_and_float() {
    // Точка центра поплавка смещена наружу от стенки
    float_x = f_offset_x + 18;
    float_y = W / 2;
    
    // 1. Крышка воронки
    color("Orange")
    translate([0, 0, H_bot + 10]) { 
        difference() {
            union() {
                funnel_outer(3);
                translate([0, 0, -3]) funnel_inner(3); 
            }
            translate([float_x, float_y, -10]) cylinder(d=6, h=20);
        }
    }

    // 2. Поплавок
    color("Red")
    translate([float_x, float_y, base + 30]) {
        cylinder(d=4, h=H_bot - base + 20); // Стержень
        cylinder(d=18, h=25); // Буй (уменьшен под новую воронку)
        translate([0, 0, H_bot - base + 20]) sphere(d=10); // Шарик
    }
}

// --- ВИЗУАЛИЗАЦИЯ ---
color("CornflowerBlue") hydro_system(1);
funnel_lid_and_float();

translate([0, 0, H_bot + 40]) 
color("MediumSeaGreen") hydro_system(2);

translate([0, 0, H_bot + H_top + 70]) 
color("PaleGreen") hydro_system(3);

// --- КРЫШКА-ПОДСТАВКА ДЛЯ РАСТЕНИЙ ---
module plant_lid() {
    pot_d = 50; // Стандартный диаметр сетчатого горшочка
    
    // Поднимаем крышку над всей сборкой для визуализации
    translate([0, 0, H_bot + H_top*2 + 60]) 
    color("OliveDrab")
    difference() {
        union() {
            // Основная верхняя плоскость (толщина 4 мм)
            r_box(L, W, 4, R_out);
            
            // Внутренняя юбка для фиксации (чтобы крышка не скользила)
            translate([wall + gap, wall + gap, -4])
                r_box(L - 2*(wall + gap), W - 2*(wall + gap), 4, R_in - gap);
        }
        
        // 1. Отверстия для растений (Сетка 3 колонки х 2 ряда)
        // Рассчитаны так, чтобы не задеть центральный перелив
        for (nx = [70, 150, 230]) {
            for (ny = [50, 150]) {
                translate([nx, ny, -5])
                    cylinder(d=pot_d, h=15);
            }
        }
        
        // 2. Вырез под трубу подачи воды (слева)
        // Делаем вырез чуть больше трубы для свободного зазора
        translate([p_x, p_y, -5])
            cylinder(d=p_od + 2, h=15);
    }
}

// --- ВЫЗОВ МОДУЛЯ ---
plant_lid();