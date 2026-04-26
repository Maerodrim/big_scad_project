// === СЕТЧАТЫЙ СТАКАНЧИК ДЛЯ ГИДРОПОНИКИ (ИСПРАВЛЕННЫЙ) ===

module net_pot_printable() {
    // --- ПАРАМЕТРЫ СТАКАНЧИКА ---
    pot_top_id = 40.5; 
    pot_bot_id = 28;   
    pot_height = 50;   
    pot_wall_th = 1.8; 
    pot_rim_w = 3.5;   
    pot_rim_h = 2.5;   
    pot_mesh_cols = 10; 
    pot_mesh_rows = 4;  

    translate([0,0,pot_height]) { 
        // --- А. Прочный верхний бортик ---
        difference() {
            cylinder(d = pot_top_id + 2*pot_rim_w, h = pot_rim_h);
            translate([0,0,-1]) cylinder(d = pot_top_id, h = pot_rim_h+2);
        }

        // --- Б. Вертикальные ребра каркаса ---
        for (i = [0:pot_mesh_cols-1]) {
            rotate([0, 0, i * 360/pot_mesh_cols])
            hull() {
                translate([pot_top_id/2 - pot_wall_th/2, 0, 0])
                    cylinder(d = pot_wall_th, h = 0.1, center=true);
                translate([pot_bot_id/2 - pot_wall_th/2, 0, -pot_height + pot_wall_th])
                    cylinder(d = pot_wall_th, h = 0.1, center=true);
            }
        }

        // --- В. Горизонтальные кольца сетки (ИСПРАВЛЕНО) ---
        for (j = [1:pot_mesh_rows]) {
            h_pos = - (pot_height / (pot_mesh_rows+1)) * j;
            
            // Правильная интерполяция: от широкого верха к узкому дну
            current_id = pot_top_id - (pot_top_id - pot_bot_id) * (-h_pos / pot_height);
            
            translate([0,0,h_pos])
            difference() {
                cylinder(d = current_id + 2*pot_wall_th, h = pot_wall_th, center = true);
                cylinder(d = current_id, h = pot_wall_th + 1, center = true);
            }
        }

        // --- Г. Прочное дно ---
        translate([0,0,-pot_height]) {
            cylinder(d1 = pot_bot_id + 2*pot_wall_th, d2 = pot_bot_id + 1*pot_wall_th, h = pot_wall_th);
            
            // Крестообразная сетка на дне
            for (k = [0:pot_mesh_cols/2-1]) {
                rotate([0,0, k * 360 / (pot_mesh_cols/2)])
                    translate([0,0, pot_wall_th/2])
                    cube([pot_bot_id + pot_wall_th, pot_wall_th/1.5, pot_wall_th], center=true);
            }
        }
    }
}

// Вызов для проверки
net_pot_printable();