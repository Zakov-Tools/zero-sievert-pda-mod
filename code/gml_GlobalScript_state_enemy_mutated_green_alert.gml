function state_enemy_mutated_green_alert() //gml_Script_state_enemy_mutated_green_alert
{
    target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
    if (target != noone)
    {
        target_for_image_scale = target.x
        if (move_point_x == 0)
        {
            var range_ = 64
            move_point_x = (target.x + irandom_range((-range_), range_))
            move_point_y = (target.y + irandom_range((-range_), range_))
        }
        path_end()
        last_seen_x = target.x
        last_seen_y = target.y
        if scr_chance(npc_prob_move[npc_id])
        {
            move_point_x = (target.x + irandom_range((-range_), range_))
            move_point_y = (target.y + irandom_range((-range_), range_))
        }
        range_ = 64
        if scr_chance(npc_prob_attack[npc_id])
            state = gml_Script_scr_enemy_mutated_green_attack_ground
        mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
    }
    else
        state = npc_state_patrol[npc_id]
    return;
}

