if fin == 0 {
if(talker1 == noone && talker2 == noone)
{
var ran = irandom(1);
if ran == 0 {
talker1 = global.p1_char;
talker2 = global.p2_char;
}
else{
talker1 = global.p2_char;
talker2 = global.p1_char;
}
}
if diatype == 3
{
	diatype = irandom(1);
}
if diaset == false 
{
	dia1 = dialogue(talker1, talker2, diaturn, diatype);
	diaturn++
	dia2 = dialogue(talker1, talker2, diaturn, diatype);
diaset = true;
}
fin = 1;
}
