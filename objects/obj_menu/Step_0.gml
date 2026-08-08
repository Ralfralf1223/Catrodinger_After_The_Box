

if (keyboard_check_pressed(vk_down))
{
    opcao++;
    
    if (opcao > 1)
        opcao = 0;
}

if (keyboard_check_pressed(vk_up))
{
    opcao--;
    
    if (opcao < 0)
        opcao = 1;
}

if (keyboard_check_pressed(vk_enter))
{
    switch (opcao)
    {
        case 0:
            room_goto(rm_1); 
        break;
        
        
        case 1:
            game_end();
        break;
    }
}




