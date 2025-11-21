/// @description Insert description here
// You can write your code in this editor
var width = room_width/2;
var size_mult = 3;
draw_set_alpha(1);

draw_set_font(Font_Menu);
draw_set_halign(fa_center);
if(nextroom == noone) {
for(var i=0; i<array_length(menu); i++)
{
	draw_set_color(i==cur_index?c_black:c_white);
	if(i != cur_index) {
	draw_sprite_stretched(menu_option, 0, 100+90*i, 130+80*i, 204, 64)
	draw_text_transformed(205+90*i, 150+80*i, menu[i],2,2,0)
	}
	else
	{
		if(ic("kick"))
	draw_sprite_stretched(menu_option_select, 0, 100+90*cur_index, 130+80*cur_index, 204, 64)
	else
	draw_sprite_stretched(menu_option_select, 0, 98+90*cur_index, 128+80*cur_index,208,64)
	
	draw_text_transformed(205+90*i, 150+80*i, menu[i],2,2,0)
	}
}
}
if(nextroom != noone)
{
	var standee = instance_create_layer(room_width, room_height/2, "Instances", obj_standee)
	var bgasset = layer_get_id("Assets_1");
	var layerx = layer_get_x(bgasset);
	standee.sprite_index = fadeout_black;
	standee.xmult = -25;
	standee.plus = -1;
	xmult = 5;
	if(layerx != -900) {
	layer_x(bgasset, layerx-(10+xmult));
	xmult++
	}
	if layerx <= -900 {
	room_goto(nextroom)
	}
}

draw_set_color(c_white);
draw_set_halign(fa_left);