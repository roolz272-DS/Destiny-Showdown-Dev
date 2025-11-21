// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AnimControl(){
	switch(state) {
		case FREE_STATE:
		if landed{
			if !duck {
		if hspd == 0
		SetSprite(sp_idle);
		else
		sprite_index = (sign(hspd)==sign(image_xscale))?sp_move:sp_move
			}else {//crouch
				if !SetSprite(sp_duck)
				SetSprite(sp_duck)
			}
		} else { //air
			if !place_meeting(x, y+vspd, oWall) || vspd != 0
			SetSprite(sp_air)
		}
		break
		
		case ATK_STATE:
		if !can_attack
		exit
		
		
		if landed{
		if duck
		SetSprite(sp_attack_duck[atk_type])
		else 
		SetSprite(sp_attack[atk_type])
		
		} else {
			
		SetSprite(sp_attack_air[atk_type])
		
		}
		can_attack = false
		break
		
		case SPECIAL_STATE:
		if character == CHAR_KYLE
		{
		KyleSpecManager();	
		}
		else
		SetSprite(sp_special[atk_type])
		break
		
		case ENTRAP_STATE:
		SetSprite(sp_trapped)
		break
		
		case SPRINT_STATE:
		if landed
		{
			SetSprite(sp_dash)
		}
		else
		SetSprite(sp_air)
		
		
		break
		
		case GUARD_STATE:
		if landed & !duck
		{
		SetSprite(sp_guard[0])	
		}
		else if landed & duck
		{
			
		SetSprite(sp_guard[1])	
		}
		
		break
		
		case DODGE_STATE:
		SetSprite(sp_dodge);
		break
		
		case HURT_STATE:
		switch(dmg_state)
		{
			case EFF_ZERO:
			if landed
			{
			SetSprite(duck?sp_hurt_duck:sp_hurt_l);	
			}
			break
			case EFF_KNOCKBACK:
			if landed
			{
			SetSprite(sp_knock);	
			}
			break
			case EFF_HITUP:
			SetSprite(sp_hurt_l);
			break
		}
		
	
		break
		
		case DOWN_STATE:
		SetSprite(sp_down);
		break
		
		case TRANSITION_STATE:
		if(hp > 0)
		SetSprite(sp_idle);
		else
		SetSprite(sp_down);
		break
		
		case GETUP_STATE:
		if(down_timer > 0)
		{
		SetSprite(sp_down)
		}
		else
		SetSprite(sp_getup)
		break
		
		}
		
		
	}
	
