if creo = noone 
creo = instance_create_layer(0, 0, "Instances_1", obj_dialog)	
if audio_is_playing(Destibit)
{
audio_stop_sound(Destibit);	
}
if songplayed == 0 
{
	audio_play_sound(VS_SCREEN_song, 4, false);
	songplayed = 1;
}
if songplayed == 1 && !audio_is_playing(VS_SCREEN_song)
{
room_goto(devroom2);	
}
p1dia = creo.dia1;
p2dia = creo.dia2;

