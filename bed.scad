
//translate([0,0,0])import("bandejaacme.stl");


module huecoacme(){
    cylinder(r=14/2,h=50);
    translate([0,8,0])cylinder(r=4/2,h=50);
    translate([0,-8,0])cylinder(r=4/2,h=50);
    translate([8,0,0])cylinder(r=4/2,h=50);
    translate([-8,0,0])cylinder(r=4/2,h=50);
    cylinder(r=23/2,h=20);
}
difference(){
union(){
altacme=15;
hull(){
translate([0,0,altacme/2])cube([25,25,altacme],center=true);
translate([60-4,10,altacme/2])cube([20,20,altacme],center=true);
translate([-60+4,10,altacme/2])cube([20,20,altacme],center=true);
}
hull(){
translate([60-4,10,50/2])cube([20,20,50],center=true);
translate([50+16,0,0])rotate([0,0,180])cube([20,65,20]);
}
hull(){
translate([-60+4,10,50/2])cube([20,20,50],center=true);
translate([-52+6,0,0])rotate([0,0,180])cube([20,65,20]);
}

}


    translate([0,0,-18])huecoacme();
    translate([60,10,-5])cylinder(r=15.7/2,h=60);
    translate([-60,10,-5])cylinder(r=15.7/2,h=60);
    translate([59-3,-10,10])rotate([90,0,0])cylinder(r=10.5/2,h=80);
    translate([-59+3,-10,10])rotate([90,0,0])cylinder(r=10.5/2,h=80);
translate([0,0,40]){
translate([0,-1,0])rotate([0,90,0])cylinder(r=2,h=200,center=true);
translate([0,20,0])rotate([0,90,0])cylinder(r=2,h=200,center=true);
}
translate([0,0,18]){
translate([0,-1,0])rotate([0,90,0])cylinder(r=2,h=200,center=true);
translate([0,20,0])rotate([0,90,0])cylinder(r=2,h=200,center=true);
}

}