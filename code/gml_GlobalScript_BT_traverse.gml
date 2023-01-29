function fun_bt_traverse(argument0) //gml_Script_fun_bt_traverse
{
    if (argument0 == undefined)
        argument0 = (0 << 0)
    var _node_id = tree_id[argument0]
    var _t = ""
    if (node_state_now == 1)
        _t = "SUCCESS"
    if (node_state_now == 0)
        _t = "FAILURE"
    if (node_state_now == 2)
        _t = "RUNNING"
    if (node_state_now == 3)
        _t = "TICK"
    show_debug_message(_t)
    var _node_name = global.node_name[tree_id[argument0]]
    show_debug_message(_node_name)
    var _node_type = tree_node[argument0]
    var _tree_parent = tree_parent[argument0]
    var _child_number = array_length(tree_child[argument0])
    if (_child_number == 0)
    {
        if (_node_type == (4 << 0))
        {
            if (node_state_now == 3)
            {
                if (argument0 != node_running_now)
                {
                    bt_action_timer_now = 0
                    node_state_now = 2
                    node_action_state = 2
                    node_running_now = argument0
                }
                if (argument0 == node_running_now)
                    node_state_now = 2
            }
            if (node_state_now == 2)
            {
                node_state_now = 2
                var _action_now = tree_id[node_running_now]
                switch _action_now
                {
                    case (20 << 0):
                        if scr_chance(npc_prob_idle[npc_id])
                        {
                            hspd = 0
                            vspd = 0
                        }
                        if scr_chance((npc_prob_move[npc_id] * 6))
                        {
                            var dir = irandom(360)
                            hspd = lengthdir_x(npc_spd_not_alerted[npc_id], dir)
                            vspd = lengthdir_y(npc_spd_not_alerted[npc_id], dir)
                        }
                        scr_collision()
                        scr_move_arma_random(4, weapon_pointing_angle, 3)
                        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                        break
                    case (22 << 0):
                        if (bt_action_timer_now == 0)
                        {
                            scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 8)
                            if scr_chance(50)
                                scr_draw_npc_text(id, (7 << 0))
                        }
                        scr_enemy_path()
                        break
                    case (21 << 0):
                        if (bt_action_timer_now == 0)
                        {
                            reloading = 1
                            alarm[0] = (irandom(100) + 80)
                            path_end()
                            if scr_chance(50)
                                scr_draw_npc_text(id, (5 << 0))
                        }
                        if (reloading == 0)
                        {
                            node_state_now = 1
                            need_reload_already_check = 0
                            if (image_xscale == 1)
                                weapon_pointing_direction = 0
                            else
                                weapon_pointing_direction = 180
                        }
                        break
                    case (23 << 0):
                        if (bt_action_timer_now == 0)
                        {
                            move_point_x = last_cover_pos_x
                            move_point_y = last_cover_pos_y
                            if scr_chance(50)
                                scr_draw_npc_text(id, (1 << 0))
                        }
                        scr_enemy_path()
                        if (point_distance(x, y, last_cover_pos_x, last_cover_pos_y) < 4)
                            node_state_now = 1
                        break
                    case (24 << 0):
                        if (bt_action_timer_now == 0)
                        {
                        }
                        if instance_exists(target)
                        {
                            var _dir = point_direction(x, y, target.x, target.y)
                            var _angle_diff = angle_difference(_dir, weapon_pointing_direction)
                            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                            if (abs(_angle_diff) > angle_min_to_rotate)
                            {
                                if (_angle_diff > 0)
                                    weapon_pointing_direction += angle_increase_for_target
                                if (_angle_diff < 0)
                                    weapon_pointing_direction -= angle_increase_for_target
                            }
                            else
                                state_finito = 1
                        }
                        break
                    case (25 << 0):
                        if (bt_action_timer_now == 0)
                        {
                            path_end()
                            if scr_chance(50)
                                scr_draw_npc_text(id, (11 << 0))
                        }
                        if (shoot_time == 0)
                        {
                            path_end()
                            if scr_chance(75)
                            {
                                var _xx = irandom_range(-8, 8)
                                scr_enemy_choose_move_pos((x + _xx), (y + _xx), 16)
                            }
                            else
                            {
                                move_point_x = x
                                move_point_y = y
                            }
                        }
                        if instance_exists(target)
                        {
                            if (target_relation == (2 << 0))
                            {
                                _dir = point_direction(x, y, target.x, target.y)
                                weapon_pointing_direction = _dir
                                scr_enemy_shoot()
                                shoot_time++
                                if (shoot_time >= shoot_time_max)
                                    shoot_time = 0
                            }
                        }
                        scr_enemy_path()
                        break
                    case (18 << 0):
                        if (bt_action_timer_now == 0)
                        {
                        }
                        path_end()
                        scr_enemy_choose_idle_or_move()
                        scr_collision()
                        draw_weapon = 1
                        scr_move_arma_random(2, weapon_pointing_angle, 1)
                        if (object_index == obj_green_quest_swamp)
                        {
                            if instance_exists(obj_faro)
                                weapon_pointing_direction = point_direction(x, y, obj_faro.x, (obj_faro.y - 150))
                        }
                        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                        break
                }

                bt_action_timer_now++
            }
            if (node_state_now == 0 || node_state_now == 1)
                return fun_bt_traverse(_tree_parent);
        }
        if (_node_type == (3 << 0))
        {
            var _check = 0
            if (tree_condition_checked[argument0] < tree_condition_checked_max[argument0])
            {
                _check = 0
                var _state = tree_condition_now[argument0]
            }
            else
                _check = 1
            if (_check == 1)
            {
                switch _node_id
                {
                    case (5 << 0):
                        _state = fun_target_near(4, 80)
                        break
                    case (7 << 0):
                        _state = gml_Script_fun_pos_near(startx, starty, 4)
                        break
                    case (8 << 0):
                        _state = gml_Script_fun_target_found()
                        break
                    case (9 << 0):
                        if (target_relation == (2 << 0))
                            _state = 1
                        break
                    case (10 << 0):
                        _state = gml_Script_fun_target_in_sight(target)
                        break
                    case (12 << 0):
                        _state = gml_Script_fun_need_reload()
                        break
                    case (16 << 0):
                        _state = reloading
                        break
                    case (11 << 0):
                        _state = gml_Script_fun_target_last_seen_is_near(32)
                        break
                    case (15 << 0):
                        _state = gml_Script_fun_weapon_dir_towards_target(target)
                        break
                    case (14 << 0):
                        _state = gml_Script_fun_pos_near(last_cover_pos_x, last_cover_pos_y, 4)
                        break
                    case (13 << 0):
                        _state = gml_Script_fun_pos_cover_found()
                        break
                }

                tree_condition_now[argument0] = _state
                tree_condition_checked[argument0] = 0
            }
            if (_state == 1)
                node_state_now = 1
            if (_state == 0)
                node_state_now = 0
            return fun_bt_traverse(_tree_parent);
        }
    }
    if (_child_number > 0)
    {
        switch _node_type
        {
            case (5 << 0):
                switch node_state_now
                {
                    case 1:
                        node_state_now = 0
                        return fun_bt_traverse(_tree_parent);
                    case 0:
                        node_state_now = 1
                        return fun_bt_traverse(_tree_parent);
                    case 3:
                        tree_node_child_now[argument0] = 0
                        return fun_bt_traverse(tree_child[argument0][tree_node_child_now[argument0]]);
                }

                break
            case (2 << 0):
                switch node_state_now
                {
                    case 1:
                        node_state_now = 1
                        return fun_bt_traverse(_tree_parent);
                    case 2:
                        node_state_now = 2
                        return fun_bt_traverse(_tree_parent);
                    case 0:
                        if (tree_node_child_now[argument0] >= (_child_number - 1))
                        {
                            node_state_now = 0
                            tree_node_child_now[argument0] = 0
                            return fun_bt_traverse(_tree_parent);
                        }
                        if (tree_node_child_now[argument0] < (_child_number - 1))
                        {
                            tree_node_child_now[argument0]++
                            node_state_now = 3
                            return fun_bt_traverse(tree_child[argument0][tree_node_child_now[argument0]]);
                        }
                        break
                    case 3:
                        tree_node_child_now[argument0] = 0
                        return fun_bt_traverse(tree_child[argument0][tree_node_child_now[argument0]]);
                }

                break
            case (1 << 0):
                switch node_state_now
                {
                    case 2:
                        node_state_now = 2
                        return fun_bt_traverse(_tree_parent);
                    case 1:
                        node_state_now = 1
                        if (tree_node_child_now[argument0] < (_child_number - 1))
                        {
                            tree_node_child_now[argument0]++
                            node_state_now = 3
                            return fun_bt_traverse(tree_child[argument0][tree_node_child_now[argument0]]);
                        }
                        if (tree_node_child_now[argument0] >= (_child_number - 1))
                        {
                            node_state_now = 1
                            tree_node_child_now[argument0] = 0
                            return fun_bt_traverse(_tree_parent);
                        }
                        break
                    case 0:
                        tree_node_child_now[argument0] = 0
                        return fun_bt_traverse(_tree_parent);
                    case 3:
                        tree_node_child_now[argument0] = 0
                        return fun_bt_traverse(tree_child[argument0][tree_node_child_now[argument0]]);
                }

                break
            case (0 << 0):
                switch node_state_now
                {
                    case 3:
                        tree_node_child_now[argument0] = 0
                        return fun_bt_traverse(tree_child[argument0][tree_node_child_now[argument0]]);
                    case 2:
                        show_debug_message("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
                        break
                }

                break
        }

    }
    return;
}

