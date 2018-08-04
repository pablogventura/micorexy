difference(){
union(){
difference(){
translate([92.1,36.3,5])
import("rbajo.stl");
translate([-10,-70-7,0])cube(70);
}
difference(){
translate([92.1+8,36.3,5])import("rbajo.stl");
    translate([-70,-20,0])cube(70);
};
}


mas=2;
hull(){
cube([18.1,50,50]);
translate([-mas/2,50,0])cube([18.1+mas,1,50]);
}

}