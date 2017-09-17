
R1=2;

R2=10.2;









module Torus(R1,R2);
{
    
  RA=R1      /2;           // Radius   of  Torus
  RB=R2      /2 - R1/2 ;     // Radius   of  Torus overall 
    
rotate_extrude(convexity = 10, $fn = 144) // the value is the sides the finer
translate([RB, 0, 0])
circle(r = RA, $fn = 144); // the value is the sides
}