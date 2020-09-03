module panel0(ax,ay,){
    cube([ax,18,ay]);
    echo("Panel", ax, " x ", ay);
}
module panel1(ax,ay,){
    cube([ax,ay,18]);
    echo("Panel", ax, " x ", ay);
}
module panel2(ax,ay,){
    cube([18,ax,ay]);
    echo("Panel", ax, " x ", ay);
}

translate([-18,0,0])panel0(380+70+18,1750);//pared izq
translate([-18,18+530,0])panel0(380+70+18,1750);//pared der
translate([-18,18,0])panel2(530,1750);// tapa trasera del mueble

//de abajo para arriba los estantes
translate([0,18,50])panel1(380+70,530);//estante base
//translate([0,18,50 +700/3])panel1(380+70,530);//estante
translate([0,18,50+583/2])panel1(380+70,530);//estante
translate([0,18,50+700-18-100])panel1(380+70,530);// piso electronica
translate([0,18,50+700])panel1(380+70,530);// piso impresora
//translate([0,18,50+700+18+420])panel1(380+70,530);// techo impresora
translate([0,18,1750-18])panel1(380+70,530);// techo estructura
//fin de los estantes


translate([380+70-18,18,50+700+18+420])panel2(530,100);// parante delantero impresora impresora
translate([380+70-18,18,650])panel2(530,100);// parante delantero bajo la impresora
translate([380+70,0,50+700])panel2(530+18*2,420+18*2);// puerta impresora

//translate([380+70,0,50])panel2(530+18*2,450+100+18*3);// puerta impresora

translate([380+70,0,50+700+80+18*2+410])panel2(530+18*2,420+18*2+20);// puerta filamentos


translate([380+70-18,18,0])panel2(530,50);// tapa delantera abajo







