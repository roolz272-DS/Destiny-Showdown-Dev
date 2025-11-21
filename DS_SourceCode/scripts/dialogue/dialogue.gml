function dialogue(argument0, argument1, argument2, argument3){
stringget = "";
randomnum = 0;
switch(argument0)
{
case CHAR_KYLE:
switch(argument1)
{
case CHAR_KYLE:
selectdia = [["The fuck's this bullshit!? \nHow're you me?", "The hell'd I just smoke? \nNo way I'm seein' double!"],["I AM you, dipshit; \n'Joey Jatsel' ring a bell?","Oh, I'm in the flesh, \nand ready to beat yer goddamn ass."]]
break
case CHAR_ARAGON:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
case CHAR_SHRED:
selectdia = [["Weapons? You call them bullshit brute instruments WEAPONS?", "“Master Machinist?” What kinda lame-ass title’s THAT?"],["...Get the fuck outta here, kid.", "...Get the fuck outta here, kid."]]
break
case CHAR_FRED:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
}
break
case CHAR_ARAGON:
switch(argument1)
{
case CHAR_KYLE:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
case CHAR_ARAGON:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
case CHAR_SHRED:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
case CHAR_FRED:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
}
break
case CHAR_SHRED:
switch(argument1)
{
case CHAR_KYLE:
selectdia = [["Careful! That smoke’ll make you choke!", "Careful! That smoke’ll make you choke!"],["Yeah, and they’re about to get another on the count!", "It’s a damn good one is what it is! Have you seen the things I’ve invented?"]]
break
case CHAR_ARAGON:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
case CHAR_SHRED:
selectdia = [["You really thought you could beat me? Ha! As if!", "Maybe we should exchange blueprints some time..."],["Oh god… Do I always sound this pretentious?", "I doubt there’d be many differences."]]
break
case CHAR_FRED:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
}
break
case CHAR_FRED:
switch(argument1)
{
case CHAR_KYLE:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
case CHAR_ARAGON:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
case CHAR_SHRED:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
case CHAR_FRED:
selectdia = [["N/A", "N/A"],["N/A", "N/A"]]
break
}
break
	
}
stringget = selectdia[argument2][argument3]
return stringget;

}