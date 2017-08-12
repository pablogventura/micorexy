$fn=64;

difference(){
translate([-230/2,-90,0])cube([230,20,20]);
translate([-209/2,-80,10])cube([6,50,3],center=true);
translate([209/2,-80,10])cube([6,50,3],center=true);
translate([0,-80,-20]){
translate([-209/2,0,0])cylinder(r=3.5/2,h=50);
translate([209/2,0,0])cylinder(r=3.5/2,h=50);
}
translate([59-3,-40,10])rotate([90,0,0])cylinder(r=10.5/2,h=80);
translate([-59+3,-40,10])rotate([90,0,0])cylinder(r=10.5/2,h=80);
}