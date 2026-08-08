

estado = "fechada";

vida = alarm [0]

//ps_porta_abrindo
ps = part_system_create();
part_system_draw_order(ps, true);

//Emitter
ptype1 = part_type_create();
part_type_shape(ptype1, pt_shape_smoke);
part_type_size(ptype1, 0.5, 0.85, 0.1, 0);
part_type_scale(ptype1, 0.07, 0.07);
part_type_speed(ptype1, 0.2, 0.2, 0.01, 0);
part_type_direction(ptype1, 34, 216, 0, 0);
part_type_gravity(ptype1, 0, 270);
part_type_orientation(ptype1, 0, 0, 0, 0, false);
part_type_colour3(ptype1, $969899, $4D4D4D, $4C4C4C);
part_type_alpha3(ptype1, 1, 1, 0.31);
part_type_blend(ptype1, false);
part_type_life(ptype1, 40, 60);


//pemit1 = part_emitter_create(ps);
//part_emitter_region(ps, pemit1, -10.497736, 10.497736, -16.030817, -13.969183, ps_shape_rectangle, ps_distr_linear);
//part_emitter_stream(ps, pemit1, ptype1, 1);
//part_emitter_interval(ps, pemit1, 4, 5, time_source_units_frames);
//
//part_system_position(ps, room_width/2, room_height/2);
//




maquina_estados = function()
{
    
    switch (estado) 
    {
    	case "fechada":
        {
            
               image_index = 0;
               image_speed = 0;
            
        }
        break;
    
        case "abrindo":
            
            {
                
            
            image_index = 1;
               image_speed = 0;
            
            x = xstart + random_range(-0.75, 0.75)
            
            
            vspeed = - 0.5;
            
           
            //if(!part_system_exists(ps))
            //{
                //
                //ps = part_system_create(ps_porta_abrindo)
                //
                //part_system_position(ps, x, y - sprite_height/0.95 )    
                //
                  //
            //} 
            var _x = x + random_range(-sprite_width / 1.5, sprite_width / 1.5)
                
            part_particles_create(ps, _x, ystart - sprite_height, ptype1, 1);
                
                
                
            
                
            if(y < ystart - 50)
            {
                
                estado = "aberta"
                alarm [0] = FPS;
            }
        }
        break;
        
    
        case "aberta":
        {
            
            vspeed = 0
            
            x = xstart
            
            image_index = 1;
            image_speed = 0;
            
            //part_system_destroy(ps);
            
        }        
        break;        
            
    }
    
}






