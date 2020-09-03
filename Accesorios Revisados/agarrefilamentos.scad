$fn=32;
difference(){
translate([-5,0,15-5])cube([30,40,10],center=true);
hull(){
cylinder(r=18/2,h=40);
translate([20,0,0])cylinder(r=18/2,h=40);
}

translate([5,15,25-10])tornillo();
translate([5,-15,25-10])tornillo();
translate([-15,15,25-10])tornillo();
translate([-15,-15,25-10])tornillo();
}
module tornillo(){
    color("blue")
rotate([180,0,0]){
cylinder(r1=8/2,r2=4/2,h=4);
cylinder(r=4/2,h=50);
translate([0,0,-9.5])cylinder(r=8/2,h=10);
}
}
