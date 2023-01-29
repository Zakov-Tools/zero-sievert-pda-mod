function scr_check_quest_in_corso(argument0) //gml_Script_scr_check_quest_in_corso
{
    var _id_to_check = argument0
    var _ret = (0 << 0)
    var o = 22
    for (var i = 0; i < 30; i++)
    {
        var _quest_id = global.save_quest_id[i]
        if (_quest_id != -1)
        {
            if (_quest_id == _id_to_check)
            {
                if (global.save_quest_status[i] == 1)
                    _ret = (1 << 0)
                if (global.save_quest_status[i] == global.quest_stage_completed[_quest_id])
                    _ret = (2 << 0)
                var _quanti_obj = array_length_2d(global.quest_type, _quest_id)
                var _obj_fatti = 0
                for (var k = 0; k < _quanti_obj; k++)
                {
                    if (global.save_quest_amount_now[i][k] >= global.quest_amount_max[_quest_id][k])
                        _obj_fatti += 1
                }
                if (_obj_fatti == _quanti_obj)
                    _ret = (2 << 0)
            }
        }
    }
    return _ret;
}

