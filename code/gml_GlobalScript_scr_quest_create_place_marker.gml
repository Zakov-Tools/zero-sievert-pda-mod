function scr_quest_create_place_marker(argument0, argument1, argument2, argument3) //gml_Script_scr_quest_create_place_marker
{
    var _quest_id = argument0
    var i = argument1
    global.quest_type[_quest_id][i] = (7 << 0)
    global.quest_amount_now[_quest_id][i] = 0
    global.quest_amount_max[_quest_id][i] = 1
    global.quest_place_marker_object[_quest_id][i] = argument2
    global.quest_place_marker_map[_quest_id][i] = argument3
    return;
}

