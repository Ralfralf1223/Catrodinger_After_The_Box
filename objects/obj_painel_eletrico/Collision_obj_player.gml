
show_debug_message("Painel ativado");

if (!ativado && instance_exists(porta) && other.tipo_gato == 4)
{
    ativado = true;
    image_index = 1;
    image_speed = 0;

    with (porta)
    {
        paineis_ativados++;

        if (paineis_ativados >= paineis_necessarios)
        {
            destruindo = true;
            image_index = 1;
            image_speed = 0
            alarm[0] = FPS;

            audio_play_sound(sd_porta_ele, 1, 0);
        }
    }
}


if (!acido)
{
    
    with (obj_acido)
    {
        instance_destroy()
        
        
    }
    
}





