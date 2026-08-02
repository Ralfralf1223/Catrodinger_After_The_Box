

pega_input();
checa_chao();
movimento();
ajusta_xscale();
estado();
estado_morrendo();





  if (keyboard_check_pressed(ord("E")) && tipo_gato == 0 && estado != estado_caixa) 
{
    var porta = instance_place(x + dir * 8, y, obj_porta);

    
    
    if (porta != noone)
    {
        instance_destroy(porta);
        audio_play_sound(sd_porta, 1, 0)
    }
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

