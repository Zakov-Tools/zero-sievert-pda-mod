function scr_state_enemy_watcher_alert() //gml_Script_scr_state_enemy_watcher_alert
{
    target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
    if (target != noone)
    {
        target_for_image_scale = target.x
        if scr_chance(npc_prob_attack[npc_id])
        {
            move_point_x = target.x
            move_point_y = target.y
        }
        if scr_chance(prob_disappear)
            state = gml_Script_scr_state_enemy_watcher_disappearing
        if scr_chance(prob_attack1)
        {
            state = gml_Script_scr_state_enemy_watcher_attack1
            if (x > target.x)
                image_xscale = -1
            else
                image_xscale = 1
        }
    }
    else
        state = npc_state_patrol[npc_id]
    return;
}

