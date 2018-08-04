difference(){
union(){
difference(){
translate([63,36.3,5])
import("lbajo.stl");
translate([-70-13+15,-5,0])cube(70);
translate([0,-50.5,0])cube(50);
}



difference(){
translate([63-10+2,36.3,5])
import("lbajo.stl");
translate([-70-13+15+70,-5,0])cube(70);
}
}
mas=2;
translate([-8,6.5,0])
hull(){
cube([18.1,50,50]);
translate([-mas/2,50,0])cube([18.1+mas,1,50]);
}

}

    /*
translate([-10,-70-7,0])cube(70);
}
difference(){
translate([92.1+8,36.3,5])import("lbajo.stl");
    translate([-70,-20,0])cube(70);
};

/*

*/
