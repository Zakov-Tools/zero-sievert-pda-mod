function scr_state_enemy_anomaly_fire_alert() //gml_Script_scr_state_enemy_anomaly_fire_alert
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
        range_ = 128
        if scr_chance(npc_prob_attack[npc_id])
        {
            move_point_x = target.x
            move_point_y = target.y
        }
        if scr_chance(npc_prob_move[npc_id])
        {
            move_point_x = (target.x + irandom_range((-range_), range_))
            move_point_y = (target.y + irandom_range((-range_), range_))
        }
        if scr_chance(prob_attac)
        {
            var vel = bullet_spd
            var dir = point_direction(x, y, target.x, target.y)
            var bull = instance_create_depth(x, y, (-y), obj_bullet_wraith_fire)
            bull.hspd = lengthdir_x(vel, dir)
            bull.vspd = lengthdir_y(vel, dir)
            bull.damage = damage_bullet
            bull.shooter_faction = faction
            bull.shooter_id = id
        }
        if (abs((x - move_point_x)) < 8 && abs((y - move_point_y)) < 8)
        {
            move_point_x = (target.x + irandom_range((-range_), range_))
            move_point_y = (target.y + irandom_range((-range_), range_))
        }
        mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
    }
    else if (search_target_id != noone)
    {
        if (enemy_seen == 1)
        {
            enemy_seen = 0
            range_ = 64
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
        mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
        if (point_distance(x, y, search_target_id.x, search_target_id.y) > (npc_alert_visual_distance[npc_id] * 3))
        {
            search_target_id = -4
            state = npc_state_patrol[npc_id]
        }
    }
    return;
}

