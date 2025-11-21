// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RenderHP(){
	thej = make_color_rgb(219,59,65);
	var second_char = (global.game_type==P1VP2)?global.p2_char:global.ai_char;
	thejempty = make_color_rgb(23,20,21);
	thek = make_color_rgb(101,40,47);
	var sp_height = sprite_get_height(healthbar);
	var sp_width = sprite_get_width(healthbar);
	sprites = [kyle_icon, shred_icon, aragon_icon, kyle_icon]
	names = ["Kyle Morrow", "Shredder", "Aragon", "Fred + Virus"];
	draw_set_color(c_black);
draw_sprite_ext(framered, 0, 50,0,1,1,0, c_white, 1 );
draw_sprite_ext(healthbar,0,145,63,1,1,0,thejempty,1);
draw_sprite_part_ext(healthbar, 1, 0, 0, sp_width * (p1.hp/p1.max_hp) ,sp_height, 145, 63, 1, 1, thej,1);
draw_sprite_ext(healthbar,0,215,91,0.76,0.7916,0,thejempty,1);
draw_sprite_part_ext(healthbar, 1, 0, 0, sp_width * (p1.flow_cur/p1.flow_max) ,sp_height, 215, 91, 0.76, 0.7916, thek,1);
var width = view_hport[0]
draw_sprite_ext(healthbar,0,room_width-146,63,-1,1,0,thejempty,1);
draw_sprite_part_ext(healthbar, 1, 0, 0, sp_width * (p2.hp/p2.max_hp) ,sp_height, room_width-146, 63, -1, 1, thej,1);
draw_sprite_ext(healthbar,0,room_width-216,91,-0.76,0.7916,0,thejempty,1);
draw_sprite_part_ext(healthbar, 1, 0, 0, sp_width * (p2.flow_cur/p2.flow_max) ,sp_height, room_width-216, 91, -0.76, 0.7916, thek,1);

draw_sprite_ext(sprites[global.p1_char], 0, 53, 40, 1.34, 1.375, 0, c_white, 1);
draw_sprite_ext(sprites[second_char], 0, room_width-54, 40, -1.34, 1.375, 0, c_white, 1);
draw_set_font(Font_Menu_2);
draw_set_halign(fa_left);
draw_text(150, 40, names[global.p1_char]);
draw_set_halign(fa_right);
draw_text(room_width-150, 40, names[second_char])
}