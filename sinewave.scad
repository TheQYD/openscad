for (i=[0:50])
    translate([i*5,0,0])
    cube([4,4,cos(i*10)*50+60]);