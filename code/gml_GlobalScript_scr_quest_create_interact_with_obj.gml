function scr_quest_create_interact_with_obj(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) //gml_Script_scr_quest_create_interact_with_obj
{
    var _quest_id = argument0
    var i = argument1
    var _object = argument2
    var _dis = argument3
    var _item_id = argument4
    var _interact_text = argument5
    global.quest_type[_quest_id][i] = (10 << 0)
    global.quest_amount_now[_quest_id][i] = 0
    global.quest_amount_max[_quest_id][i] = 1
    global.quest_interact_object[_quest_id][i] = _object
    global.quest_interact_dis[_quest_id][i] = _dis
    global.quest_interact_item_id[_quest_id][i] = _item_id
    global.quest_interact_text[_quest_id][i] = _interact_text
    global.quest_interact_text_if_no_item[_quest_id][i] = argument6
    global.quest_interact_text_if_item[_quest_id][i] = argument7
    return;
}

