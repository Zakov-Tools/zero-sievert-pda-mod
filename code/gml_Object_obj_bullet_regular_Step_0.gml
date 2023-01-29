event_inherited()
timer += (damage / 20)
timer = clamp(timer, 0, 5)
if (audio_near_created == 0)
{
    if (shooter_faction != obj_player.faction)
    {
        if (point_distance(x, y, obj_player.x, obj_player.y) < 25)
        {
            audio_near_created = 1
            var i_max = array_length_1d(obj_sound_controller.bullet_hit_near)
            var i = irandom(i_max)
            i = clamp(i, 0, (i_max - 1))
            var emitter = audio_emitter_create()
            audio_emitter_position(emitter, x, y, 0)
            audio_emitter_falloff(emitter, 0, 40, 1)
            audio_play_sound_on(emitter, obj_sound_controller.bullet_hit_near[i], false, 2)
        }
    }
}
