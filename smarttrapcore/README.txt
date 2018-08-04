                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:651117
SmartrapCore by smartfriendz is licensed under the GNU - GPL license.
http://creativecommons.org/licenses/GPL/2.0/

# Summary

   
*Updates*  
**07-12-2017** : long time after, here are the new plates that was used in production at the end. The new source is in onshape : https://cad.onshape.com/documents/086229ea796640d29acd68ff/w/2030a3358fd641da896d20a5/e/1e4ef00263ee4eae9316731a
**06-08:** : plates stl was not manifold in slic3r. Now they have been repaired in netfabb basic. it works everywhere.  
**06-06:** : add some accessories like ramps support . Support for endstopY and some little debugs. It's going more and more clean now to assemble. Thank you to all from the community for feedback.  
**05-28: version 1.2.2"** : some debug of 1,2 + new places for endstop X/Y .  X goes under head , so cable can go with the head cables , Y goes on the right wall, fixed. no more danging cables for endstops.  
**04-10: little update** . was alignment problem between Yslides and XYbearings  
**04-09 : Version 1.2** : Big changes everywhere but extruder :   
-> bearingsXY : now fix on the side ,more easy to build and far more solid on the Y rod ( it was breaking too easy)  
-> Head : new one piece part , was problem with assembly. when you fix, parts are not aligned and bearings become hard. was not stable enough  
-> new inductive support : more solid and lower  
-> new slideY : far more solid, Xrods are further away , we have now an iso assembly (allmost)  
-> new Zslide : more solid, bigger, we fix the plank with 4 wood screws . no need to counterdrill anymore.   

**03-13** : new plate 2 : Ztop bearing and GT2 hole too small. The belt was touching the part !  
**03-06**: new plates : reinforced Y support on bearingsXY, screws holes on Yslide, now only one Yslide has endstop support  
**02-28**: new plate2 : ztop was bad oriented.  
**02-27** : new plates. *not necessary to update* : holes for jhead support in head was too low for 8mm rod version. update for compatibility. not important for this version 6mm XY rods.  
**02-27**: new plate2 . Jhead attach with inductive sensor was not well oriented on the plate  

***  
link to the smartrapcore / smartrap group with lot of accessories :   
http://www.thingiverse.com/groups/smartrap  

***  
This is the new model out of the http://smartfriendz.com  lab !   

**new video** : https://youtu.be/7opAXs0lU5o  

The video chanel is mixed with our smartrap project. There is not much videos for now about the smartrapcore, but it's coming, especially the full assembly video serie !  


This kit is ready to sell and published here , exactly like the smartrap project wich was a frank success on the open source side.. thank you to all !  

To have something different from the Smartrap, we started the project from a coreXY base and made it as simple as the Smartrap to assemble and update.  

The box doesn't have any cut and there is no special or too  precise operation to do to assemble this model. Printed elements are simply put on top of the box ans screwed with simple wood srews.  

The sources are written in code in openjscad and published on youmagine :   https://www.youmagine.com/designs/smartcore   

There will be "certainly" a customizable version here in openscad,   
I'm working on it too .   

Here you can find the stl files for a common choice of elements :  
- 10mm wood  
- Nema17  
- X and Y rods in 6mm and Z rods in 8mm .  

With the openjscad, you get options for Wood thickness, nema size, rods size , printable size .  
You can choose the "what to show" selector to have :   
- all assembly  
- parts plates to export ( be carefull, it works direct in cura but not in slic3r, you need to repair parts with netfab basic for it )   
- wood and dos sizes ( printed on models ).  
- separate elements.  

You can ofcourse play with it and edit the file as you want .. the source is quiet clean ( even if scary at first read :) .  

Soon to come :   
- BOM   
- assembly videos  
- integrated assembly in the openjscad file.  


# Instructions

BOM:  

**Wood** : 4 planks sized like output in openjscad. Thickness is as you like.  

**Printed parts** : please use the output of openjscad related to your parameters  

**Screws:** 6 x M3x30 / 6 x M3x25 / 10 x M3x16 / 10 x M3x10 / 5 x M3 nuts / 12 x 3.5 wood screw flat head! / 5 x M8x25  

**Rods:**  4 rods XY , diameter and length like in parameters. 2 rods Z , like in parameters.  

**Stepper motors :** 4 ( X Y Z extruder)  nema17. Can be 40mm or 48mm length.   

**electronics:** can be any reprap electronics. we develop with ramps 1.4.  

**Inductive sensor:**  LJ18A3-8-Z/BX  

**Hotend:** Jhead type.  

**Bearings:** 10 x 608zz. 4 lm8uu . 8 lm6uu ( or 12 lm8uu if rodsXY 8mm).   

**Bowden cable:** 70 cm . in diameter 2 , out diameter 4.  

**GT2 belt 6mm :** around 3 meters . See openjscad related to your parameters  

**GT2 pulleys :** 3 x 20 teeth.  

**pressfit :**  2 x 4mm with M6 thread.