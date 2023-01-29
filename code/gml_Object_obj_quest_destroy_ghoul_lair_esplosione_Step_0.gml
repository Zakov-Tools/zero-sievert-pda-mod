if (show_explosion == 1)
{
    visible = true
    sprite_index = s_vuoto
    var o = obj_particles_controller
    var a = (41 << 0)
    part_particles_create(o.particles_system[a], x, y, o.particles_type[a], 4)
    if (!audio_is_playing(snd_explosion_1))
        audio_play_sound(snd_explosion_1, 14, false)
    if (point_distance(x, y, obj_player.x, obj_player.y) < 128)
    {
        obj_player.hp = 0
        scr_camera_shake(3, irandom(360))
    }
}
else
    visible = false
