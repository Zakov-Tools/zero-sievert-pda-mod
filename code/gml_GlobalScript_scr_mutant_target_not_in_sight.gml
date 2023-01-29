function scr_mutant_target_not_in_sight() //gml_Script_scr_mutant_target_not_in_sight
{
    if (search_target_id != noone)
    {
        if instance_exists(search_target_id)
        {
            if (enemy_seen == 1)
            {
                enemy_seen = 0
                var range_ = 64
                move_point_x = (last_seen_x + irandom_range((-range_), range_))
                move_point_y = (last_seen_y + irandom_range((-range_), range_))
                alarm[5] = reset_state_to_patrol_time
            }
            if scr_chance(npc_prob_move[npc_id])
            {
                range_ = 64
                move_point_x = (search_target_id.x + irandom_range((-range_), range_))
                move_point_y = (search_target_id.y + irandom_range((-range_), range_))
            }
            scr_enemy_path()
            if (point_distance(x, y, search_target_id.x, search_target_id.y) > (npc_alert_visual_distance[npc_id] * 3))
            {
                search_target_id = -4
                state = npc_state_patrol[npc_id]
            }
        }
    }
    return;
}

