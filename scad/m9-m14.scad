include <BOSL2/std.scad>
include <BOSL2/threading.scad>

$fn = 256; 

// --- ПАРАМЕТРЫ ---
m14_h = 80;    // Высота верхней части (M14)
m9_h  = 70;    // Глубина/высота нижней части (M9)
skirt_h = 5;   // Толщина юбки-упора
skirt_d = 22;  // Диаметр юбки (под ключ)

cone_h = (9/2) / tan(120/2); // Высота конуса внутри

// --- СБОРКА ---
diff()
union() {
    // 1. ЦЕНТРАЛЬНАЯ ЮБКА (база в плоскости Z=0)
    cyl(d=skirt_d, h=skirt_h, anchor=CENTER, $fn=6);

    // 2. ВЕРХНЯЯ ЧАСТЬ (M14 папа)
    // Растет от верхней грани юбки вверх
    up(skirt_h/2)
    threaded_rod(d=14, l=m14_h, pitch=1.5, anchor=BOTTOM);

    // 3. НИЖНЯЯ ЧАСТЬ (M9)
    // Если M9 должна быть "мамой" (отверстием), заходящим снизу:
    tag("remove") {
        // Отверстие начинается с самого низа юбки и идет вверх
        down(skirt_h/2)
        threaded_rod(d=9, l=m9_h, pitch=1.25, internal=true, slop=0.2, anchor=BOTTOM);
        
        // Конус-упор в конце канала M9
        up(m9_h - skirt_h/2)
        cyl(d1=9, d2=0, h=cone_h, anchor=BOTTOM);
    }
}