

pega_input();
checa_chao();
movimento();
ajusta_xscale();
estado();
estado_morrendo();
abre_porta();




  //if (keyboard_check_pressed(ord("E")) && tipo_gato == 0 && estado != estado_caixa) 
//{
    //var porta = instance_place(x + dir * 8, y, obj_porta);
//
    //
    //
    //if (porta != noone)
    //{
        //with (obj_porta)
        //{
        	//
            //
            //estado = "abrindo"
            //
        //}
        //audio_play_sound(sd_porta, 1, 0)
    //}
//}





if (keyboard_check_pressed(ord("F")))
{
    show_debug_message("D: " + string(right));
show_debug_message("A: " + string(left));
show_debug_message("velh: " + string(velh));
show_debug_message("x: " + string(x));
show_debug_message("bbox_left: " + string(bbox_left));
show_debug_message("bbox_right: " + string(bbox_right));
show_debug_message("colisao direita: " + string(place_meeting(x + 1, y, colisoes)));
show_debug_message("colisao esquerda: " + string(place_meeting(x - 1, y, colisoes)));
}






if (keyboard_check_pressed(ord("R")))
{
    
    room_restart()
    
    
}


if (tipo_gato != 3)
{
    
    imune_acido = false;
    
    
}

if (tipo_gato != 4 )
{
    
    imune_raio = false;
    
    
}

//if ( tipo_gato == 4 && estado != estado_caixa) 
//{
    //var _porta_ele = instance_place(x + dir * 8, y, obj_painel_eletrico);
    //
    //
    //
    //if (_porta_ele != noone)
    //{
        //instance_destroy(_porta_ele);
    //}
//}

