#include "colors.inc"    
#include "stones.inc"

background { color SummerSky }        
plane {<0,1,0>,0 pigment{color White}} 

global_settings {
	max_trace_level 50
	assumed_gamma  2.1  
	ambient_light  1.5  
}


camera {   
  location <0,3,-7>
  look_at <0,0,0>    
}                     


box{<-8,0,-8>,<8,20,8> pigment{Grey}}
sphere{<0,1,0>,1 pigment{Blue}}

  

box{<-4,0.1,7.8>,<4,20,7.9> pigment{Black}finish{ambient 0diffuse 0reflection {1}}} 
box{<-4,0.1,-7.8>,<4,20,-7.9> pigment{Black}finish{ambient 0diffuse 0reflection {1}}}  
  
light_source {<0, 9, 0> rgb <.95,.97,1>}       
