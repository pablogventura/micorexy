//translate([277.1,-67.3,8.05])import("abajo.stl");
$fn=32;

difference(){
hull(){
translate([-160/2,-7,0])cube([160,30,12]);
translate([-40/2,-7-16,0])cube([40,30+11+5,12]);
}

//translate([0,0,-5])cylinder(r=12/2,h=30);
//translate([0,0,5])cylinder(r=22.5/2,h=30);
translate([-55/2,-7-11-6,8])cube([55,30+11+10,12]);
translate([60,9,-5])color("red")cylinder(r=8.5/2,h=30);
translate([-60,9,-5])color("red")cylinder(r=8.5/2,h=30);
translate([73,-5,6])rotate([0,0,180])color("red")tornillo();
translate([-73,-5,6])rotate([0,0,180])color("red")tornillo();
translate([-73/2,-11,6])rotate([0,0,180])color("red")tornillo();
translate([73/2,-11,6])rotate([0,0,180])color("red")tornillo();


translate([0,0,-5])color("red")cylinder(r=30/2,h=30);
translate([15.5,15.5,-5])color("red")cylinder(r=3/2,h=30);
translate([15.5,-15.5,-5])color("red")cylinder(r=3/2,h=30);
translate([-15.5,15.5,-5])color("red")cylinder(r=3/2,h=30);
translate([-15.5,-15.5,-5])color("red")cylinder(r=3/2,h=30);


translate([60,9,6])color("red")rotate([90,0,0])cylinder(r=3/2,h=30);
translate([-60,9,6])color("red")rotate([90,0,0])cylinder(r=3/2,h=30);
}
module tornillo(){
rotate([90,0,0]){
cylinder(r1=8/2,r2=4/2,h=4);
cylinder(r=4/2,h=50);
translate([0,0,-9.5])cylinder(r=8/2,h=10);
}
}
