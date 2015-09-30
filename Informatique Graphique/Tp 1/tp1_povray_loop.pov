
#include "colors.inc"


background { color Cyan }
   
plane {<0,1,0>,0 pigment {color Red}}  
   

camera {
    location <12,40,12>
    look_at <12,0,12>
}


light_source { <-40, 40, -40>color White}


#declare I=0;
#while (I < 9)
 #declare J=0;
 #while (J < 9)
   sphere {
   <I*3, 1, J*3>, 1
   texture {
     pigment { color Yellow }
   }
}
 #declare J=J+1;
 #end
#declare I=I+1;
#end