// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Stage_MusicManager(){
var chance = irandom(1);
songs = [kyle_theme, kyle_theme, Aragon_Theme, kyle_theme];
p1char = global.p1_char;
p2char = global.p2_char;
if(chance == 0)
{
	audio_stop_all();
	audio_play_sound(songs[p1char], 4, true);	
	
}
else
{
	audio_stop_all();
	audio_play_sound(songs[p2char], 4, true);	
}
}