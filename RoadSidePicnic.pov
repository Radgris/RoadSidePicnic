 #include "colors.inc"
 #include "stars.inc"  
 #include "stars.inc"  
 #include "textures.inc"
 
   camera{
    location <0, 2, -10>
    look_at 0
    angle 30
  }
  
   light_source{ <1000,1000,-1000> White }
    
    //water
    height_field {
    tga "image.tga"
    smooth
    pigment {transmit 0.5}
    texture {Water}
    translate <-.5, -.4, -.8>
    scale <19, .25, 17>
  }     
    //Mountain
    height_field {
    tga "image.tga"
    smooth
    //pigment { White }
    texture {Sandalwood}
    translate <-.5, -.45, 1>
    scale <60, 9, 3>
  }     
    //Shore
    height_field {
    tga "image.tga"
    smooth
    pigment { White }
    translate <-.5, -.45, -6>
    scale <30, 2, 1>
  } 
  //fog
  
  fog {
    distance 150
    color rgbt<0.3, 0.5, 0.2, 1>
    fog_type 2
    fog_offset 25
    fog_alt 1
    turbulence 0.1
    turb_depth 0.2
  }
  fog {
    distance 150
    color rgbt<0.5, 0.1, 0.1, 1>
    fog_type 2
    fog_offset 15
    fog_alt 4
    turbulence 0.2
    turb_depth 0.2
  }
  fog {
    distance 150
    color rgbt<0.1, 0.1, 0.6, 1>
    fog_type 2
    fog_offset 10
    fog_alt 2
  }
    
 

sphere{ <0,0,0>, 1
        texture{ Starfield1 scale 0.1
               } // end of texture
        scale 10000
 }                   
                  
                  
