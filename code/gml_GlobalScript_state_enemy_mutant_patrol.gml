function state_enemy_mutant_patrol() //gml_Script_state_enemy_mutant_patrol
{
    scr_enemy_choose_idle_or_move()
    scr_collision()
    target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
    if (target != -4)
    {
        hspd = 0
        vspd = 0
        state = npc_state_alert[npc_id]
        if (object_index == obj_enemy_big)
            state = (57 << 0)
    }
    return;
}

