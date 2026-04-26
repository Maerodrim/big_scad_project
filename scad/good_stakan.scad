$fn = 64;

module net_pot_standalone() {
    pot_top_id = 40.5; // Внутренний диаметр верха
    pot_bot_id = 28;   // Внутренний диаметр дна
    pot_height = 50;   // Высота
    pot_wall_th = 1.8; // Толщина пластика
    pot_rim_w = 3.5;   // Ширина бортика
    pot_rim_h = 2.5;   // Высота бортика
    pot_mesh_cols = 10; // Вертикальные ребра
    pot_mesh_rows = 4;  // Горизонтальные обручи

    // Центрируем по XY и поднимаем так, чтобы дно лежало ровно на Z=0
    translate([0, 0, pot_height]) { 
        color("DimGray") {
            
            // 1. ВЕРХНИЙ БОРТИК
            difference() {
                cylinder(d = pot_top_id + 2*pot_rim_w, h = pot_rim_h);
                translate([0,0,-1]) cylinder(d = pot_top_id, h = pot_rim_h+2);
            }
            
            // 2. ВЕРТИКАЛЬНЫЕ РЕБРА
            for (i = [0:pot_mesh_cols-1]) {
                rotate([0, 0, i * 360/pot_mesh_cols])
                hull() {
                    translate([pot_top_id/2 + pot_wall_th/2, 0, 0])
                        cylinder(d = pot_wall_th, h = 0.1, center=true);
                    translate([pot_bot_id/2 + pot_wall_th/2, 0, -pot_height + pot_wall_th])
                        cylinder(d = pot_wall_th, h = 0.1, center=true);
                }
            }
            
            // 3. ГОРИЗОНТАЛЬНЫЕ ОБРУЧИ
            for (j = [1:pot_mesh_rows]) {
                translate([0,0, - (pot_height / (pot_mesh_rows+1)) * j])
                difference() {
                    cylinder(d = (pot_top_id - (pot_top_id - pot_bot_id) * (j / (pot_mesh_rows+1))) + 2*pot_wall_th, h = pot_wall_th, center = true);
                    cylinder(d = (pot_top_id - (pot_top_id - pot_bot_id) * (j / (pot_mesh_rows+1))), h = pot_wall_th + 1, center = true);
                }
            }
            
            // 4. ДНО
            translate([0,0,-pot_height]) {
                // Внешнее кольцо дна
                difference() {
                    cylinder(d = pot_bot_id + 2*pot_wall_th, h = pot_wall_th);
                    translate([0,0,-1]) cylinder(d = pot_bot_id, h = pot_wall_th + 2);
                }
                // Спицы дна
                for (k = [0:pot_mesh_cols/2-1]) {
                    rotate([0,0, k * 360 / (pot_mesh_cols/2)])
                        translate([0,0, pot_wall_th/2])
                        cube([pot_bot_id + 2*pot_wall_th, pot_wall_th, pot_wall_th], center=true);
                }
            }
        }
    }
}

// Отрисовываем стаканчик по центру
net_pot_standalone();