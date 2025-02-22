//translate([-29,0,0])import("./smartrapcore/XY_motor_left - XY_motor_left.stl");
$fn=32;

izquierda = 1;


translate([70-izquierda*70,0,0])
mirror([1-izquierda,0,0])
difference(){
translate([9.5,0,-10.9])
mirror([1,0,0])
color("blue")
difference(){
    union(){
        hull(){
            //translate([15.5,-10,-10])cube([9,10,16]);
            translate([-17.5-20,-20,-5.6-20])cube([42+20,20,70+20+20]);

        }
        translate([15.5,-10,14])cube([9,10,16]);
        translate([15.5,-10,-5.5])cube([9,52,16-2+30+5+6.6]);
        translate([-17.5-20,-10,14+3.8+15+7+6.6-10*(1-izquierda)])cube([42+20,52,5]);
        translate([-17.5+22.5,-10,14+3.8+15+7+6.6-5])cube([17,52,5]);
    }

//translate([-7.5,-25,23-3.3+7])cube([22,50,13+10]);
    translate([-12-20,6,10]){
        cylinder(r=3.5/2,h=50);
        translate([0,31,0])cylinder(r=3.5/2,h=50);
        translate([31,0,0])cylinder(r=3.5/2,h=50);
        translate([31,31,0])cylinder(r=3.5/2,h=50);
        translate([31/2,31/2,0])cylinder(r=23/2,h=50);
    }

    translate([9.5,5,10.9])rotate([90,0,0])cylinder(r=10/2,h=50);

    translate([18+2,38,11])rotate([180,0,0])endstop();
    
}


translate([-15.005,-20.01,73.5-20])
color("red")
cube([20,20+1,40]);


translate([-15.005,-20.01,-76.5+20])
color("red")
cube([20,20+1,40]);

translate([-5+42.5/2,10,43.5-10])
mirror([0,1,0])
tornillo();
translate([-5+42.5/2,10,43.5-10-90])
mirror([0,1,0])
tornillo();
translate([-5+42.5/2-41.25+10,10,43.5-10-3-7-10])
mirror([0,1,0])
tornillo();

}
//include <esquinastraseras.scad>
module endstop(){
    rotate([90,0,0]){
        hull(){
            translate([0,0,2])cube([6.5,13,9],center=true);
            translate([0,0,-5])cube([2,13,5],center=true);
        }
        translate([-5,0,0])cube([10,1.5,20],center=true);
    }
}



module tornillo(){
    translate([10,-10,70/2-30+25])
    rotate([90+180,0,0])
    cylinder(d=5.5,h=50);

    translate([0,-25,0])
    translate([10,-10,70/2-30+25])
    rotate([90+180,0,0])
    cylinder(d=14,h=50);
}
