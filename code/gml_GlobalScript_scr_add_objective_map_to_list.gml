function scr_add_objective_map_to_list(argument0, argument1, argument2, argument3, argument4) //gml_Script_scr_add_objective_map_to_list
{
    var xx = (argument0 div 16)
    var yy = (argument1 div 16)
    var pos_quest = argument2
    var id_quest = argument3
    var _sub = argument4
    var rr = (_sub * 1.5)
    var dis = irandom((rr div 2))
    var dir = irandom(360)
    var x1 = (xx + lengthdir_x(dis, dir))
    var y1 = (yy + lengthdir_y(dis, dir))
    ds_list_add(global.list_obj_marker_x, x1)
    ds_list_add(global.list_obj_marker_y, y1)
    ds_list_add(global.list_obj_marker_quest_pos, pos_quest)
    ds_list_add(global.list_obj_marker_quest_id, id_quest)
    ds_list_add(global.list_obj_marker_sub, _sub)
    return;
}

