var cont = obj_particles_controller
var a = (11 << 0)
part_particles_create(cont.particles_system[a], (x + random_range(-2, 2)), (y - 10), cont.particles_type[a], 3)
a = (10 << 0)
part_particles_create(cont.particles_system[a], (x + random_range(-4, 4)), (y - 15), cont.particles_type[a], 1)
