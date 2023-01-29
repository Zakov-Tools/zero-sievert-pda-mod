var temp_list;
if (is_a_quest_giver[speaker_id] == 1)
{
    start_sorting_quest = 1
    quest_max = speaker_quest_max[speaker_id]
    var list_quest = ds_list_create()
    ini_open(global.save_general)
    var o = obj_controller
    var quest_amount = o.slot_quest_max
    var quest_slot = 0
    for (var j = 0; j < quest_amount; j++)
    {
        var quest_id_ = ini_read_real("Quest", ((("y_" + string(j)) + "_x_") + string(0)), -1)
        var quest_giver_id = ini_read_real("Quest", ((("y_" + string(j)) + "_x_") + string(10)), -1)
        if (quest_id_ != -1)
        {
            if (quest_giver_id == speaker_id)
            {
                ds_list_add(list_quest, quest_id_)
                quest_slot++
            }
        }
    }
    ini_close()
    ini_open(global.save_general)
    var name_ = speaker_name[speaker_id]
    if (!ini_section_exists(name_))
    {
        for (var i = 0; i < quest_max; i++)
            quest_array[i] = (0 << 0)
        var list_quest_possibili = ds_list_create()
        var n_quest_trader = array_length_2d(speaker_quest, speaker_id)
        for (i = 0; i < n_quest_trader; i++)
        {
            var get_quest_id = speaker_quest[speaker_id][i]
            if (global.livello_now >= global.quest_liv_min[get_quest_id])
            {
                repeat speaker_quest_chance[speaker_id][i]
                    ds_list_add(list_quest_possibili, speaker_quest[speaker_id][i])
            }
        }
        repeat (1000)
        {
            ds_list_shuffle(list_quest_possibili)
            var quest_da_aggiungere = ds_list_find_value(list_quest_possibili, 0)
            var aggiungere = 1
            var k = 0
            if (k < quest_slot)
            {
                if (ds_list_find_value(list_quest, k) == quest_da_aggiungere)
                    aggiungere = 0
                for (k++; k < quest_slot; k++)
                {
                    if (ds_list_find_value(list_quest, k) == quest_da_aggiungere)
                        aggiungere = 0
                }
            }
            if (global.quest_unique_done[quest_da_aggiungere] == 1)
                aggiungere = 0
            if (aggiungere == 1)
            {
                ds_list_add(list_quest, quest_da_aggiungere)
                quest_slot++
            }
        }
        for (i = 0; i < quest_slot; i++)
            quest_array[i] = ds_list_find_value(list_quest, i)
        for (i = 0; i < quest_slot; i++)
            ini_write_real(name_, ("quest_" + string(i)), quest_array[i])
    }
    else
    {
        k = -1
        for (i = 0; i < quest_max; i++)
        {
            var pp = ini_read_real(name_, ("quest_" + string(i)), 0)
            if (pp != (0 << 0))
            {
                k++
                temp_list[k] = pp
            }
        }
        for (i = 0; i < array_length_1d(temp_list); i++)
            quest_array[i] = temp_list[i]
    }
    ini_close()
}
else
    quest_array[0] = -1
