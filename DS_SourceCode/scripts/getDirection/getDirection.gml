function getDirection(){ 
var you = x;
var them = opponent.x;


if(you > them) {
image_xscale = -1;
return -1;
}
else {
image_xscale = 1;
return 1;
}
	
	}


