//translate([18.92,-43.05,0])import("arriba.stl");
difference(){
translate([-160/2,-7,0])cube([160,30,12]);
translate([0,0,-5])cylinder(r=12/2,h=30);
translate([0,0,5])cylinder(r=22.5/2,h=30);

translate([60,9,-5])color("red")cylinder(r=8.5/2,h=30);
translate([-60,9,-5])color("red")cylinder(r=8.5/2,h=30);
translate([73,-5,6])rotate([0,0,180])color("red")tornillo();
translate([-73,-5,6])rotate([0,0,180])color("red")tornillo();
translate([73/2,-5,6])rotate([0,0,180])color("red")tornillo();
translate([-73/2,-5,6])rotate([0,0,180])color("red")tornillo();

}

module tornillo(){
rotate([90,0,0]){
cylinder(r1=8/2,r2=4/2,h=4);
cylinder(r=4/2,h=50);
translate([0,0,-9.5])cylinder(r=8/2,h=10);
}
}