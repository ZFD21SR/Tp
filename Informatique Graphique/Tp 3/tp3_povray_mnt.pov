#include "colors.inc"	 
#include "textures.inc"	 
#include "functions.inc" 

#declare XC=1;
#declare YC=1;

light_source {
  0*x                  
  color rgb <1,1,1>   
  translate <XC, 4, YC>
  parallel
  point_at <XC, 0, YC>
}    


#declare XCam = 0;
#declare YCam = 0;      
#declare ZAlt=2;

camera {
  location  <XCam, ZAlt, YCam>
  look_at   <XCam+0.5, 0,  YCam+0.5>
  right     x*image_width/image_height
}                        

box {
    < -2,-2,-2>,<4,4,4> 
    }

height_field {
  jpeg "HF03.jpg"
  smooth
   water_level 0
   texture {
     pigment {
      gradient y       //this is the PATTERN_TYPE
      color_map {
        [0.0 0.3  color Green color Green]
        [0.3 0.6  color ForestGreen color ForestGreen]
        [0.6 0.9  color LightWood color LightWood]
        [0.9 1.0  color White color White]    
      }
    }
  
    }           
} 