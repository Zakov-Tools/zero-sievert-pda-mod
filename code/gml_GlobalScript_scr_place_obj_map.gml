function scr_place_obj_map(argument0, argument1, argument2) //gml_Script_scr_place_obj_map
{
    var decor_id_ = argument0
    var startx = argument1
    var starty = argument2
    var o = obj_map_generator
    var placey = starty
    var placex = startx
    var decor_ = instance_create_depth(placex, placey, 0, o.decor_obj[decor_id_])
    decor_.decor_id = decor_id_
    decor_.need_to_check = 0
    return;
}

