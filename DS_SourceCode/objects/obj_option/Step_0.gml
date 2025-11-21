/// @description Insert description here
// You can write your code in this editor
if option_index > 3
option_index = 0;

	if (pullup_credits = 0) {

if((input_check_pressed("down", 0)))
{
option_index++	
}
if((input_check_pressed("up", 0)))
{
	if(option_index = 0)
	option_index = 3;
	else
option_index--	
}
if((input_check_pressed("kick", 0)))
{
	if(option_index = 0)
	{
	if(option_fullscreen == 0)
	{
	option_fullscreen++;
	window_set_fullscreen(true);
}
else
option_fullscreen--;
window_set_fullscreen(false);
	}
	if(option_index = 1)
	{
	room_goto(controls_screen);
	}
	if(option_index = 2)
	{
	pullup_credits = 1;	
	}
	if(option_index = 3)
	{
	room_goto(main_menu);
	}
}
	}
	if (pullup_credits = 1) {
	
		if(input_check_pressed("punch", 0))
		{
			pullup_credits = 0;
		}
	}