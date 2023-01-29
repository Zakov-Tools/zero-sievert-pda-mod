function scr_enemy_path() //gml_Script_scr_enemy_path
{
    path_timer++
    if (path_timer >= path_timer_reset)
    {
        path_timer = 0
        path_to_target = path_add()
        var o = obj_controller
        var _target_x = move_point_x
        var _target_y = move_point_y
        var _x = (_target_x div 16)
        var _y = (_target_y div 16)
        if (ds_grid_get(o.grid_motion, _x, _y) == -1)
        {
            var _list_x = ds_list_create()
            var _list_y = ds_list_create()
            var _list_dis = ds_list_create()
            for (var xx = -5; xx < 5; xx++)
            {
                for (var yy = -5; yy < 5; yy++)
                {
                    if (ds_grid_get(o.grid_motion, (_x + xx), (_y + yy)) == 0)
                    {
                        var _x_new = (((_x + xx) * 16) + 8)
                        var _y_new = (((_y + yy) * 16) + 8)
                        ds_list_add(_list_x, _x_new)
                        ds_list_add(_list_y, _y_new)
                        var _dis = point_distance(_target_x, _target_y, _x_new, _y_new)
                        ds_list_add(_list_dis, _dis)
                    }
                }
            }
            var _index = 0
            if (ds_list_size(_list_dis) > 0)
            {
                _dis = 9999
                for (var i = 0; i < ds_list_size(_list_dis); i++)
                {
                    if (ds_list_find_value(_list_dis, i) < _dis)
                    {
                        _index = i
                        _dis = ds_list_find_value(_list_dis, i)
                    }
                }
                _target_x = ds_list_find_value(_list_x, _index)
                _target_y = ds_list_find_value(_list_y, _index)
                move_point_x = _target_x
                move_point_y = _target_y
            }
        }
        mp_grid_path(global.grid_move, path_to_target, x, y, move_point_x, move_point_y, true)
        var spd = npc_spd_not_alerted[npc_id]
        if (state == (13 << 0))
            spd = npc_spd_not_alerted[npc_id]
        if (state == (44 << 0))
            spd = npc_spd_not_alerted[npc_id]
        if (state == (7 << 0))
        {
            var _node_id = tree_id[node_running_now]
            if (_node_id == (23 << 0) || _node_id == (22 << 0))
                spd = npc_spd_alerted[npc_id]
        }
        if (state == (36 << 0) || state == (48 << 0) || state == (51 << 0) || state == (38 << 0))
            spd = npc_spd_alerted[npc_id]
        if (state == (41 << 0))
            spd = (npc_spd_alerted[npc_id] * 1.5)
        if (room == r_hub)
            spd = npc_spd_not_alerted[npc_id]
        if (state == (8 << 0))
        {
            if (human_state_now == (12 << 0) || human_state_now == (13 << 0) || human_state_now == (15 << 0) || human_state_now == (18 << 0) || human_state_now == (17 << 0) || human_state_now == (16 << 0) || human_state_now == (28 << 0) || human_state_now == (26 << 0) || human_state_now == (14 << 0) || human_state_now == (29 << 0))
                spd = npc_spd_alerted[npc_id]
        }
        path_start(path_to_target, spd, path_action_stop, 0)
    }
    if (target != noone)
    {
        if instance_exists(target)
        {
            target_for_image_scale = target.x
            if (human_state_now == (25 << 0))
                target_for_image_scale = last_target_cover_x
            if (human_state_now == (15 << 0) || human_state_now == (14 << 0))
                target_for_image_scale = last_seen_x
        }
    }
    else
        target_for_image_scale = move_point_x
    return;
}

