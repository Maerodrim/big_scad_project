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
        translate([30, 5, 0]) r_box(15, 40, h, 5); 
    }
}

module funnel_inner(h) {
    translate([L - wall - 1, W/2 - 20, 0])
    hull() {
        translate([0, 0, 0]) cube([0.1, 40, h]); 
        translate([28, 5, 0]) r_box(11, 30, h, 3); 
    }
}

// --- КРЫШКА И ПОПЛАВОК ВОРОНКИ ---
module funnel_lid_and_float() {
    float_x = L - wall + 19; 
    float_y = W / 2;
    
    color("Orange") translate([0, 0, H_bot + 15]) { 
        difference() {
            union() {
                funnel_outer(3);
                translate([0, 0, -3]) funnel_inner(3); 
            }
            translate([float_x, float_y, -10]) cylinder(d=6, h=20);
        }
    }
    color("Red") translate([float_x, float_y, base + 25]) {
        cylinder(d=4, h=H_bot - base + 25); 
        cylinder(d=12, h=40); 
        translate([0, 0, H_bot - base + 25]) sphere(d=8); 
    }
}

// --- МОДУЛЬ КОНТЕЙНЕРА ---
module hydro_system(type) {
    H = (type == 1) ? H_bot : H_top;
    h_t_base = H - 25; 
    
    difference() {
        union() {
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

            translate([p_x, p_y, (type == 1) ? H/2 : 0]) {
                if (type == 1) {
                    cylinder(d=p_od, h=H/2);
                    translate([0,0,H/2]) cylinder(d=p_id-0.5, h=8);
                } else if (type == 2) {
                    cylinder(d=p_od, h=H);
                    translate([0,0,H]) cylinder(d=p_id-0.5, h=8);
                } else if (type == 3) {
                    cylinder(d=p_od, h=h_t_base);
                    translate([0, 0, h_t_base]) {
                        sphere(d=p_od); 
                        rotate([0, 90, 0]) cylinder(d=p_od, h=25); 
                        translate([25, 0, 0]) {
                            sphere(d=p_od); 
                            translate([0, 0, -15]) cylinder(d=p_od, h=15); 
                        }
                    }
                }
            }

            if (type > 1) {
                translate([L/2, W/2, base]) {
                    cylinder(d=drain_d+4, h=drain_h);
                    translate([0,0,drain_h+10]) cylinder(h=8, d1=drain_d+20, d2=drain_d+5);
                    for(a=[0,120,240]) rotate([0,0,a]) 
                        translate([drain_d/2+1,0,drain_h]) cylinder(d=3, h=10);
                }
            }
        }

        translate([p_x, p_y, 0]) {
            if (type == 1) {
                translate([0, 0, H/2 - 0.1]) cylinder(d=p_id, h=H/2 + 20);
            } else if (type == 2) {
                translate([0, 0, -lip_h-1]) cylinder(d=p_id, h=H+lip_h+20);
            } else if (type == 3) {
                translate([0, 0, -lip_h-1]) cylinder(d=p_id, h=h_t_base + lip_h + 1);
                translate([0, 0, h_t_base]) {
                    sphere(d=p_id); 
                    rotate([0, 90, 0]) cylinder(d=p_id, h=25);
                    translate([25, 0, 0]) {
                        sphere(d=p_id); 
                        translate([0, 0, -16]) cylinder(d=p_id, h=16);
                    }
                }
            }
        }

        // ИСПРАВЛЕНИЕ: Теперь отверстие прорезает насквозь и дно, и всю высоту трубы (drain_h)
        if (type > 1) {
            translate([L/2, W/2, -lip_h-1]) cylinder(d=drain_d, h=base+lip_h+drain_h+2);
        }

        if (type == 1) {
            translate([-1, p_y+p_od/2+2, H-15]) cube([wall+2, 10, 16]);
        }

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
            for (nx = [40, 85, 130, 175, 220, 265]) {
                for (ny = [55, 145]) translate([nx, ny, -5]) cylinder(d=pot_d, h=15);
            }
        }
    }
}

// --- СЕТЧАТЫЙ СТАКАНЧИК ---
module net_pot_printable() {
    pot_top_id = 40.5; 
    pot_bot_id = 28;   
    pot_height = 50;   
    pot_wall_th = 1.8; 
    pot_rim_w = 3.5;   
    pot_rim_h = 2.5;   
    pot_mesh_cols = 10; 
    pot_mesh_rows = 4;  

    translate([L/2,-80,pot_height]) { 
        color("DimGray") {
            difference() {
                cylinder(d = pot_top_id + 2*pot_rim_w, h = pot_rim_h);
                translate([0,0,-1]) cylinder(d = pot_top_id, h = pot_rim_h+2);
            }
            for (i = [0:pot_mesh_cols-1]) {
                rotate([0, 0, i * 360/pot_mesh_cols])
                hull() {
                    translate([pot_top_id/2 - pot_wall_th/2, 0, 0])
                        cylinder(d = pot_wall_th, h = 0.1, center=true);
                    translate([pot_bot_id/2 - pot_wall_th/2, 0, -pot_height + pot_wall_th])
                        cylinder(d = pot_wall_th, h = 0.1, center=true);
                }
            }
            for (j = [1:pot_mesh_rows]) {
                translate([0,0, - (pot_height / (pot_mesh_rows+1)) * j])
                difference() {
                    cylinder(d = (pot_top_id - (pot_top_id - pot_bot_id) * (j / (pot_mesh_rows+1))) + 2*pot_wall_th, h = pot_wall_th, center = true);
                    cylinder(d = (pot_top_id - (pot_top_id - pot_bot_id) * (j / (pot_mesh_rows+1))), h = pot_wall_th + 1, center = true);
                }
            }
            translate([0,0,-pot_height]) {
                cylinder(d1 = pot_bot_id + 2*pot_wall_th, d2 = pot_bot_id + 1*pot_wall_th, h = pot_wall_th);
                for (k = [0:pot_mesh_cols/2-1]) {
                    rotate([0,0, k * 360 / (pot_mesh_cols/2)])
                        translate([0,0, pot_wall_th/2])
                        cube([pot_bot_id + pot_wall_th, pot_wall_th/1.5, pot_wall_th], center=true);
                }
            }
        }
    }
}

// --- ВИЗУАЛИЗАЦИЯ ---
color("CornflowerBlue") hydro_system(1);
funnel_lid_and_float();

translate([400, 0, H_bot + 10]) color("MediumSeaGreen") hydro_system(2);
translate([-400, 0, H_bot + H_top + 20]) color("PaleGreen") hydro_system(3);

plant_lid();
net_pot_printable();