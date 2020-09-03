$fn=32;

translate([0,0,0])
rotate([0,0,0])
difference(){
    union(){
        translate([0,-35+11.5-5,-5+15+2+50-6+4])cube([23+4+7,16+4,12],center=true);
        translate([12,-7-7-5+5,55+4])rotate([90,0,0])cylinder(r=7.5/2,h=010);
        translate([-12,-7-7-5+5,55+4])rotate([90,0,0])cylinder(r=7.5/2,h=10);
        translate([0,16.5,40])
        hull(){
            translate([0,-45+3,20])rotate([90,0,90])cylinder(r=4/2,h=50,center=true);
            translate([0,-45-3,20])rotate([90,0,90])cylinder(r=4/2,h=50,center=true);
        }
    }
    
    #translate([0,-30,55+4])rotate([90,0,0])cylinder(r=4/2,h=80,center=true);
    
    #translate([-8,-30,45])cylinder(r=(8.8*(8.1/7.7))/2,h=30,$fn=6);
    #translate([8,-30,45])cylinder(r=12/2,h=30,$fn=32);
}

/*
difference(){
cylinder(r=15/2,h=20);
translate([0,0,-5])cylinder(r1=14/2,r2=9/2,h=20);
translate([0,0,-1])
hull(){
#translate([0-3,0,20-2.5])rotate([90,0,0])cylinder(r=4/2,h=80,center=true);
#translate([0+3,0,20-2.5])rotate([90,0,0])cylinder(r=4/2,h=80,center=true);
}
}
*/