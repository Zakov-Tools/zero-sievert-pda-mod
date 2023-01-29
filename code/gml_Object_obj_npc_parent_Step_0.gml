depth = ((-y) - (sprite_get_height(sprite_index) / 2))
audio_emitter_position(emitter_shoot, x, y, 0)
audio_emitter_position(emitter_walk, x, y, 0)
audio_emitter_position(emitter_talk, x, y, 0)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
alert_player -= 0.5
alert_player = clamp(alert_player, 0, alert_player_max)
if (last_seen_delay == 1)
{
    last_seen_delay_timer++
    if (last_seen_delay_timer >= last_seen_delay_timer_max)
    {
        last_seen_delay = 0
        last_seen_x = last_seen_delay_x
        last_seen_y = last_seen_delay_y
    }
}
recoil_shooting -= 0.4
recoil_shooting = clamp(recoil_shooting, 0, 10)
if (path_create_now == 1)
{
    if (follow_path == 1)
    {
        path_create_now = 0
        var _path_amount_max = (array_length_1d(path_goto_x) - 1)
        for (var i = 0; i < _path_amount_max; i++)
        {
            d_path[i] = path_add()
            if mp_grid_path(global.grid_move, d_path[i], path_goto_x[i], path_goto_y[i], path_goto_x[(i + 1)], path_goto_y[(i + 1)], true)
            {
                var _path_size = path_get_number(d_path[i])
                if (_path_size > 0)
                {
                    for (var j = 0; j < _path_size; j++)
                    {
                        var _p_x = path_get_point_x(d_path[i], j)
                        var _p_y = path_get_point_y(d_path[i], j)
                        ds_list_add(lista_path_x, _p_x)
                        ds_list_add(lista_path_y, _p_y)
                    }
                }
            }
            path_delete(d_path[i])
        }
    }
}
if (start_mod_weapon == 0)
{
    wm_timer++
    if (wm_timer >= wm_timer_max)
    {
        wm_timer = 0
        start_mod_weapon = 1
    }
}
if (start_mod_weapon == 1)
{
    if (weapon_modded == 0)
    {
        weapon_modded = 1
        if (arma_moddable[arma_now] == 1)
        {
            mod_id[(0 << 0)] = arma_mod_id[arma_now][(0 << 0)]
            mod_id[(1 << 0)] = arma_mod_id[arma_now][(1 << 0)]
            mod_id[(3 << 0)] = arma_mod_id[arma_now][(3 << 0)]
            mod_id[(2 << 0)] = arma_mod_id[arma_now][(2 << 0)]
            mod_id[(5 << 0)] = arma_mod_id[arma_now][(5 << 0)]
            mod_id[(4 << 0)] = arma_mod_id[arma_now][(4 << 0)]
            mod_id[(6 << 0)] = arma_mod_id[arma_now][(6 << 0)]
            mod_id[(7 << 0)] = arma_mod_id[arma_now][(7 << 0)]
            mod_id[(8 << 0)] = arma_mod_id[arma_now][(8 << 0)]
            mod_id[(9 << 0)] = arma_mod_id[arma_now][(9 << 0)]
            mod_id[(10 << 0)] = arma_mod_id[arma_now][(10 << 0)]
            if instance_exists(linked_weapon_id)
            {
                var _idw = linked_weapon_id
                var _val = npc_ammo_value[npc_id]
                _list_possible_mod[(0 << 0)] = ds_list_create()
                _list_possible_mod[(1 << 0)] = ds_list_create()
                _list_possible_mod[(3 << 0)] = ds_list_create()
                _list_possible_mod[(2 << 0)] = ds_list_create()
                _list_possible_mod[(5 << 0)] = ds_list_create()
                _list_possible_mod[(4 << 0)] = ds_list_create()
                _list_possible_mod[(6 << 0)] = ds_list_create()
                _list_possible_mod[(7 << 0)] = ds_list_create()
                _list_possible_mod[(8 << 0)] = ds_list_create()
                _list_possible_mod[(9 << 0)] = ds_list_create()
                _list_possible_mod[(10 << 0)] = ds_list_create()
                var _tot_item = array_length_1d(item_id)
                for (i = 0; i <= (10 << 0); i++)
                {
                    for (j = 0; j < _tot_item; j++)
                    {
                        if (item_categoria[j] == (17 << 0))
                        {
                            var _stesso_slot = 0
                            for (var k = 0; k < array_length_2d(mod_position, j); k++)
                            {
                                if (mod_position[j][k] == i)
                                    _stesso_slot = 1
                            }
                            if (_stesso_slot == 1)
                            {
                                var _va_bene_per_questa_arma = 0
                                if (mod_weapon_all[j] == 1)
                                    _va_bene_per_questa_arma = 1
                                else
                                {
                                    for (k = 0; k < array_length_2d(mod_weapon_id, j); k++)
                                    {
                                        if (mod_weapon_id[j][k] == arma_now)
                                            _va_bene_per_questa_arma = 1
                                    }
                                }
                                if (_va_bene_per_questa_arma == 1)
                                {
                                    var _mod_value = mod_value[j]
                                    var _diff = ceil(power(((_val - _mod_value) + 1), 1.5))
                                    if (mod_type[j] == (9 << 0))
                                    {
                                        if scr_chance(80)
                                            _diff = 0
                                    }
                                    if (_diff > 0)
                                    {
                                        repeat _diff
                                            ds_list_add(_list_possible_mod[i], j)
                                    }
                                }
                            }
                        }
                    }
                }
                for (i = (7 << 0); i <= (10 << 0); i++)
                {
                    var _list_size = ds_list_size(_list_possible_mod[i])
                    repeat (_list_size * 2)
                        ds_list_add(_list_possible_mod[i], -1)
                }
                for (i = 0; i <= (10 << 0); i++)
                {
                    if (arma_mod_moddable[arma_now][i] == 1)
                    {
                        if (arma_mod_id[arma_now][i] == -1)
                        {
                            var _amount = 1
                            if (i == (5 << 0))
                                _amount = 10
                            repeat _amount
                                ds_list_add(_list_possible_mod[i], -1)
                        }
                    }
                }
                for (i = 0; i <= (10 << 0); i++)
                {
                    if (ds_list_size(_list_possible_mod[i]) > 0)
                    {
                        var _can_mod = 0
                        if (i < (7 << 0))
                            _can_mod = 1
                        else
                        {
                            var _hand_id = mod_id[(2 << 0)]
                            if (_hand_id != -1)
                            {
                                if (mod_handguard_slot[_hand_id][0] == 1 && i == (7 << 0))
                                    _can_mod = 1
                                if (mod_handguard_slot[_hand_id][1] == 1 && i == (8 << 0))
                                    _can_mod = 1
                                if (mod_handguard_slot[_hand_id][2] == 1 && i == (9 << 0))
                                    _can_mod = 1
                                if (mod_handguard_slot[_hand_id][3] == 1 && i == (10 << 0))
                                    _can_mod = 1
                            }
                        }
                        if (_can_mod == 1)
                        {
                            ds_list_shuffle(_list_possible_mod[i])
                            mod_id[i] = ds_list_find_value(_list_possible_mod[i], 0)
                        }
                    }
                }
                if (npc_id == (8 << 0))
                {
                    mod_id[(0 << 0)] = (596 << 0)
                    mod_id[(1 << 0)] = (594 << 0)
                    mod_id[(3 << 0)] = -1
                    mod_id[(2 << 0)] = (593 << 0)
                    mod_id[(5 << 0)] = -1
                    mod_id[(4 << 0)] = (595 << 0)
                    mod_id[(6 << 0)] = (212 << 0)
                    mod_id[(7 << 0)] = (197 << 0)
                    mod_id[(8 << 0)] = (558 << 0)
                    mod_id[(9 << 0)] = -1
                    mod_id[(10 << 0)] = (201 << 0)
                }
                _idw.mod_id[(0 << 0)] = mod_id[(0 << 0)]
                _idw.mod_id[(1 << 0)] = mod_id[(1 << 0)]
                _idw.mod_id[(3 << 0)] = mod_id[(3 << 0)]
                _idw.mod_id[(2 << 0)] = mod_id[(2 << 0)]
                _idw.mod_id[(5 << 0)] = mod_id[(5 << 0)]
                _idw.mod_id[(4 << 0)] = mod_id[(4 << 0)]
                _idw.mod_id[(6 << 0)] = mod_id[(6 << 0)]
                _idw.mod_id[(7 << 0)] = mod_id[(7 << 0)]
                _idw.mod_id[(8 << 0)] = mod_id[(8 << 0)]
                _idw.mod_id[(9 << 0)] = mod_id[(9 << 0)]
                _idw.mod_id[(10 << 0)] = mod_id[(10 << 0)]
                var _name = object_get_name(object_index)
                show_debug_message(("Weapon's mod set for " + _name))
                var _recoil_k = 0
                for (i = 0; i < 11; i++)
                {
                    if (mod_id[i] != -1)
                        _recoil_k += mod_recoil[mod_id[i]]
                }
                recoil_arma = (arma_recoil[arma_now] * (1 + (_recoil_k / 100)))
                if (mod_id[(4 << 0)] != -1)
                {
                    var _id = mod_id[(4 << 0)]
                    ammo_now = mod_magazine_size[_id]
                }
            }
            else
            {
                _name = object_get_name(object_index)
                show_debug_message(("Failed to find npc_weapon for " + _name))
            }
        }
    }
}
wm_timer_again++
if (wm_timer_again >= wm_timer_again_max)
{
    wm_timer_again = 0
    if (arma_moddable[arma_now] == 1)
    {
        if instance_exists(linked_weapon_id)
        {
            _idw = linked_weapon_id
            _idw.mod_id[(0 << 0)] = mod_id[(0 << 0)]
            _idw.mod_id[(1 << 0)] = mod_id[(1 << 0)]
            _idw.mod_id[(3 << 0)] = mod_id[(3 << 0)]
            _idw.mod_id[(2 << 0)] = mod_id[(2 << 0)]
            _idw.mod_id[(5 << 0)] = mod_id[(5 << 0)]
            _idw.mod_id[(4 << 0)] = mod_id[(4 << 0)]
            _idw.mod_id[(6 << 0)] = mod_id[(6 << 0)]
            _idw.mod_id[(7 << 0)] = mod_id[(7 << 0)]
            _idw.mod_id[(8 << 0)] = mod_id[(8 << 0)]
            _idw.mod_id[(9 << 0)] = mod_id[(9 << 0)]
            _idw.mod_id[(10 << 0)] = mod_id[(10 << 0)]
        }
    }
}
switch state
{
    case (0 << 0):
        break
    case (1 << 0):
        target_for_image_scale = obj_player.x
        break
    case (76 << 0):
        target_for_image_scale = (x + 1)
        break
    case (2 << 0):
        if (human_tick >= human_tick_max)
        {
            human_tick_max = ((human_tick_max_ref + 10) + irandom_range(-2, 2))
            human_tick = 0
            var _x_start = (obj_player.x - 480)
            var _y_start = (obj_player.y - 270)
            if point_in_rectangle(x, y, _x_start, _y_start, (_x_start + 960), (_y_start + 540))
                state = state_before
        }
        break
    case (19 << 0):
        target_for_image_scale = obj_player.x
        if (can_talk == 1)
        {
            if (global.az_done[(7 << 0)] == 0)
            {
                global.az_done[(7 << 0)] = 1
                can_talk = 0
                scr_draw_npc_text(id, (102 << 0))
            }
        }
        target = scr_find_target_for_human()
        if (target != noone)
        {
            switch target_relation
            {
                case (2 << 0):
                    hspd = 0
                    vspd = 0
                    state = (13 << 0)
                    break
                case (0 << 0):
                    break
                case (1 << 0):
                    break
            }

        }
        break
    case (21 << 0):
        target_for_image_scale = obj_player.x
        if instance_exists(obj_player)
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) < 80)
            {
                if (can_talk == 1)
                {
                    can_talk = 0
                    var prima_volta_fatta = global.az_done[(0 << 0)]
                    if (prima_volta_fatta == 0)
                    {
                        scr_draw_npc_text(id, (70 << 0))
                        global.az_done[(0 << 0)] = 1
                    }
                    else
                        scr_draw_npc_text(id, (72 << 0))
                }
            }
        }
        break
    case (22 << 0):
        target_for_image_scale = 1
        if instance_exists(obj_player)
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) < 80)
            {
                if (can_talk == 1)
                {
                    can_talk = 0
                    prima_volta_fatta = global.az_done[(10 << 0)]
                    if (prima_volta_fatta == 0)
                    {
                        scr_draw_npc_text(id, (77 << 0))
                        global.az_done[(10 << 0)] = 1
                    }
                    else
                        scr_draw_npc_text(id, (82 << 0))
                }
            }
        }
        break
    case (3 << 0):
        if scr_chance(2)
            weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
        weapon_pointing_direction += weapon_pointing_amount
        weapon_pointing_direction = clamp(weapon_pointing_direction, 240, 300)
        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        if (object_index == obj_guardia_ingresso_2)
        {
            if (can_talk == 1)
            {
                if instance_exists(obj_player)
                {
                    if (obj_player.y > (y + 4) && obj_player.y < (y + 18) && (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))))
                    {
                        var first_time_ = global.az_done[(2 << 0)]
                        if (first_time_ == 0)
                        {
                            scr_draw_npc_text(id, (87 << 0))
                            global.az_done[(2 << 0)] = 1
                            can_talk = 0
                        }
                        first_time_ = global.az_done[(3 << 0)]
                        if (first_time_ == 1)
                        {
                            var pp_ = (4 << 0)
                            var _first_time_ = global.az_done[pp_]
                            if (_first_time_ == 0)
                            {
                                scr_draw_npc_text(id, (94 << 0))
                                global.az_done[pp_] = 1
                                can_talk = 0
                            }
                        }
                    }
                }
            }
        }
        if (object_index == obj_guardia_ingresso_1)
        {
            if (can_talk == 1)
            {
                if instance_exists(obj_player)
                {
                    if (obj_player.y > (y + 4) && obj_player.y < (y + 18) && (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))))
                    {
                        var _active = scr_check_quest_in_corso((37 << 0))
                        if (_active == (1 << 0))
                        {
                            can_talk = 0
                            scr_draw_npc_text(id, (99 << 0))
                        }
                        _active = scr_check_quest_in_corso((37 << 0))
                        if ((_active == (2 << 0) || global.quest_unique_done[(37 << 0)] == 1) && global.az_done[(6 << 0)] == 0)
                        {
                            can_talk = 0
                            scr_draw_npc_text(id, (100 << 0))
                            global.az_done[(6 << 0)] = 1
                        }
                    }
                }
            }
        }
        var point_player = 0
        if (object_index == obj_guardia_ingresso_1 || object_index == obj_guardia_ingresso_2)
        {
            if instance_exists(obj_npc_draw_text)
            {
                with (obj_npc_draw_text)
                {
                    if (global.t_npc_text_next_id[text_id] == 741 || global.t_npc_text_next_id[text_id] == 742)
                        point_player = 1
                }
            }
        }
        if (point_player == 1)
        {
            weapon_pointing_direction = point_direction(x, y, obj_player.x, obj_player.y)
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        }
        break
    case (5 << 0):
        if scr_chance(2)
            weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
        weapon_pointing_direction += weapon_pointing_amount
        weapon_pointing_direction = clamp(weapon_pointing_direction, -100, 15)
        if (global.quest_unique_done[(3 << 0)] == 0)
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) < 48)
            {
                if (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false)))
                {
                    weapon_pointing_direction = point_direction(x, y, obj_player.x, obj_player.y)
                    if (can_talk == 1)
                    {
                        can_talk = 0
                        scr_draw_npc_text(id, (62 << 0))
                    }
                }
            }
        }
        if (!instance_exists(obj_solid_bunker_green_army))
            npc_speaker_id[(19 << 0)] = (0 << 0)
        if (global.quest_unique_done[(3 << 0)] == 1)
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) < 16)
            {
                if (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false)))
                {
                    if (can_talk == 1)
                    {
                        can_talk = 0
                        scr_draw_npc_text(id, (63 << 0))
                    }
                }
            }
        }
        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        break
    case (6 << 0):
        if scr_chance(2)
            weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
        weapon_pointing_direction += weapon_pointing_amount
        weapon_pointing_direction = clamp(weapon_pointing_direction, -100, 15)
        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        break
    case (24 << 0):
        if scr_chance(2)
            weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
        weapon_pointing_direction += weapon_pointing_amount
        weapon_pointing_direction = clamp(weapon_pointing_direction, -100, 15)
        _active = scr_check_quest_in_corso((69 << 0))
        if (_active == (2 << 0))
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) < 64)
            {
                weapon_pointing_direction = point_direction(x, y, obj_player.x, obj_player.y)
                if (can_talk == 1)
                {
                    if (global.az_done[(9 << 0)] == 0)
                    {
                        scr_draw_npc_text(id, (108 << 0))
                        can_talk = 0
                        global.az_done[(9 << 0)] = 1
                    }
                }
            }
        }
        if (global.quest_unique_done[(69 << 0)] == 0 || _active != (2 << 0))
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) < 96)
            {
                weapon_pointing_direction = point_direction(x, y, obj_player.x, obj_player.y)
                if (point_distance(x, y, obj_player.x, obj_player.y) < 64)
                {
                    if (can_talk == 1)
                    {
                        scr_draw_npc_text(id, (105 << 0))
                        can_talk = 0
                    }
                }
            }
        }
        if (global.quest_unique_done[(70 << 0)] == 1)
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) < 48)
            {
                if (can_talk == 1)
                {
                    scr_draw_npc_text(id, (107 << 0))
                    can_talk = 0
                }
            }
        }
        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        target = scr_find_target_for_human()
        if (target != noone)
        {
            switch target_relation
            {
                case (2 << 0):
                    hspd = 0
                    vspd = 0
                    state = (13 << 0)
                    break
                case (0 << 0):
                    break
                case (1 << 0):
                    break
            }

        }
        break
    case (25 << 0):
        if (global.az_done[(8 << 0)] == 0)
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) < 144)
            {
                if (can_talk == 1)
                {
                    can_talk = 0
                    global.az_done[(8 << 0)] = 1
                    scr_draw_npc_text(id, (111 << 0))
                }
            }
        }
        break
    case (30 << 0):
        scr_npc_state_arms(obj_arms_smoke)
        break
    case (31 << 0):
        scr_npc_state_arms(obj_arms_eat)
        break
    case (32 << 0):
        scr_npc_state_arms(obj_arms_drink)
        break
    case (33 << 0):
        scr_npc_state_arms(obj_arms_guitar)
        break
    case (34 << 0):
        scr_enemy_path()
        if (point_distance(x, y, move_point_x, move_point_y) < 12)
        {
            path_end()
            if (!instance_exists(obj_arms_guitar))
                scr_npc_arms((33 << 0), obj_arms_guitar)
            else
                state = (9 << 0)
        }
        break
    case (4 << 0):
        scr_enemy_choose_idle_or_move()
        if (room == r_hub)
        {
            if (x > (camx - 240) && x < (camx + 720) && y > (camy - 135) && y < (camy + 405))
                scr_collision()
        }
        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        if (x > xprevious)
        {
            target_for_image_scale = (x + 2)
            weapon_pointing_direction = 300
        }
        else if (x == xprevious)
        {
        }
        else if (x < xprevious)
        {
            target_for_image_scale = (x - 2)
            weapon_pointing_direction = 240
        }
        break
    case (29 << 0):
        scr_enemy_path()
        if (point_distance(x, y, move_point_x, move_point_y) < 4)
        {
            path_end()
            move_point_x = original_x
            move_point_y = original_y
            if scr_chance(50)
            {
                state = (31 << 0)
                var aa = instance_create_depth(x, y, 0, obj_arms_eat)
                aa.linked_id = id
                aa.image_xscale = image_xscale
            }
            else
            {
                state = (32 << 0)
                aa = instance_create_depth(x, y, 0, obj_arms_drink)
                aa.linked_id = id
                aa.image_xscale = image_xscale
            }
        }
        break
    case (28 << 0):
        scr_enemy_path()
        if (point_distance(x, y, move_point_x, move_point_y) < 4)
        {
            path_end()
            state = (4 << 0)
        }
        break
    case (9 << 0):
        scr_enemy_choose_idle_or_move()
        scr_collision()
        draw_weapon = 1
        if (room == r_hub)
        {
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            if (x > xprevious)
            {
                target_for_image_scale = (x + 2)
                weapon_pointing_direction = 300
            }
            else if (x == xprevious)
            {
            }
            else if (x < xprevious)
            {
                target_for_image_scale = (x - 2)
                weapon_pointing_direction = 240
            }
        }
        else
        {
            if scr_chance(2)
                weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
            weapon_pointing_direction += weapon_pointing_amount
            if (object_index == obj_green_quest_swamp)
            {
                if instance_exists(obj_faro)
                    weapon_pointing_direction = point_direction(x, y, obj_faro.x, (obj_faro.y - 150))
            }
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        }
        target = scr_find_target_for_human()
        if (target != noone)
        {
            switch target_relation
            {
                case (2 << 0):
                    hspd = 0
                    vspd = 0
                    state = (13 << 0)
                    break
                case (0 << 0):
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                    break
                case (1 << 0):
                    break
            }

        }
        if scr_chance(1)
        {
            if (faction == (1 << 0))
            {
                if (!instance_exists(obj_arms_guitar))
                {
                    if instance_exists(obj_barrel_acciaio_fire)
                    {
                        var nearest = instance_nearest(x, y, obj_barrel_acciaio_fire)
                        if (point_distance(x, y, nearest.x, nearest.y) < 160)
                        {
                            move_point_x = (nearest.x + irandom_range(-10, 10))
                            move_point_y = nearest.y
                            state = (34 << 0)
                        }
                    }
                }
            }
        }
        break
    case (10 << 0):
        scr_collision()
        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        target = scr_find_target_for_human()
        if (target != noone)
        {
            switch target_relation
            {
                case (2 << 0):
                    hspd = 0
                    vspd = 0
                    state = (13 << 0)
                    break
                case (0 << 0):
                    weapon_pointing_direction = point_direction(x, y, target.x, target.y)
                    var dis = point_distance(x, y, target.x, target.y)
                    if (point_distance(x, y, mouse_x, mouse_y) < 8 && dis < 96)
                    {
                        if (can_talk == 1)
                        {
                            can_talk = 0
                            scr_draw_npc_text(id, (25 << 0))
                        }
                    }
                    if collision_line(x, y, target.x, target.y, obj_solid, true, true)
                        state = (9 << 0)
                    break
                case (1 << 0):
                    state = (9 << 0)
                    break
            }

        }
        else
            state = (9 << 0)
        break
    case (7 << 0):
        tick_from_roof = 0
        tick_now++
        if (tick_now >= tick_max)
        {
            tick_from_roof = 1
            tick_now = 0
            node_state_now = 3
            pos_now = pos_roof
            show_debug_message("\n\nNEW TICK\n")
            fun_bt_traverse(pos_now)
            for (i = 0; i < array_length(tree_id); i++)
            {
                tree_condition_checked[i] += 1
                tree_node_child_now[i] = 0
            }
        }
        if (tick_from_roof == 0)
        {
            node_state_now = 2
            pos_now = node_running_now
            fun_bt_traverse(pos_now)
        }
        break
    case (8 << 0):
        var _next_state = -1
        scr_bullet_near()
        human_tick++
        if (human_tick >= human_tick_max)
        {
            human_tick_max = (human_tick_max_ref + irandom_range(-2, 2))
            human_tick = 0
            target = scr_find_target_for_human()
            scr_enemy_alert_others()
            var _list_action = ds_priority_create()
            var _new_just_shot = just_shot
            var _no_target_or_ally = 0
            if (target == noone)
                _no_target_or_ally = 1
            if (target != noone)
            {
                if instance_exists(target)
                {
                    if (target_relation == (1 << 0))
                        _no_target_or_ally = 1
                }
            }
            if (_no_target_or_ally == 1)
            {
                last_patrol_x = x
                last_patrol_y = y
                ds_priority_add(_list_action, (0 << 0), global.sub_ai_peso[(0 << 0)])
                if scr_chance(1)
                {
                    var pp = choose((3 << 0), (4 << 0), (2 << 0))
                    ds_priority_add(_list_action, pp, global.sub_ai_peso[pp])
                }
                if (object_index == obj_scientist || object_index == obj_scientist_2)
                {
                    var p = (1 << 0)
                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                }
                if (object_index == obj_scientist_2)
                {
                    p = (5 << 0)
                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                }
                if (object_index == obj_crimson_guardia_ingresso)
                {
                    p = (6 << 0)
                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                }
                if (object_index == obj_crimson_guardia_ingresso)
                {
                    if (point_distance(x, y, original_x, original_y) > 20)
                    {
                        p = (9 << 0)
                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                    }
                }
                if scr_chance(1)
                {
                    if (faction == (1 << 0))
                    {
                        if (!instance_exists(obj_arms_guitar))
                        {
                            if instance_exists(obj_barrel_acciaio_fire)
                            {
                                nearest = instance_nearest(x, y, obj_barrel_acciaio_fire)
                                if (point_distance(x, y, nearest.x, nearest.y) < 160)
                                {
                                    move_point_x = (nearest.x + irandom_range(-10, 10))
                                    move_point_y = nearest.y
                                    p = (7 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                        }
                    }
                }
                var _my_faction = npc_faction[npc_id]
                var _my_id = id
                var _alleato_morto_vicino = 0
                var _ally_morto_x = 0
                var _ally_morto_y = 0
                var _id_chest_ally_dead = noone
                if (alleato_morto_vicino != 2)
                {
                    if instance_exists(obj_chest_general)
                    {
                        with (obj_chest_general)
                        {
                            if (chest_faction == _my_faction)
                            {
                                if (point_distance(x, y, _my_id.x, _my_id.y) < 260)
                                {
                                    if (!(collision_line(x, y, _my_id.x, _my_id.y, obj_solid, false, true)))
                                    {
                                        _alleato_morto_vicino = 1
                                        _ally_morto_x = x
                                        _ally_morto_y = y
                                        _id_chest_ally_dead = id
                                    }
                                }
                            }
                        }
                    }
                }
                if (_alleato_morto_vicino == 1)
                {
                    alleato_morto_vicino = 1
                    ally_morto_x = _ally_morto_x
                    ally_morto_y = _ally_morto_y
                    id_chest_ally_dead = _id_chest_ally_dead
                }
                if (_alleato_morto_vicino == 1)
                {
                    p = (28 << 0)
                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                }
            }
            if (target != noone)
            {
                var _tx = target.x
                var _ty = target.y
                var _line_of_sight = 0
                var _lo_vedo = 0
                target_visto = 0
                var _arma_dir_target = 1
                var _distanza_a_tiro = 0
                var _vedo_ultima_pos_vista_da_alleati = 0
                var _vedo_ultima_pos_vista_da_me = 0
                var _mouse_over_npc = 0
                var _counter_same_target = 0
                var _counter_same_faction = 0
                var _counter_first_time = 0
                for (i = 0; i < array_length_1d(global.sub_ai_peso); i++)
                {
                    _counter_array_action_ally[i] = 0
                    _counter_array_action_same_target[i] = 0
                }
                var _counter_near_me = 0
                var _lista_near_me = ds_list_create()
                var _cover_pos_found = 0
                var _sono_vicino_al_target = 0
                var _distance_to_target = 0
                if (!(collision_line(x, y, _tx, _ty, obj_solid, true, true)))
                {
                    _line_of_sight = 1
                    _distance_to_target = point_distance(x, y, _tx, _ty)
                    if (_distance_to_target < 100)
                        _sono_vicino_al_target = 1
                }
                _lo_vedo = scr_enemy_target_inside_cone()
                if (!(collision_line(x, y, last_seen_x, last_seen_y, obj_solid, true, true)))
                    _vedo_ultima_pos_vista_da_alleati = 1
                if (!(collision_line(x, y, last_known_x, last_known_y, obj_solid, true, true)))
                    _vedo_ultima_pos_vista_da_me = 1
                if (_lo_vedo == 1)
                {
                    last_seen_x = _tx
                    last_seen_y = _ty
                    last_known_x = _tx
                    last_known_y = _ty
                    last_my_target_seen_x = x
                    last_my_target_seen_y = y
                }
                var _dir = point_direction(x, y, _tx, _ty)
                var _angle_diff = angle_difference(weapon_pointing_direction, _dir)
                if (abs(_angle_diff) > angle_min_to_rotate)
                {
                    _arma_dir_target = 0
                    direction_to_aim = _dir
                    dir_to_aim_x = _tx
                    dir_to_aim_y = _ty
                }
                if (point_distance(x, y, _tx, _ty) < (npc_alert_visual_distance[npc_id] * 1.5))
                {
                    if (target == obj_player.id)
                    {
                        var _x1 = camera_get_view_x(view_camera[0])
                        var _y1 = camera_get_view_y(view_camera[0])
                        var _x2 = (_x1 + 480)
                        var _y2 = (_y1 + 270)
                        if point_in_rectangle(x, y, _x1, _y1, _x2, _y2)
                            _distanza_a_tiro = 1
                    }
                    else
                        _distanza_a_tiro = 1
                }
                var _devo_ricaricare = scr_calcola_chance_reload()
                if (point_distance(x, y, obj_mouse.x, obj_mouse.y) < 12)
                    _mouse_over_npc = 1
                _my_faction = faction
                var _my_target = target
                _my_id = id
                var _my_x = x
                var _my_y = y
                with (obj_npc_parent)
                {
                    if (id != _my_id)
                    {
                        if (faction == _my_faction)
                        {
                            _counter_same_faction++
                            if (human_state_now != -1)
                                _counter_array_action_ally[human_state_now] += 1
                            if (point_distance(x, y, _my_x, _my_y) < 10)
                            {
                                _counter_near_me++
                                ds_list_add(_lista_near_me, id)
                            }
                            if (target == _my_target)
                            {
                                _counter_same_target++
                                if (human_state_now != -1)
                                    _counter_array_action_same_target[human_state_now] += 1
                            }
                        }
                    }
                }
                if (human_state_now != (12 << 0) && human_state_now != (13 << 0))
                {
                    var _array_cover = scr_enemy_search_cover_position_2()
                    if (_array_cover[0] != 0)
                    {
                        path_to_target = path_add()
                        if mp_grid_path(global.grid_move, path_to_target, x, y, _array_cover[0], _array_cover[1], true)
                            _cover_pos_found = 1
                    }
                }
                if instance_exists(target)
                {
                    if (target_relation == (2 << 0))
                    {
                        if (_lo_vedo == 1)
                        {
                            alarm[5] = timer_searching_target_max
                            target_visto_prima_volta = 1
                            target_visto = 1
                            if (_devo_ricaricare == 0)
                            {
                                if (_distanza_a_tiro == 1)
                                {
                                    p = (11 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    if (_arma_dir_target == 0)
                                    {
                                        p = (21 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                }
                                else
                                {
                                    p = (17 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                            if (_devo_ricaricare == 1)
                            {
                                if (_cover_pos_found == 1)
                                {
                                    p = (12 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                            if (_mouse_over_npc == 1)
                            {
                                if (_cover_pos_found == 1)
                                {
                                    if scr_chance(15)
                                    {
                                        p = (12 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                }
                            }
                            if scr_chance(1)
                            {
                                if (_cover_pos_found == 1)
                                {
                                    p = (12 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                            if (shooted_first_time == 1)
                            {
                                shooted_first_time = 2
                                if (_cover_pos_found == 1)
                                {
                                    p = (13 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                        }
                        if (_lo_vedo == 0)
                        {
                            if (_devo_ricaricare == 1)
                            {
                                p = (20 << 0)
                                ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                            }
                            if (_devo_ricaricare == 0)
                            {
                                if (_vedo_ultima_pos_vista_da_alleati == 0)
                                {
                                    var _array = scr_enemy_search_shoot_position_2()
                                    if (_array[0] != 0)
                                    {
                                        p = (15 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                    else if (target_visto_prima_volta == 1)
                                    {
                                        p = (16 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                }
                                if (_vedo_ultima_pos_vista_da_alleati == 1)
                                {
                                    if (target.faction != (7 << 0))
                                    {
                                        var _chance_tipo_weapon = 0
                                        if (tipo_arma_equipped == (0 << 0))
                                            _chance_tipo_weapon = 10
                                        if (tipo_arma_equipped == (1 << 0))
                                            _chance_tipo_weapon = 3
                                        if (tipo_arma_equipped == (2 << 0))
                                            _chance_tipo_weapon = 0
                                        var _chance_counter_alleati_vicini = _counter_same_target
                                        var _chance_totale = (_chance_tipo_weapon * _chance_counter_alleati_vicini)
                                        debug_chance_chase = _chance_totale
                                        if (npc_id == (8 << 0))
                                            _chance_totale = 100
                                        if scr_chance(_chance_totale)
                                        {
                                            if (target_visto_prima_volta == 1)
                                            {
                                                if (_counter_array_action_same_target[(16 << 0)] < 2)
                                                {
                                                    p = (16 << 0)
                                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                                }
                                            }
                                        }
                                        else if (_counter_array_action_same_target[(24 << 0)] < 2)
                                        {
                                            p = (24 << 0)
                                            ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                        }
                                    }
                                }
                                if (_vedo_ultima_pos_vista_da_alleati == 1)
                                {
                                    if (point_distance(x, y, last_seen_x, last_seen_y) > 20)
                                    {
                                        var _array_aim_moving = scr_enemy_search_aim_moving(last_target_cover_x, last_target_cover_y)
                                        if (_array_aim_moving[0] != 0)
                                        {
                                            p = (25 << 0)
                                            ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                        }
                                    }
                                }
                                if (human_state_now == (16 << 0) || human_state_now == (23 << 0))
                                {
                                    if (state_finito == 1)
                                    {
                                        p = (19 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                }
                                if (_vedo_ultima_pos_vista_da_alleati == 1)
                                {
                                    if (point_distance(x, y, last_seen_x, last_seen_y) < 10)
                                    {
                                        p = (19 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                }
                                if (human_state_now == (18 << 0))
                                {
                                    if (point_distance(_tx, _ty, last_seen_x, last_seen_y) > 48)
                                    {
                                        if (point_distance(x, y, last_seen_x, last_seen_y) < 8)
                                        {
                                            p = (19 << 0)
                                            ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                        }
                                    }
                                }
                                if (chase_new_target_location == 1)
                                {
                                    p = (18 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                                if (target_visto_prima_volta == 0 && chase_new_target_location == 1)
                                {
                                    p = (18 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                                if (hear_target_shoot == 1 && _vedo_ultima_pos_vista_da_alleati == 0)
                                {
                                    hear_target_shoot = 0
                                    if scr_chance(85)
                                    {
                                        p = (23 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                }
                                if (state_finito == 1)
                                {
                                    if (human_state_now == (28 << 0))
                                    {
                                        p = (19 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                }
                            }
                        }
                        if (_line_of_sight == 0)
                        {
                            alert_player = 0
                            riflessi = (riflessi_max - 10)
                            counter_target_cover++
                            if (counter_target_cover >= counter_target_cover_max && counter_target_toggle == 1)
                            {
                                last_target_cover_x = _tx
                                last_target_cover_y = _ty
                                counter_target_toggle = 0
                            }
                            if (human_state_now == (12 << 0))
                            {
                                if scr_chance(12)
                                {
                                    var _array_change_cover = scr_enemy_change_cover_2()
                                    if (_array_change_cover[0] != 0)
                                    {
                                        p = (14 << 0)
                                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                    }
                                }
                            }
                        }
                        if (_line_of_sight == 1)
                        {
                            counter_target_cover = 0
                            counter_target_toggle = 1
                            if (_arma_dir_target == 1 && _distanza_a_tiro == 1)
                            {
                                p = (11 << 0)
                                ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                            }
                            if (_arma_dir_target == 0 && just_shot == 2 && _sono_vicino_al_target == 0)
                            {
                                if (_cover_pos_found == 1)
                                {
                                    _new_just_shot = 0
                                    p = (13 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                            if (_arma_dir_target == 0 && just_shot == 1)
                            {
                                _new_just_shot = 0
                                p = (21 << 0)
                                ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                            }
                        }
                        if (must_take_cover == 1)
                        {
                            must_take_cover = 0
                            if (human_state_before != (12 << 0) && human_state_now != (12 << 0))
                            {
                                if (_cover_pos_found == 1)
                                {
                                    p = (12 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                        }
                        if (_counter_near_me >= 1)
                        {
                            p = (26 << 0)
                            ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                        }
                        if (state_finito == 1)
                        {
                            if (human_state_now == (13 << 0))
                            {
                                if (just_shot == 2)
                                {
                                    _new_just_shot = 0
                                    p = (27 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                        }
                    }
                    if (target_relation == (0 << 0))
                    {
                        if (_lo_vedo == 1)
                        {
                            if (_arma_dir_target == 0)
                            {
                                p = (21 << 0)
                                ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                            }
                            if (counter_target_seen_neutral == 0)
                            {
                                if (_arma_dir_target == 1)
                                {
                                    p = (32 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                        }
                        if (_lo_vedo == 0)
                        {
                            p = (0 << 0)
                            ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                        }
                    }
                    if (target_relation == (1 << 0))
                    {
                    }
                    if (just_shot != 0)
                    {
                        _new_just_shot = 0
                        if (human_state_now != (11 << 0))
                        {
                            if scr_chance(50)
                            {
                                if (_cover_pos_found == 1 && _distance_to_target > 200)
                                {
                                    p = (13 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                            if (_lo_vedo == 0 && _line_of_sight == 1)
                            {
                                if (_arma_dir_target == 0)
                                {
                                    p = (21 << 0)
                                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                                }
                            }
                        }
                    }
                }
                if (!instance_exists(target))
                {
                    p = (0 << 0)
                    ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                }
            }
            if (global.is_emission_now == 1)
            {
                if (global.player_is_indoor == 0)
                {
                    if (global.state_emission_now > (16 << 0))
                    {
                        p = (29 << 0)
                        ds_priority_add(_list_action, p, global.sub_ai_peso[p])
                    }
                }
            }
            if (have_to_reload == 1)
            {
                p = (20 << 0)
                ds_priority_add(_list_action, p, global.sub_ai_peso[p])
            }
            if (human_state_now == -1)
            {
                human_state_now = (0 << 0)
                p = (0 << 0)
                ds_priority_add(_list_action, p, global.sub_ai_peso[p])
            }
            just_shot = _new_just_shot
            if (ds_priority_size(_list_action) > 0)
            {
                _next_state = ds_priority_find_max(_list_action)
                debug_next_state = _next_state
                var _change_state = 0
                if (_next_state != human_state_now)
                {
                    if (global.sub_ai_stop[human_state_now] == 1)
                    {
                        if (global.sub_ai_peso[human_state_now] < global.sub_ai_peso[_next_state])
                            _change_state = 1
                    }
                }
                if (state_finito == 1)
                    _change_state = 1
                if (_change_state == 1)
                {
                    if (human_state_now != _next_state)
                        human_state_before = human_state_now
                    state_finito = 1
                    human_state_now = _next_state
                    timer_last_state = current_time
                }
                if (state_finito == 1)
                {
                    state_finito = 0
                    switch _next_state
                    {
                        case (15 << 0):
                            path_end()
                            move_point_x = _array[0]
                            move_point_y = _array[1]
                            break
                        case (25 << 0):
                            path_end()
                            move_point_x = _array_aim_moving[0]
                            move_point_y = _array_aim_moving[1]
                            break
                        case (12 << 0):
                            move_point_x = _array_cover[0]
                            move_point_y = _array_cover[1]
                            if scr_chance(50)
                                scr_draw_npc_text(id, (1 << 0))
                            break
                        case (14 << 0):
                            path_end()
                            move_point_x = _array_change_cover[0]
                            move_point_y = _array_change_cover[1]
                            break
                        case (13 << 0):
                            move_point_x = _array_cover[0]
                            move_point_y = _array_cover[1]
                            if scr_chance(80)
                                scr_draw_npc_text(id, (9 << 0))
                            break
                        case (16 << 0):
                            scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 8)
                            if scr_chance(50)
                                scr_draw_npc_text(id, (7 << 0))
                            break
                        case (17 << 0):
                            _dir = point_direction(_tx, _ty, x, y)
                            var _dis = (npc_alert_visual_distance[npc_id] / 2)
                            move_point_x = (_tx + lengthdir_x(_dis, _dir))
                            move_point_y = (_ty + lengthdir_y(_dis, _dir))
                            break
                        case (26 << 0):
                            path_end()
                            if (ds_list_size(_lista_near_me) > 0)
                            {
                                var _id_near = ds_list_find_value(_lista_near_me, 0)
                                var _x_near = _id_near.x
                                var _y_near = _id_near.y
                                var _dir_near = point_direction(x, y, _x_near, _y_near)
                                hspd = (-(lengthdir_x(0.5, _dir_near)))
                                vspd = (-(lengthdir_y(0.5, _dir_near)))
                            }
                            break
                        case (23 << 0):
                            scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 8)
                            if scr_chance(50)
                                scr_draw_npc_text(id, (13 << 0))
                            break
                        case (19 << 0):
                            path_end()
                            scr_enemy_choose_move_pos((last_seen_x + irandom_range(-7, 7)), (last_seen_y + irandom_range(-7, 7)), 0)
                            if scr_chance(75)
                                scr_draw_npc_text(id, (8 << 0))
                            break
                        case (27 << 0):
                            just_shot = 0
                            if scr_chance(75)
                                scr_draw_npc_text(id, (12 << 0))
                            break
                        case (18 << 0):
                            chase_new_target_location = 0
                            scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 16)
                            if scr_chance(50)
                                scr_draw_npc_text(id, (10 << 0))
                            break
                        case (20 << 0):
                            reloading = 1
                            alarm[0] = (irandom(100) + 80)
                            path_end()
                            if scr_chance(50)
                                scr_draw_npc_text(id, (5 << 0))
                            have_to_reload = 0
                            break
                        case (0 << 0):
                            path_end()
                            visto_prima_volta = 0
                            break
                        case (11 << 0):
                            path_end()
                            if (human_state_before == (19 << 0))
                            {
                                if scr_chance(50)
                                    scr_draw_npc_text(id, (11 << 0))
                            }
                            break
                        case (21 << 0):
                            path_end()
                            if (human_state_before == (19 << 0))
                            {
                                if scr_chance(75)
                                    scr_draw_npc_text(id, (11 << 0))
                            }
                            break
                        case (28 << 0):
                            scr_enemy_choose_move_pos(ally_morto_x, ally_morto_y, 8)
                            alleato_morto_vicino = 2
                            scr_draw_npc_text(id, (14 << 0))
                            if instance_exists(id_chest_ally_dead.id_of_the_killer)
                                target = id_chest_ally_dead.id_of_the_killer
                            break
                        case (29 << 0):
                            var _y = y
                            var _pos_found = 0
                            move_point_x = (x + 64)
                            move_point_y = y
                            break
                        case (32 << 0):
                            path_end()
                            if (target == obj_player)
                            {
                                if (can_talk == 1)
                                {
                                    can_talk = 0
                                    scr_draw_npc_text(id, (3 << 0))
                                }
                            }
                            break
                        case (9 << 0):
                            scr_enemy_choose_move_pos(x, y, 0)
                            break
                        case (3 << 0):
                            path_end()
                            scr_npc_create_animation(obj_arms_drink)
                            break
                        case (4 << 0):
                            path_end()
                            scr_npc_create_animation(obj_arms_smoke)
                            break
                        case (2 << 0):
                            path_end()
                            scr_npc_create_animation(obj_arms_eat)
                            break
                        case (8 << 0):
                            path_end()
                            scr_npc_create_animation(obj_arms_guitar)
                            break
                        case (5 << 0):
                            path_end()
                            scr_npc_create_animation(obj_arms_scientist_working)
                            break
                        case (7 << 0):
                            path_end()
                            break
                    }

                }
            }
        }
        switch human_state_now
        {
            case (0 << 0):
                path_end()
                scr_enemy_choose_idle_or_move()
                scr_collision()
                draw_weapon = 1
                if (room == r_hub)
                {
                    target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                    if (x > xprevious)
                    {
                        target_for_image_scale = (x + 2)
                        weapon_pointing_direction = 300
                    }
                    else if (x == xprevious)
                    {
                    }
                    else if (x < xprevious)
                    {
                        target_for_image_scale = (x - 2)
                        weapon_pointing_direction = 240
                    }
                }
                else
                {
                    scr_move_arma_random(2, weapon_pointing_angle, 1)
                    if (object_index == obj_green_quest_swamp)
                    {
                        if instance_exists(obj_faro)
                            weapon_pointing_direction = point_direction(x, y, obj_faro.x, (obj_faro.y - 150))
                    }
                    target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                }
                break
            case (1 << 0):
                path_end()
                scr_collision()
                draw_weapon = 1
                scr_move_arma_random(2, weapon_pointing_angle, 1)
                target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                if (object_index == obj_scientist_2)
                {
                    scr_npc_state_arms(obj_arms_scientist_working)
                    if scr_chance(0.5)
                        scr_draw_npc_text(id, (60 << 0))
                }
                break
            case (11 << 0):
                var _termina_state = 0
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
                        {
                            shoot_time = 0
                            if scr_chance(30)
                                _termina_state = 1
                        }
                        if (target_visto == 0)
                            _termina_state = 1
                    }
                    else
                        _termina_state = 1
                }
                else
                    _termina_state = 1
                if (_termina_state == 1)
                    state_finito = 1
                scr_enemy_path()
                break
            case (20 << 0):
                if (reloading == 0)
                {
                    state_finito = 1
                    if (image_xscale == 1)
                        weapon_pointing_direction = 0
                    else
                        weapon_pointing_direction = 180
                }
                if (current_time > (timer_last_state + aim_still_timer))
                {
                    reloading = 0
                    state_finito = 1
                }
                break
            case (23 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    state_finito = 1
                break
            case (16 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    state_finito = 1
                break
            case (17 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    state_finito = 1
                break
            case (26 << 0):
                scr_collision()
                _my_faction = faction
                _my_target = target
                _my_id = id
                _my_x = x
                _my_y = y
                var _exit_state = 1
                with (obj_npc_parent)
                {
                    if (id != _my_id)
                    {
                        if (faction == _my_faction)
                        {
                            if (point_distance(x, y, _my_x, _my_y) < 10)
                                _exit_state = 0
                        }
                    }
                }
                if (_exit_state == 1)
                    state_finito = 1
                break
            case (18 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    state_finito = 1
                break
            case (12 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 4)
                    state_finito = 1
                break
            case (13 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 4)
                    state_finito = 1
                break
            case (14 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 4)
                    state_finito = 1
                weapon_pointing_direction = point_direction(x, y, last_seen_x, last_seen_y)
                break
            case (15 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    state_finito = 1
                if (current_time >= (timer_last_state + timer_last_state_max))
                    state_finito = 1
                weapon_pointing_direction = point_direction(x, y, last_seen_x, last_seen_y)
                break
            case (25 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    state_finito = 1
                weapon_pointing_direction = point_direction(x, y, last_target_cover_x, last_target_cover_y)
                break
            case (24 << 0):
                path_end()
                weapon_pointing_direction = point_direction(x, y, last_seen_x, last_seen_y)
                target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                if (current_time >= (timer_last_state + aim_still_timer))
                    state_finito = 1
                break
            case (19 << 0):
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
            case (27 << 0):
                path_end()
                scr_move_arma_random(4, weapon_pointing_angle, 3)
                target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                break
            case (21 << 0):
                _dir = point_direction(x, y, dir_to_aim_x, dir_to_aim_y)
                _angle_diff = angle_difference(direction_to_aim, weapon_pointing_direction)
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
                break
            case (32 << 0):
                if instance_exists(target)
                {
                    var _x = target.x
                    _y = target.y
                    _dir = point_direction(x, y, _x, _y)
                    weapon_pointing_direction = _dir
                    target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                    if collision_line(x, y, target.x, target.y, obj_solid, false, true)
                        state_finito = 1
                }
                break
            case (9 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 4)
                    state_finito = 1
                break
            case (28 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 4)
                    state_finito = 1
                break
            case (29 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 4)
                    state_finito = 1
                break
            case (3 << 0):
                scr_npc_arms_animation(obj_arms_drink)
                break
            case (4 << 0):
                scr_npc_arms_animation(obj_arms_smoke)
                break
            case (2 << 0):
                scr_npc_arms_animation(obj_arms_eat)
                break
            case (5 << 0):
                scr_npc_arms_animation(obj_arms_scientist_working)
                break
            case (8 << 0):
                scr_npc_arms_animation(obj_arms_guitar)
                break
            case (7 << 0):
                scr_enemy_path()
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                {
                    path_end()
                    if (!instance_exists(obj_arms_guitar))
                    {
                        scr_npc_create_animation(obj_arms_guitar)
                        human_state_now = (8 << 0)
                    }
                    else
                        human_state_now = (0 << 0)
                }
                break
            case (6 << 0):
                path_end()
                scr_move_arma_random(2, weapon_pointing_angle, 1)
                _active = scr_check_quest_in_corso((69 << 0))
                if (global.quest_unique_done[(70 << 0)] == 1)
                {
                    if (point_distance(x, y, obj_player.x, obj_player.y) < 48)
                    {
                        if (can_talk == 1)
                        {
                            scr_draw_npc_text(id, (107 << 0))
                            can_talk = 0
                        }
                    }
                }
                target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                break
        }

        break
    case (11 << 0):
        target = scr_find_target_for_human()
        draw_weapon = 1
        if (target != noone)
        {
            if (target_relation == (2 << 0))
            {
                weapon_pointing_direction = point_direction(x, y, target.x, target.y)
                scr_enemy_alert_near_enemy()
                if (!(collision_line(x, y, target.x, target.y, obj_solid, true, true)))
                    state = (13 << 0)
                else
                {
                    move_point_x = 0
                    move_point_y = 0
                    if (point_distance(x, y, target.x, target.y) < 200)
                    {
                        scr_enemy_search_shoot_position()
                        if (move_point_x != 0)
                            state = (15 << 0)
                        else
                        {
                            scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 64)
                            state = (16 << 0)
                        }
                    }
                    else if scr_chance(0.5)
                    {
                        scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 64)
                        state = (16 << 0)
                    }
                }
            }
            if (target_relation == (0 << 0))
            {
                hspd = 0
                vspd = 0
                state = (10 << 0)
            }
            if (target_relation == (1 << 0))
            {
                hspd = 0
                vspd = 0
                state = (9 << 0)
            }
        }
        break
    case (14 << 0):
        if (object_index == obj_green_quest_swamp)
            state = (11 << 0)
        if (point_distance(x, y, move_point_x, move_point_y) < 4)
        {
            target = scr_find_target_for_human()
            if (target_relation == (2 << 0))
            {
                if (ammo_now < (arma_magazine[arma_now] * 0.5))
                {
                    var chance = ((100 - ((ammo_now * 100) / arma_magazine[arma_now])) * 2)
                    if scr_chance(chance)
                    {
                        state = (18 << 0)
                        reloading = 1
                        alarm[0] = (irandom(100) + 60)
                        scr_draw_npc_text(id, (5 << 0))
                    }
                }
                else if (target != noone)
                    state = (11 << 0)
            }
            if (target_relation == (0 << 0))
            {
                hspd = 0
                vspd = 0
                state = (10 << 0)
            }
            if (target_relation == (1 << 0))
            {
                hspd = 0
                vspd = 0
                state = (9 << 0)
            }
        }
        scr_enemy_path()
        break
    case (15 << 0):
        target = scr_find_target_for_human()
        if (target != noone)
        {
            if (target_relation == (2 << 0))
            {
                weapon_pointing_direction = point_direction(x, y, target.x, target.y)
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                {
                    if (!(collision_line(x, y, target.x, target.y, obj_solid, true, true)))
                        state = (13 << 0)
                    else
                        state = (11 << 0)
                }
            }
            if (target_relation == (0 << 0))
            {
                hspd = 0
                vspd = 0
                state = (10 << 0)
            }
            if (target_relation == (1 << 0))
            {
                hspd = 0
                vspd = 0
                state = (9 << 0)
            }
        }
        scr_enemy_path()
        break
    case (13 << 0):
        draw_weapon = 1
        if (shoot_time == 0)
        {
            path_end()
            if scr_chance(75)
                scr_enemy_choose_move_pos(x, y, 16)
            else
            {
                move_point_x = x
                move_point_y = y
            }
        }
        if (hp <= (npc_hp[npc_id] * 0.3))
        {
            if scr_chance(1)
                scr_draw_npc_text(id, (2 << 0))
        }
        target = scr_find_target_for_human()
        if (target != noone)
        {
            if (target_relation == (2 << 0))
            {
                last_seen_x = target.x
                last_seen_y = target.y
                if (!(collision_line(x, y, target.x, target.y, obj_solid, true, true)))
                {
                    if (point_distance(x, y, target.x, target.y) < (npc_alert_visual_distance[npc_id] * 1.5))
                    {
                        scr_enemy_alert_near_enemy()
                        scr_enemy_shoot()
                        shoot_time++
                        if (shoot_time >= shoot_time_max)
                        {
                            shoot_time = 0
                            if scr_chance(50)
                            {
                                if scr_chance(80)
                                {
                                    scr_enemy_search_cover_position()
                                    state = (14 << 0)
                                    scr_draw_npc_text(id, (1 << 0))
                                }
                                else
                                {
                                    scr_enemy_change_cover()
                                    state = (14 << 0)
                                }
                            }
                            else
                            {
                                state = (13 << 0)
                                if scr_chance(10)
                                    scr_draw_npc_text(id, (0 << 0))
                            }
                            if (point_direction(x, y, mouse_x, mouse_y) < 16)
                            {
                                scr_enemy_search_cover_position()
                                state = (14 << 0)
                                scr_draw_npc_text(id, (1 << 0))
                            }
                        }
                    }
                    else
                    {
                        scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 8)
                        state = (16 << 0)
                        scr_draw_npc_text(id, (7 << 0))
                    }
                }
                else
                {
                    shoot_time = 0
                    riflessi = 0
                    if scr_chance(0.13)
                    {
                        scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 8)
                        state = (16 << 0)
                        scr_draw_npc_text(id, (7 << 0))
                    }
                }
                if (ammo_now < (arma_magazine[arma_now] * 0.5))
                {
                    chance = (100 - ((ammo_now * 100) / arma_magazine[arma_now]))
                    if scr_chance(chance)
                    {
                        scr_enemy_search_cover_position()
                        state = (14 << 0)
                        scr_draw_npc_text(id, (6 << 0))
                    }
                    if (npc_spd_alerted[npc_id] == 0)
                    {
                        if scr_chance(chance)
                        {
                            state = (18 << 0)
                            reloading = 1
                            alarm[0] = (irandom(100) + 60)
                            scr_draw_npc_text(id, (5 << 0))
                        }
                    }
                }
            }
            if (target_relation == (0 << 0))
            {
                hspd = 0
                vspd = 0
                state = (10 << 0)
            }
            if (target_relation == (1 << 0))
            {
                hspd = 0
                vspd = 0
                state = (9 << 0)
            }
        }
        scr_enemy_path()
        break
    case (16 << 0):
        target = scr_find_target_for_human()
        draw_weapon = 1
        if (target != noone)
        {
            if (target_relation == (2 << 0))
            {
                if ((!(collision_line(x, y, target.x, target.y, obj_solid, true, true))) && point_distance(x, y, target.x, target.y) < (npc_alert_visual_distance[npc_id] * 1.4))
                    state = (13 << 0)
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                {
                    if collision_line(x, y, target.x, target.y, obj_solid, true, true)
                    {
                        path_end()
                        alarm[5] = reset_state_to_patrol_time
                        state = (17 << 0)
                        scr_draw_npc_text(id, (8 << 0))
                    }
                }
            }
            if (target_relation == (0 << 0))
            {
                hspd = 0
                vspd = 0
                state = (10 << 0)
            }
            if (target_relation == (1 << 0))
            {
                hspd = 0
                vspd = 0
                state = (9 << 0)
            }
        }
        scr_enemy_path()
        break
    case (23 << 0):
        if (faction != (7 << 0))
        {
            target = scr_find_target_for_human()
            if (target != noone)
            {
                if (target_relation == (2 << 0))
                {
                    if ((!(collision_line(x, y, target.x, target.y, obj_solid, true, true))) && point_distance(x, y, target.x, target.y) < (npc_alert_visual_distance[npc_id] * 1.2))
                        state = (13 << 0)
                }
                if (target_relation == (0 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                }
                if (target_relation == (1 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (9 << 0)
                }
            }
        }
        if (faction == (7 << 0))
        {
            if ((!(collision_line(x, y, target.x, target.y, obj_solid, true, true))) && point_distance(x, y, target.x, target.y) < 160)
                state = (36 << 0)
        }
        move_point_x = target.x
        move_point_y = target.y
        scr_enemy_path()
        break
    case (17 << 0):
        target = scr_find_target_for_human()
        draw_weapon = 1
        if scr_chance(npc_prob_idle[npc_id])
        {
            hspd = 0
            vspd = 0
        }
        if scr_chance((npc_prob_move[npc_id] * 6))
        {
            dir = irandom(360)
            hspd = lengthdir_x(npc_spd_not_alerted[npc_id], dir)
            vspd = lengthdir_y(npc_spd_not_alerted[npc_id], dir)
        }
        scr_collision()
        if (target != noone)
        {
            if scr_chance(2)
                weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
            weapon_pointing_direction += weapon_pointing_amount
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            if (target_relation == (2 << 0))
            {
                if (!(collision_line(x, y, target.x, target.y, obj_solid, true, true)))
                {
                    scr_draw_npc_text(id, (11 << 0))
                    state = (11 << 0)
                }
            }
            if (target_relation == (0 << 0))
            {
                hspd = 0
                vspd = 0
                state = (10 << 0)
            }
            if (target_relation == (1 << 0))
            {
                hspd = 0
                vspd = 0
                state = (9 << 0)
            }
        }
        break
    case (18 << 0):
        if (reloading == 0)
            state = (11 << 0)
        if (image_xscale == 1)
            weapon_pointing_direction = 0
        else
            weapon_pointing_direction = 180
        break
    case (20 << 0):
        break
    case (27 << 0):
        scr_enemy_choose_idle_or_move()
        scr_collision()
        if scr_chance(2)
            weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
        weapon_pointing_direction += weapon_pointing_amount
        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
        target = scr_find_target_for_human()
        if (target != noone)
        {
            switch target_relation
            {
                case (2 << 0):
                    hspd = 0
                    vspd = 0
                    state = (13 << 0)
                    break
                case (0 << 0):
                    break
                case (1 << 0):
                    break
            }

        }
        break
    case (26 << 0):
        scr_npc_state_arms(obj_arms_scientist_working)
        if scr_chance(0.2)
            scr_draw_npc_text(id, (60 << 0))
        break
    case (35 << 0):
        scr_bullet_near()
        state_enemy_mutant_patrol()
        break
    case (36 << 0):
        scr_bullet_near()
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != noone)
        {
            if instance_exists(target)
            {
                target_for_image_scale = target.x
                if (move_point_x == 0)
                {
                    var range_ = 64
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                last_seen_x = target.x
                last_seen_y = target.y
                range_ = 64
                if scr_chance(npc_prob_move[npc_id])
                {
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                    path_timer = (path_timer_reset + 1)
                }
                if (point_distance(x, y, move_point_x, move_point_y) < 8)
                {
                    move_point_x = (target.x + irandom_range(((-range_) * 2), (range_ * 2)))
                    move_point_y = (target.y + irandom_range(((-range_) * 2), (range_ * 2)))
                    path_timer = (path_timer_reset + 1)
                }
                if scr_chance(npc_prob_attack[npc_id])
                {
                    move_point_x = target.x
                    move_point_y = target.y
                    path_timer = (path_timer_reset + 1)
                }
                if (object_index == obj_enemy_ghoul)
                {
                    if (point_distance(x, y, target.x, target.y) < 80 && point_distance(x, y, target.x, target.y) > 40)
                    {
                        if (can_attack == 1)
                        {
                            if scr_chance(2)
                                state = (56 << 0)
                        }
                    }
                }
                if (object_index == obj_enemy_big)
                {
                    if scr_chance(0.2)
                        state = (57 << 0)
                    if (point_distance(x, y, target.x, target.y) > 32 && point_distance(x, y, target.x, target.y) < 80)
                    {
                        if (can_attack == 1)
                        {
                            if scr_chance(20)
                            {
                                can_attack = 0
                                alarm[8] = attack_recovery
                                dir_attack = point_direction(x, y, target.x, target.y)
                                state = (59 << 0)
                                var sspd = 3
                                hspd = lengthdir_x(sspd, dir_attack)
                                vspd = lengthdir_y(sspd, dir_attack)
                            }
                        }
                    }
                }
                if (object_index == obj_enemy_blink)
                {
                    if (point_distance(x, y, target.x, target.y) < 16)
                    {
                        if (can_attack == 1)
                        {
                            can_attack = 0
                            state = (55 << 0)
                            alarm[8] = attack_recovery
                            audio_play_sound_on(emitter_talk, snd_blink_attack1, false, 20)
                        }
                    }
                }
            }
        }
        else
            scr_mutant_target_not_in_sight()
        scr_enemy_path()
        break
    case (42 << 0):
        scr_enemy_choose_idle_or_move()
        scr_collision()
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != noone)
        {
            hspd = 0
            vspd = 0
            state = (47 << 0)
        }
        if (target == noone)
        {
            tick++
            if (tick >= tick_max)
            {
                tick = 0
                _x = x
                _y = y
                _next_state = (42 << 0)
                if scr_chance(8)
                    _next_state = (43 << 0)
                if scr_chance(5)
                    _next_state = (46 << 0)
                if scr_chance(0.5)
                    _next_state = (52 << 0)
                var _move_x = 0
                var _move_y = 0
                if instance_exists(obj_chest_general)
                {
                    with (obj_chest_general)
                    {
                        if (chest_is_drop[tipo] == 1)
                        {
                            if (point_distance(x, y, _x, _y) < 96)
                            {
                                var _r = 10
                                _move_x = (x + irandom_range((-_r), _r))
                                _move_y = (y + irandom_range(((-_r) / 2), (_r / 2)))
                            }
                        }
                    }
                }
                if (_move_x != 0 && _move_y != 0)
                {
                    var _eat_counter = 0
                    with (obj_enemy_wolf_brown)
                    {
                        if (state == (45 << 0) || state == (44 << 0))
                            _eat_counter++
                    }
                    if (_eat_counter < 2)
                    {
                        _next_state = (44 << 0)
                        move_point_x = _move_x
                        move_point_y = _move_y
                        path_timer = path_timer_reset
                    }
                }
                if (_next_state != (44 << 0))
                    var _ret = scr_wolf_decidi_attaccare()
                if (_next_state == (52 << 0))
                {
                    var _sound = choose(283, 284)
                    var sound_durata = audio_sound_length(_sound)
                    wolf_ululato_max = (sound_durata * 60)
                    wolf_ululato = 0
                    audio_play_sound_on(emitter_shoot, _sound, false, 20)
                }
                state = _next_state
            }
        }
        break
    case (43 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != noone)
        {
            hspd = 0
            vspd = 0
            state = (47 << 0)
        }
        if (target == noone)
        {
            var _end = scr_animation_end(178)
            if (_end == 1)
                state = (42 << 0)
        }
        break
    case (44 << 0):
        target = scr_find_target_for_mutant(wolf_alert_raggio2)
        if (target != noone)
        {
            hspd = 0
            vspd = 0
            state = (47 << 0)
        }
        if (target == noone)
        {
            if (point_distance(x, y, move_point_x, move_point_y) < 4)
                state = (45 << 0)
        }
        scr_enemy_path()
        break
    case (45 << 0):
        target = scr_find_target_for_mutant(wolf_alert_raggio2)
        if (target != noone)
        {
            hspd = 0
            vspd = 0
            state = (47 << 0)
        }
        if (target == noone)
        {
            _end = scr_animation_end(180)
            if (_end == 1)
            {
                if scr_chance(12)
                    state = (42 << 0)
            }
        }
        scr_enemy_path()
        break
    case (46 << 0):
        target = scr_find_target_for_mutant(wolf_alert_raggio2)
        if (target != noone)
        {
            hspd = 0
            vspd = 0
            state = (47 << 0)
            image_index = 0
        }
        if (target == noone)
        {
            _end = scr_animation_end(184)
            if (_end == 1)
            {
                if scr_chance(20)
                    state = (42 << 0)
            }
        }
        break
    case (47 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        path_end()
        if (target != noone)
        {
            hspd = 0
            vspd = 0
            _end = scr_animation_end(185)
            if (_end == 1)
            {
                var _attack = scr_wolf_decidi_attaccare()
                if (_attack == 1)
                    state = (48 << 0)
            }
        }
        if (target == noone)
        {
            _end = scr_animation_end(185)
            if (_end == 1)
                state = (42 << 0)
        }
        break
    case (48 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if instance_exists(target)
        {
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                tick++
                if (tick >= tick_max)
                {
                    tick = 0
                    _next_state = (48 << 0)
                    var _movex = 0
                    var _movey = 0
                    _id = id
                    var _counter_attack = 0
                    var _max_attack = 3
                    var _counter_ululato = 0
                    var _ululato_max = 2
                    var _target = target
                    with (obj_enemy_wolf_brown)
                    {
                        if (id != _id)
                        {
                            if (state == (49 << 0))
                            {
                                if (target == _target)
                                    _counter_attack++
                            }
                            if (state == (52 << 0))
                                _counter_ululato++
                        }
                    }
                    _id = id
                    _target = target
                    _x = x
                    _y = y
                    with (obj_enemy_wolf_brown)
                    {
                        if (_id != id)
                        {
                            if (target == noone)
                            {
                                if (point_distance(x, y, _x, _y) < 96)
                                {
                                    target = _target
                                    search_target_id = _target
                                }
                            }
                        }
                    }
                    if scr_chance(30)
                    {
                        _dir = irandom(360)
                        _dis = 32
                        _movex = (target.x + lengthdir_x(_dis, _dir))
                        _movey = (target.y + lengthdir_y(_dis, _dir))
                        path_timer = path_timer_reset
                    }
                    if scr_chance(5)
                        _next_state = (47 << 0)
                    _dis = point_distance(x, y, target.x, target.y)
                    if (_dis < 32)
                    {
                        if (can_attack == 1)
                        {
                            if (_counter_attack < _max_attack)
                            {
                                can_attack = 0
                                alarm[8] = 60
                                _next_state = (49 << 0)
                                dir_attack = point_direction(x, y, target.x, target.y)
                                sspd = 2.5
                                hspd = lengthdir_x(sspd, dir_attack)
                                vspd = lengthdir_y(sspd, dir_attack)
                            }
                        }
                    }
                    if (_counter_ululato < _ululato_max)
                    {
                        if (_counter_attack >= _max_attack)
                        {
                            if scr_chance(12)
                                _next_state = (52 << 0)
                        }
                        if scr_chance(2)
                            _next_state = (52 << 0)
                    }
                    _dis = point_distance(x, y, target.x, target.y)
                    if (_dis > 96)
                    {
                        _dir = irandom(360)
                        _dis = 32
                        _movex = (target.x + lengthdir_x(_dis, _dir))
                        _movey = (target.y + lengthdir_y(_dis, _dir))
                    }
                    if (_next_state == (52 << 0))
                    {
                        _sound = choose(283, 284)
                        sound_durata = audio_sound_length(_sound)
                        wolf_ululato_max = (sound_durata * 60)
                        wolf_ululato = 0
                        audio_play_sound_on(emitter_shoot, _sound, false, 20)
                    }
                    state = _next_state
                    move_point_x = _movex
                    move_point_y = _movey
                    _ret = scr_wolf_decidi_attaccare()
                }
                if (point_distance(x, y, move_point_x, move_point_y) < 3)
                {
                    _dis = 28
                    _dir = irandom(360)
                    _movex = (target.x + lengthdir_x(_dis, _dir))
                    _movey = (target.y + lengthdir_y(_dis, _dir))
                    move_point_x = _movex
                    move_point_y = _movey
                    path_timer = path_timer_reset
                    _ret = scr_wolf_decidi_attaccare()
                }
                if (move_point_x != 0 && move_point_y != 0)
                    scr_enemy_path()
                if (point_distance(x, y, target.x, target.y) > 220)
                    state = (42 << 0)
            }
            if (target == noone)
            {
                state = (42 << 0)
                if instance_exists(search_target_id)
                {
                    if (point_distance(x, y, search_target_id.x, search_target_id.y) > 220)
                        state = (42 << 0)
                    else
                        scr_mutant_target_not_in_sight()
                }
            }
        }
        break
    case (49 << 0):
        path_end()
        _end = scr_animation_end(181)
        if (_end == 1)
        {
            state = (48 << 0)
            hspd = 0
            vspd = 0
        }
        if instance_exists(target)
        {
            if (image_index < 5)
            {
                dir_attack = point_direction(x, y, target.x, target.y)
                sspd = 3
                hspd = lengthdir_x(sspd, dir_attack)
                vspd = lengthdir_y(sspd, dir_attack)
            }
            if (image_index >= 5)
                scr_collision()
        }
        else
            state = (42 << 0)
        break
    case (50 << 0):
        path_end()
        hspd = 0
        vspd = 0
        _end = scr_animation_end(182)
        if (_end == 1)
        {
            state = (48 << 0)
            hspd = 0
            vspd = 0
        }
        break
    case (51 << 0):
        if (point_distance(x, y, move_point_x, move_point_y) < 10)
            state = (42 << 0)
        scr_enemy_path()
        break
    case (52 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        path_end()
        if (image_index >= (image_number - 2))
            image_index = (image_number - 2)
        wolf_ululato++
        if (wolf_ululato >= wolf_ululato_max)
        {
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                state = (48 << 0)
            }
            if (target == noone)
                state = (42 << 0)
        }
        break
    case (57 << 0):
        path_end()
        hspd = 0
        vspd = 0
        if (image_index >= 3)
        {
            sound_durata = (audio_sound_length(snd_big_ruggito_1) - 2.5)
            timer_ruggito_max = (sound_durata * 60)
            timer_ruggito = 0
            audio_play_sound_on(emitter_shoot, snd_big_ruggito_1, false, 20)
            state = (58 << 0)
        }
        break
    case (58 << 0):
        timer_ruggito++
        if (timer_ruggito >= timer_ruggito_max)
        {
            timer_ruggito = 0
            state = (36 << 0)
        }
        break
    case (59 << 0):
        path_end()
        if instance_exists(target)
        {
            if (image_index >= (sprite_get_number(sprite_index) - 1))
            {
                state = (36 << 0)
                path_timer = 999
            }
            if (image_index >= 4)
            {
                hspd = 0
                vsdp = 0
            }
            scr_collision()
        }
        break
    case (38 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != noone)
        {
            target_for_image_scale = target.x
            if (move_point_x == 0)
            {
                range_ = 64
                move_point_x = (target.x + irandom_range((-range_), range_))
                move_point_y = (target.y + irandom_range((-range_), range_))
            }
            path_end()
            last_seen_x = target.x
            last_seen_y = target.y
            range_ = 64
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
            if (point_distance(x, y, target.x, target.y) < 8)
            {
                dir = point_direction(x, y, target.x, target.y)
                var spazio_frenata = 64
                start_frenata_x = (target.x + lengthdir_x(spazio_frenata, dir))
                start_frenata_y = (target.y + lengthdir_y(spazio_frenata, dir))
                state = (39 << 0)
                frenata_dir = dir
            }
            if (point_distance(x, y, target.x, target.y) > 128)
            {
                if scr_chance(5)
                    state = (40 << 0)
            }
            mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
        }
        else
            scr_mutant_target_not_in_sight()
        break
    case (39 << 0):
        frenata_step++
        if (frenata_step >= frenata_step_max)
        {
            frenata_step = 0
            state = (35 << 0)
        }
        hspd = (lengthdir_x(npc_spd_alerted[npc_id], frenata_dir) - ((lengthdir_x(npc_spd_alerted[npc_id], frenata_dir) / frenata_step_max) * frenata_step))
        vspd = (lengthdir_y(npc_spd_alerted[npc_id], frenata_dir) - ((lengthdir_y(npc_spd_alerted[npc_id], frenata_dir) / frenata_step_max) * frenata_step))
        scr_collision()
        break
    case (40 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        _end = scr_animation_end(98)
        if (target != noone)
        {
            if (_end == 1)
                state = (41 << 0)
        }
        else
            scr_mutant_target_not_in_sight()
        if (image_index == 2 || image_index == 8 || image_index == 14)
        {
            var a = (44 << 0)
            var ob = obj_particles_controller
            if (image_xscale == 1)
                part_type_direction(ob.particles_type[a], -10, 10, 0, 0)
            else
                part_type_direction(ob.particles_type[a], 170, 190, 0, 0)
            part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], (x + (2 * image_xscale)), (x + (2 * image_xscale)), (y + 13), (y + 11), 0, 1)
            part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], 4)
        }
        hspd = 0
        vspd = 0
        scr_collision()
        break
    case (41 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != noone)
        {
            move_point_x = target.x
            move_point_y = target.y
            if (move_point_x != 0 && move_point_y != 0)
                scr_enemy_path()
            if (point_distance(x, y, target.x, target.y) < 8)
            {
                dir = point_direction(x, y, target.x, target.y)
                spazio_frenata = 64
                start_frenata_x = (target.x + lengthdir_x(spazio_frenata, dir))
                start_frenata_y = (target.y + lengthdir_y(spazio_frenata, dir))
                state = (39 << 0)
                frenata_dir = dir
            }
        }
        else
            scr_mutant_target_not_in_sight()
        break
    case (55 << 0):
        hspd = 0
        vspd = 0
        path_end()
        if (image_index >= (sprite_get_number(sprite_index) - 1))
            state = (36 << 0)
        break
    case (53 << 0):
        hspd = 0
        vspd = 0
        path_end()
        if (image_index >= (sprite_get_number(sprite_index) - 1))
            state = (36 << 0)
        break
    case (54 << 0):
        path_end()
        if instance_exists(target)
        {
            if (image_index >= 6)
            {
                state = (36 << 0)
                range_ = 64
                move_point_x = (target.x + irandom_range((-range_), range_))
                move_point_y = (target.y + irandom_range((-range_), range_))
                path_timer = 999
            }
            scr_collision()
        }
        else
            state = (35 << 0)
        break
    case (56 << 0):
        path_end()
        hspd = 0
        vspd = 0
        if instance_exists(target)
        {
            if (image_index >= 8 && can_attack == 1)
            {
                dir_attack = point_direction(x, y, target.x, target.y)
                can_attack = 0
                alarm[8] = attack_recovery
                var bul = instance_create_depth(x, (y - 10), 0, obj_bullet_ghoul)
                sspd = 3
                bul.hspd = lengthdir_x(sspd, dir_attack)
                bul.vspd = lengthdir_y(sspd, dir_attack)
                bul.damage = 10
                bul.shooter_faction = faction
                bul.shooter_id = id
                audio_play_sound_on(emitter_talk, snd_ghoul_attack, false, 5)
            }
            if (image_index >= 11)
                state = (36 << 0)
        }
        break
    case (60 << 0):
        state_enemy_mutant_patrol()
        break
    case (61 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != noone)
        {
            target_for_image_scale = target.x
            if (move_point_x == 0)
            {
                range_ = 64
                move_point_x = (target.x + irandom_range((-range_), range_))
                move_point_y = (target.y + irandom_range((-range_), range_))
            }
            path_end()
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
                dir = point_direction(x, y, target.x, target.y)
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
        else
            scr_mutant_target_not_in_sight()
        break
    case (62 << 0):
        state_enemy_mutant_patrol()
        break
    case (63 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != noone)
        {
            target_for_image_scale = target.x
            if (move_point_x == 0)
            {
                range_ = 64
                move_point_x = (target.x + irandom_range((-range_), range_))
                move_point_y = (target.y + irandom_range((-range_), range_))
            }
            path_end()
            last_seen_x = target.x
            last_seen_y = target.y
            range_ = 64
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
            if (point_distance(x, y, target.x, target.y) < 96)
            {
                if scr_chance(prob_attack1)
                {
                    instance_create_depth(x, y, 0, obj_hud_get_hit)
                    var dis_ = point_distance(x, y, target.x, target.y)
                    var dir_ = point_direction(x, y, target.x, target.y)
                    a = (9 << 0)
                    ob = obj_particles_controller
                    var dis1 = 0
                    var dir1 = 0
                    var amount_ = choose(-1, 1)
                    var dividendo = (irandom(7) + 3)
                    for (i = 0; i < dis_; i++)
                    {
                        var xo = (x + lengthdir_x(i, dir_))
                        var yo = (y + lengthdir_y(i, dir_))
                        dividendo = (irandom(7) + 3)
                        if (frac((i / dividendo)) == 0)
                            amount_ = (-amount_)
                        dis1 += amount_
                        dir1 = (dir_ + 90)
                        var x1 = (xo + lengthdir_x(dis1, dir1))
                        var y1 = (yo + lengthdir_y(dis1, dir1))
                        part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], x1, x1, y1, y1, 0, 1)
                        part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], ob.particle_amount[a])
                    }
                    instance_create_depth(x1, y1, 0, obj_light_electric_spark)
                    target.hp -= dmg_attack1
                }
            }
            if (abs((x - move_point_x)) < 8 && abs((y - move_point_y)) < 8)
            {
                move_point_x = (target.x + irandom_range((-range_), range_))
                move_point_y = (target.y + irandom_range((-range_), range_))
            }
            mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
        }
        else
            scr_mutant_target_not_in_sight()
        break
    case (64 << 0):
        scr_enemy_choose_idle_or_move()
        scr_collision()
        if scr_chance(0.5)
        {
            state = (65 << 0)
            hspd = 0
            vspd = 0
        }
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != -4)
        {
            hspd = 0
            vspd = 0
            var range = 128
            move_point_x = (x + irandom_range(((-range) - (range / 2)), (range + (range / 2))))
            move_point_y = (y + irandom_range(((-range) - (range / 2)), (range + (range / 2))))
            state = (66 << 0)
        }
        break
    case (65 << 0):
        scr_collision()
        if (image_index >= (sprite_get_number(s_rabbit_idle2) - 2))
            state = (64 << 0)
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != -4)
        {
            hspd = 0
            vspd = 0
            range = 128
            move_point_x = (x + irandom_range(((-range) - (range / 2)), (range + (range / 2))))
            move_point_y = (y + irandom_range(((-range) - (range / 2)), (range + (range / 2))))
            state = (66 << 0)
        }
        break
    case (66 << 0):
        path_timer++
        if (path_timer >= path_timer_reset)
        {
            path_timer = 0
            path_to_target = path_add()
            mp_grid_path(global.grid_move, path_to_target, x, y, move_point_x, move_point_y, true)
            path_start(path_to_target, npc_spd_alerted[npc_id], path_action_stop, 0)
        }
        target_for_image_scale = move_point_x
        if (abs((x - move_point_x)) < 16 && abs((y - move_point_y)) < 16)
            state = (64 << 0)
        break
    case (67 << 0):
        scr_enemy_choose_idle_or_move()
        scr_collision()
        if scr_chance(0.5)
        {
            state = (68 << 0)
            hspd = 0
            vspd = 0
        }
        scr_enemy_crow_check_if_escape()
        break
    case (68 << 0):
        scr_collision()
        if (image_index >= (sprite_get_number(s_crow_idle2) - 2))
            state = (67 << 0)
        scr_enemy_crow_check_if_escape()
        break
    case (71 << 0):
        move_towards_point(move_point_x, move_point_y, 2.5)
        if (point_distance(x, y, move_point_x, move_point_y) < 16)
            instance_destroy()
        break
    case (72 << 0):
        if scr_chance(0.5)
        {
            state = (74 << 0)
            hspd = 0
            vspd = 0
        }
        scr_enemy_crow_check_if_escape()
        break
    case (74 << 0):
        speed = 0
        if scr_chance(1)
        {
            image_index = 0
            state = (72 << 0)
        }
        scr_enemy_crow_check_if_escape()
        break
    case (73 << 0):
        move_towards_point(move_point_x, move_point_y, 2)
        if (point_distance(x, y, move_point_x, move_point_y) < 128 && point_distance(x, y, move_point_x, move_point_y) > 64)
        {
            if scr_chance(10)
            {
                var ss = choose(310, 311, 312, 313, 314)
                if (!audio_is_playing(ss))
                    audio_play_sound(ss, 10, false)
            }
        }
        if (point_distance(x, y, move_point_x, move_point_y) < (irandom(3) + 1))
        {
            speed = 0
            range = 500
            dir = irandom_range(45, 135)
            move_point_x = (x + lengthdir_x(range, dir))
            move_point_y = (y + lengthdir_y(range, dir))
            if scr_chance(30)
                state = (74 << 0)
            else
                state = (72 << 0)
        }
        break
    case (75 << 0):
        target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
        if (target != noone)
        {
            timer++
            if (timer >= timer_max)
            {
                timer = 0
                if (spawn_amount < spawn_max)
                {
                    repeat spawn_amount
                    {
                        var oo = instance_create_depth(x, (y + 8), 0, obj_enemy_ghoul)
                        oo.target = target
                        oo.search_target_id = target
                        spawn_amount++
                    }
                }
            }
        }
        break
    default:

}

if (room == room1)
{
    if (global.emission_make_npc_die == 1)
    {
        if (global.is_emission_now == 0)
        {
            if instance_exists(obj_map_generator)
            {
                if (y < obj_map_generator.map_height)
                    hp = -100
            }
        }
    }
}
if (hp <= 0)
{
    hp = -100
    if (play_sound_death == 1)
    {
        var sound_ = -1
        switch object_index
        {
            case obj_enemy_wolf_brown:
                sound_ = 281
                break
            case 219:
                sound_ = 309
                break
            case 220:
                sound_ = 309
                break
            case 208:
                sound_ = 320
                break
            case 221:
                sound_ = 303
                break
            case 210:
                sound_ = 295
                break
        }

        if (sound_ != -1)
        {
            var emitter_death = instance_create_depth(x, y, 0, obj_emitter_death_sound)
            emitter_death.sound_ = sound_
        }
    }
    if (object_index == obj_enemy_infestation || object_index == obj_enemy_infestation_motel)
    {
        var o = obj_particles_controller
        a = (2 << 0)
        part_particles_create(o.particles_system[a], x, y, o.particles_type[a], o.particle_amount[a])
    }
    if (object_index == obj_forest_trader)
    {
        global.az_done[(1 << 0)] = 1
        ga_addDesignEvent("UniqueNPC:Igor", 1)
    }
    if (object_index == obj_junk_trader)
    {
        global.az_done[(11 << 0)] = 1
        ga_addDesignEvent("UniqueNPC:MrJunk", 1)
    }
    var _size = array_length_1d(global.list_n_id)
    for (i = 0; i < _size; i++)
    {
        if (id == global.list_n_id[i])
        {
            global.list_n_id[i] = -4
            global.list_n_hp[i] = -10
            part_create_blood(0, 360, 7)
        }
    }
    instance_destroy()
}
if (state == (47 << 0) && state_before != (47 << 0))
    audio_play_sound_on(emitter_talk, snd_wolf_growl, false, 8)
if (state != (2 << 0))
    state_before = state
if (room != r_hub && room != room_tutorial)
{
    if collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true)
    {
        timer_visible++
        if (timer_visible >= timer_visible_max)
            image_alpha -= (a_gain / 2)
    }
    else
        image_alpha += a_gain
    image_alpha = clamp(image_alpha, 0, 1)
}
