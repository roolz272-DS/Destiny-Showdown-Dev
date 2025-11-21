if(becomes == 0)
{
	var h = createHit(self, noone, 4, 0, 0,1,1);	
		h.owner = owner;
h._id = owner.hit_baseid
shelladd = false;
}
else if(becomes == 1)
{
	var h = createHit(self, EFF_GRAB, 0, 10, 0,1,1);	
h._id = owner.hit_baseid
	h.owner = owner;
shelladd = false;


}
instance_destroy();