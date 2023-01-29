depth = -9900
if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if (room == room1)
    {
        if (obj_map_generator.state == (19 << 0))
        {
            var _player_x = obj_player.x
            var _player_y = obj_player.y
            d_npc_tick++
            if (d_npc_tick >= d_npc_tick_max)
            {
                d_npc_tick = 0
                var _size = array_length_1d(global.list_n_id)
                if (_size > 0)
                {
                    var _start_now = d_npc_same_time_now
                    for (var i = _start_now; i < (_start_now + d_npc_same_time); i++)
                    {
                        if (global.list_n_follow_path[i] == 1)
                        {
                            var _id = global.list_n_id[i]
                            if (_id != noone)
                            {
                                var _size_path = ds_list_size(_id.lista_path_x)
                                if (_size_path > 0)
                                {
                                    if (!(point_in_rectangle(_id.x, _id.y, (x - 480), (y - 270), (x + 480), (y + 270))))
                                    {
                                        var _amount = floor(((dynamic_npc_speed * d_npc_tick_max) * (_size div d_npc_same_time)))
                                        if (ds_exists(_id.lista_path_x, 2) && ds_exists(_id.lista_path_y, 2))
                                        {
                                            repeat _amount
                                            {
                                                if ((_id.path_position_now + 1) < _size_path)
                                                {
                                                    var _next_x = ds_list_find_value(_id.lista_path_x, (_id.path_position_now + 1))
                                                    var _next_y = ds_list_find_value(_id.lista_path_y, (_id.path_position_now + 1))
                                                    var _prev_x = ds_list_find_value(_id.lista_path_x, _id.path_position_now)
                                                    var _prev_y = ds_list_find_value(_id.lista_path_y, _id.path_position_now)
                                                    if ((!is_undefined(_next_x)) && (!is_undefined(_next_y)) && (!is_undefined(_prev_x)) && (!is_undefined(_prev_y)))
                                                    {
                                                        var _dir = point_direction(_prev_x, _prev_y, _next_x, _next_y)
                                                        global.list_n_x[i] += lengthdir_x(dynamic_npc_speed, _dir)
                                                        global.list_n_y[i] += lengthdir_y(dynamic_npc_speed, _dir)
                                                        _id.x = global.list_n_x[i]
                                                        _id.y = global.list_n_y[i]
                                                        if (point_distance(_id.x, _id.y, _next_x, _next_y) < 2)
                                                            _id.path_position_now++
                                                    }
                                                }
                                            }
                                            _id.x = global.list_n_x[i]
                                            _id.y = global.list_n_y[i]
                                        }
                                    }
                                }
                            }
                            _id = global.list_n_id[i]
                            if (_id != noone)
                            {
                                if (!(point_in_rectangle(_id.x, _id.y, (x - 480), (y - 270), (x + 480), (y + 270))))
                                {
                                    for (var j = 0; j < _size; j++)
                                    {
                                        if scr_chance(40)
                                        {
                                            var _id_fight = global.list_n_id[j]
                                            if (_id_fight != noone)
                                            {
                                                var _id_npc_fight = global.list_n_npc_id[j]
                                                var _id_npc = global.list_n_npc_id[i]
                                                if (point_distance(global.list_n_x[i], global.list_n_y[i], global.list_n_x[j], global.list_n_y[j]) < 120)
                                                {
                                                    if (npc_faction[_id_npc] != npc_faction[_id_npc_fight])
                                                    {
                                                        var _rel = scr_get_relation(npc_faction[_id_npc], npc_faction[_id_npc_fight])
                                                        if (_rel == (2 << 0))
                                                        {
                                                            var _power_fight = global.list_n_power[j]
                                                            var _power_mine = global.list_n_power[i]
                                                            var _min = min(_power_fight, _power_mine)
                                                            var _max = 0
                                                            if (_min == _power_fight)
                                                                _max = _power_mine
                                                            if (_min == _power_mine)
                                                                _max = _power_fight
                                                            var _chance_fight = ((_min / (_max * 2)) * 100)
                                                            if scr_chance(_chance_fight)
                                                            {
                                                                if (_min == _power_mine)
                                                                {
                                                                    _id_fight.hp = -10
                                                                    _id_fight.play_sound_death = 0
                                                                    global.list_n_hp[j] = -10
                                                                    global.list_n_id[j] = -4
                                                                }
                                                                if (_min == _power_fight)
                                                                {
                                                                    _id.hp = -10
                                                                    _id.play_sound_death = 0
                                                                    global.list_n_hp[i] = -10
                                                                    global.list_n_id[i] = -4
                                                                }
                                                            }
                                                            else
                                                            {
                                                                if (_min == _power_mine)
                                                                {
                                                                    _id.hp = -10
                                                                    _id.play_sound_death = 0
                                                                    global.list_n_hp[i] = -10
                                                                    global.list_n_id[i] = -4
                                                                }
                                                                if (_min == _power_fight)
                                                                {
                                                                    _id_fight.hp = -10
                                                                    _id_fight.play_sound_death = 0
                                                                    global.list_n_hp[j] = -10
                                                                    global.list_n_id[j] = -4
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        d_npc_same_time_now++
                        if (d_npc_same_time_now > (_size - 1))
                        {
                            i = _size
                            d_npc_same_time_now = 0
                        }
                    }
                }
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_inventory)
    {
        if (obj_player.looting == 0 && obj_player.trading == 0 && obj_player.looting_player_stash == 1)
        {
            if instance_exists(obj_chest_player)
                var chest_nearest = instance_nearest(x, y, obj_chest_player)
        }
        if (obj_player.looting == 0 && obj_player.trading == 0 && obj_player.looting_player_stash == 0)
            loot_name = "Ground"
        if (obj_player.looting == 1 && obj_player.trading == 0 && obj_player.looting_player_stash == 0)
        {
            if instance_exists(obj_chest_general)
                chest_nearest = instance_nearest(x, y, obj_chest_general)
        }
        if (obj_player.looting == 0 && obj_player.trading == 1 && obj_player.looting_player_stash == 0)
        {
            if instance_exists(obj_npc_parent)
            {
                var trader_nearest = instance_nearest(x, y, obj_npc_parent)
                loot_name = trader_nearest.npc_name[trader_nearest.npc_id]
            }
        }
    }
    if (keyboard_check(vk_alt) && keyboard_check(vk_control) && keyboard_check_pressed(ord("P")))
    {
        if (global.general_debug == 1)
        {
            global.general_debug = 0
            global.debug_modding = 0
        }
        else
        {
            global.general_debug = 1
            global.debug_modding = 1
        }
    }
    if keyboard_check_pressed(vk_f11)
    {
        if (global.show_fps == 1)
            global.show_fps = 0
        else
            global.show_fps = 1
    }
    if (global.general_debug == 1)
    {
        if keyboard_check_pressed(ord("O"))
        {
            if (disattiva == 0)
                disattiva = 1
            else if (disattiva == 1)
            {
                disattiva = 0
                instance_activate_all()
            }
        }
        if keyboard_check_pressed(ord("P"))
        {
            if (disattiva_grid_radiation == 0)
                disattiva_grid_radiation = 1
            else if (disattiva_grid_radiation == 1)
                disattiva_grid_radiation = 0
        }
        if keyboard_check_pressed(vk_numpad8)
            instance_activate_object(obj_vertex_grass)
        if keyboard_check_direct(vk_numpad9)
            instance_deactivate_object(obj_vertex_grass)
        if keyboard_check(ord("L"))
        {
            if keyboard_check_pressed(vk_right)
                global.esperienza += 100
            if keyboard_check_pressed(vk_left)
                global.esperienza -= 100
            if keyboard_check_pressed(vk_up)
                global.skill_points++
            if keyboard_check_pressed(vk_down)
                global.esperienza_survive += 10
        }
    }
    if (pda_geiger_counter_angle_step < pda_geiger_counter_angle_step_max)
        pda_geiger_counter_angle_step++
    else
    {
        pda_geiger_counter_angle_step = 0
        pda_geiger_counter_angle_step_max = (irandom(4) + 1)
        pda_geiger_counter_angle_offset += choose(-1.5, -1, -0.5, 0, 0.5, 1, 1.5)
        pda_geiger_counter_angle_offset = clamp(pda_geiger_counter_angle_offset, (-pda_geiger_counter_angle_offset_max), pda_geiger_counter_angle_offset_max)
    }
    scr_check_level()
    var bleed = obj_player.bleed
    if (bleed > 0 && bleed < 25)
    {
        bleed_amount = 0
        bleed_blink = 1
    }
    if (bleed >= 25 && bleed < 60)
        bleed_amount = 0.05
    if (bleed >= 60)
        bleed_amount = 0.1
    bleed_blink -= (bleed_amount * bleed_blink_factor)
    if (bleed_blink <= 0 || bleed_blink >= 1)
        bleed_blink_factor *= -1
    if (obj_light_controller.hour >= 2 && obj_light_controller.hour < 7)
        reset_restok_trader = 1
    if (obj_light_controller.hour >= 7)
    {
        if (reset_restok_trader == 1)
        {
            reset_restok_trader = 0
            ini_open(global.save_general)
            global.trader_money_all = (global.trader_money_all_max * global.sk_k[(22 << 0)])
            ini_write_real("traders", "money", global.trader_money_all)
            var quanti_npc = array_length_1d(npc_name)
            for (i = 0; i < quanti_npc; i++)
            {
                var tt = npc_name[npc_my_id[i]]
                var tt1 = "_trader"
                if ini_section_exists((tt + tt1))
                    ini_section_delete((tt + tt1))
            }
            ini_section_delete("Module preso")
            ini_close()
            if (room == r_hub)
            {
                with (obj_npc_parent)
                {
                    alarm[11] = 1
                    alarm[10] = 1
                    lista_trader()
                    lista_quest()
                    lista_text()
                }
                with (obj_base_parent)
                    alarm[1] = 1
            }
        }
    }
    global.sk_hud_hover_alpha += (0.05 * global.sk_hud_hover_alpha_factor)
    if (global.sk_hud_hover_alpha >= 1)
        global.sk_hud_hover_alpha_factor = -1
    if (global.sk_hud_hover_alpha <= 0)
        global.sk_hud_hover_alpha_factor = 1
}
