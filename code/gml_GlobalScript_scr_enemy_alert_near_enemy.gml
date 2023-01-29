function scr_enemy_alert_near_enemy() //gml_Script_scr_enemy_alert_near_enemy
{
    var my_faction = npc_faction[npc_id]
    var my_target = target
    var my__id = id
    var xx = x
    var yy = y
    with (obj_npc_parent)
    {
        if (point_distance(x, y, xx, yy) < 200)
        {
            if (npc_faction[npc_id] == my_faction)
            {
                if (id != my__id)
                {
                    if scr_chance(100)
                    {
                        if instance_exists(target)
                        {
                            if (target_relation == (0 << 0) || target_relation == (1 << 0))
                            {
                                state = (11 << 0)
                                target = my_target
                                target_relation = (2 << 0)
                            }
                        }
                        if (target == -4)
                        {
                            state = (11 << 0)
                            target = my_target
                            target_relation = (2 << 0)
                        }
                    }
                }
            }
        }
    }
    return;
}

