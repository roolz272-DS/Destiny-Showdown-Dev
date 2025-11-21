/// @description Insert description here
//show_debug_overlay(true);
// You can write your code in this editor
player1 = global.p1;
player2 = global.p2;
draw_set_alpha(1);
p1x = room_width/2-120;
p2x = room_width/2+120;
p12y = 444;
if global.game_type == PRACTICE {
player2.hp = player2.max_hp;	
if(input_check_long("pause", 0))
{
	input_source_mode_set(INPUT_SOURCE_MODE.HOTSWAP);
	room_goto(main_menu);
}
}
//show_debug_message(room_speed);
if(roundstart > 0)
{
	roundend = 0;
	player1.x = p1x;
	player2.x = p2x;
	player1.y = p12y;
	player2.y = p12y;
	player1.image_xscale = 1;
	player2.image_xscale = -1;
	timer = 99;
	if(p1_wins + p2_wins == 0)
	{
		
	player2.state = TRANSITION_STATE;
	
	player1.state = TRANSITION_STATE;
	}
	
if(p1_wins > 1 || p2_wins > 1)
	{
		if(p2_wins > 1)
		global.winner = global.p2_char
		else
		global.winner = global.p1_char
		room_goto(results_screen);
	}
	else if(p1_wins <= 1 || p2_wins <= 1)
	{
			player2.state = TRANSITION_STATE;
	
	player1.state = TRANSITION_STATE;
	if alarm[0] < 0 {
	alarm[0] = room_speed*2
	}
}
	
		roundstart = 0;
}

if(p1_wins + p2_wins + 1 > roundnum)
{
roundnum = p1_wins + p2_wins + 1;	
}

if(player1.hp <= 0 || player2.hp <= 0 || roundend = 1)
{
	if(player1.hp <= player2.hp && player2.state != TRANSITION_STATE) {
	p2_wins++;
	player2.state = TRANSITION_STATE;
	} else if(player2.hp <= player1.hp && player1.state != TRANSITION_STATE) {
	p1_wins++;
	player1.state = TRANSITION_STATE;
	}
	go = 0;
	if alarm[1] < 0 {
	alarm[1] = room_speed*2	
	}
	

	
}
if global.game_type != PRACTICE 
{
if (go == 1) && timer > 0 {
	if alarm[2] < 0 {
alarm[2] = room_speed
	}
}
if timer == 0
{
	roundend = 1;
}
}