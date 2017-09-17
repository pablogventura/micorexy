$fn=64;
difference(){
union(){
    difference(){
        cube([80,80,7],center=true);
        translate([0,0,1.5])cube([80-3,80-3,7],center=true);
    }
translate([36,36,0])cylinder(r=4,h=7,center=true);
translate([36,-36,0])cylinder(r=4,h=7,center=true);
translate([-36,36,0])cylinder(r=4,h=7,center=true);
translate([-36,-36,0])cylinder(r=4,h=7,center=true);
}



cylinder(r=77.5/2,h=50,center=true);
translate([36,36,0])cylinder(r=4/2,h=50,center=true);
translate([36,-36,0])cylinder(r=4/2,h=50,center=true);
translate([-36,36,0])cylinder(r=4/2,h=50,center=true);
translate([-36,-36,0])cylinder(r=4/2,h=50,center=true);
}