//translate([-29,0,0])import("./smartrapcore/XY_motor_left - XY_motor_left.stl");
$fn=64;


linear_extrude(15)
difference(){
    
    offset(-5)
    offset(5)
    union(){
translate([-15,-53.5,0])
square([20,70]);
circle(d=20);}
circle(d=10);
translate([-5,-43.5,0])
circle(d=5.5);
translate([-5,-43.5+15,0])
circle(d=5.5);
translate([-5,-43.5+30,0])
circle(d=5.5);
translate([-5,-43.5+53,0])
circle(d=5.5);

}

