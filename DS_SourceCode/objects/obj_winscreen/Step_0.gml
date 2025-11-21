/// @description Insert description here
// You can write your code in this editor
if((input_check_pressed("down", 0)))
{
option_index++	
}
if((input_check_pressed("up", 0)))
{
option_index--	
}
if((input_check_pressed("kick", 0)))
{
	if(option_index = 0)
	{
	room_goto(connection_screen);
	}
	if(option_index = 1)
	{
	room_goto(main_menu);
	}
}