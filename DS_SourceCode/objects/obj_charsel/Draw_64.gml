/// @description Insert description here
// You can write your code in this editor
var width = room_width/2
draw_set_font(Font_Menu)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(width, 70, "Character Select")
draw_set_halign(fa_left)
var vert = 0;
var second_char = (global.game_type==P1VP2)?p2_index:com_index;
for(var i = 0; i<MAX_CHARS;i++){
draw_sprite(icons_charsel[i], 0, 170+64*i, 150+(vert*64))	
if floor(i/10) > 0 {
vert = floor(i)
}
if i == p1_index{
	draw_set_color(c_yellow)
draw_text(170+64*i, 150, "P1")
	draw_set_color(c_white)
}
if i == second_char {
	draw_set_color(c_blue)
draw_text(190+64*i, 150, "P2")
	draw_set_color(c_white)
}

}

if(p1_ready && p2_ready || p1_ready && com_ready)
{
	draw_text(width-60, 480, "STAGE SELECT")
	draw_text(width-60, 500, stagenames[stage_index])
if(stage_index != 0)
	draw_text(width-80, 500, "<-")	
	if(stage_index != MAX_STAGES-1)
	draw_text(width+60, 500, "->")	
	
}


draw_sprite(ports[p1_index],0, 5,160);
draw_sprite(p1_window, 0, 5, 160)
draw_text(32, 267, names[p1_index]);
draw_sprite_ext(ports[p2_index],0, room_width-5,160,-1, 1, 0, c_white, 1);
draw_sprite(p2_window, 0, room_width-5, 160)
draw_text(room_width-103, 267, names[p2_index]);

draw_set_halign(fa_left)