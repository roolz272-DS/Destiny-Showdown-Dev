part_type_sprite(global.trailpart, sprite_index, false, true, false)
part_type_size(global.trailpart, 0.1, 0.1, 0, 0)
part_particles_create(global.Psystem_fx, x, y, global.trailpart, 1);

alarm_set(0,3)