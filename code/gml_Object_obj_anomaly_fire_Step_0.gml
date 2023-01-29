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
    quale_id.hp -= 0.75
}
if place_meeting(x, y, obj_bolt)
{
    active = 1
    alarm[0] = 30
}
if (active == 1)
{
    var a = (12 << 0)
    var c = obj_particles_controller
    part_particles_create(c.particles_system[a], x, y, c.particles_type[a], c.particle_fire_amount)
    audio_emitter_gain(my_emitter, 1)
}
else
    audio_emitter_gain(my_emitter, 0)
if scr_chance(0.2)
{
    a = (13 << 0)
    c = obj_particles_controller
    part_particles_create(c.particles_system[a], x, y, c.particles_type[a], c.particle_fire_amount)
}
