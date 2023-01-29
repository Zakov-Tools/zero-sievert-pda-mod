function scr_metti_quest_successiva() //gml_Script_scr_metti_quest_successiva
{
    var nearest_npc_id_ = argument[0]
    var speak_nearest = argument[1]
    var quest_adesso = argument[2]
    var oc = obj_controller
    if (global.which_quest_is_shown == quest_adesso)
    {
        if instance_exists(speak_nearest)
        {
            var _n_quest = array_length_1d(speak_nearest.quest_array)
            var j = 0
            var k = 0
            for (var i = 0; i < _n_quest; i++)
            {
                var _quest_id = speak_nearest.quest_array[i]
                if (_quest_id != global.which_quest_is_shown && _quest_id != -1 && _quest_id != (0 << 0))
                {
                    _quest_array[j] = speak_nearest.quest_array[i]
                    _quest_premio[j] = speak_nearest.quest_premio[i]
                    j++
                    k = j
                }
            }
            for (i = 0; i < array_length_1d(speak_nearest.quest_array); i++)
            {
                speak_nearest.quest_array[i] = (0 << 0)
                speak_nearest.quest_premio[i] = -1
            }
            var npc_name_ = (oc.npc_name[nearest_npc_id_] + "_quest")
            ini_open(global.save_general)
            ini_section_delete(npc_name_)
            for (i = 0; i < k; i++)
            {
                speak_nearest.quest_array[i] = _quest_array[i]
                speak_nearest.quest_premio[i] = _quest_premio[i]
                ini_write_real(npc_name_, ("quest_" + string(i)), _quest_array[i])
                ini_write_real(npc_name_, ("quest_reward" + string(i)), _quest_premio[i])
            }
            var _quest_n = (argument_count - 3)
            for (i = 0; i < _quest_n; i++)
            {
                var _quest_successiva = argument[(i + 3)]
                var _quest_ce_gia = 0
                for (j = 0; j < k; j++)
                {
                    if (speak_nearest.quest_array[j] == _quest_successiva)
                        _quest_ce_gia = 1
                }
                if (_quest_ce_gia == 0)
                {
                    var get_list_id = global.quest_reward_arr[_quest_successiva]
                    var get_list = global.list_reward_quest[get_list_id]
                    ds_list_shuffle(get_list)
                    var c_reward = ds_list_find_value(get_list, 0)
                    speak_nearest.quest_array[(i + k)] = _quest_successiva
                    speak_nearest.quest_premio[(i + k)] = c_reward
                    ini_write_real(npc_name_, ("quest_" + string((i + k))), _quest_successiva)
                    ini_write_real(npc_name_, ("quest_reward" + string((i + k))), c_reward)
                }
            }
            ini_close()
        }
    }
    return;
}

