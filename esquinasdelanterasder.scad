//mirror([1,0,0])translate([-21,0,0])color("red")import("./smartrapcore/XY_motor_right - XY_motor_right.stl");
$fn=32;



module tornillo(){
rotate([90,0,0]){
cylinder(r1=8/2,r2=4/2,h=4);
cylinder(r=4/2,h=50);
translate([0,0,-9.5])cylinder(r=8/2,h=10);
}
}
mirror([1,0,0])
difference(){
union(){
hull(){
translate([15.5,-10,-10])cube([9,10,16]);
translate([0,-10,3])cube([24.5,10,16]);

}
translate([15.5,-10,14])cube([9,10,16]);
translate([15.5,-10,14+5-9])cube([9,52,16-2+9]);
translate([-17.5,-10,8.8])cube([42,52,5]);
}


translate([-12,6,5]){
cylinder(r=3.5/2,h=50);
translate([0,31,0])cylinder(r=3.5/2,h=50);
translate([31,0,0])cylinder(r=3.5/2,h=50);
translate([31,31,0])cylinder(r=3.5/2,h=50);
translate([31/2,31/2,0])cylinder(r=23/2,h=50);
}

translate([9.5,5,10.9])rotate([90,0,0])cylinder(r=8.25/2,h=50);
translate([10,-5,-4])rotate([0,0,90])tornillo();
translate([16,-5,24.5+3])rotate([0,0,90])tornillo();
translate([16,11,24.5+3])rotate([0,0,90])tornillo();
translate([16,11+20,24.5+3])rotate([0,0,90])tornillo();
translate([18,-13+6,11])rotate([0,180,0])endstop();
translate([17,0,8])cube([10,1.5,10]);
}

module endstop(){
rotate([90,0,0]){
hull(){
translate([0,0,2])cube([6.5,13,9],center=true);
translate([0,0,-5])cube([2,13,5],center=true);
}
translate([-5,0,0])cube([10,1.5,16],center=true);
}
}