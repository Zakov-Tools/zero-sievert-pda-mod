event_inherited()
sprite_index = s_vuoto
var a = (22 << 0)
var ob = obj_particles_controller
var rr = 16
part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], (x - rr), (x + rr), (y - rr), (y + rr), 1, 1)
part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], ob.particle_amount[a])
a = (21 << 0)
rr = 16
part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], (x - rr), (x + rr), (y - rr), (y + rr), 1, 1)
part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], ob.particle_amount[a])
