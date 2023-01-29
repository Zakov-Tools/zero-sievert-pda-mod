var a = (28 << 0)
var ob = obj_particles_controller
var rr = 2
var sx = (x + 47)
var sy = (y - 28)
part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], (sx - rr), (sx + rr), (sy - rr), (sy + rr), 0, 1)
part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], 1)
sx = (x + 72)
sy = (y - 24)
part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], (sx - rr), (sx + rr), (sy - rr), (sy + rr), 0, 1)
part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], 1)
