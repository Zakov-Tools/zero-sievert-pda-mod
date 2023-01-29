function scr_check_specific_q_type(argument0, argument1) //gml_Script_scr_check_specific_q_type
{
    var _quest_id = argument0
    var _quest_type = argument1
    var i_have_the_quest = 0
    for (var i = 0; i < 30; i++)
    {
        if (global.save_quest_id[i] == _quest_id)
        {
            if (_quest_id != -1)
            {
                for (var j = 0; j < array_length_2d(global.quest_type, _quest_id); j++)
                {
                    if (global.quest_type[_quest_id][j] == _quest_type)
                    {
                        if (global.save_quest_amount_now[i][j] < global.quest_amount_max[_quest_id][j])
                            i_have_the_quest = 1
                    }
                }
            }
        }
    }
    return i_have_the_quest;
}

