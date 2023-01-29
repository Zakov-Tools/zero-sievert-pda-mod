var _list_temp_name;
a += a_plus
a = clamp(a, 0, 1)
if (a >= 1)
{
    if keyboard_check_pressed(vk_anykey)
    {
    }
}
timer_audio++
timer_audio = clamp(timer_audio, 0, timer_audio_max)
var _audio = (global.volume_master - (timer_audio / timer_audio_max))
_audio = clamp(_audio, 0, 1)
audio_master_gain(_audio)
if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
if (exp_numero_start == 1)
{
    if (exp_numero < exp_numero_max)
    {
        exp_numero += ((exp_numero_max - exp_numero) / 20)
        if (exp_numero >= (exp_numero_max - 0.5))
            exp_numero = exp_numero_max
    }
}
if (exp_bar_start == 1)
{
    if (global.esperienza < exp_agg_finish)
    {
        global.esperienza += ((exp_agg_finish - global.esperienza) / 50)
        if (global.esperienza >= (exp_agg_finish - 1))
        {
            global.esperienza = exp_agg_finish
            can_go_hub = 1
        }
    }
    if (exp_numero_max == 0)
        can_go_hub = 1
}
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if scr_mouse_inside(((camx + button_next_x) - (button_next_w / 2)), ((camy + button_next_y) - (button_next_h / 2)), button_next_w, button_next_h)
{
    button_next_hover = 1
    if (can_go_hub == 1)
    {
        if mouse_check_button_pressed(mb_left)
        {
            scr_save_skill()
            scr_save_exp()
            scr_save_time()
            ga_addDesignEvent("Hunt:Played", 1)
            var _map_id_ = obj_map_generator.area
            var _map_name = obj_controller.map_nome[_map_id_]
            var _map_new_name = string_replace_all(_map_name, " ", "_")
            var _text = (("Map:" + _map_new_name) + ":Played")
            ga_addDesignEvent(_text, 1)
            if (survived == 1)
            {
                ga_addDesignEvent("Hunt:Survived", 1)
                _text = (("Map:" + _map_new_name) + ":Survived")
                ga_addDesignEvent(_text, 1)
            }
            global.stat_amount[(0 << 0)] += 1
            if (survived == 1)
            {
                scr_save_player_status()
                scr_save_unique_action()
                scr_save_rep()
                global.stat_amount[(1 << 0)] += 1
                global.stat_amount[(4 << 0)] += 1
                if (global.stat_amount[(4 << 0)] > global.stat_amount[(3 << 0)])
                    global.stat_amount[(3 << 0)] = global.stat_amount[(4 << 0)]
                ini_open(global.save_general)
                for (var j = 0; j < 30; j++)
                {
                    var quest_id_ = global.save_quest_id[j]
                    if (quest_id_ != (0 << 0) && quest_id_ != -1)
                    {
                        for (var i = 0; i < array_length_2d(global.quest_type, quest_id_); i++)
                        {
                            if (global.quest_type[quest_id_][i] == (18 << 0))
                            {
                                var _map_id = global.quest_survive_map[quest_id_][i]
                                if (_map_id == obj_map_generator.area || _map_id == -1)
                                {
                                    var _now = global.save_quest_amount_now[j][i]
                                    ini_write_real("Quest", ((string(j) + "_amount_now_") + string(i)), (_now + 1))
                                }
                            }
                            if (global.quest_type[quest_id_][i] == (8 << 0))
                            {
                                _map_id = global.quest_survive_map[quest_id_][i]
                                if (_map_id == obj_map_generator.area || _map_id == -1)
                                {
                                    var _exp_made = global.esperienza_survive
                                    if (global.save_quest_amount_now[j][i] < global.quest_amount_max[quest_id_][i])
                                    {
                                        if (_exp_made >= global.quest_survive_min_exp[quest_id_][i])
                                        {
                                            _now = global.save_quest_amount_now[j][i]
                                            ini_write_real("Quest", ((string(j) + "_amount_now_") + string(i)), (_now + 1))
                                        }
                                    }
                                }
                            }
                            if (global.quest_type[quest_id_][i] == (9 << 0))
                            {
                                _map_id = global.quest_survive_map[quest_id_][i]
                                if (_map_id == obj_map_generator.area || _map_id == -1)
                                {
                                    var _roubles_made = round((global.tot_inv_value_then - global.tot_inv_value_now))
                                    if (global.save_quest_amount_now[j][i] < global.quest_amount_max[quest_id_][i])
                                    {
                                        if (_roubles_made >= global.quest_survive_min_roubles[quest_id_][i])
                                        {
                                            _now = global.save_quest_amount_now[j][i]
                                            ini_write_real("Quest", ((string(j) + "_amount_now_") + string(i)), (_now + 1))
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                ini_close()
                var _most_roubles = 0
                var _most_exp = 0
                ini_open(global.save_general)
                for (i = 0; i < global.stat_quante; i++)
                {
                    if (i == (6 << 0))
                        _most_roubles = ini_read_real("Statistics", string(i), 0)
                    if (i == (7 << 0))
                        _most_exp = ini_read_real("Statistics", string(i), 0)
                }
                _roubles_made = round((global.tot_inv_value_then - global.tot_inv_value_now))
                if (_roubles_made > _most_roubles)
                {
                    global.stat_amount[(6 << 0)] = _roubles_made
                    ini_write_real("Statistics", string((6 << 0)), _roubles_made)
                }
                _exp_made = global.esperienza_survive
                if (_exp_made > _most_exp)
                {
                    global.stat_amount[(7 << 0)] = _exp_made
                    ini_write_real("Statistics", string((6 << 0)), _exp_made)
                }
                ini_close()
            }
            if (survived == 0)
                global.stat_amount[(4 << 0)] = 0
            if (survived == 0)
            {
                ini_open(global.save_general)
                var _size = ds_list_size(global.list_quest_before_map_npc_name)
                if (_size > 0)
                {
                    for (i = 0; i < _size; i++)
                    {
                        var _name = ds_list_find_value(global.list_quest_before_map_npc_name, i)
                        if ini_section_exists(_name)
                            ini_section_delete(_name)
                    }
                    for (i = 0; i < 10; i++)
                    {
                        _list_temp_name[i] = ""
                        _list_temp_quest_id[i] = ds_list_create()
                        _list_temp_quest_premio[i] = ds_list_create()
                    }
                    for (i = 0; i < _size; i++)
                    {
                        _name = ds_list_find_value(global.list_quest_before_map_npc_name, i)
                        var _trovato_nome = 0
                        for (j = 0; j < array_length_1d(_list_temp_name); j++)
                        {
                            var _stored_name = _list_temp_name[j]
                            if (_stored_name == _name)
                                _trovato_nome = 1
                        }
                        if (_trovato_nome == 0)
                        {
                            var _nome_aggiunto = 0
                            for (j = 0; j < array_length_1d(_list_temp_name); j++)
                            {
                                _stored_name = _list_temp_name[j]
                                if (_stored_name == "")
                                {
                                    _nome_aggiunto = 1
                                    _list_temp_name[j] = _name
                                }
                            }
                        }
                    }
                    for (i = 0; i < array_length_1d(_list_temp_name); i++)
                    {
                        var _name_salvato = _list_temp_name[i]
                        var k = 0
                        for (j = 0; j < _size; j++)
                        {
                            _name = ds_list_find_value(global.list_quest_before_map_npc_name, j)
                            var _quest_id = ds_list_find_value(global.list_quest_before_map_quest_id, j)
                            var _quest_premio = ds_list_find_value(global.list_quest_before_map_quest_premio, j)
                            if (_name_salvato == _name)
                            {
                                ini_write_real(_name, ("quest_" + string(k)), _quest_id)
                                ini_write_real(_name, ("quest_reward" + string(k)), _quest_premio)
                                k++
                            }
                        }
                    }
                }
                ini_close()
            }
            ini_open(global.save_general)
            ini_write_real("survive", "survive", string(survived))
            ini_close()
            scr_save_stat()
            audio_stop_all()
            audio_master_gain(global.volume_master)
            room_goto(r_hub)
        }
    }
    else if mouse_check_button_pressed(mb_left)
    {
        alarm[2] = 1
        if (exp_bar_start == 0)
            alarm[0] = 999999
        if (exp_numero_start == 0)
            alarm[1] = 999999
    }
}
else
    button_next_hover = 0
