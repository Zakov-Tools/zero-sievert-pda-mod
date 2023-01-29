var _arr_obj_to_kill;
function scr_quest_create_kill() //gml_Script_scr_quest_create_kill
{
    var _quest_id = argument[0]
    var i = argument[1]
    var _amount_max = argument[2]
    var _argument_before_obj_to_kill = 5
    global.quest_type[_quest_id][i] = (0 << 0)
    global.quest_amount_now[_quest_id][i] = 0
    global.quest_amount_max[_quest_id][i] = _amount_max
    global.quest_kill_faction[_quest_id][i] = argument[3]
    global.quest_kill_map[_quest_id][i] = argument[4]
    var _quanti_obj = (argument_count - _argument_before_obj_to_kill)
    for (var j = 0; j < _quanti_obj; j++)
        _arr_obj_to_kill[j] = argument[(_argument_before_obj_to_kill + j)]
    global.quest_kill_arr_obj[_quest_id][i] = _arr_obj_to_kill
    return;
}

