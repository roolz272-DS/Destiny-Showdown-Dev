// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KyleHitManager(){
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

switch (state) {
case ATK_STATE:
if landed {
 if duck { //duck
	 var indexes = attack_duck_indexes[atk_type];
	 
	 for(var i=0; i<array_length(indexes); i++)
	 {

		 if round(image_index) = indexes[i] { 
			 switch (atk_type) {
			case 0: //crouch punch
		var h = createHit(self, EFF_ZERO, 6, 45*sign(image_xscale), 15,1.25,0.5);
		h._id = hit_baseid*round(image_index);
		h.low = true
			break;
			case 1: //crouch kick
		var h = createHit(self, EFF_ZERO, 4, 25*sign(image_xscale), 15,0.85,0.85);
		h._id = hit_baseid*round(image_index);
		h.low = true
			break;
			default:
		var h = createHit(self, EFF_ZERO, 4, 50*sign(image_xscale), 20,1,1);
		h._id = hit_baseid*round(image_index);
		h.low = true
			break;
				 
			 }

		 }
	 }
 } else { //normal
	var indexes = attack_indexes[atk_type];
	 
	 for(var i=0; i< array_length(indexes); i++)
	 {
		 if round(image_index) = indexes[i] {
switch (atk_type)
{
	case 0: //jab
	var h = createHit(self, EFF_ZERO, 7, 45*sign(image_xscale), 25,1.25,0.5);	
	h._id = hit_baseid*round(image_index);
	break;
	case 1: //poke
	var h = createHit(self, EFF_ZERO, 5, 45*sign(image_xscale), 25,1.3,0.5);
	h._id = hit_baseid*round(image_index);
	break;	
	case 2: //fjab
	var h = createHit(self, EFF_ZERO, 5, 37*sign(image_xscale), 45,1.1,1.1);	
	h._id = hit_baseid*round(image_index);
	break;	
	case 3: //fpoke
	hspd = WALKSPD*image_xscale;
	var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 20,0.8,0.8);	
	h._id = hit_baseid*round(image_index);
	break;	
	case 4: //NPK
			 if(round(image_index) == 4) {
	var h = createHit(self, EFF_ZERO, 5, -30*sign(image_xscale), 25,0.75,0.75);	
	h._id = hit_baseid*round(image_index);
		last_id_used = h._id;	
				} 
				if(round(image_index) == 9) {
	var h = createHit(self, EFF_ZERO, 15, 50*sign(image_xscale), 25,0.75,0.75);	
	h._id = hit_baseid*round(image_index);
		last_id_used = h._id;	
				}
	break;
	case 5: //FPK
	var h = createHit(self, EFF_GRAB, 0, 30*sign(image_xscale), 35,1.35,1.35);	
	h._id = hit_baseid*round(image_index);
	if opponent.state = ENTRAP_STATE {
	setSpecial(5);	
	}
	break;
	case 6: //UPK
	var h = createHit(self, EFF_HITUP, 10, 10*sign(image_xscale), 95,1,1);
	h._id = hit_baseid*round(image_index);
	break;
		case 7: //getup attack
			 if(round(image_index) == 4) {
	var h = createHit(self, EFF_ZERO, 5, -30*sign(image_xscale), 25,0.75,0.75);	
	h._id = hit_baseid*round(image_index);
		last_id_used = h._id;	
				} 
				if(round(image_index) == 9) {
	var h = createHit(self, EFF_ZERO, 15, 50*sign(image_xscale), 25,0.75,0.75);	
	h._id = hit_baseid*round(image_index);
		last_id_used = h._id;	
				}
	break;
	default:
	var h = createHit(self, EFF_ZERO, 5, 30*sign(image_xscale), 50,1,1);	
	h._id = hit_baseid*round(image_index);
	break;
} 

		 }
		 
	 } 
 }
} else { //air
	var indexes = attack_air_indexes[atk_type];

	 for(var i=0; i<array_length(indexes); i++)
	 {
		 if round(image_index) = indexes[i] {
			 switch(atk_type)
			 {
			case 0: //air jab
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
		airmove = 1;
			break;
			case 1: //air poke
		var h = createHit(self, EFF_ZERO, 6, 35*sign(image_xscale), 20,0.75,0.75);	
		h._id = hit_baseid*round(image_index);
		airmove = 1;
			break;
			case 2: //air fjab
		var h = createHit(self, EFF_ZERO, 9, 40*sign(image_xscale), 50,1,1);	
		h._id = hit_baseid*round(image_index);
		airmove = 1;
			break;
			case 3: //air fpoke
		var h = createHit(self, EFF_ZERO, 5, 50*sign(image_xscale), 20,1.25,0.75);	
		h._id = hit_baseid*round(image_index);
		airmove = 1;
		break;
			default:
		var h = createHit(self, EFF_ZERO, 5, 50*sign(image_xscale), 50,0.5,1);	
		h._id = hit_baseid*round(image_index);
		airmove = 1;
			break;
				 
			 }
		 } 
		 
	 
}
}



