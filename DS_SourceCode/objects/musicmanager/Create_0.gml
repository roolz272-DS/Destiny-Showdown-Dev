currentsong = noone;
if(room = devroom2)
{
	
Stage_MusicManager();
}
if(room = charsel)
{	
if (!audio_is_playing(Destibit)) {
	audio_stop_all();
	audio_play_sound(Destibit, 4, true);
}
}
if(room = main_menu)
{
	if !audio_is_playing(Menu_Base_Layer)
	{
		audio_stop_all();
		audio_play_sound(Menu_Base_Layer, 4, true);	
audio_play_sound(Menu_Options_Layer, 3, true);
audio_play_sound(Menu_Theme_main_layer, 3, true);
	}
//audio_pause_sound(Menu_Options_Layer);
audio_sound_gain(Menu_Options_Layer, 0, 0);
audio_sound_gain(Menu_Theme_main_layer, 0.3, 0);
}
if(room = options_room)
{
	if !audio_is_playing(Menu_Base_Layer)
	{
		audio_stop_all();
		audio_play_sound(Menu_Base_Layer, 4, true);	
	}
//audio_pause_sound(Menu_Theme_main_layer);
audio_sound_gain(Menu_Theme_main_layer, 0, 0);
audio_sound_gain(Menu_Options_Layer, 0.3, 0);

}
if(room = results_screen)
{
	audio_stop_all();
	audio_play_sound(Destibit, 4, true);
}
if(room = connection_screen)
{
audio_stop_all();
audio_play_sound(Destibit, 4, true);
}