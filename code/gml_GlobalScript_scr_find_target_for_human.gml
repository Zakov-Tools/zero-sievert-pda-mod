function scr_find_target_for_human() //gml_Script_scr_find_target_for_human
{
    if instance_exists(obj_light_controller)
    {
        var alert_distance = npc_alert_visual_distance[npc_id]
        var alert_angle = npc_alert_radius[npc_id]
        var lc = obj_light_controller
        var t_hm = (lc.hour + ((1 * lc.minute) / 60))
        var k = 1.5
        if (lc.ciclo_now == (3 << 0))
        {
            alert_distance = (npc_alert_visual_distance[npc_id] / k)
            alert_angle = (npc_alert_radius[npc_id] / k)
        }
        if (lc.ciclo_now == (0 << 0))
        {
            var hours_sunrise = (lc.ciclo_time[(1 << 0)] - lc.ciclo_time[(0 << 0)])
            var amount = ((t_hm - lc.ciclo_time[(0 << 0)]) / hours_sunrise)
            alert_angle = lerp((npc_alert_radius[npc_id] / k), npc_alert_radius[npc_id], amount)
            alert_distance = lerp((npc_alert_visual_distance[npc_id] / k), npc_alert_visual_distance[npc_id], amount)
        }
        if (lc.ciclo_now == (2 << 0))
        {
            hours_sunrise = (lc.ciclo_time[(3 << 0)] - lc.ciclo_time[(2 << 0)])
            amount = ((t_hm - lc.ciclo_time[(2 << 0)]) / hours_sunrise)
            alert_angle = lerp(npc_alert_radius[npc_id], (npc_alert_radius[npc_id] / k), amount)
            alert_distance = lerp(npc_alert_visual_distance[npc_id], (npc_alert_visual_distance[npc_id] / k), amount)
        }
        var x2 = (x + lengthdir_x(alert_distance, (weapon_pointing_direction + (alert_angle / 2))))
        var y2 = (y + lengthdir_y(alert_distance, (weapon_pointing_direction + (alert_angle / 2))))
        var x3 = (x + lengthdir_x(alert_distance, (weapon_pointing_direction - (alert_angle / 2))))
        var y3 = (y + lengthdir_y(alert_distance, (weapon_pointing_direction - (alert_angle / 2))))
        var n = noone
        var d = alert_distance
        var r = global.faction_limit_max
        var my_id = id
        var patrol = 1
        if (state != (9 << 0) && state != (10 << 0) && human_state_now != (0 << 0))
            patrol = 0
        var temp_relation = (1 << 0)
        with (obj_npc_parent)
        {
            if (id != my_id)
            {
                var relation = ds_grid_get(global.grid_faction, faction, other.faction)
                if (relation <= r)
                {
                    if (point_distance(x, y, other.x, other.y) < alert_distance)
                    {
                        if (!(collision_line(x, y, other.x, other.y, obj_solid, false, true)))
                        {
                            var temp_id = id
                            if point_in_triangle(temp_id.x, temp_id.y, other.x, other.y, x2, y2, x3, y3)
                            {
                                n = id
                                r = relation
                            }
                            if (point_distance(x, y, temp_id.x, temp_id.y) <= npc_alert_min_distance[npc_id])
                            {
                                n = id
                                r = relation
                            }
                        }
                    }
                }
            }
        }
        alert_distance *= global.sk_k[(10 << 0)]
        x2 = (x + lengthdir_x(alert_distance, (weapon_pointing_direction + (alert_angle / 2))))
        y2 = (y + lengthdir_y(alert_distance, (weapon_pointing_direction + (alert_angle / 2))))
        x3 = (x + lengthdir_x(alert_distance, (weapon_pointing_direction - (alert_angle / 2))))
        y3 = (y + lengthdir_y(alert_distance, (weapon_pointing_direction - (alert_angle / 2))))
        if instance_exists(obj_player)
        {
            if (obj_player.state != gml_Script_scr_player_state_start)
            {
                relation = ds_grid_get(global.grid_faction, faction, (0 << 0))
                if (relation <= r)
                {
                    if (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true)))
                    {
                        temp_id = obj_player
                        if point_in_triangle(temp_id.x, temp_id.y, x, y, x2, y2, x3, y3)
                        {
                            alert_player += ((alert_distance / point_distance(x, y, obj_player.x, obj_player.y)) * human_tick_max)
                            if (alert_player >= alert_player_max)
                            {
                                n = obj_player.id
                                r = relation
                            }
                        }
                        if (point_distance(x, y, temp_id.x, temp_id.y) <= npc_alert_min_distance[npc_id])
                        {
                            alert_player += ((alert_distance / point_distance(x, y, obj_player.x, obj_player.y)) * human_tick_max)
                            if (alert_player >= alert_player_max)
                            {
                                n = obj_player.id
                                r = relation
                            }
                        }
                    }
                }
            }
        }
        var _ho_gia_target = 0
        var _target_rel = (1 << 0)
        var _n_rel = r
        var _new_target = n
        if instance_exists(target)
        {
            _ho_gia_target = 1
            _target_rel = ds_grid_get(global.grid_faction, faction, target.faction)
        }
        if (_new_target != noone)
            _n_rel = ds_grid_get(global.grid_faction, faction, _new_target.faction)
        if (_ho_gia_target == 1)
        {
            if (_new_target == noone)
            {
                n = target
                temp_relation = _target_rel
            }
            else if (target != n)
            {
                if (_n_rel > _target_rel)
                {
                    n = target
                    temp_relation = _target_rel
                }
                else
                {
                    temp_relation = _n_rel
                    n = _new_target
                }
            }
        }
        if (_ho_gia_target == 0)
        {
            if (_new_target != noone)
            {
                temp_relation = _n_rel
                n = _new_target
            }
        }
        if (room == r_hub)
            n = noone
        if (n != noone)
            target_relation = scr_get_relation(faction, n.faction)
    }
    else
        n = noone
    return n;
}

