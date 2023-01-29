if place_meeting(x, y, obj_player)
{
    active = 1
    alarm[0] = 5
    scr_anomaly_damage(damage)
}
if place_meeting(x, y, obj_npc_parent)
{
    active = 1
    alarm[0] = 5
    var quale_id = instance_place(x, y, obj_npc_parent)
    quale_id.hp -= 0.25
}
if place_meeting(x, y, obj_bolt)
{
    active = 1
    alarm[0] = 30
}
if scr_chance(100)
{
    var a = (19 << 0)
    var c = obj_particles_controller
    part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (x - 4), (x + 4), (y - 0), (y + 0), 1, 1)
    part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], c.particle_amount[a])
}
