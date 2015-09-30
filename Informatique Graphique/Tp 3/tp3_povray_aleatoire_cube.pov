 #include "colors.inc"


 background { color White }


 camera {
   location <5, 5, -2>
   look_at <1, 2, 2>
 }


 light_source { 
   <2, 4, -3>
    color White
 }
 

#declare Rnd_1 = seed(498961);

#declare I=0;     
#while (I< 20)
#declare Nr1 = rand(Rnd_1);
#declare Nr2 = rand(Rnd_1);
#declare Nr3 = rand(Rnd_1);
#declare Nr4 = rand(Rnd_1);
#declare Nr5 = rand(Rnd_1);
#declare Nr6 = rand(Rnd_1);
#declare Nr7 = rand(Rnd_1);
#declare Nr8 = rand(Rnd_1);

#if (Nr8 >0.33)  
sphere {
    < 4*Nr1, 3*Nr2,8*Nr3>, Nr4/2
    texture {
      pigment { rgb <Nr5, Nr6, Nr7> }
    }
 }
    #else
    
    box {
    < 4*Nr1,3*Nr2,2*Nr3>,<3*Nr1,2*Nr2,3*Nr3> 
    pigment {rgb <Nr5, Nr6, Nr7>}}    

#end
 #declare I=I+1;
#end