			 			if(menu_selection == 10 && input_check_pressed("kick")) {
								    var _string = json_stringify(input_system_export(false, true), true);
									show_debug_message(_string);
									var _buff = buffer_create(1024, buffer_grow, 1);
									buffer_write(_buff, buffer_text, _string);
									buffer_save_ext(_buff, "controls.json", 0, buffer_tell(_buff));
									buffer_delete(_buff);
							 audio_play_sound(rizz, 4, false);
			}
			 			if(menu_selection == 11 && input_check_pressed("kick")) {
							 var _buff = buffer_load("controls.json");
								var _data = buffer_read(_buff, buffer_text);
							buffer_delete(_buff); 
							if (not input_system_verify(_data))
							 {
							 audio_play_sound(invalid, 4, false);
							 }
								else
							 {
								 audio_play_sound(rizz, 4, false);
							 input_system_import(_data);
							}
			}
 if (!input_binding_scan_in_progress())
    {
        
        menu_selection += input_check_opposing_pressed("up", "down") + input_check_opposing_repeat("up", "down");
        
        
        menu_selection = (menu_selection + 12) mod 12;


        
		if(kc(vk_escape) && !input_binding_scan_in_progress())
		{

		room_goto(options_room)	
		}
        
        if (input_check_pressed("kick") && menu_selection < 10)
        {
			
            switch(menu_selection)
            {
                case 0: rebinding_verb = "left";   break;
                case 1: rebinding_verb = "right";  break;
                case 2: rebinding_verb = "up";     break;
                case 3: rebinding_verb = "down";   break;
                case 4: rebinding_verb = "jump"; break;
				case 5: rebinding_verb = "punch"; break;
				case 6: rebinding_verb = "kick"; break;
				case 7: rebinding_verb = "special"; break;
				case 8: rebinding_verb = "guard"; break;
				case 9: rebinding_verb = "flow"; break;
            } 
            
            //Ensure we don't scan for vk_escape as that is used for the "pause" verb (which cancels rebinding)
            input_binding_scan_params_set([vk_escape]);
            
            //Start binding. We specify some code to execute when a new binding is inputted by the player
            //We use the basic input_binding_set_safe() function here but input_binding_set() can be used too for more complex situations
            input_binding_scan_start(function(_binding)
            {
                input_binding_set_safe(rebinding_verb, _binding);
            });
        }
    }
