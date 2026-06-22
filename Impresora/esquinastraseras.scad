//tiene que tener 70 de alto

$fn=32;
module tornillo(){
rotate([-90,0,0]){
cylinder(r1=10/2,r2=5/2,h=4);
cylinder(r=5/2,h=50);
translate([0,0,-9.5])cylinder(r=10/2,h=10);
}
}
//translate([110.7,25,4.8])import("./smartrapcore/XY_bearings - XY_bearings_R.stl");
///aca





izquierda = 1;
translate([-15,0,-16.5])
difference(){
translate([49.75,0,0])
translate([0,0,10.45])
mirror([izquierda,0,0])
difference(){
union(){

translate([-19,0,1.55])
rotate([-90,0,0])
union(){
translate([53.5,-2.5,0])cylinder(r=24/2,h=30);
if (izquierda == 0){
    translate([-15-1,0,0]){
translate([26+8,-14-2,30/2])rotate([0,3*90,90])cylinder(r1=17/2,r2=4.5/2,h=2.5+19/2);
translate([26+8,-14-21.5-2,30/2])rotate([0,3*90,90])cylinder(r2=17/2,r1=4.5/2,h=2.5);

translate([26+8+10,-14-2,30/2])rotate([0,3*90,90])cylinder(r1=17/2,r2=4.5/2,h=2.5);
translate([26+8+10,-14-21.5-2+19/2,30/2])rotate([0,3*90,90])cylinder(r2=17/2,r1=4.5/2,h=2.5+19/2);
    }
} else {
translate([-15-1,0,0]){
translate([26+8+10,-14-2-9,30/2])rotate([0,3*90,90])cylinder(r1=17/2,r2=4.5/2,h=3);
translate([26+8+10,-14-2,30/2])rotate([0,3*90,90])cylinder(r=17/2,h=2.5+19/2-3);
translate([26+8+10,-14-21.5-2,30/2])rotate([0,3*90,90])cylinder(r2=17/2,r1=4.5/2,h=2.5);

translate([26+8,-14-2,30/2])rotate([0,3*90,90])cylinder(r1=17/2,r2=4.5/2,h=2.5);
translate([26+8,-14-21.5-2+19/2,30/2])rotate([0,3*90,90])cylinder(r2=17/2,r1=4.5/2,h=2.5+19/2);
}
}  
translate([0,-44-6-8-20,0])cube([57+11.75,10+8+20,30]);
translate([0,-14-2,0])cube([55+13.7,18+10,30]);
translate([55.5-14.55+13-5.25,-48-2,0])cube([20,47+5,30]);
translate([0,-44,0])cube([9,44,28/2]);
}
}




translate([34.9,15*3,5.8])rotate([90,0,0])cylinder(r=10.5/2,h=70*2,$fn=32);
translate([-15-1,0,0]){
#translate([7+8,30/2,-15])cylinder(r=3/2,h=120,$fn=32);
#translate([7+8+10,30/2,-15])cylinder(r=3/2,h=120,$fn=32);
translate([0,2.5,0]){
translate([20,0,29.5])cube([6,50,20.5],center=true);
translate([20-10,39.5,29.5])cube([20,50,20.5],center=true);
}
}

translate([0,6.9,6])
color("blue")
endstop();


}
translate([100*(1-izquierda),0,0])
mirror([1-izquierda,0,0])
union(){
translate([-0.01,-30,-20+70+20+0.01])
cube([20,20+50,20]);

translate([10,-10,70/2-30+25])
rotate([90+180,0,0])
cylinder(d=5.5,h=50);

translate([10,-10,70-10])
rotate([90+180,0,0])
cylinder(d=5.5,h=50);



translate([0,-25,0]){
translate([10,-10,70/2-30+25])
rotate([90+180,0,0])
cylinder(d=14,h=50);

translate([10,-10,70-10])
rotate([90+180,0,0])
cylinder(d=14,h=50);

translate([30,-10,80]){
    translate([0,30,0])
    rotate([90+180,0,0])
    cylinder(d=5.5,h=50);
    rotate([90+180,0,0])
    cylinder(d=14,h=50);
}

translate([30+39.25-8,-10,80]){
    translate([0,30,0])
    rotate([90+180,0,0])
    cylinder(d=5.5,h=50);
    rotate([90+180,0,0])
    cylinder(d=14,h=50);
}

}
}
}


module endstop(){
    rotate([90,90*3,0]){
        hull(){
            translate([0,0,2])cube([6.5,20,10],center=true);
            translate([0,0,-5])cube([2,13,10],center=true);
        }
        translate([0,0,0])cube([1.5,20,50],center=true);
        translate([-10,0,0])cube([20,1.5,50],center=true);
    }
}
