#include "colors.inc"    
#include "stones.inc"

background { color SummerSky }        

plane {<0,1,0>,0 pigment{checker color Green color Grey scale 1 rotate <0,30,0>}} 


camera {   
  location <0,8,-10>
  look_at <0,0,0>    
}

light_source {<10, 10, -5>rgb <.95,.97,1>*2}       

   
box{<-2,0,-2>,<2,2,2> pigment {Brown}} 
box{<-4,2.05,-4>,<4,2.1,4> pigment{Blue transmit .9 } finish{reflection 0.15} interior{ior 1.5}}
sphere{<0,3.8,0>,1.5 pigment{Grey transmit 0.4} interior{ior 1.5 dispersion 1.2}}

    