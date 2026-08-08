


 randomize();


velh     =    0;
max_velh =    1;
velv     =    0;
max_velv =    4;
grav     =  0.18;
dir      =    0;
vida     =    1;


tipo_gato = 0;
imune_acido = 0;
imune_raio  = 0;


right = 0
left = 0

colisoes = [obj_parede];

estado = noone;


pega_input = function ()
{
    
    right = keyboard_check(ord("D") );
    left = keyboard_check(ord("A") );
    jump = keyboard_check_pressed(vk_space);
    
}



checa_chao = function ()

{
    
    chao = place_meeting(x, y + 1, colisoes)
    
    
    
}


aplica_velocidade = function ()
{
    
 checa_chao();
    
    
    if (tipo_gato == 4)
    {
        
        velh = (right - left) * max_velh * 2;
        
    }
     else
    {       
        //aplicando os inputs
        velh = (right - left) * max_velh;
    
    }  
    
  
    
   
    //aplicando gravidade
    
    if(!chao)
        
        {
          
                
             velv += grav;
        }
     else 
        { 
            velv = 0;
            
            
            y = round(y);
            
            if (jump)
                
                 
            
                {
                    
                if (tipo_gato == 1) // Gato laranja
                {
                    
                    audio_play_sound(sd_pulo, 1, 0)
                    velv = -max_velv * 2;
                }
                    
                else if (estado != estado_caixa) // Gato branco
                {
                    audio_play_sound(sd_pulo, 1, 0)
                    velv = -max_velv;
                }
                }
            
        }
    
    
    
    var max_pulo = max_velv;

    if (tipo_gato == 1)
    {
        max_pulo *= 1.5;
    }

    velv = clamp(velv, -max_pulo, max_velv);
    
    
    
}
            
movimento = function ()
{
  movimento = function ()
{
    if (velh != 0)
    {
        move_and_collide(velh, 0, colisoes, 24);
    }

    if (velv != 0)
    {
        move_and_collide(0, velv, colisoes, 24);
    }
}
    
}




//maquina de estados












//estado_parado = function ()
//{
    //aplica_velocidade();
//
    //atualiza_sprite("idle");
//
    //if (right xor left)
        //estado = estado_movendo;
//
    //if (jump || !chao)
        //estado = estado_pulando;
        //
//}



estado_parado = function ()
{
    aplica_velocidade();
    atualiza_sprite("idle");

    if (right xor left)
    {
        estado = estado_movendo;
    }

    if (jump || !chao)
    {
        estado = estado_pulando;
    }
}


estado_morto = function ()
{
    
   
   
    
        
           room_restart();
        
    
    
 
    
}


estado_morrendo = function ()
{
    
    if (vida <= 0)
    {
        audio_play_sound(sd_morte, 1, 0)
        estado = estado_morto
        
    }
    
    
}



estado_caixa = function ()
{
    velv = 0;
    velh = 0;
    aplica_velocidade();

    troca_sprite(spr_caixa);

    if (jump)
    {
        velv = 0;
    }

    if (keyboard_check_pressed(ord("B")))
    {
        tipo_gato = 0;
        estado = estado_parado;
        audio_play_sound(sd_selection, 1, 0);
    }

    if (keyboard_check_pressed(ord("L")))
    {
        tipo_gato = 1;
        estado = estado_parado;
        audio_play_sound(sd_selection, 1, 0);
    }

        
    
    
}

    
   
   
 








   troca_sprite = function (_sprite = spr_parede)
{
    
    if (sprite_index != _sprite) 
    {
    	
        
        sprite_index = _sprite
        
        image_index = 0
        
    }
    
}

atualiza_sprite = function(_estado)
{
    switch (_estado)
    {
        case "idle":
            if (tipo_gato == 0)
                troca_sprite(spr_player_idle);
            else if (tipo_gato == 1)
                troca_sprite(spr_player_idle_laranja);
            else if (tipo_gato == 3)
                troca_sprite(spr_player_idle_esqueleto)
            else if (tipo_gato == 4)
                troca_sprite(spr_gato_choque)
        break;

        case "move":
            if (tipo_gato == 0)
                troca_sprite(spr_player_move);
            else if (tipo_gato == 1)
                troca_sprite(spr_player_move_laranja);
            else if (tipo_gato == 3)
            	troca_sprite(spr_move_esqueleto)
            else if (tipo_gato == 4)
                troca_sprite(spr_move_choque)
        break;

        case "jump":
            if (tipo_gato == 0)
                troca_sprite(spr_player_jump_branco);
            else if (tipo_gato == 1)
                troca_sprite(spr_player_jump_laranja);
            else if (tipo_gato == 3)
                troca_sprite(spr_player_jump_esqueleto)
            else if (tipo_gato == 4)
                troca_sprite(spr_player_jump_choque)
        break;

        case "caixa":
            troca_sprite(spr_caixa);
        break;
    }
}




ajusta_xscale = function ()
{
    if (velh != 0)  
    {
        dir = sign(velh);
        
        image_xscale = dir;
    }
    

   

    
    
}


estado_movendo = function ()
{
    aplica_velocidade();

    atualiza_sprite("move");

    if (velh == 0)
    {
        estado = estado_parado;
    }

    if (jump || !chao)
    {
        estado = estado_pulando;
    }
}


estado_pulando = function ()
{
    aplica_velocidade();
    
   

    atualiza_sprite("jump");

    if (chao)
    {
        estado = estado_parado;
    }
}



estado = estado_caixa



if (MOBILE)
{

virtual_key_add(20, 600, 64, 64, ord("A"))
virtual_key_add(180, 600, 64, 64, ord("D"))
virtual_key_add(300, 500, 64, 64, ord("C"))
virtual_key_add(400, 500, 64, 64, ord("E"))
virtual_key_add(100, 500, 64, 64, vk_space)
virtual_key_add(200, 500, 64, 64, vk_shift)


}

abre_porta = function ()
{
    
    var _porta = instance_place(x + 10, y, obj_porta)
    
    if(_porta)
        if (keyboard_check_pressed(ord("E")) && _porta.estado == "fechada" && tipo_gato == 0 && estado != estado_caixa) 
        {
        	audio_play_sound(sd_porta, 1, 0)
            _porta.estado = "abrindo";
            
        }
    
}