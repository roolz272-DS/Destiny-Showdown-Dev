// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpareManager(){
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
		var h = createHit(self, EFF_LOW, 6, 45*sign(image_xscale), 15,1.25,0.5);
		h._id = hit_baseid*round(image_index);
		h.low = true
			break;
			case 1: //crouch kick
		var h = createHit(self, EFF_LOW, 4, 25*sign(image_xscale), 15,0.85,0.85);
		h._id = hit_baseid*round(image_index);
		h.low = true
			break;
			default:
		var h = createHit(self, EFF_LOW, 4, 50*sign(image_xscale), 20,1,1);
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
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
	break;
	case 1: //poke
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
	break;	
	case 2: //fjab
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
	break;	
	case 3: //fpoke
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
	break;	
	case 4: //NPK
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
	break;
	case 5: //FPK
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
	break;
	case 6: //UPK
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
	break;
	default:
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
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
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
				 break;
				 case 1:
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
				 break;
				 case 2:
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
				 break;
				 case 3:
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
				 break;
				 case 4:
		var h = createHit(self, EFF_ZERO, 5, 25*sign(image_xscale), 50,0.8,0.8);	
		h._id = hit_baseid*round(image_index);
				 break;
				 default:
		var h = createHit(self, EFF_ZERO, 5, 50*sign(image_xscale), 50,0.5,1);	
		h._id = hit_baseid*round(image_index);
				 break;
			 }

		 }
	 }
		 
break


	case THROW_STATE:
	var indexes = attack_air_indexes[atk_type];
	 
	 for(var i=0; i<array_length(indexes); i++)
	 {
		 if round(image_index) = indexes[i] {
		var h = createHit(self, noone, 4, 30*sign(image_xscale), 35,1.2,1.2);	
		h._id = hit_baseid*round(image_index);
		hitid = h._id;
		if i == array_length(indexes)-1{
			h.effect = EFF_KNOCKBACK
		}
		 }
	 }
	
	break
}
}
