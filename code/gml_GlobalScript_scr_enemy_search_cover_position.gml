function scr_enemy_search_cover_position() //gml_Script_scr_enemy_search_cover_position
{
    var list_x = ds_list_create()
    var list_y = ds_list_create()
    var ww_max = 20
    var ww = 2
    var w1 = 16
    var x_p = (x div w1)
    var y_p = (y div w1)
    var x_s = (x_p - (ww / 2))
    var y_s = (y_p - (ww / 2))
    var pos_found = 0
    var pos_found_max = 20
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
                            if (distance_to_point(check_x, check_y) < 24 && distance_to_point(check_x, check_y) > 7)
                                can_be_added = 1
                        }
                        if (can_be_added == 1)
                        {
                            if collision_line(check_x, check_y, target.x, target.y, obj_solid, true, true)
                            {
                                var ppath = path_add()
                                mp_grid_path(global.grid_move, ppath, x, y, check_x, check_y, true)
                                if (path_get_length(ppath) < 96)
                                {
                                    ds_list_add(list_y, check_y)
                                    ds_list_add(list_x, check_x)
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
        var choose_pos = irandom((list_size - 1))
        move_point_x = ds_list_find_value(list_x, choose_pos)
        move_point_y = ds_list_find_value(list_y, choose_pos)
    }
    else
    {
        move_point_x = x
        move_point_y = y
    }
    ds_list_destroy(list_x)
    ds_list_destroy(list_y)
    return;
}

