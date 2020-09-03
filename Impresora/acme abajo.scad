//translate([277.1,-67.3,8.05])import("abajo.stl");
$fn=32;
/*

translate([66,0,6])cube(50,center=true);
translate([-66,0,6])cube(50,center=true);
*/
difference(){
hull(){
translate([-160/2,-7,0])cube([160,30,12]);
translate([-40/2,-7-16,0])cube([40,30+11+5,12]);
}

translate([66,0,6])cube(50,center=true);
translate([-66,0,6])cube(50,center=true);
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
difference(){
translate([0,0,-25])
{
  translate([40-3.25,3,19])cube([8.5,40,15],center=true);
  translate([-40+3.25,3,19])cube([8.5,40,15],center=true);
difference(){
hull(){
translate([-160/2,-7,0])cube([160,30,12]);
translate([-40/2,-7-16,0])cube([40,30+11+5,12]);
}
translate([0,0,6])cube(65,center=true);
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


//translate([60,9,6])color("red")rotate([90,0,0])cylinder(r=3/2,h=30);
//translate([-60,9,6])color("red")rotate([90,0,0])cylinder(r=3/2,h=30);

}

}
translate([60,-4,-17])
rotate([-90,0,-90])
rotate([0,-90,0])
endstop();
translate([-60,-4,-17])
rotate([-90,0,-90])
rotate([0,-90,0])
endstop();
}
module tornillo(){
rotate([90,0,0]){
cylinder(r1=8/2,r2=4/2,h=4);
cylinder(r=4/2,h=50);
translate([0,0,-9.5])cylinder(r=8/2,h=10);
}
}

module endstop(){
    rotate([90,0,0]){
        hull(){
            translate([0,0,2])cube([6.5,13,9],center=true);
            translate([0,0,-5])cube([2,13,5],center=true);
        }
        translate([0,-10,0])rotate([0,90,90])cube([30,1.5,33],center=true);
    }
}