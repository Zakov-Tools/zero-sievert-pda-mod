function scr_sound_at_position(argument0, argument1, argument2, argument3) //gml_Script_scr_sound_at_position
{
    var dis = point_distance(x, y, obj_player.x, obj_player.y)
    var dis_max = argument2
    var dis_min = argument3
    dis = clamp(dis, dis_min, dis_max)
    var gain = lerp(0, 1, (dis / dis_max))
    gain = (1 - gain)
    var gain_snd = audio_sound_get_gain(argument0)
    var sound = audio_play_sound(argument0, 15, argument1)
    audio_sound_gain(sound, (gain * gain_snd), 1)
    audio_play_sound(sound, 15, argument1)
    return;
}

