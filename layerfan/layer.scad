$fn = 64;

module torus(a,b){
R1=a;

R2=b;
    
RA=R1      /2;           // Radius   of  Torus
RB=R2      /2 - R1/2 ;     // Radius   of  Torus overall 

rotate_extrude(convexity = 10) // the value is the sides the finer
translate([RB, 0, 0])
circle(r = RA); // the value is the sides
}

difference(){

    union(){
        torus(9,60);
        translate([4,-40-6,0+15])cube([23,16,5+4],center=true);
        difference(){
            hull(){
                translate([4,-40-6,-5+15+2])cube([23+4,16+4,6],center=true);
                translate([4,-40-2-6,7])rotate([0,90,0])cylinder(r=8,h=23+4,center=true);
                translate([0,-28+4,4])rotate([0,0,0])rotate([0,90,0])cylinder(r=8/2,h=23+4,center=true);
            }

            hull(){
                translate([4,-40-6,-5+15+2])cube([23+4-3,16+4-3,6-3],center=true);
                translate([4,-40-2-6,7])rotate([0,90,0])cylinder(r=8-3,h=23+4-3,center=true);
                translate([0,-28+4,4])rotate([0,0,0])rotate([0,90,0])cylinder(r=8/2-3,h=23+4-3,center=true);
            }
        }


    }
    translate([0,0,-7])cylinder(r1=15,r2=27,h=7);
    torus(9-2,60-2);
    translate([4,-40-6,20])cube([23-4,16-4,30],center=true);
    translate([4,-20,16.5])rotate([90,0,0])cylinder(r=3/2,h=80);
                translate([0,-28+4,4])rotate([0,0,0])rotate([0,90,0])cylinder(r=8/2-1,h=23+4-3,center=true);
    }



module ventilador(){
    difference(){
        union(){
            difference(){
                union(){
                    translate([25,25,0])cylinder(r=50/2,h=2);
                    hull(){
                        translate([25,25,0])cylinder(r=4.5,h=2);
                        translate([50-3,3,0])cylinder(r=4,h=2);
                    }
                    hull(){
                        translate([25,25,0])cylinder(r=4.5,h=2);
                        translate([50-3,50-3,0])cylinder(r=4,h=2);
                    }
                    hull(){
                        translate([25,25,0])cylinder(r=4.5,h=2);    
                        translate([3,50-3,0])cylinder(r=4,h=2);
                    }
                }
                translate([3.5+43,3.5,-5])cylinder(r=3/2,h=30,$fn=16);
                translate([3.5+43,3.5+43,-5])cylinder(r=3/2,h=30,$fn=16);
                translate([3.5,3.5+43,-5])cylinder(r=3/2,h=30,$fn=16);
                translate([2,-2,2]) cube([23,30,16]);
            }

            translate([0,0,0])cube([27,25,2]);
        }
        hull(){
            translate([4.65,5.65-2,-0.1])cylinder(r1=3/2,r2=3/2,h=2.2,$fn=16);
            translate([4.65,5.65+15+5,-0.1])cylinder(r1=3/2,r2=3/2,h=2.2,$fn=16);
        }
        translate([27/2,-7/2,-2])cylinder(r=3/2,h=30,$fn=16);
        union(){
            translate([25,25,-1])cylinder(r=35/2,h=10);
            //translate([25-7,25-7,-1])cylinder(r=7,h=10);
            //translate([25-7,25+7,-1])cylinder(r=7,h=10);
            //translate([25+7,25+7,-1])cylinder(r=7,h=10);
            //translate([25+7,25-7,-1])cylinder(r=7,h=10);
        }
    }
}
//ventilador();