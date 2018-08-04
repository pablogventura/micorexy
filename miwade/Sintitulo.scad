difference(){
cylinder(r=8/2,h=19,center=true,$fn=64);
translate([-15/2,1,7/2])cube(15);
translate([-15/2,1,-7/2-15])cube(15);
}