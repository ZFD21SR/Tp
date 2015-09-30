#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"


plane{<0,1,0>,1 hollow
       texture{
        pigment{ bozo turbulence 0.92
          color_map {
           [0.00 rgb <0.2, 0.3, 1>*0.5]
           [0.50 rgb <0.2, 0.3, 1>*0.8]
           [0.70 rgb <1,1,1>]
           [0.85 rgb <0.25,0.25,0.25>]
           [1.0 rgb <0.5,0.5,0.5>]}
          scale<1,1,1.5>*2.5
          translate<1.0,0,-1>
          }
        finish {ambient 1 diffuse 0}
        }
        scale 10000
     }


fog { fog_type   2
      distance   250
      color      White
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
      }
                                        
                                  

camera {
  location <1, 1, -13>
  look_at <0, 0, 0>
}


light_source {
  <-5,-5,-5>
   rgb <.95,.97,1>*2  
}     


plane {<0,1,0>,0 pigment {color Grey}} 

#declare Body_Texture = 
         texture { //Chrome_Metal 
                   pigment{ color rgb< 1.0, 0.6, 0.05> } //  light orange
                   normal { bumps 0.15 scale 0.45 }
                   finish { phong 0.3 reflection 0.00}
                 } // end of texture 
#declare Inside_Texture = 
         texture { pigment{ color rgb< 1, 1, 1>*0.75 } //  color Gray75
                // normal { bumps 0.5 scale 0.05 }
                   finish { diffuse 0.9 phong 0.1}
                 } // end of texture 
#declare Seat_Texture = 
         texture { pigment{ color rgb< 1, 0.85, 0.75>*1.1  }// very light brown  
                   normal { bumps 0.5 scale 0.025 }
                   finish { phong 1 reflection 0.00}
                 } // end of texture 


//--------------------------------------------------------------------------
#include "Helicopter_01.inc"
//--------------------------------------------------------------------------
object{ Helicopter_01 ( 10,// Rotor_Rotation, // main rotor 
                        100,// Backside_Rotor_Rotation, // main rotor 

                        Body_Texture, 
                        Inside_Texture, 
                        Seat_Texture
                      ) //-------------------------------------------
scale <1,1,1> 
rotate <0,0,0>
translate <0,0,0>
} 
 