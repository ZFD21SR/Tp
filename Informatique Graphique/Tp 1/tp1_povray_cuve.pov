#include "colors.inc"    
#include "stones.inc"


background { color White }        

plane {<0,1,0>,0 texture {T_Stone1}} 


camera {   
  location <10,20,-20>
  look_at <0,0,0>    

}


light_source {<0, 25, -15>rgb <.95,.97,1>}       

    
union{     
    difference{           
        cone {<0,8,0>,8,<0,1,0>,6 pigment {Orange}}
        cone {<0,8.1,0>,8,<0,1.1,0>,6 pigment {Silver}}   
   }   
}