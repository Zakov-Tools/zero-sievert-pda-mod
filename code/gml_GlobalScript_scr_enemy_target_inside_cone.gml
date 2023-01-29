function scr_enemy_target_inside_cone() //gml_Script_scr_enemy_target_inside_cone
{
    var _lo_vedo = 0
    if instance_exists(target)
    {
        if (!(collision_line(x, y, target.x, target.y, obj_solid, false, true)))
        {
            var alert_distance = npc_alert_visual_distance[npc_id]
            var alert_angle = npc_alert_radius[npc_id]
            if (target == obj_player.id)
                alert_distance *= global.sk_k[(10 << 0)]
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
            if (point_distance(x, y, target.x, target.y) <= (npc_alert_min_distance[npc_id] * 1.5))
                _lo_vedo = 1
            if point_in_triangle(target.x, target.y, x, y, x2, y2, x3, y3)
                _lo_vedo = 1
        }
    }
    return _lo_vedo;
}

