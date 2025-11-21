
var h = createHit(self, EFF_ZERO, 3, 10,0, 0.75,0.75);	
h._id = _id*random(3000)
owner.last_id_used = h._id;	
show_debug_message(h._id);
instance_destroy();
