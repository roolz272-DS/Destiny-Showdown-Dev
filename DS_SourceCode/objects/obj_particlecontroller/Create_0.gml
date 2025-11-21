global.Psystem_fx = part_system_create_layer("Instances_1", false)
global.dashpart = part_type_create();
{
part_type_sprite(global.dashpart, dust, true, true, false);
part_type_color2(global.dashpart, make_color_rgb(216,204,181), c_white);
part_type_life(global.dashpart, 20, 20)
part_type_alpha2(global.dashpart, 0.85, 0.1)
part_type_orientation(global.dashpart,0,0,0,0,true)
}
global.trailpart = part_type_create(); 
{
part_type_life(global.trailpart, 15, 15)
part_type_alpha2(global.trailpart, 0.4, 0.4);
}
global.smoke = part_type_create();
{
part_type_alpha2(global.smoke, 0.1, 0.1)
part_type_life(global.smoke, 30, 30)
part_type_size(global.smoke, 0.25,0.25,0,0)
part_type_direction(global.smoke,0,359,0,0)
part_type_speed(global.smoke,0.3,0.35,0,0)
part_type_color_mix(global.smoke, make_color_rgb(100,100,100),make_color_rgb(200,200,200))
part_type_shape(global.smoke, pt_shape_smoke)
}
global.POWpart = part_type_create();
{
part_type_sprite(global.POWpart, POW, true, true, false)	
part_type_life(global.POWpart, 20, 20)
part_type_color2(global.POWpart, make_color_rgb(255, 202, 79), c_white);
}
global.backdust = part_type_create();
{
part_type_sprite(global.backdust, backdust, true, true, false);
part_type_life(global.backdust, 20, 20)
part_type_color2(global.backdust, make_color_rgb(216,204,181), c_white);
part_type_alpha2(global.backdust, 0.85, 0.1)
}