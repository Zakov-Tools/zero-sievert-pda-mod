function scr_building_list() //gml_Script_scr_building_list
{
    for (var quale_building = 0; quale_building < area_different_building[area]; quale_building++)
    {
        var get_list = area_building_list[area][quale_building]
        var size_list = ds_list_size(get_list)
        var building_amount = area_building_amount[area][quale_building]
        var built = 0
        var sprite_w = area_building_w[area][quale_building]
        var sprite_h = area_building_h[area][quale_building]
        repeat (50000)
        {
            if (built < building_amount)
            {
                var xx = irandom(grid_tile_w)
                var yy = irandom(grid_tile_h)
                if (area == (3 << 0))
                {
                    axx[0] = 126
                    ayy[0] = 78
                    axx[1] = 126
                    ayy[1] = 144
                    axx[2] = 192
                    ayy[2] = 144
                    axx[3] = 60
                    ayy[3] = 78
                    axx[4] = 60
                    ayy[4] = 144
                    var aa = choose(0, 1, 2, 3, 4)
                    xx = axx[aa]
                    yy = ayy[aa]
                }
                if (area == (7 << 0))
                {
                    var z = irandom((array_length_1d(arr_zaton_building_x) - 1))
                    z = clamp(z, 0, array_length_1d(arr_zaton_building_x))
                    xx = arr_zaton_building_x[z]
                    yy = arr_zaton_building_y[z]
                    while (arr_zaton_building_fatto[z] == 1)
                    {
                        z = irandom((array_length_1d(arr_zaton_building_x) - 1))
                        z = clamp(z, 0, array_length_1d(arr_zaton_building_x))
                        xx = arr_zaton_building_x[z]
                        yy = arr_zaton_building_y[z]
                    }
                }
                if (ds_grid_get(grid_tile, xx, yy) == -1)
                {
                    if (ds_grid_get(grid_tile, (xx + sprite_w), (yy + sprite_h)) == -1)
                    {
                        var can_place = 1
                        for (var sx = 0; sx < sprite_w; sx++)
                        {
                            for (var sy = 0; sy < sprite_h; sy++)
                            {
                                if (ds_grid_get(grid_tile, (xx + sx), (yy + sy)) != -1)
                                    can_place = 0
                                if (ds_grid_get(grid_building, (xx + sx), (yy + sy)) != (0 << 0))
                                    can_place = 0
                            }
                        }
                        if (can_place == 1)
                        {
                            built += 1
                            var offset_b = 8
                            if (area == (3 << 0))
                                offset_b = 0
                            if (area == (7 << 0))
                            {
                                arr_zaton_building_fatto[z] = 1
                                if (quale_building == 0)
                                {
                                    offset_b = 0
                                    for (sx = -1; sx < (sprite_w + 1); sx++)
                                    {
                                        for (sy = -1; sy < (sprite_h + 1); sy++)
                                            ds_grid_set(grid_floor2, (xx + sx), (yy + sy), 1)
                                    }
                                }
                            }
                            for (sx = (-offset_b); sx < (sprite_w + offset_b); sx++)
                            {
                                for (sy = (-offset_b); sy < (sprite_h + offset_b); sy++)
                                    ds_grid_set(grid_building, (xx + sx), (yy + sy), (2 << 0))
                            }
                            for (sx = -1; sx < (sprite_w + 1); sx++)
                            {
                                for (sy = -1; sy < (sprite_h + 1); sy++)
                                    ds_grid_set(grid_building, (xx + sx), (yy + sy), (1 << 0))
                            }
                            ds_list_shuffle(get_list)
                            var choose_building = ds_list_find_value(get_list, 0)
                            script_execute(choose_building, xx, yy)
                            var x1 = ((xx + (sprite_w div 2)) * 16)
                            var y1 = ((yy + (sprite_h div 2)) * 16)
                            var mar = instance_create_depth(x1, y1, 0, obj_marker)
                            mar.my_id = area_building_marker[area][quale_building]
                        }
                    }
                }
            }
        }
    }
    return;
}

