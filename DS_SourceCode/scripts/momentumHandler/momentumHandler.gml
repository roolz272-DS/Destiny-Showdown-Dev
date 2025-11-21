function momentumHandler(){
	var _direction = input_x("left", "right", "up", "down", controller);
	if _direction != 0 && (state == FREE_STATE || state == SPRINT_STATE )
	{
		momentum = hspd;
	}
	else if landed && state != HURT_STATE {
		if momentum != 0 {
	hspd = momentum - momentum/6;
	momentum = hspd
		}
	}
}