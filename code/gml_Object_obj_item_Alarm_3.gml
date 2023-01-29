if (room != r_menu)
{
    for (var i = 0; i < 30; i++)
    {
        var _quest_id = global.save_quest_id[i]
        if (_quest_id != -1)
        {
            for (var j = 0; j < array_length_2d(global.quest_type, _quest_id); j++)
            {
                if (global.quest_type[_quest_id][j] == (1 << 0) || global.quest_type[_quest_id][j] == (5 << 0) || global.quest_type[_quest_id][j] == (4 << 0))
                {
                    if (global.quest_collect_item[_quest_id][j] == my_id)
                    {
                        item_necessary = 1
                        ds_list_add(list_item_necessary, _quest_id)
                        ds_list_add(list_item_necessary_scopo, 0)
                    }
                }
            }
        }
    }
    for (i = 0; i < global.last_stastic_craft; i++)
    {
        if (global.craft_track[i] == 1)
        {
            for (j = 0; j < array_length_2d(global.craft_req, i); j++)
            {
                if (my_id == global.craft_req[i][j])
                {
                    item_necessary = 1
                    ds_list_add(list_item_necessary, global.craft_id[i])
                    ds_list_add(list_item_necessary_scopo, 1)
                }
            }
        }
    }
}
