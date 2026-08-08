

if (keyboard_check_pressed(vk_down))
{
    opcao++;
    
    if (opcao > 2)
        opcao = 0;
}

if (keyboard_check_pressed(vk_up))
{
    opcao--;
    
    if (opcao < 0)
        opcao = 2;
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




