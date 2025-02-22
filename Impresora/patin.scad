//#translate([98.45,-96.11,0])import("patin.stl");
$fn=64;
ancho=26*2+3;
dif = ancho - 25;
pared = 12;
module patin(){
    difference(){
        union(){
            linear_extrude(ancho)
            offset(5)
            offset(-5)
            difference(){
            translate([0,-44-4-5,-dif/2])
            square([57+8.5-3-17.25/2,10+5+42+2.5+3.5]);
            translate([-26.5,-38,0])
            offset(5)
            offset(-5)
            square([70,24]);
            }
            
            translate([26+8-6.25,-14,ancho/2])rotate([0,3*90,90])cylinder(r1=18/2,r2=4.5/2,h=2.5);
            translate([26+8-6.25,-14-21.5,ancho/2])rotate([0,3*90,90])cylinder(r2=18/2,r1=4.5/2,h=2.5);
            
            translate([0,-44,0])color("red")cube([10,44,7]);
            translate([0,-44,ancho-7])color("red")cube([10,44,7]);

        }
        for (z=[0: (ancho-7)/3: ancho-2]){
            translate([0,0,z])
        difference(){
        translate([53.5,-2.5,1])cylinder(r=30/2,h=5);
        translate([53.5,-2.5,1])cylinder(r=23/2,h=5);
        }
    }
        translate([53.5,-2.5,1])cylinder(r=17.25/2,h=ancho-2);
        translate([53.5,-2.5,-1])cylinder(r=16/2,h=ancho+2);
        translate([0,-3,0]){
            translate([14,-2.5,ancho/2])rotate([0,3*90,0])cylinder(r=10.5/2,h=30);
            translate([14,-2.5-39,ancho/2])rotate([0,3*90,0])cylinder(r=10.5/2,h=30);
        }
        translate([26+8-6.25,20,ancho/2])rotate([0,3*90,90])cylinder(r=3/2,h=80);
        /*translate([51,0,-20])
        rotate([0,0,-25])
        translate([-50,0,0])
        cube([100,50,100]);*/

    }
}

translate([53.5,0,-2.5])
rotate([90+180,0,0])
mirror([1,0,0])

patin();
//include <esquinastraseras.scad>

/*
rotate([90,0,0])
square([20,30]);
*/