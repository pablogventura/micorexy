/*
difference(){
union(){
translate([576.18,500-7,0])import("Z_120x130_Table_v5.stl");
cylinder(r=10,h=65);
}
union(){
translate([0,0,-5])cylinder(r=14/2,h=65);
translate([16/2,0,-5])cylinder(r=3.5/2,h=65);
translate([-16/2,0,-5])cylinder(r=3.5/2,h=65);
translate([0,-16/2,-5])cylinder(r=3.5/2,h=65);
translate([0,16/2,-5])cylinder(r=3.5/2,h=65);
translate([0,0,-1])cylinder(r=23/2,h=7);
translate([0,0,44.5])cube(50,center=true);
}
}



translate([-570,-50,0])import("Z_608zz_threaded_rod.stl");

*/
//translate([-250,-250,0])import("Z_table_threaded_rod.stl");
difference(){
translate([-500,0,0])import("Z_motor_threaded_rod.stl");
translate([-277.1,67.3,-20])cylinder(r=30/2,h=70);
}
