progress++;
if progress == room_speed {
room_goto(nextroom);	
	
}
if room == nextroom {
instance_destroy();	
}