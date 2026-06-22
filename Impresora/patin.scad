$fn=64;
ancho=26*2+3;
dif = ancho - 25;
pared = 12;
distancia_y = 28+10.5;
distancia_x = 10;
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
            translate([-distancia_x,0,-distancia_y/2]){
                translate([26+8-6.25,-14-9,ancho/2])rotate([0,3*90,90])cylinder(r1=16/2,r2=4.5/2,h=2.5);
                translate([26+8-6.25,-14,ancho/2])rotate([0,3*90,90])cylinder(r=16/2,h=9);
                translate([26+8-6.25,-14-21.5,ancho/2])rotate([0,3*90,90])cylinder(r2=16/2,r1=4.5/2,h=2.5);
            }
            translate([-distancia_x,0,distancia_y/2]){
                translate([26+8-6.25,-14,ancho/2])rotate([0,3*90,90])cylinder(r1=16/2,r2=4.5/2,h=2.5);
                translate([26+8-6.25,-14-21.5+9,ancho/2])rotate([0,3*90,90])cylinder(r2=16/2,r1=4.5/2,h=2.5);
                translate([26+8-6.25,-14-21.5+6.5,ancho/2])rotate([0,3*90,90])cylinder(r=16/2,h=9);
            }
            
            translate([0,-44,0])color("red")cube([10-2,44,7]);
            translate([0,-44,ancho-7])color("red")cube([10-2,44,7]);
            translate([0,-44,(ancho-7-7)/2])color("red")cube([10,44,7+7]);

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
            translate([14,-2.5,ancho/2])rotate([0,3*90,0])cylinder(r=10/2,h=30);
            translate([14,-2.5-39,ancho/2])rotate([0,3*90,0])cylinder(r=10/2,h=30);
        }
        translate([-distancia_x,0,-distancia_y/2]){
            translate([26+8-6.25,20,ancho/2])rotate([0,3*90,90])cylinder(r=3/2,h=80);
        }
        translate([-distancia_x,0,distancia_y/2]){
            translate([26+8-6.25,20,ancho/2])rotate([0,3*90,90])cylinder(r=3/2,h=80);
        }

    }
}

if(false){
translate([35.75,-1.5+28+distancia_y/2-14,14+10])
color("black")
cylinder(d=9.7+1.5,h=9);

translate([35.75,-1.5+28+distancia_y/2-14,14])
color("black")
cylinder(d=9.7+1.5,h=9);

translate([35.75,-1.5-distancia_y/2+14,14+10])
color("black")
cylinder(d=9.7+1.5,h=9);

translate([35.75,-1.5-distancia_y/2+14,14])
color("black")
cylinder(d=9.7+1.5,h=9);
}
translate([0,-15,0])
translate([53.5,0,-2.5])
rotate([90+180,0,0])
mirror([1,0,0])
patin();

//include <carrito.scad>

