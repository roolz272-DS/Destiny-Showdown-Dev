/// @description Insert description here
// You can write your code in this editor
var width = room_width/2
var _string = "Thanks to Juju Adams, Alynne Keith, and friends' Input library. \nMusic help from the DS Sound Team. \n\nHit the punch button to go back.";
draw_set_font(Font_Menu)
draw_set_halign(fa_center)
draw_set_color(c_white)
if pullup_credits = 0 {
draw_text(width, 70, "Options")
for(var i=0; i<array_length(options_list); i++)
{
	draw_set_color(i==option_index?c_orange:c_white);
	draw_text(width, 200+20*i, options_list[i])
}
}
else if pullup_credits = 1
{
	draw_text(width, 70, "Credits")
	draw_text(width, 200, _string)
}
draw_set_color(c_white);
draw_set_halign(fa_left);