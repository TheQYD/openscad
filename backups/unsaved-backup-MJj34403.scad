module sinewave(length=50)
    for (i=[0:length])
        translate([i*5,0,0])
        cube([4,4,cos(i*10)*50+60]);
    
 sinewave(100);