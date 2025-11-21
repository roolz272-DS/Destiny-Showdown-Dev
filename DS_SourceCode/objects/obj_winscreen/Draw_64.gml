/// @description Insert description here
// You can write your code in this editor
var width = room_width/2
draw_set_font(Font_Menu)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(width, 70, "GAME OVER!")
draw_text(width, 90, "WINNER IS:");
draw_text(width, 105, char_list[global.winner]);
for(var i=0; i<array_length(options_list); i++)
{
	draw_set_color(i==option_index?c_orange:c_white);
	draw_text(width, 200+20*i, options_list[i])
}
draw_set_color(c_white);
draw_set_halign(fa_left);