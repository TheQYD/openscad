translate([-30,0,0]) ShowColorBars(Expense);

ColorBreak=[[0, ""], 
            [20, "lime"],
            [40, "greenyellow"],
            [60, "yellow"],
            [75, "lightcoral"],
            [200, "red"]];
            
Expense=[16,20,25,85,52,63,45];

module ColorBar(value,period,range){
    RangeHi = ColorBreak[range][0];
    RangeLo = ColorBreak[range-1][0];
    color(ColorBreak[range][1]);
    translate([10*period,0,RangeLo])
        if (value > RangeHi) cube([5,2,RangeHi-RangeLo]);
        else if (value > RangeLo) cube([5,2,value-RangeLo]);
    }

module ShowColorBars(values) {
    for (month = [0:len(values)-1], range = [1:len(ColorBreak)-1])
        ColorBar(values[month],month,range);
    }