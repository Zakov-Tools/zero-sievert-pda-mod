function scr_create_map_obj(argument0, argument1, argument2, argument3) //gml_Script_scr_create_map_obj
{
    var amount = 0
    var max_ = argument0
    var raggio_ = argument1
    if (max_ > 0)
    {
        var j = 0
        while (amount < max_)
        {
            j++
            if (j > 10000)
                return;
            if (amount < max_)
            {
                var xx = irandom(grid_tile_w)
                var yy = irandom(grid_tile_h)
                if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(g_building, xx, yy) == (0 << 0))
                {
                    var can_place = 1
                    for (var sx = 0; sx < (raggio_ * 2); sx++)
                    {
                        for (var sy = 0; sy < (raggio_ * 2); sy++)
                        {
                            if (ds_grid_get(grid_tile, (xx + sx), (yy + sy)) == -7 || ds_grid_get(grid_building, (xx + sx), (yy + sy)) != (0 << 0))
                                can_place = 0
                        }
                    }
                    if (can_place == 1)
                    {
                        ds_grid_set_disk(grid_building, (xx + raggio_), (yy + raggio_), raggio_, (2 << 0))
                        amount += 1
                        var wolfx = ((xx + raggio_) * 16)
                        var wolfy = ((yy + raggio_) * 16)
                        instance_create_depth(wolfx, wolfy, (-y), argument2)
                        var icon = instance_create_depth(wolfx, wolfy, 2000, obj_minimap_icon)
                        icon.icon = argument3
                    }
                }
            }
        }
    }
    return;
}

