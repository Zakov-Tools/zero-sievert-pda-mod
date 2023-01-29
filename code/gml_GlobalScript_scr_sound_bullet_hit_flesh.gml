function scr_sound_bullet_hit_flesh() //gml_Script_scr_sound_bullet_hit_flesh
{
    var i_max = array_length_1d(obj_sound_controller.bullet_hit_flesh)
    var i = irandom(i_max)
    i = clamp(i, 0, (i_max - 1))
    scr_sound_at_position(obj_sound_controller.bullet_hit_flesh[i], false, 100, 0)
    return;
}

