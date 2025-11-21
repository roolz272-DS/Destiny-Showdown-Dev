/// @description Insert description here
// You can write your code in this editor

#region exit
if other.owner == self 
exit


if last_hitid == other._id 
exit


#endregion
//if block

if other.effect == EFF_GRAB
{
state = ENTRAP_STATE	
exit
}

if state = GUARD_STATE && other.effect != EFF_GRAB
{
	if other.low == 0 && !duck {
		
		state = GUARD_STATE;
		guard_hit = 1;
		
		
		
	} else if other.low == 1 && duck {
	
		state = GUARD_STATE;
		guard_hit = 1
		
	}
	else 
	state = HURT_STATE;
	
}
been_hit = 0;

if state = ENTRAP_STATE
{
	SetSprite(sp_idle);
	state = HURT_STATE;
}

if state == GUARD_STATE || state = GETUP_STATE 
exit
hspd = 0;
last_hitid = other._id;

hp -= other.dmg 
opponent.damagecounter += other.dmg;
if(opponent.flow_cur < opponent.flow_max)
{
opponent.flow_cur += other.dmg * 3;	
}
if(flow_cur < flow_max)
{
flow_cur += other.dmg * 1.5;	
}

if(other.perk == PERK_SHELL)
{
	if(opponent.shells < 4)
	opponent.shells++
}


if(knockback_dir == 0) {
knockback_dir = getDirection() * other.knock_send;
}
if(hitstop == 0) {
hitstop = 1;
instance_create_layer(x, y, "Instances", obj_hitstop);
if landed {
part_type_scale(global.dashpart, -image_xscale, 1)
part_particles_create(global.Psystem_fx, x, y, global.dashpart, 1);
}
}

switch(other.effect){
	case EFF_ZERO:
	dmg_state = EFF_ZERO;
	audio_play_sound(sfx_hit, 3, false)
	break
	case EFF_HITUP:
	vspd = JUMP_FRC
	dmg_state = EFF_HITUP;
	break
	case EFF_KNOCKBACK:
	hspd = SPRINTSPD/3 * knockback_dir;
	dmg_state = EFF_KNOCKBACK;
	break
	case EFF_THROWBACK:
	hspd = SPRINTSPD/3 * -(knockback_dir);
	dmg_state = EFF_THROWBACK;
	break
	
	default:
} 


if(state != DOWN_STATE)
{
if landed{
state = HURT_STATE;
image_index = 0
}
if !landed
{
vspd = JUMP_FRC/2
hspd = -SPRINTSPD/2*sign(image_xscale)
}
}
with other
instance_destroy();
