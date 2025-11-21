// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createHit(argument0,argument1,argument2,argument3,argument4){
var owner = argument0;
var effect, dmg, x_offset, y_offset;
effect = argument1;
dmg = argument2;
x_offset = argument3;
y_offset = argument4;
xscale = argument5;
yscale = argument6;

var h = instance_create_layer(x+x_offset, y-y_offset, "Instances", obj_hit);


h.image_xscale = xscale;
h.image_yscale = yscale;
h.owner  = owner;
h.effect = effect;
h.dmg = dmg;
h.x_offset = x_offset;
h.y_offset = y_offset;
return h;
}