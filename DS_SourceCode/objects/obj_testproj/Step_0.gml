if place_meeting(x, y, obj_player)
{
	show_debug_message("player detected")
}

hspd = 2 * x_dir;
vspd = vspd + y_accel;

x = x + hspd;
y = y + vspd;

