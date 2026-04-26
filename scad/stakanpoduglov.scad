$fn = 64;

// --- ОБЩИЕ ГАБАРИТЫ И ПАРАМЕТРЫ ФЕРМЫ ---
L = 300; W = 200; H = 100;
wall = 4; base = 5;
lip_h = 10; gap_tier = 0.4;
R_out = 15; R_in = R_out - wall;

// Трубы
p_id = 14; p_od = 20;       
p_x = p_od / 2; p_y = W / 2;     
drain_h = 40; drain_d = 24;

pot_d = 40.5; // Диаметр стаканчика
H_balc = 55;  // Высота ванночки балкона 

// --- ПАРАМЕТРЫ КРЫШЕК ---
gap_lid = 0.5;    // Зазор
slope = 35;       // Наклон
H_front = 5;      // Толщина кромки


// ==========================================
//           МОДУЛИ ФОРМООБРАЗОВАНИЯ
// ==========================================

module r_box(l, w, h, r) {
    actual_r = max(r, 0.1);
    hull() {
        translate([actual_r, actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([l-actual_r, actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([actual_r, w-actual_r, 0]) cylinder(r=actual_r, h=h);
        translate([l-actual_r, w-actual_r, 0]) cylinder(r=actual_r, h=h);
    }
}

// 1. Внешний профиль балкона (Стенки)
module balcony_outer(w, d, h, r_xy, r_z) {
    hull() {
        translate([-w/2 + r_xy, -d + r_xy, h]) cylinder(r=r_xy, h=0.1);
        translate([w/2 - r_xy, -d + r_xy, h]) cylinder(r=r_xy, h=0.1);
        translate([-w/2, wall, h]) cube([w, 0.1, 0.1]); 
        
        translate([-w/2 + r_xy, -d + r_xy, r_z]) sphere(r=r_z);
        translate([w/2 - r_xy, -d + r_xy, r_z]) sphere(r=r_z);
        translate([-w/2, wall, 0]) cube([w, 0.1, r_z]); 
    }
}

// 2. Внутренний вырез (Пустота ванночки)
module balcony_inner(w, d, h, r_xy) {
    hull() {
        translate([-w/2 + r_xy, -d + r_xy, 0]) cylinder(r=r_xy, h=h);
        translate([w/2 - r_xy, -d + r_xy, 0]) cylinder(r=r_xy, h=h);
        translate([-w/2, wall + 2, 0]) cube([w, 0.1, h]); 
    }
}

// 3. U-образная крышка
module u_shape_lid(w_b, d_b, holes) {
    w_in = w_b - 2*(wall + gap_lid);
    d_in = d_b - (wall + gap_lid);
    r_in_lip = max(0.1, R_out - wall - gap_lid);

    module prof_outer() { hull() {
        translate([-w_b/2, 0]) square([w_b, 0.1]);
        translate([-w_b/2 + R_out, -d_b + R_out]) circle(r=R_out);
        translate([w_b/2 - R_out, -d_b + R_out]) circle(r=R_out);
    }}
    module prof_insert() { translate([0, -gap_lid]) hull() {
        translate([-w_in/2, 0]) square([w_in, 0.1]);
        translate([-w_in/2 + r_in_lip, -d_in + r_in_lip]) circle(r=r_in_lip);
        translate([w_in/2 - r_in_lip, -d_in + r_in_lip]) circle(r=r_in_lip);
    }}
    module prof_cavity() {
        w_cav = w_in - 2*wall; d_cav = d_in - wall; r_cav = max(0.1, r_in_lip - wall);
        translate([0, -gap_lid - wall]) hull() {
            translate([-w_cav/2, 10]) square([w_cav, 0.1]); 
            translate([-w_cav/2 + r_cav, -d_cav + r_cav]) circle(r=r_cav);
            translate([w_cav/2 - r_cav, -d_cav + r_cav]) circle(r=r_cav);
        }
    }

    color("OliveDrab") difference() {
        union() {
            translate([0, 0, -8]) linear_extrude(8) prof_insert();
            difference() {
                linear_extrude(100) prof_outer();
                translate([0, -d_b, H_front]) rotate([slope, 0, 0]) translate([-w_b, 0, 0]) cube([w_b*2, 200, 200]);
            }
        }
        difference() {
            translate([0, 0, -9]) linear_extrude(120) prof_cavity();
            translate([0, -d_b, H_front - (wall/cos(slope))]) rotate([slope, 0, 0]) translate([-w_b, -50, 0]) cube([w_b*2, 200, 200]);
        }
        translate([0, -d_b, H_front]) rotate([slope, 0, 0]) for(nx = holes) {
            translate([nx, 25, -50]) cylinder(d=pot_d, h=100);
        }
    }
}


// ==========================================
//      УПРАВЛЕНИЕ 10 ВАРИАНТАМИ (LAYOUTS)
// ==========================================

// Помощники расстановки
module place_outer(x, y, rot, len) { translate([x, y, base]) rotate([0, 0, rot]) balcony_outer(len, 45, H_balc - base, R_out, 15); }
module place_inner(x, y, rot, len) { translate([x, y, base + wall]) rotate([0, 0, rot]) balcony_inner(len - 2*wall, 45 - wall, H_balc - base - wall + 0.1, R_in); }
module place_lid(x, y, rot, len, holes, z) { translate([x, y, z]) rotate([0, 0, rot]) u_shape_lid(len, 45, holes); }

module layout_outer(style) {
    if (style == 1) { place_outer(160, 0, 0, 180); }
    else if (style == 2) { place_outer(160, W, 180, 180); }
    else if (style == 3) { place_outer(100, 0, 0, 120); place_outer(220, W, 180, 120); }
    else if (style == 4) { place_outer(220, 0, 0, 120); place_outer(100, W, 180, 120); }
    else if (style == 5) { place_outer(160, 0, 0, 240); }
    else if (style == 6) { place_outer(160, W, 180, 240); }
    else if (style == 7) { place_outer(70, 0, 0, 60); place_outer(250, 0, 0, 60); place_outer(70, W, 180, 60); place_outer(250, W, 180, 60); }
    else if (style == 8) { place_outer(L, W/2, 90, 180); }
    else if (style == 9) { place_outer(160, 0, 0, 180); place_outer(160, W, 180, 180); place_outer(L, W/2, 90, 120); }
    else if (style == 10) { place_outer(160, 0, 0, 240); place_outer(160, W, 180, 240); place_outer(L, W/2, 90, 60); }
}

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

module layout_lids(style, z) {
    // Массивы лунок: 60мм = [0], 120мм = [-30, 30], 180мм = [-60, 0, 60], 240мм = [-90, -30, 30, 90]
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


// ==========================================
//      ГЛАВНЫЙ МОДУЛЬ СБОРКИ ЯРУСА
// ==========================================
module perfect_balcony_tier(style=1) {
    difference() {
        union() {
            // 1. ОСНОВНОЙ БАК
            difference() {
                union() {
                    r_box(L, W, H, R_out);
                    translate([wall+gap_tier, wall+gap_tier, -lip_h]) 
                        r_box(L-2*(wall+gap_tier), W-2*(wall+gap_tier), lip_h, R_in-gap_tier);
                }
                translate([wall, wall, base]) r_box(L-2*wall, W-2*wall, H+1, R_in);
            }

            // 2. ВНЕШНИЕ СТЕНКИ БАЛКОНОВ
            layout_outer(style);

            // 3. ТРУБЫ
            translate([p_x, p_y, 0]) {
                cylinder(d=p_od, h=H);
                translate([0,0,H]) cylinder(d=p_id-0.5, h=8); 
            }
            translate([L/2, W/2, base]) {
                cylinder(d=drain_d+4, h=drain_h);
                translate([0,0,drain_h+10]) cylinder(h=8, d1=drain_d+20, d2=drain_d+5);
                for(a=[0 : 120 : 240]) rotate([0,0,a]) 
                    translate([drain_d/2+1,0,drain_h]) cylinder(d=3, h=10);
            }
        }

        // 4. ВЫРЕЗЫ ВАННОЧЕК В БАКАХ
        layout_inner(style);

        // 5. ОТВЕРСТИЯ ТРУБ НАСКВОЗЬ
        translate([p_x, p_y, -lip_h-1]) cylinder(d=p_id, h=H+lip_h+20);
        translate([L/2, W/2, -lip_h-1]) cylinder(d=drain_d, h=base+lip_h+drain_h+2);
    }
}


// ==========================================
//      ВИЗУАЛИЗАЦИЯ И УПРАВЛЕНИЕ
// ==========================================

// МЕНЯЙТЕ ЦИФРУ ОТ 1 ДО 10 ЗДЕСЬ, ЧТОБЫ ВЫБРАТЬ ДИЗАЙН!
show_style = 9; 

// Отрисовываем сам ящик
color("DarkCyan") perfect_balcony_tier(show_style);

// Отрисовываем крышки над ящиком (взрыв-схема, приподняты на 30мм)
layout_lids(show_style, H_balc + 30);