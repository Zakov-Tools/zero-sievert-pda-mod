timer_volo++
if (timer_volo > 90)
    instance_destroy()
event_inherited()
var a = (25 << 0)
var c = obj_particles_controller
part_particles_create(c.particles_system[a], x, y, c.particles_type[a], 1)
