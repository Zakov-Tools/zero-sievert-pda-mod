if ds_exists(grid_faction_my, 5)
    ds_grid_destroy(grid_faction_my)
var ss = id
with (obj_npc_parent)
{
    if (search_target_id == ss)
    {
        search_target_id = -4
        state = npc_state_patrol[npc_id]
    }
}
var o = 22
var quest_amount = 30
for (var i = 0; i < quest_amount; i++)
{
    var quest_id_ = global.save_quest_id[i]
    if (quest_id_ != -1)
    {
        for (var j = 0; j < array_length_2d(global.quest_type, quest_id_); j++)
        {
            switch global.quest_type[quest_id_][j]
            {
                case (6 << 0):
                    if (room == room1)
                    {
                        if (obj_map_generator.area == global.quest_contract_map[quest_id_][j])
                        {
                            if (quest_contract_is_me == 1)
                            {
                                if (quest_contract_grid_pos == i)
                                {
                                    global.save_quest_amount_now[i][j] = 1
                                    obj_controller.alarm[1] = 1
                                }
                            }
                        }
                    }
                    break
            }

        }
    }
}
