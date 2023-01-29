var cont = obj_particles_controller
var a = (11 << 0)
part_particles_create(cont.particles_system[a], (x + random_range(-1, 1)), (y - 12), cont.particles_type[a], 2)
a = (10 << 0)
part_particles_create(cont.particles_system[a], (x + random_range(-4, 4)), (y - 15), cont.particles_type[a], 1)
