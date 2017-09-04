//#translate([98.45,-96.11,0])import("patin.stl");
$fn=64;
module patin(){
difference(){
union(){
translate([53.5,-2.5,0])cylinder(r=24/2,h=25);
translate([26+8,-14,25/2])rotate([0,3*90,90])cylinder(r1=18/2,r2=4.5/2,h=2.5);
translate([26+8,-14-21.5,25/2])rotate([0,3*90,90])cylinder(r2=18/2,r1=4.5/2,h=2.5);
translate([0,-44-4,0])cube([57,10,25]);
translate([0,-14,0])cube([55,18,25]);
translate([55.5,-48,0])cube([10,47,25]);
translate([0,-44,5])cube([10,44,15]);
}
translate([53.5,-2.5,-5])cylinder(r=16/2,h=40);
translate([14,-2.5,25/2])rotate([0,3*90,0])cylinder(r=8.5/2,h=30);
translate([14,-2.5-39,25/2])rotate([0,3*90,0])cylinder(r=8.5/2,h=30);
translate([26+8,20,25/2])rotate([0,3*90,90])cylinder(r=3/2,h=80);

}}

patin();