function scr_enemy_crow_check_if_escape() //gml_Script_scr_enemy_crow_check_if_escape
{
    target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
    if (target != -4)
    {
        hspd = 0
        vspd = 0
        var range = 500
        var dir = irandom_range(45, 135)
        move_point_x = (x + lengthdir_x(range, dir))
        move_point_y = (y + lengthdir_y(range, dir))
        state = (71 << 0)
        var ss = choose(310, 311, 312, 313, 314)
        audio_play_sound_on(emitter_talk, ss, false, 10)
    }
    return;
}

