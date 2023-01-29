event_inherited()
if (state == npc_state_alert[npc_id])
{
    if scr_chance(0.8333333333333334)
    {
        var sound = choose(299, 300, 301, 302)
        audio_play_sound_on(emitter_talk, sound, false, 5)
    }
}
var a = (30 << 0)
var ob = obj_particles_controller
var rr = 5
if scr_chance(25)
{
    if (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true)))
        part_particles_create(ob.particles_system[a], (x + random_range((-rr), rr)), (y + random_range((-rr), rr)), ob.particles_type[a], 1)
}
