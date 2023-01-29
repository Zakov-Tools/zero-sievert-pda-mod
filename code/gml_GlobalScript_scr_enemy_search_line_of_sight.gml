function scr_enemy_search_line_of_sight() //gml_Script_scr_enemy_search_line_of_sight
{
    var list_x = ds_list_create()
    var list_y = ds_list_create()
    var list_length = ds_priority_create()
    var ww_max = 10
    var ww = 2
    var w1 = 16
    var x_p = (x div w1)
    var y_p = (y div w1)
    var x_s = (x_p - (ww / 2))
    var y_s = (y_p - (ww / 2))
    var pos_found = 0
    var pos_found_max = 5
    repeat (ww_max div 2)
    {
        if (pos_found < pos_found_max)
        {
            ww += 2
            x_s = (x_p - (ww / 2))
            y_s = (y_p - (ww / 2))
            for (var xx = 0; xx < ww; xx++)
            {
                for (var yy = 0; yy < ww; yy++)
                {
                    if (ds_grid_get(obj_controller.grid_motion, (x_s + xx), (y_s + yy)) == 0)
                    {
                        var check_x = ((x_s + xx) * w1)
                        var check_y = ((y_s + yy) * w1)
                        var near_solid = instance_nearest(check_x, check_y, obj_solid)
                        var can_be_added = 0
                        with (near_solid)
                        {
                            if (distance_to_point(check_x, check_y) < 80 && distance_to_point(check_x, check_y) > 15)
                                can_be_added = 1
                        }
                        if (can_be_added == 1)
                        {
                            if (point_distance(x, y, check_x, check_y) > 16)
                            {
                                if (!(collision_line(check_x, check_y, last_seen_x, last_seen_y, obj_solid, true, true)))
                                {
                                    var ppath = path_add()
                                    mp_grid_path(global.grid_move, ppath, x, y, check_x, check_y, true)
                                    var _length = path_get_length(ppath)
                                    ds_list_add(list_y, check_y)
                                    ds_list_add(list_x, check_x)
                                    ds_priority_add(list_length, _length, _length)
                                    pos_found++
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (pos_found > 0)
    {
        var list_size = ds_list_size(list_x)
        var choose_pos = ds_priority_find_min(list_length)
        move_point_x = ds_list_find_value(list_x, choose_pos)
        move_point_y = ds_list_find_value(list_y, choose_pos)
    }
    ds_list_destroy(list_x)
    ds_list_destroy(list_y)
    return;
}

