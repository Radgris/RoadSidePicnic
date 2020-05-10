#include "stars.inc"  
#include "colors.inc"  
#include "stones.inc"              
#include "textures.inc" 
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"
 
   camera{
    location <0, 2, -10>
    //location <5, 10, -20>  //Test view, erase after project is complete
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
    color rgb<0.3, 0.5, 0.2>
    fog_type 2
    fog_offset 25
    fog_alt 1
    turbulence 0.1
    turb_depth 0.2
  }
  fog {
    distance 150
    color rgb<0.5, 0.1, 0.1>
    fog_type 2
    fog_offset 15
    fog_alt 4
    turbulence 0.2
    turb_depth 0.2
  }
  fog {
    distance 150
    color rgb<0.1, 0.1, 0.6>
    fog_type 2
    fog_offset 10
    fog_alt 2
  } 
   
   
  //Radiosity for spaceship engines
  
  /* Dron, hay que descomentar para render final 
    
    global_settings
   {
     radiosity
     {
         pretrace_end 0.01
         count 350 
         low_error_factor 0.3
         nearest_count 10
         media on
     }
   }*/
    
 
//SKybox
sphere{ <0,0,0>, 1
        texture{ Starfield1 scale 0.1
               } // end of texture
        scale 10000
 }                   
                  
      
//Center marker
//Erase after finishing project   
cone {
    <0, 10, 0>, 0.1    // Center and radius of one end
    <0, 0, 0>, 0.1    // Center and radius of other end  
    rotate 90*y 
    scale <.2,.2,.2>
    pigment { Green }
}          

 /* Dron, hay que descomentar para render final 
 
//Spaceship construction
#declare propulsors = 
   difference {
       torus {
        4, 1.2             // major and minor radius
        rotate -90*y     
        texture {Brushed_Aluminum}
        }        
        torus {
        5, .6           
        rotate -90*y     
        pigment { color rgbt 1.0 }
         hollow
         interior
         {
             media
             {
                 emission rgb <1.0, 0.7, 0.2>*0.1
                 density
                 {
                     gradient x
                     sine_wave
                     density_map
                     {
                         [0 rgb <1,0.3,0>]
                         [1 rgb 1]
                     }
                     scale 10
                     translate x*3
                 }
             }
         }
        }   
        
        
   }  
   

#declare antenae = 
    difference {  
        cone {
        <0, 5, 0>, 0.1    // Center and radius of one end
        <0, 0, 0>, 0.7    // Center and radius of other end  
        rotate 90*y
        texture {Brushed_Aluminum}
        }  
        sphere{
        <1, 3, -1>, 1.3
        texture {Brushed_Aluminum}
        }   
        sphere{
        <-1, 3, -1>, 1.3
        texture {Brushed_Aluminum}
        }
        sphere{
        <1, 3, 1>, 1.3
        texture {Brushed_Aluminum}
        }
        sphere{
        <-1, 3, 1>, 1.3
        texture {Brushed_Aluminum}
        } 
    }  
    
    
#declare SpaceShipBody =
    difference {
        sphere {0,4 texture {Brushed_Aluminum}}    
        sphere {<0,8,0>,7.7 texture {Brushed_Aluminum}}
    }
      
      
#declare propulsorsWithAntenae = union {
    object{propulsors translate 0}
    object{antenae translate <2.8,1,2.8>}
    object{antenae translate <-2.8,1,2.8>}
    object{antenae translate <2.8,1,-2.8>}
    object{antenae translate <-2.8,1,-2.8>}
} 
     
   
#declare SpaceShip = union {
    object {propulsorsWithAntenae translate <5,0,5>}   
    object {propulsorsWithAntenae translate <5,0,-5>}
    object {propulsorsWithAntenae translate <-5,0,-5>}
    object {propulsorsWithAntenae translate <-5,0,5>}  
    object {SpaceShipBody translate 0}
}

//Spaceship construction ends     




//Spaceship rotation and scale
#declare shipRotated = object{
    SpaceShip 
    translate 0
    scale <.03,.03,.03> 
    
    rotate -15*y
    rotate -15*z 
    rotate -15*x 
    }
 
 
//spaceship positioning 
object { shipRotated translate <-1,0.2,-2>}                       

*/ //final del comentario del dron
