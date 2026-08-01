

pega_input();
checa_chao();
movimento();
ajusta_xscale();
estado();
estado_morrendo();



if (keyboard_check_pressed(vk_shift))
{
    
    estado = estado_caixa
    
    
}

  if (keyboard_check_pressed(ord("E")) && tipo_gato == 0 && estado != estado_caixa) 
{
    var porta = instance_place(x + dir * 8, y, obj_porta);

    
    
    if (porta != noone)
    {
        instance_destroy(porta);
    }
}


if (tipo_gato != 3)
{
    
    imune_acido = false;
    
    
}
