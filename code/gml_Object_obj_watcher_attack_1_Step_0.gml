depth = ((-y) - 50)
if (target != noone)
{
    x = target.x
    y = target.y
    var a = (37 << 0)
    var ob = obj_particles_controller
    var rr = 10
    part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], (x - rr), (x + rr), (y - rr), (y + rr), 1, 1)
    part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], ob.particle_amount[a])
}
else
    instance_destroy()
if collision_line(x, y, obj_watcher_attack_1_position.x, obj_watcher_attack_1_position.y, obj_solid, false, true)
{
    instance_destroy()
    with (obj_watcher_attack_1_position)
        instance_destroy()
}
