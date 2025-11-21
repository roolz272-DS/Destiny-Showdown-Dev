function RenderGimmicks(){
	thej = make_color_rgb(219,59,65);
	thejempty = make_color_rgb(23,20,21);
	
	if(p1.use_shells) {
	draw_sprite_ext(shellbar, 0, 143,88,1,1,0, c_white, 1)
	for(i=0; i<p1.shells; i++)
	{
	draw_sprite_ext(shell_loaded, 0, 155+(13*i), 100, 1, 1, 0, c_white, 1)	
	}
	}
	if(p2.use_shells) {
	draw_sprite_ext(shellbar, 0, room_width-143,88,-1,1,0, c_white, 1)
	for(i=0; i<p2.shells; i++)
	{
	draw_sprite_ext(shell_loaded, 0, room_width-155-(13*i), 100, -1, 1, 0, c_white, 1)	
	}
	}
}