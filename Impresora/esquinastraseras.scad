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
mirror([izquierda,0,0])
difference(){
union(){
//cube([50,30,15.7]);
//translate([10.35+10+2,0,0])cube([27.7,30,15.7+11.1]);

translate([-19,0,1.55])
rotate([-90,0,0])
union(){
translate([53.5,-2.5,0])cylinder(r=24/2,h=30);
    //moviendo el 10 de los de abajo a los de arriba ya esta para hacer el izquierdo
if (izquierda == 0){
translate([26+8,-14-2,25/2])rotate([0,3*90,90])cylinder(r1=18/2,r2=4.5/2,h=2.5+19/2);
translate([26+8,-14-21.5-2,25/2])rotate([0,3*90,90])cylinder(r2=18/2,r1=4.5/2,h=2.5);

translate([26+8+10,-14-2,25/2])rotate([0,3*90,90])cylinder(r1=18/2,r2=4.5/2,h=2.5);
translate([26+8+10,-14-21.5-2+19/2,25/2])rotate([0,3*90,90])cylinder(r2=18/2,r1=4.5/2,h=2.5+19/2);
} else {
translate([26+8+10,-14-2,25/2])rotate([0,3*90,90])cylinder(r1=18/2,r2=4.5/2,h=2.5+19/2);
translate([26+8+10,-14-21.5-2,25/2])rotate([0,3*90,90])cylinder(r2=18/2,r1=4.5/2,h=2.5);

translate([26+8,-14-2,25/2])rotate([0,3*90,90])cylinder(r1=18/2,r2=4.5/2,h=2.5);
translate([26+8,-14-21.5-2+19/2,25/2])rotate([0,3*90,90])cylinder(r2=18/2,r1=4.5/2,h=2.5+19/2);
}  
translate([0,-44-6,0])cube([57,10,30]);
translate([0,-14-2,0])cube([55,18,30]);
translate([55.5-14.55+13,-48-2,0])cube([10+3.55+14.2-15+2,47+5,30]);
translate([0,-44,10])cube([10,44,5]);
}

//translate([26,20,25/2])rotate([0,3*90,90])cylinder(r=8/2,h=80);

}




translate([34.9,15,5.8])rotate([90,0,0])cylinder(r=8.5/2,h=70,$fn=32);

translate([7+8,12.5,13])cylinder(r=3/2,h=90,$fn=32);
translate([7+8+10,12.5,13])cylinder(r=3/2,h=90,$fn=32);


//translate([-7,0,6])tornillo();
translate([-7+12,0,6])tornillo();
//translate([-7+25+25,0,6+10])tornillo();
//translate([-7+25+25,0,6+10+20])tornillo();
translate([-7+10,0,6+38.5+2])tornillo();
translate([-7+25+15,0,6+38.5+2])tornillo();
//translate([-7+30,4,6+10+10])rotate([0,0,-90])tornillo();
//translate([-7+30,4+22,6+10+10])rotate([0,0,-90])tornillo();
translate([20,0,29.5])cube([6,50,20.5],center=true);
translate([20-10,39.5,29.5])cube([20,50,20.5],center=true);
}




