/// @description Insert description here
// You can write your code in this editor
player1 = global.p1;
player2 = global.p2;
var width = room_width/2
draw_set_font(Font_Menu)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(466, 133, p1_wins)
draw_text(room_width - 467, 133, p2_wins)
//draw_text(20, 60, player1.hp) 
//draw_text(room_width - 20, 60, player2.hp)

if(player1.state == TRANSITION_STATE && player2.state == TRANSITION_STATE)
{
draw_text(width, 200, "Round");
draw_text(width, 210, roundnum);
}
draw_set_halign(fa_center);
draw_set_font(timerfont);
draw_set_color(c_black);
draw_text(480, 60, timer);

if show_fps = 1
{
draw_set_halign(fa_left);
draw_set_font(Font_Menu);
draw_text(0, 0, "FPS:");
draw_text(30, 0, fps);
}