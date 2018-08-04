$fn=32;
difference(){
translate([160.9,-8,-28])import("limpio carriage.stl",convexity=10);
difference(){
translate([0,11.5,20])rotate([0,90,0])cylinder(r=16/2,h=24*2+1,center=true);
translate([0,20,20])cube(40,center=true);
}
translate([0,0,-1.5])

rotate([90,0,0]){
translate([11.5,11.5,0])cylinder(r=4/2,h=60,center=true);
    
    translate([-11.5,11.5,0])cylinder(r=4/2,h=60,center=true);
    translate([11.5,-11.5+4,0])cylinder(r=4/2,h=60,center=true);
    translate([-11.5,-11.5+4,0])cylinder(r=4/2,h=60,center=true);
    translate([11.5,-11.5+17,0])cylinder(r=4/2,h=60,center=true);
    translate([-11.5,-11.5+17,0])cylinder(r=4/2,h=60,center=true);
    translate([11.5,-11.5+10,0])cylinder(r=4/2,h=60,center=true);
    translate([-11.5,-11.5+10,0])cylinder(r=4/2,h=60,center=true);
}
}



/*
difference(){
union(){
//translate([0,-30,5.5+10]) rotate([180,0,-90])import("diamond_cooler_shield_blower_fixed_05.stl");
//translate([0,0,10])cube([43,3,43],center=true);
} 
translate([-24,-6,-6])cube([8,6,50]);
translate([16,-6,5])cube([8,6,50]);
    translate([0,-5,29.5])rotate([45,0,0])cube([70,20,20],center=true);
}
*/
//translate([0,61-25,0])cylinder(r=8,h=150,$fn=16,center=true);

difference(){
union(){
hull(){
translate([0,61-25,-28])cylinder(r=22/2,h=5);
translate([0,22,-28+2.5])cube([22,1,5],center=true);
}
translate([0,0,15])
hull(){
translate([0,61-25,-28])cylinder(r=22/2,h=5);
translate([0,22,-28+2.5])cube([22,1,5],center=true);
}}

translate([0,61-25,-30])cylinder(r=18.5/2,h=50);
}

//cube([18,10,10],center=true);
