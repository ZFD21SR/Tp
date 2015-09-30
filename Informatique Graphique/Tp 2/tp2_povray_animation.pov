#include "colors.inc"


background { color Cyan }


camera {
  location <0, 0, -10>
  look_at <0, 0,0>
}


light_source {
  <2, 4, -3>
  color White
}


sphere {
  <0, 0, 0>, 1
  texture {
    pigment { Red }
  }
  translate <-0.5+clock,0,10>
}