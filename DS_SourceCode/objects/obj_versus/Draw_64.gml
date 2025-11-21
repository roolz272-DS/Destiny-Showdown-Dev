var width = room_width/2;
draw_set_font(name_font)
draw_set_alpha(1);
draw_set_halign(fa_center)
draw_set_color(c_orange)
//draw_text(width*.5, 100, names[p1char])
draw_text_transformed(width*.5, 100, names[p1char],1,1.1,0)
//draw_text(width*1.5, 100, names[p2char])
draw_text_transformed(width*1.5, 100, names[p2char],1,1.1,0)
draw_set_font(Font3)
draw_set_color(c_black)
draw_text(width, 415, p1dia)
draw_text(width, 485, p2dia)
draw_sprite(tinyports[p1char], 0, 214, 401)
draw_sprite(tinyports[p2char], 0, 705, 476)
if nodrag = 0 {
var p1port = instance_create_layer(0, 540, "Instances", obj_standee)
p1port.sprite_index = ports[p1char];
p1port.givenx = 300;
var p2port = instance_create_layer(960, 540, "Instances", obj_standee)
p2port.sprite_index = ports[p2char];
p2port.image_xscale = -1;
p2port.givenx = 660;
nodrag = 1;
}




