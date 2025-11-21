/// @description Insert description here
// You can write your code in this editor
var original_y = 200;
var original_x_p1 = room_width/2-100;
var original_x_p2 = room_width/2+100;
p1 = instance_create_layer(original_x_p1, original_y, "Instances", obj_player);
p2 = instance_create_layer(original_x_p2, original_y, "Instances", obj_player);
p2.image_xscale = -1;
p2.controller = global.enemy_type;
global.p1 = p1;
global.p2 = p2;

p1.opponent = p2;
p2.opponent = p1;

p1.character = global.p1_char;
p2.character = (global.game_type==P1VP2)?global.p2_char:global.ai_char;







with p1
SpriteHandler(character);

with p2
SpriteHandler(character);