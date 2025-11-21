switch(argument0)
{
	
	
	case CHAR_KYLE: {
	sp_idle = kyle_idle_anim;
	sp_move = kyle_walk;
	sp_air = kyle_air;
	sp_duck = kyle_crouch;
	sp_dash = kyle_run;
	sp_down = kyle_down;
	sp_trapped = kyle_trap
	sp_getup = kyle_getup;
	down_frame = 1.5;
	sp_hurt_h = kyle_hit
	sp_hurt_l = kyle_hit
	sp_hurt_duck = kyle_crouch_hurt
	sp_knock = kyle_knocked
	sp_dodge = kyle_run
	
	sp_guard = [kyle_guard, kyle_crouch_guard]
	sp_attack = [jab_kyle,poke_kyle,Fpunch_kyle,Fkick_kyle,NPK_kyle,FPK_kyle,UPK_kyle,NPK_kyle]
	attack_indexes = [[5], [5], [3], [5], [4,9], [3], [6], [4,9]]
	attack_outdexes = [[7], [7], [5], [7], [10], [5], [8]]
	sp_attack_duck = [Cjab_kyle,Cpoke_kyle]
	attack_duck_indexes = [[6], [4]]
	attack_duck_outdexes = [[8], [6]]
	sp_attack_air = [Ajab_kyle,Apoke_kyle,AFpunch_kyle,AFkick_kyle]
	attack_air_indexes = [[3], [5], [4], [4]]
	attack_air_outdexes = [[5], [7], [6], [6]]
	sp_special = [Nspec_kyle,Sspec_kyle,Uspec_kyle_new, Dspec_kyle_bike, Dspec_kyle_wheelie, throw_kyle]
	special_attack_indexes = [[5], [5], [1], [0,1,2,3], [4], [2]]
	special_costs = [50,75,60,30,40,0]
	sprite_index = sp_idle;
	break; }
	
	case CHAR_ARAGON: {
	sp_idle = john_idle;
	sp_move = walk1;
	sp_air = air;
	sp_duck = john_idle;
	sp_dash = dash;
	sp_down = john_down;
	sp_trapped = john_idle
	sp_getup = john_idle;
	down_frame = 1.5;
	sp_hurt_h = john_idle
	sp_hurt_l = john_idle
	sp_hurt_duck = john_idle
	sp_knock  = kyle_knocked
	
	sp_guard = [stand_guard, crouch_guard]
	sp_attack = [Johnjab,Johnjab,Johnjab,Johnjab,Johnjab,Johnjab,Johnjab]
	attack_indexes = [[5], [5], [3], [5], [4,9], [8], [6]]
	sp_attack_duck = [JohnLowPunch,JohnLowPunch]
	attack_duck_indexes = [[6], [4]]
	sp_attack_air = [JohnFairPunch,JohnFairPunch,JohnFairPunch,JohnFairPunch]
	attack_air_indexes = [[3], [5], [4], [4]]
	sp_special = [JohnFPK,JohnFPK,JohnFPK, JohnFPK, JohnFPK]
	special_attack_indexes = [[5], [5], [7], [0], [4]]
	special_costs = [10,10,10,10,10]
	sprite_index = sp_idle;
	break; }
	
	case CHAR_SHRED: {
	sp_idle = john_idle;
	sp_move = walk1;
	sp_air = air;
	sp_duck = john_idle;
	sp_dash = dash;
	sp_down = john_down;
	sp_trapped = john_idle
	sp_getup = john_idle;
	down_frame = 1.5;
	sp_hurt_h = john_idle
	sp_hurt_l = john_idle
	sp_hurt_duck = john_idle
	sp_knock  = kyle_knocked
	
	sp_guard = [stand_guard, crouch_guard]
	sp_attack = [Johnjab,Johnjab,Johnjab,Johnjab,Johnjab,Johnjab,Johnjab]
	attack_indexes = [[5], [5], [3], [5], [4,9], [8], [6]]
	sp_attack_duck = [JohnLowPunch,JohnLowPunch]
	attack_duck_indexes = [[6], [4]]
	sp_attack_air = [JohnFairPunch,JohnFairPunch,JohnFairPunch,JohnFairPunch]
	attack_air_indexes = [[3], [5], [4], [4]]
	sp_special = [JohnFPK,JohnFPK,JohnFPK, JohnFPK, JohnFPK]
	special_attack_indexes = [[5], [5], [7], [0], [4]]
	special_costs = [10,10,10,10,10]
	sprite_index = sp_idle;
	break; }
	
	case CHAR_FRED: {
	sp_idle = john_idle;
	sp_move = walk1;
	sp_air = air;
	sp_duck = john_idle;
	sp_dash = dash;
	sp_down = john_down;
	sp_trapped = john_idle
	sp_getup = john_idle;
	down_frame = 1.5;
	sp_hurt_h = john_idle
	sp_hurt_l = john_idle
	sp_hurt_duck = john_idle
	sp_knock  = kyle_knocked
	
	sp_guard = [stand_guard, crouch_guard]
	sp_attack = [Johnjab,Johnjab,Johnjab,Johnjab,Johnjab,Johnjab,Johnjab]
	attack_indexes = [[5], [5], [3], [5], [4,9], [8], [6]]
	sp_attack_duck = [JohnLowPunch,JohnLowPunch]
	attack_duck_indexes = [[6], [4]]
	sp_attack_air = [JohnFairPunch,JohnFairPunch,JohnFairPunch,JohnFairPunch]
	attack_air_indexes = [[3], [5], [4], [4]]
	sp_special = [JohnFPK,JohnFPK,JohnFPK, JohnFPK, JohnFPK]
	special_attack_indexes = [[5], [5], [7], [0], [4]]
	special_costs = [10,10,10,10,10]
	sprite_index = sp_idle;
	break; }
}
