/// @description Insert description here
// You can write your code in this editor
if buffer_load("controls.json") {
							 var _buff = buffer_load("controls.json");
								var _data = buffer_read(_buff, buffer_text);
							buffer_delete(_buff); 
							 input_system_import(_data); 
}
else
{
	var _string = json_stringify(input_system_export(false, true), true);
									show_debug_message(_string);
									var _buff = buffer_create(1024, buffer_grow, 1);
									buffer_write(_buff, buffer_text, _string);
									buffer_save_ext(_buff, "controls.json", 0, buffer_tell(_buff));
									buffer_delete(_buff); 
}
						
							

randomize();

if icp("up") || icp("left")
{
	if(cur_index == 0)
	cur_index = 4
	else
	cur_index--
	
	repeatproof = 0;
}
if icp("down") || icp("right")
{
cur_index++	
repeatproof = 0;
}
cur_index = clamp(cur_index, 0, array_length(menu))
if cur_index > 4
cur_index = 0;
if(icp("kick"))
past_index = cur_index
if icr("kick") && cur_index == past_index{
switch (cur_index){
case 0:
/*global.game_type = P1VAI;
global.enemy_type = CONT_COM;
nextroom = charsel; */
audio_play_sound(invalid, 5, false);
break
case 1:
global.game_type = P1VP2;
global.enemy_type = CONT_P2;
nextroom = connection_screen
break
case 2:
//audio_play_sound(invalid, 5, false);
global.game_type = PRACTICE;
global.enemy_type = CONT_COM;
nextroom = charsel; 
break
case 3:
nextroom = options_room
break
case 4:
game_end();
break

default:
room_goto_next()
break
}
}