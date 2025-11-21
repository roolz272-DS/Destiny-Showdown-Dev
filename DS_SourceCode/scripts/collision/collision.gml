// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(){
vspd += grv;

if place_meeting(x+hspd, y, oWall){
while !place_meeting(x+sign(hspd), y, oWall){
x+= sign(hspd)
}
hspd = 0
}
x+= hspd
landed = place_meeting(x, y+vspd, oWall)
if landed{
while !place_meeting(x, y+sign(vspd), oWall){
y+= sign(vspd)
}
vspd = 0
}
y+= vspd



}