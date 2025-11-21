room_speed = stopped_time;

if timer == 0
{
room_speed = 60;
instance_destroy();	
}
else
timer--;