break

case SPECIAL_STATE:
	 var indexes = special_attack_indexes[atk_type];
	 
	 for(var i=0; i<array_length(indexes); i++)
	 {
		 if round(image_index) = indexes[i] { 
			 switch (atk_type)
			 {
				 case 0:
				  if(shells > 0) {
		var h = createHit(self, EFF_KNOCKBACK, 30, 45*sign(image_xscale), 42,4,2);	
			part_type_scale(global.POWpart, image_xscale, 1)
	part_particles_create(global.Psystem_fx, x+30*sign(image_xscale), y-42, global.POWpart, 1);
		h._id = hit_baseid*round(image_index);
		hitid = h._id;
		h.perk = PERK_SHELL
		if last_id_used != hitid {
		shellremove = false
		last_id_used = hitid
		}
				  }
				 break;
				 case 1:
				 if(shells > 0) {
					if(image_index == 4.80) {
						
		var h = createProj(self, EFF_ZERO, 1, 30*sign(image_xscale), 40,0.45,0.45,1,1, proj_cig);
		h._id = hit_baseid*round(image_index);
		hitid = h._id;
		h.becomes = 0;
		h.perk = PERK_SHELL;
		if last_id_used != hitid {
		shellremove = false
		last_id_used = hitid
		}		 
					}
				 }
				 break;
				 case 2:
				 if (image_index < 1)
				 {
				hspd = -3.5*image_xscale;
				momentum = hspd;
				vspd = (JUMP_FRC*jumpmodi)/1.5;
				 }
				  if(shells > 0) {
					  
		var h = createProj(self, EFF_ZERO, 1, 30*sign(image_xscale), 40,0.2,0.2,1,1, proj_bullet);	
		h._id = hit_baseid*round(image_index);
		hitid = h._id;
		if (image_index <= 1 && last_id_used != hitid)
		{
			shellremove = false
		}
		if last_id_used != hitid {
		last_id_used = hitid
		}			  
				  }
				 break;
				 case 3:
				 if(image_index >= 0) {
				 hspd = (SPRINTSPD * 1.5)*image_xscale;
				 momentum = hspd;
				 if(ic("punch") && shells > 0) {
					 can_attack = true;
				 setSpecial(4);
				 }
				 } 
				 break;
				 case 4:
				 hspd = (SPRINTSPD * 2)*image_xscale;
				 momentum = hspd;
				 if image_index%2 == 0 or 1
				 {
					 part_type_sprite(global.trailpart, sprite_index, false, true, false)
					 part_type_size(global.trailpart, 1, 1, 0, 0)
				part_type_scale(global.trailpart, image_xscale, 1)
				part_particles_create(global.Psystem_fx, x, y, global.trailpart, 1); 
				 }
				if (shells > 0) {
		var h = createHit(self, EFF_HITUP, 20, 30*sign(image_xscale), 40,2,2);	
		h._id = hit_baseid*round(image_index);
		hitid = h._id;
		if last_id_used != hitid {
		shellremove = false
		last_id_used = hitid
		}
				}
				 break;
				 case 5:
		var h = createHit(self, EFF_KNOCKBACK, 18, 30*sign(image_xscale), 15,2,4);
		h._id = hit_baseid*round(image_index);
		h.knock_send = -1;
		h.perk = PERK_THROW
				 break;
				 default:
		var h = createHit(self, EFF_ZERO, 5, 50*sign(image_xscale), 50,0.5,1);	
		h._id = hit_baseid*round(image_index);
				 break;
			 }

		 }
	 }
		 
break

}
}
