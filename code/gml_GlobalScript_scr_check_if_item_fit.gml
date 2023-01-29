function scr_check_if_item_fit(argument0) //gml_Script_scr_check_if_item_fit
{
    var _ret = 0
    var _array_id = argument0
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var inv_startx = (camx + 41)
    var inv_starty = (camy + 63)
    var _w = 128
    var _h = 176
    var grid_w = (_w div 16)
    var grid_h = (_h div 16)
    var grid_item = ds_grid_create(grid_w, grid_h)
    ds_grid_clear(grid_item, 0)
    var startx = inv_startx
    var starty = inv_starty
    var _counter = 0
    for (var yy = 0; yy < grid_h; yy++)
    {
        for (var xx = 0; xx < grid_w; xx++)
        {
            if collision_point(((startx + (xx * 16)) + 8), ((starty + (yy * 16)) + 8), obj_item, 0, 1)
                ds_grid_set(grid_item, xx, yy, 1)
        }
    }
    for (var i = 0; i < ds_list_size(_array_id); i++)
    {
        var _item_id = ds_list_find_value(_array_id, i)
        var necessario_w = (sprite_get_width(item_sprite_inv[_item_id]) div 16)
        var necessario_h = (sprite_get_height(item_sprite_inv[_item_id]) div 16)
        var placed = 0
        var can_place = 1
        for (yy = 0; yy < grid_h; yy++)
        {
            for (xx = 0; xx < grid_w; xx++)
            {
                if (placed == 0)
                {
                    if (ds_grid_get(grid_item, xx, yy) == 0)
                    {
                        can_place = 1
                        if ((xx + necessario_w) > grid_w)
                            can_place = 0
                        if ((yy + necessario_h) > grid_h)
                            can_place = 0
                        for (var ix = 0; ix < necessario_w; ix++)
                        {
                            for (var iy = 0; iy < necessario_h; iy++)
                            {
                                if (ds_grid_get(grid_item, (xx + ix), (yy + iy)) == 1)
                                    can_place = 0
                            }
                        }
                        if (can_place == 1)
                        {
                            placed = 1
                            _counter++
                            for (ix = 0; ix < necessario_w; ix++)
                            {
                                for (iy = 0; iy < necessario_h; iy++)
                                {
                                    ds_grid_set(grid_item, (xx + ix), (yy + iy), 1)
                                    instance_create_depth((startx + ((xx + ix) * 16)), (starty + ((yy + iy) * 16)), -99999, obj_test_inv)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (_counter == ds_list_size(_array_id))
        _ret = 1
    return _ret;
}

