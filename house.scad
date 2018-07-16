 module house (size=1, roof_offset=0, length_offset=0, paint=[1,0,0]) {
    color(paint)
    rotate([90,0,0]) 
    linear_extrude(height=(1 * size) + length_offset) 
    polygon(points=[[0 * size,0 * size],
                    [0 * size,0.75 * size],
                    [0.5 * size,(1.25 * size) + roof_offset],
                    [1 * size,0.75 * size],
                    [1 * size,0 * size]]);
    }

house(1,0,1,"lightslategrey");