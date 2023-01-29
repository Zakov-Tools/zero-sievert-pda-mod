function scr_place_obj_map_generation(argument0, argument1, argument2, argument3, argument4, argument5) //gml_Script_scr_place_obj_map_generation
{
    var startx = argument0
    var starty = argument1
    var get_sprite_ = argument2
    var obj_ = argument3
    var is_decor = argument4
    var which_decor = argument5
    get_sprite_ = object_get_sprite(obj_)
    var s_w = sprite_get_width(get_sprite_)
    var s_h = sprite_get_height(get_sprite_)
    var cx = sprite_get_xoffset(get_sprite_)
    var cy = sprite_get_yoffset(get_sprite_)
    if (cy != 0)
        var placey = (starty + cy)
    else
        placey = (starty + 16)
    placey = ((starty + 16) - (cy - s_h))
    var placex = (startx + cx)
    if (is_decor == 0)
        instance_create_depth(placex, placey, 0, obj_)
    else
    {
        var decor_ = instance_create_depth(placex, placey, 0, decor_obj[which_decor])
        decor_.decor_id = which_decor
        decor_.need_to_check = 0
    }
    return;
}

