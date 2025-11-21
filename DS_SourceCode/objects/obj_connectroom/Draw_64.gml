var _string = "";
_string += "Connect your Controllers!\n";
_string += "\n";
if(notdone = 0)
{
if (!input_player_connected(0))
{
    _string += "Player 1, press a key/button to join!\n";
    _string += "\n";
    _string += "\n";
    _string += "Player 2, wait a sec.\n";
    _string += "\n";
    _string += "\n";
	
	draw_sprite_stretched(p1_unknown, 0, 220, 200, 200, 200)	
		
}
else
{
    _string += "Player 1 in! (Press " + input_verb_get_icon("punch", 0) + " to leave)\n";
    _string += "Using " + (input_source_using(INPUT_GAMEPAD, 0)? input_gamepad_get_description(input_player_get_gamepad(0)) : "keyboard + mouse") + "\n";
    _string += "\n";	
	if(input_source_using(INPUT_GAMEPAD, 0))
	{
		draw_sprite_stretched(p1_controller, 0, 220, 200, 200, 200)
		input_color_set(c_yellow, 0)
	}
	else
	{
		draw_sprite_stretched(p1_keyboard, 0, 220, 200, 200, 200)
	}
    
    if (!input_player_connected(1))
    {
        _string += "Player 2, press a key/button to join!\n";
        _string += "\n";
        _string += "\n";
		
		draw_sprite_stretched(p2_unknown, 0, 440, 200, 200, 200)
    }
    else
    {
        _string += "Player 2 in! (Press " + input_verb_get_icon("punch", 1) + " to leave!)\n";
        _string += "Using " + (input_source_using(INPUT_GAMEPAD, 1)? input_gamepad_get_description(input_player_get_gamepad(1)) : "keyboard + mouse") + "\n";
        _string += "\n";
		if(input_source_using(INPUT_GAMEPAD, 1))
	{
		draw_sprite_stretched(p2_controller, 0,440, 200, 200, 200)
		input_color_set(c_aqua, 1)
	}
	else
	{
		draw_sprite_stretched(p2_keyboard, 0, 440, 200, 200, 200)
	}
    }
}

if (input_join_is_finished())
{
    _string += "\n";
    _string += "Player 1, hold \"" + input_verb_get_icon("kick") + "\" to start the Showdown!\n";
}
}
if(input_join_is_finished() && input_check_long("kick",0))
{
	notdone = 1;
	_string = "";
}

draw_text(230, 10, _string);