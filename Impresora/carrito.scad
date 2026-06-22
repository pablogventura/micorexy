
//cube([45,9.5,28]);

$fn=32;
// si estos valores se ponen en 0, queda listo para el volcano
height_fusor=-25;
height_fusor_fan=-8.5;
module carrito(){
    translate([0,0,-15])
difference(){
    union(){
        hull(){
            translate([0,61-25+5,-28])cylinder(r=22/2,h=5);
            translate([0,22,-28+2.5])cube([22,1,5],center=true);
        }
        translate([0,0,15])
        hull(){
            translate([0,61-25+5,-28])cylinder(r=22/2,h=5);
            translate([0,22,-28+2.5])cube([22,1,5],center=true);
        }
    }

    translate([0,61-25+5,-30])cylinder(r=19/2,h=50);
}
difference(){
    union(){
        translate([0,11.5,-2.65+5/2-10])cube([55,23,50.5+5+10],center=true);
        translate([0,0,11])
        hull(){
            translate([-22.5,-2,-3])cube([10,10,10],center=true);
            translate([-22.5,2.5,-3-7])cube([10,1,10],center=true);
        }
        translate([45,0,0])
        hull(){
            translate([-22.5,-2,-3])cube([10,10,10],center=true);
            translate([-22.5,2.5,-3-7])cube([10,1,10],center=true);
        }
        translate([0,23,11])
        rotate([0,0,180])
        hull(){
            translate([-22.5,-2,-3])cube([10,10,10],center=true);
            translate([-22.5,2.5,-3-7])cube([10,1,10],center=true);
        }
        translate([-45,23,0])
        rotate([0,0,180])
        hull(){
            translate([-22.5,-2,-3])cube([10,10,10],center=true);
            translate([-22.5,2.5,-3-7])cube([10,1,10],center=true);
        }
    }
    hull(){
        translate([0,11.5,20])rotate([0,90,0])cylinder(r=17.5/2,h=53,center=true);
        translate([0,11.5,30])rotate([0,90,0])cylinder(r=17.5/2,h=53,center=true);
    }
    hull(){
        translate([0,11.5,20])rotate([0,90,0])cylinder(r=17/2,h=80,center=true);
        translate([0,11.5,30])rotate([0,90,0])cylinder(r=17/2,h=80,center=true);
    }
    translate([0,11.5,-19])rotate([0,90,0])cylinder(r=17.5/2,h=53,center=true);
    translate([0,11.5,-19])rotate([0,90,0])cylinder(r=16/2,h=80,center=true);

    translate([0,0,-11-3])agarrecorrea();
    translate([-46,0,-3])agarrecorrea();

    translate([0,28+1.5,-3])agarrecorrea();
    translate([-46,28+1.5,-11-3])agarrecorrea();
    translate([0,3+17/2,-40])cube([100,3,50],center=true);
    translate([0,61-25+5,-20.5-2.5-15])cylinder(r=21,h=10);

    translate([8,0,0]){
    hull(){
        translate([-30+5,11.5,1])color("red")cube([7,4,13],center=true);
        translate([-30-5,11.5,1])color("red")cube([11*2,6.5,20],center=true);
    }
    translate([-39,-5,-5])
    cube([17.5,10+5,1]);
}
    translate([0,0,height_fusor/2])
    cube([30,50,16+height_fusor],center=true);
}

module agarrecorrea(){

translate([0.55,0-1.5,-1]){
color("blue")
translate([15,-7+3.5+1.5,11])
    
cube([15,1,10]);

color("blue")translate([15,-7+3.5+0.5,11])cube([1,1.5,10]);
color("blue")translate([15+2,-7+3.5+0.5,11])cube([1,1.5,10]);
color("blue")translate([15+4,-7+3.5+0.5,11])cube([1,1.5,10]);
color("blue")translate([15+6,-7+3.5+0.5,11])cube([1,1.5,10]);
color("blue")translate([15+8,-7+3.5+0.5,11])cube([1,1.5,10]);
color("blue")translate([15+10,-7+3.5+0.5,11])cube([1,1.5,10]);
color("blue")translate([15+12,-7+3.5+0.5,11])cube([1,1.5,10]);
color("blue")translate([15+14,-7+3.5+0.5,11])cube([1,1.5,10]);
}
}
translate([0,0,height_fusor])
difference(){
    translate([0,-7.5,14.5])color("red")cube([34,15,11],center=true);

    translate([0,-15,0])cylinder(r=6,h=30);
    translate([0,-15,1])cylinder(r=8,h=10);
    translate([0,-15,1+10+6])cylinder(r=8,h=10);

    translate([12,1,14])rotate([90,0,0])cylinder(r=3.5/2,h=30);
    translate([-12,1,14])rotate([90,0,0])cylinder(r=3.5/2,h=30);

    hull(){
        translate([12,1,14])rotate([90,0,0])cylinder(r=7/2,h=7,$fn=6);
        translate([12,1,30])rotate([90,0,0])cylinder(r=7/2,h=7,$fn=6);
    }
    hull(){
        translate([-12,1,14])rotate([90,0,0])cylinder(r=7/2,h=7,$fn=6);
        translate([-12,1,30])rotate([90,0,0])cylinder(r=7/2,h=7,$fn=6);
    }
}
}


