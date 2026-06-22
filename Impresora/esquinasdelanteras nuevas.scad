//translate([-29,0,0])import("./smartrapcore/XY_motor_left - XY_motor_left.stl");
$fn=32;

module agarre_motor(izquierda){
    mirror([1-izquierda,0,0]){
difference(){
    union(){
        linear_extrude(15)
        translate([20,20,0])
        rotate([0,0,180+90])
        difference(){
            translate([0,-10,0])
            square([110,42+20+10]);
            translate([10,0,0])
            circle(d=5.5);
            translate([10+90,0,0])
            circle(d=5.5);
            translate([10+90,20+39.25+2.75-10,0])
            circle(d=5.5);
            translate([10,20+39.25+2.75-10,0])
            circle(d=5.5);
            translate([10+45,20+39.25+2.75-10,0])
            circle(d=5.5);
        }

        translate([10,0,-20])
        linear_extrude(15+20)
        rotate([0,0,180+90])
        offset(5)
        offset(-5)
        square([70,42+10]);
    }
    translate([16+25/2,-52,-50])
    translate([0,10*(1-izquierda),0])
    linear_extrude(100)
    offset(5)
    offset(-5)
    square([25,25]);
}

translate([0,0,15])
rotate([90,0,0])
translate([15,5,16.5])
difference(){
translate([9.5,0,-10.9])
mirror([1,0,0])
color("blue")
    translate([0,0,-10*(1-izquierda)])
difference(){
    union(){

        translate([-17.5-20,-10,14+3.8+15+7+6.6])cube([42+5,52,5]);
        translate([-17.5-20-5,-10,14+3.8+15+7+6.6-30])
            cube([3,52,35+15]);
        translate([-17.5-20-5,-10,14+3.8+15+7+6.6-30])
            cube([5,52,35]);
        translate([-17.5-20+42+2,-10,14+3.8+15+7+6.6])
            cube([8,52,20]);
    }

    translate([-12-20,6,10]){
        cylinder(r=3.5/2,h=50);
        translate([0,31,0])cylinder(r=3.5/2,h=50);
        translate([31,0,0])cylinder(r=3.5/2,h=50);
        translate([31,31,0])cylinder(r=3.5/2,h=50);
        translate([31/2,31/2,0])cylinder(r=23/2,h=50);
    }

    //translate([9.5,5,10.9])rotate([90,0,0])cylinder(r=10/2,h=50);

    translate([18+2,38,11])rotate([180,0,0])endstop();
    
}
}
}
}
agarre_motor(0);