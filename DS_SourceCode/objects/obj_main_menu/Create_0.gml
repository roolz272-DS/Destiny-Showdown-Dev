/// @description Insert description here
// You can write your code in this editor
menu = ["VS CPU(UNF)", "P1 VS P2", "Practice", "Settings", "Exit"]
cur_index = 0
past_index = noone
global.game_type = P1VAI;
global.enemy_type = CONT_COM;
nextroom = noone
repeatproof = 0;
var playerdata0 = input_player_export(0, false)
var playerdata1 = input_player_export(1, false)
controller = CONT_P1