
var h = createHit(self, EFF_GRAB, 3, 10,0, 0.75,0.75);	
h._id = owner.hit_baseid*round(image_index);
owner.last_id_used = h._id;	
show_debug_message(h._id);
instance_destroy();
