alert_player_max = (alert_player_max_value * global.sk_k[(11 << 0)])
timer_visible_max = (30 * global.sk_k[(14 << 0)])
if (is_a_quest_giver[npc_speaker_id[npc_id]] == 1)
{
    start_sorting_quest = 1
    var name_ = (npc_name[npc_id] + "_quest")
    quest_max = speaker_quest_max[npc_speaker_id[npc_id]]
    var list_quest = ds_list_create()
    var list_reward = ds_list_create()
    ini_open(global.save_general)
    var o = 22
    var quest_amount = 30
    var quest_slot = 0
    for (var j = 0; j < quest_amount; j++)
    {
        var quest_id_ = ini_read_real("Quest", (string(j) + "_id"), -1)
        var quest_giver_id = ini_read_real("Quest", (string(j) + "_giver"), 0)
        var quest_reward_ = ini_read_real("Quest", (string(j) + "_reward"), -1)
        if (quest_id_ != -1)
        {
            show_debug_message((name_ + "_quest_found"))
            if (quest_giver_id == npc_id)
            {
                if (global.quest_unique_done[quest_id_] == 0)
                {
                    ds_list_add(list_quest, quest_id_)
                    ds_list_add(list_reward, quest_reward_)
                    quest_slot++
                    show_debug_message((name_ + "_name_found"))
                }
            }
        }
    }
    ini_close()
    ini_open(global.save_general)
    if (!ini_section_exists(name_))
    {
        for (var i = 0; i < quest_max; i++)
        {
            quest_array[i] = (0 << 0)
            quest_premio[i] = -1
        }
        var list_quest_possibili = ds_list_create()
        var list_reward_possibili = ds_list_create()
        var n_quest_trader = array_length_2d(speaker_quest, npc_speaker_id[npc_id])
        for (i = 0; i < n_quest_trader; i++)
        {
            var get_quest_id = speaker_quest[npc_speaker_id[npc_id]][i]
            var _can_place = 0
            if (global.quest_is_unique[get_quest_id] == 1)
            {
                if (global.quest_unique_done[get_quest_id] == 0)
                    _can_place = 1
            }
            else if (global.livello_now >= global.quest_liv_min[get_quest_id])
                _can_place = 1
            if (_can_place == 1)
            {
                repeat speaker_quest_chance[npc_speaker_id[npc_id]][i]
                {
                    ds_list_add(list_quest_possibili, speaker_quest[npc_speaker_id[npc_id]][i])
                    var get_list_id = global.quest_reward_arr[speaker_quest[npc_speaker_id[npc_id]][i]]
                    var get_list = global.list_reward_quest[get_list_id]
                    ds_list_shuffle(get_list)
                    var c_reward = ds_list_find_value(get_list, 0)
                    ds_list_add(list_reward_possibili, c_reward)
                }
            }
        }
        if ds_list_size(list_quest_possibili)
        {
            repeat (3500)
            {
                if (quest_slot < quest_max)
                {
                    var kk = irandom((ds_list_size(list_quest_possibili) - 1))
                    var quest_da_aggiungere = ds_list_find_value(list_quest_possibili, kk)
                    var aggiungere = 1
                    for (var k = 0; k < quest_slot; k++)
                    {
                        if (ds_list_find_value(list_quest, k) == quest_da_aggiungere)
                            aggiungere = 0
                    }
                    if (global.quest_unique_done[quest_da_aggiungere] == 1)
                        aggiungere = 0
                    if (aggiungere == 1)
                    {
                        ds_list_add(list_quest, quest_da_aggiungere)
                        ds_list_add(list_reward, ds_list_find_value(list_reward_possibili, kk))
                        quest_slot++
                    }
                }
            }
        }
        for (i = 0; i < quest_slot; i++)
        {
            quest_array[i] = ds_list_find_value(list_quest, i)
            quest_premio[i] = ds_list_find_value(list_reward, i)
        }
        for (i = 0; i < quest_slot; i++)
        {
            ini_write_real(name_, ("quest_" + string(i)), quest_array[i])
            ini_write_real(name_, ("quest_reward" + string(i)), quest_premio[i])
        }
    }
    else
    {
        for (i = 0; i < quest_max; i++)
        {
            quest_array[i] = (0 << 0)
            quest_premio[i] = -1
        }
        k = 0
        for (i = 0; i < quest_max; i++)
        {
            var pp = ini_read_real(name_, ("quest_" + string(i)), 0)
            if (pp != -1 && pp != (0 << 0))
            {
                if (global.quest_unique_done[pp] == 0)
                {
                    var _quest_premio = ini_read_real(name_, ("quest_reward" + string(i)), 0)
                    quest_array[k] = pp
                    quest_premio[k] = _quest_premio
                    if (room == room1)
                    {
                        ds_list_add(global.list_quest_before_map_npc_name, name_)
                        ds_list_add(global.list_quest_before_map_quest_id, pp)
                        ds_list_add(global.list_quest_before_map_quest_premio, _quest_premio)
                    }
                    k++
                }
            }
        }
    }
    ini_close()
}
else
    quest_array[0] = -1
