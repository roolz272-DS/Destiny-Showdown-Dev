// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CharacterControl(){
	var forwardkey = (sign(image_xscale==1))?"right":"left";
	var walkspeed = WALKSPD*speedmodi;
	var sprintspeed = SPRINTSPD*speedmodi;
	var jumpspeed = JUMP_FRC*jumpmodi;
	var _direction = input_x("left", "right", "up", "down", controller);
	var knockdir = 0;


switch(state) {
case FREE_STATE:
been_hit = 0;
hitstop = 0;
hitstun_timer = 25;
can_attack = true;
if landed {
	getDirection();
	if !duck 
hspd = walkspeed*_direction;
else 
hspd = 0;


airmove = 0;
bounces = 1;
		if icp("jump"){
		vspd = jumpspeed
		landed = false
		
		}
		
duck = ic("down")


if doubletap(forwardkey) && !duck{
	part_type_scale(global.dashpart, image_xscale, 1)
part_particles_create(global.Psystem_fx, x, y, global.dashpart, 1);
state = SPRINT_STATE; break	
}

if(ic("guard"))
{
	if(landed)
state = GUARD_STATE; break	
	
}

if(icp("flow"))
{
	if flow = false{
flow = true; break	
	}
else {
flow = false; break
}
}

if(hp = 0)
{
state = DOWN_STATE; break	
}

}else{
	
}
if(ic("punch")&&icp("kick") && vspd == 0 && !duck){
	if(ic(forwardkey)){
		setAttack(ATK_FPK); break }
	else {
if(ic("up")){
		setAttack(ATK_UPK); break	
		}
setAttack(ATK_NPK); break }
}
if(icp("kick")){
if(ic(forwardkey) && !duck){		
setAttack(ATK_FKICK); break }
	else {
setAttack(ATK_POKE); break }
}
else if(icp("punch")){
if(ic(forwardkey) && !duck){		
setAttack(ATK_FPUNCH); break }
	else {
setAttack(ATK_JAB); break }
}
else if(icp("special")){
	if(ic("down")) {
		if(special_costs[atk_type] < flow_cur) {
	setSpecial(ATK_FKICK); flow_cur -= special_costs[atk_type];  break
	}}
	else {
		if(ic(forwardkey)) {
			if(special_costs[atk_type] < flow_cur) {
setSpecial(ATK_POKE); flow_cur -= special_costs[atk_type]; break }}
else if(ic("up")) {
if(special_costs[atk_type] < flow_cur) {
setSpecial(ATK_FPUNCH);flow_cur -= special_costs[atk_type]; break
}}
else  {
	if(special_costs[atk_type] < flow_cur) {
setSpecial(ATK_JAB); flow_cur -= special_costs[atk_type]; break }}

}
}

break

case ATK_STATE :
if landed
hspd = 0;
if !landed
airmove = 1;
if animEnd() {
	if duck {
	sprite_index = sp_duck
	image_index = image_number-1
	}
	RandomBaseID();
	state = FREE_STATE
}
if (airmove)
{
	if landed {
sprite_index = sp_idle
image_index = image_number-1
RandomBaseID();
state = FREE_STATE	
	}
}
if flow=true && opponent.state = HURT_STATE {
	if landed //grounded
	{
		if duck {
			var indexes = attack_duck_outdexes[atk_type]
			if array_length(indexes) >= image_index
	sprite_index = sp_duck
	image_index = image_number-1
	RandomBaseID();
	state = FREE_STATE
		}
		else {
			var indexes = attack_outdexes[atk_type]
			if array_length(indexes) >= image_index
	sprite_index = sp_idle
	image_index = image_number-1
	RandomBaseID();
	state = FREE_STATE
		}
	}
	else //air
	{
	var indexes = attack_air_outdexes[atk_type]
			if array_length(indexes) >= image_index
	sprite_index = sp_air
	image_index = image_number-1
	RandomBaseID();
	state = FREE_STATE
	}
}
break

case SPECIAL_STATE:
if landed
hspd = 0;
if animEnd() {
	if duck {
	sprite_index = sp_duck
	image_index = image_number-1
	}
	RandomBaseID();
	state = FREE_STATE
}
break

case ENTRAP_STATE:
hspd = 0;
if animEnd(){
state = FREE_STATE;	
}
break

case SPRINT_STATE:
if landed {
hspd = sprintspeed * sign(image_xscale)	
	if icp("jump"){
		vspd = jumpspeed
		landed = false
		}
}
if(ic("punch"))
setAttack(ATK_FPUNCH)
if(ic("kick"))
setAttack(ATK_FKICK)


	if(icr("right") || icr("left") || hspd == 0)
	{
		state = FREE_STATE
	}


break


case GUARD_STATE:	
hspd = 0;
if guard_hit == 0
hitstun_timer = 15;
if(guard_hit == 1)
{
hspd = walkspeed/3*-sign(getDirection())	
hitstun_timer--;
if hitstun_timer <= 0
guard_hit = 0
}
if(icr("guard"))
state = FREE_STATE	
break

case DODGE_STATE:
hspd = sprintspeed * -sign(image_xscale)	
if animEnd() {
state = FREE_STATE; }
break

case THROW_STATE:
if(animEnd())
{
	RandomBaseID();
	state = FREE_STATE;break
	
}

break

case HURT_STATE:
	if been_hit == 0 {
		if landed {
switch(dmg_state)
{
	case EFF_ZERO:
	hspd = -WALKSPD/2 * knockback_dir
	break;
	case EFF_KNOCKBACK:
	hspd = -SPRINTSPD/3 * knockback_dir;
	vspd -= 11
	break;
	case EFF_HITUP:
	vspd = JUMP_FRC
	break
	default:
	hspd = 0;
	break;
}
		}
		else if !landed {
	switch(dmg_state) {
	case EFF_KNOCKBACK:
	hspd = -SPRINTSPD/2 * knockback_dir;
	vspd -= 11
	break;
	case EFF_HITUP:
	vspd = JUMP_FRC
	break
	default:
	hspd = -WALKSPD/2 * knockback_dir;
	vspd -=6;
	break;
}
			
			}
been_hit = 1;
	}
	--hitstun_timer;
if (been_hit == 1 && hitstun_timer <= 0)
{
	if !landed {
		if icp("guard") {
			audio_play_sound(ping, 5, false);
			vspd -= 7;
			if ic("left")
			hspd = -2;
			else if ic("right")
			hspd = 2
			else
			hspd = 0;
		state = FREE_STATE;	
		}
	}
	if (landed) {
	part_type_scale(global.backdust, image_xscale, 1)
	part_particles_create(global.Psystem_fx, x, y, global.backdust, 1);
	if(hp <= 0)
	{
	state = DOWN_STATE	
	}
	else
	{
		switch(dmg_state)
		{
		case EFF_KNOCKBACK || EFF_HITUP:
		state = GETUP_STATE
		break
		case EFF_TRIP:
		if animEnd()
		state = GETUP_STATE
		break
		default:
		if animEnd() {
		state = FREE_STATE
		}
		break
		}
	}	
		}
	}

break

case DOWN_STATE:
hspd = 0;
if(hp > 0)
state = FREE_STATE;


break

case GETUP_STATE:
hspd = 0;
if (down_timer > 0)
down_timer--;
if (sprite_index == sp_getup && animEnd())
{
	if(ic("punch") || ic("kick"))
	setAttack(ATK_NSPE);
	else if ic("guard") {
	state = DODGE_STATE;
	}
	else
	state = FREE_STATE;
}
break

case TRANSITION_STATE:
hp = max_hp;
break


}





}
