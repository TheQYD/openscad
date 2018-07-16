$fn = 200;

r = 20;
hole = 10;

module cut() {
  cylinder(r = hole, h = 2.5 * r, center = true);
}

module logo() {
    difference() {
        sphere(r = r);
        cut();
        rotate([0,90,0]) cut();
        rotate([90,0,0]) cut();
    }
}

rotate([0,0,-25]) logo();