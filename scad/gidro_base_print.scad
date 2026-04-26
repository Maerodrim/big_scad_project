$fn = 64;

// --- ГАБАРИТЫ (в мм) ---
L = 300; W = 200; 
H_bot = 200; H_top = 100;
wall = 4; base = 5;

// Стыковка
lip_h = 10; gap = 0.4;
R_out = 15; R_in = R_out - wall;

// Труба подачи (Слева)
p_id = 14; p_od = 20;       
p_x = p_od / 2; p_y = W / 2;     

// Перелив (Центр)
drain_h = 60; drain_d = 24;

// --- МОДУЛЬ СКРУГЛЕННОГО КУБА ---
module r_box(l, w, h, r) {
    actual_r = max(r, 0.1);
    hull() {
        translate([actual_r, actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([l-actual_r, actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([actual_r, w-actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([l-actual_r, w-actual_r, 0]) cylinder(r=actual_r, h=h);
    }
}

// --- ВОРОНКА ЗАЛИВА ---
module funnel_outer(h) {
    translate([L - wall, W/2 - 25, 0])
    hull() {
        translate([0, 0, 0]) cube([0.1, 50, h]); 
        translate([20, 5, 0]) r_box(10, 40, h, 5); 
    }
}

module funnel_inner(h) {
    translate([L - wall - 1, W/2 - 20, 0])
    hull() {
        translate([0, 0, 0]) cube([0.1, 40, h]); 
        translate([17, 5, 0]) r_box(6, 30, h, 3); 
    }
}

// --- КРЫШКА И ПОПЛАВОК ВОРОНКИ ---
module funnel_lid_and_float() {
    float_x = L - wall + 15; 
    float_y = W / 2;
    
    // Крышка
    color("Orange") translate([0, 0, H_bot + 15]) { 
        difference() {
            union() {
                funnel_outer(3);
                translate([0, 0, -3]) funnel_inner(3); 
            }
            translate([float_x, float_y, -10]) cylinder(d=6, h=20);
        }
    }
    // Поплавок
    color("Red") translate([float_x, float_y, base + 30]) {
        cylinder(d=4, h=H_bot - base + 20); 
        cylinder(d=18, h=25); 
        translate([0, 0, H_bot - base + 20]) sphere(d=10); 
    }
}

// --- МОДУЛЬ КОНТЕЙНЕРА ---
module hydro_system(type) {
    H = (type == 1) ? H_bot : H_top;
    
    difference() {
        // ШАГ 1: ВСЕ ТВЕРДЫЕ ЧАСТИ
        union() {
            // 1.1 Основной корпус
            difference() {
                union() {
                    r_box(L, W, H, R_out);
                    if (type > 1) translate([wall+gap, wall+gap, -lip_h]) 
                        r_box(L-2*(wall+gap), W-2*(wall+gap), lip_h, R_in-gap);
                    if (type == 1) funnel_outer(H);
                }
                translate([wall, wall, base]) r_box(L-2*wall, W-2*wall, H+1, R_in);
                if (type == 1) translate([0, 0, base + 15]) funnel_inner(H);
            }

            // 1.2 Внутренние трубы
            translate([p_x, p_y, (type == 1) ? H/2 : 0]) {
                if (type == 1) {
                    cylinder(d=p_od, h=H/2);
                    translate([0,0,H/2]) cylinder(d=p_id-0.5, h=8);
                } else if (type == 2) {
                    cylinder(d=p_od, h=H);
                    translate([0,0,H]) cylinder(d=p_id-0.5, h=8);
                } else if (type == 3) {
                    // Высота до изгиба
                    h_t_base = H - 25; 
                    cylinder(d=p_od, h=h_t_base);
                    
                    // ЗАКРУГЛЕННЫЙ ГУСАК (используем сферы для плавных углов)
                    translate([0, 0, h_t_base]) {
                        sphere(d=p_od); // Скругление первого угла
                        rotate([0, 90, 0]) cylinder(d=p_od, h=25); // Горизонталь
                        
                        translate([25, 0, 0]) {
                            sphere(d=p_od); // Скругление второго угла
                            translate([0, 0, -15]) cylinder(d=p_od, h=15); // Отвод вниз
                        }
                    }
                }
            }

            // 1.3 Перелив
            if (type > 1) {
                translate([L/2, W/2, base]) {
                    cylinder(d=drain_d+4, h=drain_h);
                    translate([0,0,drain_h+10]) cylinder(h=8, d1=drain_d+20, d2=drain_d+5);
                    for(a=[0,120,240]) rotate([0,0,a]) 
                        translate([drain_d/2+1,0,drain_h]) cylinder(d=3, h=10);
                }
            }
        }

        // ШАГ 2: ВЫРЕЗЫ ОТВЕРСТИЙ
        
        // Канал трубы подачи
        translate([p_x, p_y, 0]) {
            if (type == 1) {
                translate([0, 0, H/2 - 0.1]) cylinder(d=p_id, h=H/2 + 20);
            } else if (type == 2) {
                translate([0, 0, -lip_h-1]) cylinder(d=p_id, h=H+lip_h+20);
            } else if (type == 3) {
                h_t_base = H - 25;
                translate([0, 0, -lip_h-1]) cylinder(d=p_id, h=h_t_base + lip_h + 1);
                
                // ВЫРЕЗ ВНУТРИ ЗАКРУГЛЕННОГО ГУСАКА
                translate([0, 0, h_t_base]) {
                    sphere(d=p_id); // Внутренняя сфера 1
                    rotate([0, 90, 0]) cylinder(d=p_id, h=25);
                    
                    translate([25, 0, 0]) {
                        sphere(d=p_id); // Внутренняя сфера 2
                        translate([0, 0, -16]) cylinder(d=p_id, h=16);
                    }
                }
            }
        }

        // Отверстие перелива 
        if (type > 1) {
            translate([L/2, W/2, -lip_h-1]) cylinder(d=drain_d, h=base+lip_h+2);
        }

        // Вырез под провод помпы
        if (type == 1) {
            translate([-1, p_y+p_od/2+2, H-15]) cube([wall+2, 10, 16]);
        }

        // Проток из воронки в бак
        if (type == 1) {
            translate([L-wall-1, W/2-15, base+20]) cube([wall+2, 30, H]);
        }
    }
}

// --- КРЫШКА-ПОДСТАВКА (12 МЕСТ) ---
module plant_lid() {
    pot_d = 40.5; 
    translate([0, 0, H_bot + H_top*2 + 25]) {
        color("OliveDrab")
        difference() {
            union() {
                r_box(L, W, 4, R_out);
                translate([wall + gap, wall + gap, -4])
                    r_box(L - 2*(wall + gap), W - 2*(wall + gap), 4, R_in - gap);
            }
            // Вырезаем ТОЛЬКО лунки под растения
            for (nx = [40, 85, 130, 175, 220, 265]) {
                for (ny = [55, 145]) translate([nx, ny, -5]) cylinder(d=pot_d, h=15);
            }
            // Вырез под трубу полностью удален
        }
    }
}

// --- СЕТЧАТЫЙ СТАКАНЧИК ---
module net_pot() {
    d_top = 40; d_bot = 30; h_p = 50;
    translate([L/2, -80, 0]) { 
        color("DimGray")
        difference() {
            union() {
                cylinder(d1=d_bot, d2=d_top, h=h_p);
                translate([0,0,h_p]) cylinder(d=46, h=3); 
            }
            translate([0,0,-1]) cylinder(d1=d_bot-3, d2=d_top-3, h=h_p+5);
            for(a=[0:30:360]) rotate([0,0,a]) translate([10,-1,5]) cube([20, 2, h_p-10]);
            for(zh=[10:10:40]) translate([0,0,zh]) difference() {
                cylinder(d=50, h=2);
                cylinder(d=d_bot-5, h=4);
            }
        }
    }
}

// --- ВИЗУАЛИЗАЦИЯ ---
color("CornflowerBlue") hydro_system(1);
funnel_lid_and_float();

translate([0, 0, H_bot + 10]) color("MediumSeaGreen") hydro_system(2);
translate([0, 0, H_bot + H_top + 20]) color("PaleGreen") hydro_system(3);

plant_lid();
net_pot();