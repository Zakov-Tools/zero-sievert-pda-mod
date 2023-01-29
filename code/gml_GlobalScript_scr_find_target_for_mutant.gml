function scr_find_target_for_mutant(argument0) //gml_Script_scr_find_target_for_mutant
{
    var alert_distance = argument0
    if instance_exists(obj_controller)
    {
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
            alert_distance = lerp((npc_alert_visual_distance[npc_id] / k), npc_alert_visual_distance[npc_id], amount)
        }
        if (lc.ciclo_now == (2 << 0))
        {
            hours_sunrise = (lc.ciclo_time[(3 << 0)] - lc.ciclo_time[(2 << 0)])
            amount = ((t_hm - lc.ciclo_time[(2 << 0)]) / hours_sunrise)
            alert_distance = lerp(npc_alert_visual_distance[npc_id], (npc_alert_visual_distance[npc_id] / k), amount)
        }
    }
    var n = noone
    var d = alert_distance
    with (obj_npc_parent)
    {
        if (faction != other.faction && faction != (9 << 0))
        {
            if (distance_to_object(other) <= d)
            {
                if (!(collision_line(x, y, other.x, other.y, obj_solid, false, true)))
                {
                    n = id
                    search_target_id = id
                    d = point_distance(n.x, n.y, x, y)
                }
            }
        }
    }
    alert_distance = (npc_alert_visual_distance[npc_id] * global.sk_k[(10 << 0)])
    if instance_exists(obj_player)
    {
        if (obj_player.state != gml_Script_scr_player_state_start)
        {
            if (distance_to_object(obj_player) <= d)
            {
                if (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true)))
                {
                    alert_player += (alert_distance / point_distance(x, y, obj_player.x, obj_player.y))
                    if (alert_player >= alert_player_max)
                    {
                        n = obj_player
                        search_target_id = 90
                    }
                }
            }
        }
    }
    if instance_exists(target)
    {
        if (target != noone && n == -4)
        {
            if (point_distance(x, y, target.x, target.y) < 280)
                n = target
        }
    }
    if (!instance_exists(n))
        n = -4
    return n;
}

