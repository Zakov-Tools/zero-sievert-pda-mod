if place_meeting(x, y, obj_player)
{
    active = 1
    alarm[0] = 5
    scr_anomaly_damage(damage)
    if (!audio_is_playing(snd_chemical_collision))
        audio_play_sound(snd_chemical_collision, 10, false)
}
if (active == 1)
{
    if (!(place_meeting(x, y, obj_player)))
        audio_stop_sound(snd_chemical_collision)
}
if place_meeting(x, y, obj_npc_parent)
{
    active = 1
    alarm[0] = 5
    var quale_id = instance_place(x, y, obj_npc_parent)
    quale_id.hp -= 0.5
}
if place_meeting(x, y, obj_bolt)
{
    active = 1
    alarm[0] = 30
}
if scr_chance(2)
{
    var a = (16 << 0)
    var c = obj_particles_controller
    part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (x - 4), (x + 4), (y - 0), (y + 0), 1, 1)
    part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], c.particle_amount[a])
}
if scr_chance(25)
{
    a = (17 << 0)
    c = obj_particles_controller
    part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (x - 4), (x + 4), (y - 1), (y + 1), 1, 1)
    part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], c.particle_amount[a])
}
if scr_chance(0.5)
{
    a = (18 << 0)
    c = obj_particles_controller
    part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (x - 4), (x + 4), (y - 1), (y + 1), 1, 1)
    part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], c.particle_amount[a])
}
if (active == 1)
{
    if scr_chance(10)
    {
        a = (18 << 0)
        c = obj_particles_controller
        part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (x - 4), (x + 4), (y - 1), (y + 1), 1, 1)
        part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], c.particle_amount[a])
    }
    if scr_chance(20)
    {
        a = (16 << 0)
        c = obj_particles_controller
        part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (x - 4), (x + 4), (y - 0), (y + 0), 1, 1)
        part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], c.particle_amount[a])
    }
}
