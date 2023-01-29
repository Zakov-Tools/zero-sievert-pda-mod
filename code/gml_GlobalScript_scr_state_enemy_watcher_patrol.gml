function scr_state_enemy_watcher_patrol() //gml_Script_scr_state_enemy_watcher_patrol
{
    if scr_chance(npc_prob_idle[npc_id])
    {
        if scr_chance(50)
            image_xscale = 1
        else
            image_xscale = -1
    }
    scr_collision()
    target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
    if (target != -4)
    {
        hspd = 0
        vspd = 0
        state = npc_state_alert[npc_id]
    }
    return;
}

