/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
grv = GRAV_FORCE;

character = CHAR_KYLE;
controller = CONT_P1;
opponent = noone;

state = FREE_STATE;
dmg_state = EFF_ZERO;
duck = false;
landed = false;
can_attack = true;
atk_type = ATK_JAB;
damagecounter = 0;
down_timer = 5;
hit_baseid = -1
last_hitid = -2

last_key = noone
last_key_cd = 0
shelladd = false;
shellremove = false;
hp_modi = 1;
hitid = 0;
_player_index = controller;
last_id_used = 0;

speedmodi = 1;
jumpmodi = 1;
airmove = 0;

flow = false;
flow_max = 600;
flow_cur = 300;

max_hp = 150*hp_modi;
hp = max_hp;

hitstop = 0;
bounces = 1;
use_shells = false;
shells = 4;
knockback_dir = 0;
momentum = 0;
been_hit = 0;
hitstun_timer = 25;
guard_hit = 0;