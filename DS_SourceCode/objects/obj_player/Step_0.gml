/// @description Insert description here
// You can write your code in this editor
statManager();
CharacterControl();	
animManager()
momentumHandler();
hitManager();

collision()
lastkey("right")
lastkey("left")
lastkey("up")
lastkey("down")
lastkey("punch")
lastkey("kick")
lastkey("special")
lastkey("flow")


last_key_cd++
flow_cur = clamp(flow_cur, 0, flow_max);
if state == FREE_STATE
knockback_dir = 0;
if character == CHAR_KYLE {
	use_shells = true;
if damagecounter > 50 && shells < 4{
shells = shells + 1; 
damagecounter = 0;
}
if hitid != 0 && shellremove = false
{
shells--;
hitid = 0;
shellremove = true;
}
}
if flow && flow_cur > 0
{
flow_cur--;
}
if flow_cur == 0
{
flow = false;	
}
