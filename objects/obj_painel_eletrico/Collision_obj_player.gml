
show_debug_message("Painel ativado");

if (!ativado && instance_exists(porta) && other.tipo_gato == 4)
{
    ativado = true;

    with (porta)
    {
        paineis_ativados++;

        if (paineis_ativados >= paineis_necessarios)
        {
            instance_destroy();
            audio_play_sound(sd_porta_ele, 1, 0)
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





