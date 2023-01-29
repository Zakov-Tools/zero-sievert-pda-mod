function state_enemy_human_alert() //gml_Script_state_enemy_human_alert
{
    target = scr_find_target_for_human()
    if (target != noone)
    {
        target_for_image_scale = target.x
        var target_distance = distance_to_object(target)
        if (move_point_x == 0)
        {
            var range_ = 128
            var kk = choose(0, 1, 1, 1)
            if (kk == 0)
            {
                move_point_x = (target.x + irandom_range((-range_), range_))
                move_point_y = (target.y + irandom_range((-range_), range_))
            }
            if (kk == 1)
            {
                move_point_x = x
                move_point_y = y
            }
        }
        riflessi++
        enemy_seen = 1
        last_seen_x = target.x
        last_seen_y = target.y
        search_target_id = target
        if scr_chance((npc_prob_idle[npc_id] * 5))
        {
            move_point_x = x
            move_point_y = y
        }
        if scr_chance(npc_prob_move[npc_id])
        {
            range_ = 128
            move_point_x = (target.x + irandom_range((-range_), range_))
            move_point_y = (target.y + irandom_range((-range_), range_))
        }
        if scr_chance(npc_prob_move[npc_id])
        {
            range_ = 128
            move_point_x = (x + irandom_range((-range_), range_))
            move_point_y = (y + irandom_range((-range_), range_))
        }
        weapon_pointing_direction = point_direction(x, y, target.x, target.y)
        if (target_distance <= npc_player_distance_attack[npc_id])
        {
            if (reloading == 0)
            {
                if (shooting == 0)
                {
                    if (riflessi >= riflessi_max)
                    {
                        recoil_total = (arma_precisione[arma_now] * npc_aim_factor[npc_id])
                        var dam = arma_damage[arma_now]
                        var prec = (arma_precisione[arma_now] * npc_aim_factor[npc_id])
                        scr_shoot(weapon_pointing_direction, (0 << 0), dam, prec)
                        shooting = 1
                        ammo_now -= 1
                        if (arma_fire_mode[arma_now] == (1 << 0))
                            alarm[1] = (10 + irandom(35))
                        else
                            alarm[1] = ((arma_rate_of_fire[arma_now] * (npc_prob_attack[npc_id] + random(3))) + 5)
                        if (ammo_now <= 0)
                        {
                            reloading = 1
                            alarm[0] = (arma_reload_time[arma_now] * (1 + random(1.5)))
                        }
                    }
                }
            }
        }
    }
    else if (search_target_id != undefined && search_target_id != noone && instance_exists(search_target_id))
    {
        if (enemy_seen == 1)
        {
            enemy_seen = 0
            move_point_x = last_seen_x
            move_point_y = last_seen_y
            alarm[5] = reset_state_to_patrol_time
        }
        if scr_chance(npc_prob_idle[npc_id])
        {
            move_point_x = x
            move_point_y = y
        }
        if scr_chance(npc_prob_move[npc_id])
        {
            range_ = 64
            move_point_x = (search_target_id.x + irandom_range((-range_), range_))
            move_point_y = (search_target_id.y + irandom_range((-range_), range_))
        }
        target_for_image_scale = search_target_id.x
        weapon_pointing_direction = point_direction(x, y, search_target_id.x, search_target_id.y)
        riflessi = 0
        if (point_distance(x, y, search_target_id.x, search_target_id.y) > (npc_alert_visual_distance[npc_id] * 1.5))
        {
            search_target_id = -4
            state = npc_state_patrol[npc_id]
        }
    }
    path_timer++
    if (path_timer >= path_timer_reset)
    {
        path_timer = 0
        path_to_target = path_add()
        mp_grid_path(global.grid_move, path_to_target, x, y, move_point_x, move_point_y, true)
        path_start(path_to_target, npc_spd_alerted[npc_id], path_action_stop, 0)
    }
    return;
}

