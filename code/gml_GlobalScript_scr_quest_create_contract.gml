function scr_quest_create_contract(argument0, argument1, argument2, argument3) //gml_Script_scr_quest_create_contract
{
    var _quest_id = argument0
    var i = argument1
    var _object = argument2
    global.quest_type[_quest_id][i] = (6 << 0)
    global.quest_amount_now[_quest_id][i] = 0
    global.quest_amount_max[_quest_id][i] = 1
    global.quest_obj_to_kill[_quest_id][i] = _object
    global.quest_contract_map[_quest_id][i] = argument3
    return;
}