module soporte_disipador(){
translate([0,-30-20+50,-15])
rotate([0,0,180])
translate([0,-20,15])
difference(){
    translate([0,-7.5+3,14.5])color("red")cube([34,12+5,11],center=true);

    translate([0,-15,0])cylinder(r=6,h=30);
    translate([0,-15,1])cylinder(r=8,h=10);
    translate([0,-15,1+10+6])cylinder(r=8,h=10);
    hull(){
        translate([0,0,14])rotate([90,0,0])cylinder(r=7/2,h=5,$fn=6);
        translate([0,0,0+5])rotate([90,0,0])cylinder(r=7/2,h=5,$fn=6);
    }
    translate([0,0,14])rotate([90,0,0])cylinder(r=4/2,h=40,center=true);
    translate([12,1,14])rotate([90,0,0])cylinder(r=3.5/2,h=100,center=true);
    translate([-12,1,14])rotate([90,0,0])cylinder(r=3.5/2,h=100,center=true);
    translate([12,1+43,14])rotate([90,0,0])cylinder(r=8/2,h=100,center=true);
    translate([-12,1+43,14])rotate([90,0,0])cylinder(r=8/2,h=100,center=true);
}
}




module torus(a,b){
R1=a;

R2=b;
    
RA=R1      /2;           // Radius   of  Torus
RB=R2      /2 - R1/2 ;     // Radius   of  Torus overall 

rotate_extrude(convexity = 10) // the value is the sides the finer
translate([RB, 0, 0])
circle(r = RA); // the value is the sides
}

module layerfan(){
translate([0,-15,-28-23+10])
rotate([0,0,0])
difference(){
    translate([0,0,0])///por aca
    union(){
        translate([0,0,2-height_fusor_fan])torus(9,60+10);
        translate([0,-35+11.5-5,0+15+50])cube([23,16,5+4],center=true);
        hull(){
            translate([0,-35+11.5-5,-5+15+2+50-6+4])cube([23+4+7,16+4,12],center=true);
            
            translate([0,-29,4+2-height_fusor_fan])rotate([0,0,0])rotate([0,90,0])cylinder(r=8/2,h=23+4,center=true);
        
        }
        translate([12,-7-7-5+5,55+4])rotate([90,0,0])cylinder(r=7.5/2,h=010);
        translate([-12,-7-7-5+5,55+4])rotate([90,0,0])cylinder(r=7.5/2,h=10);
    }
    
translate([0,-30,55+4])rotate([90,0,0])cylinder(r=4/2,h=80,center=true);
    
    translate([0,2,-20-height_fusor_fan])cylinder(r1=10,r2=28+5-2,h=20);
    translate([0,0,2-height_fusor_fan])torus(6,60-2+10-2);
    
    
        
        hull(){
            translate([0,-35+11.5-5,0+15+50-height_fusor_fan])cube([19,12,5+10],center=true);
            translate([0,-29,2-height_fusor_fan])rotate([0,0,0])rotate([0,90,0])cylinder(r=5/2,h=23,center=true);
        }
    
}
}

module e3d_volcano(){
translate([-18.2,17.2,-49])rotate([90,0,0])color("blue")import("Stl_Importados/E3D_Volcano_1.75mm_0.8mm_Hotend_Assembly_fixed.STL");
translate([0,-15,-28-23])color("red")cylinder(r=1,h=50);
}

module e3d_v6(){
    translate([11.25,0.5,-67.3])
    rotate([90,0,90+180])
    color("blue")
    
    import("Stl_Importados/E3DV6.STL");
    
    translate([0,-15,-28-23])
    color("red")
    cylinder(r=1,h=50);
}

//e3d_volcano();
e3d_v6();
carrito();
//translate([0,-50,height_fusor])soporte_disipador();
//translate([0+30,0+20,-4+height_fusor])layerfan();
/*
translate([0,-15+56,0])
color("green")
cylinder(h=50, d=20);
*/

module toro(diametro, altura, grosor){
difference(){
cylinder(d=diametro,h=altura);
translate([0,0,-2.5])
cylinder(d=diametro-grosor,h=altura+5);
}
}

toro(15,6,4);
translate([0,22.5,0])
toro(15,6,4);

