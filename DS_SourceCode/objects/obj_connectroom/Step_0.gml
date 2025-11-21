if (input_join_is_finished())
{
    if (input_check_long("kick", 0))
    {
        input_source_mode_set(INPUT_SOURCE_MODE.FIXED);
		var h = instance_create_layer(0,0, "Instances", obj_fadeouthandler)
		 h.nextroom = charsel;
		 h.colorchoice = make_color_rgb(48,11,11);
	

    }
}
if(input_check_long("pause", 0))
{
	input_source_mode_set(INPUT_SOURCE_MODE.HOTSWAP);
	room_goto(main_menu);
}
