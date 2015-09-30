
#include "colors.inc"


background { color Blue }
                                  
plane {<0,0,1>,0 pigment {color Red}}                                  
                                  

camera {
  location <5, 2, -13>
  look_at <5, 1, 2>
}


light_source {
  <-5,-5,-5>
   rgb <.95,.97,1>*2  
}     

 
sphere {
   <0, 1, -1>, 2
   texture {
     pigment { color Yellow }
   }
}  

sphere {<1, -1, -3>,1 texture{pigment{color Green}}}