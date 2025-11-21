/// @description Insert description here
// You can write your code in this editor
if initcut = 0 { 
	var h = instance_create_layer(0,0, "Instances", obj_monitor)
	}
if p1_ready && p2_ready || p1_ready && com_ready {
	var h = instance_create_layer(0,0, "Instances", obj_monitor)
	h.spritechoice = charsel_fg_screen_bottom
}

if (!p1_ready || !com_ready && (global.game_type == P1VAI || global.game_type == PRACTICE)) {
if(input_check_pressed("right", 0))
{
	if !p1_ready{
	p1_index++
	}
	else 
	com_index++
}
if(input_check_pressed("left", 0))
{
	if!p1_ready{
	p1_index--
	}
	else
	com_index--
} 
if(input_check_pressed("kick", 0))
{
	if global.game_type == P1VAI || global.game_type == PRACTICE {
	if !p1_ready {
	p1_ready = true
	global.p1_char = p1_index
	
	} else {
		com_ready = true;
		global.ai_char = com_index;
		input_clear_momentary(self);
	}
	}else{
		
		p1_ready = true
		global.p1_char = p1_index
		
		input_clear_momentary(self);
		
	}
}



}
if global.game_type = P1VP2 {
if !p2_ready {
if(input_check_pressed("right", 1))
{
	p2_index++
}
if(input_check_pressed("left", 1))
{
	p2_index--
}
if(input_check_pressed("kick", 1))
{
	p2_ready = true
	global.p2_char = p2_index;
}}
}


if global.game_type == P1VP2 {
if p1_ready and p2_ready {
if(input_check_pressed("right", 0))
{
	if!stage_ready
	stage_index++
	
}
if(input_check_pressed("left", 0))
{
	if!stage_ready
	stage_index--
} 
if(input_check_pressed("kick", 0))
{
stage_ready = true	
}
if stage_ready
room_goto(versus_screen);
}
} if global.game_type == P1VAI || global.game_type == PRACTICE{
	if p1_ready and com_ready {
if(input_check_pressed("right", 0))
{
	if!stage_ready
	stage_index++
	
}
if(input_check_pressed("left", 0))
{
	if!stage_ready
	stage_index--
} 
if(input_check_pressed("kick", 0))
{
stage_ready = true	
global.stage = stage_index
}
if stage_ready
room_goto(devroom2);
}
}

p1_index = clamp(p1_index, 0, MAX_CHARS-1)
p2_index = clamp(p2_index, 0, MAX_CHARS-1)
com_index = clamp(com_index, 0, MAX_CHARS-1)
stage_index = clamp(stage_index, 0, MAX_STAGES-1)
if (input_check_pressed("pause", 0) || kcp(vk_escape))
{
	if(global.game_type == P1VP2)
	room_goto(connection_screen)	
	else
	room_goto(main_menu);
	
}