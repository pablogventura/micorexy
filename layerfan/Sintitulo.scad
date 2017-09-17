difference(){
difference(){
cylinder(r=32,h=15,center=true);
cylinder(r=20,h=20,center=true);
}
difference(){
cylinder(r=29,h=12,center=true);
cylinder(r=21,h=20,center=true);
}
translate([0,0,-1])cylinder(r1=30,r2=1,h=20,center=true);
}
import("fan_duct.stl");

