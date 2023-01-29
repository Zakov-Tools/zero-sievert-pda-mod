function scr_old_player_spawn() //gml_Script_scr_old_player_spawn
{
    if (area == (1 << 0))
    {
        var road_max_x = 0
        var road_max_y = 0
        for (var yy = 1; yy < (grid_strada_h - 1); yy++)
        {
            for (var xx = 1; xx < (grid_strada_w - 1); xx++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1)
                {
                    var scale_ = 3
                    var newx_ = (xx * scale_)
                    var newy_ = (yy * scale_)
                    var tile_sopra = ds_grid_get(grid_map, newx_, (newy_ - 1)) == -1
                    var tile_sotto = ds_grid_get(grid_map, newx_, (newy_ + 4)) == -1
                    if (tile_sopra && tile_sotto)
                    {
                        if (road_max_x < xx)
                        {
                            road_max_x = xx
                            road_max_y = yy
                        }
                    }
                }
            }
        }
        var exit_x = ((road_max_x * 6) * 16)
        var exit_y = ((road_max_y * 6) * 16)
        var exit_spawn_x = (exit_x + 48)
        var exit_spawn_y = (exit_y + 48)
        var player_spawn_x = exit_spawn_x
        var player_spawn_y = exit_spawn_y
        ds_grid_set_disk(grid_building, (road_max_x * 6), (road_max_y * 6), 20, (2 << 0))
        var ooo = instance_create_depth(exit_x, exit_y, (-y), obj_avamposto_wood)
        ooo.need_to_check = 0
        ooo.decor_id = (38 << 0)
        ooo = instance_create_depth(exit_x, (exit_y + 80), (-y), obj_avamposto_wood)
        ooo.need_to_check = 0
        ooo.decor_id = (38 << 0)
        ooo = instance_create_depth(exit_x, exit_y, (-y), obj_concrete_16x32)
        ooo.need_to_check = 0
        ooo.decor_id = (9 << 0)
        instance_create_depth((exit_x + 64), (exit_y + 32), (-y), obj_loner1)
        instance_create_depth((exit_x + 64), (exit_y + 64), (-y), obj_loner1)
        var tel = instance_create_depth(exit_spawn_x, exit_spawn_y, (-y), obj_teleporter)
        tel.toward = (0 << 0)
        var icon = instance_create_depth(exit_spawn_x, exit_spawn_y, 2000, obj_minimap_icon)
        icon.icon = (2 << 0)
    }
    if (area == (2 << 0))
    {
        road_max_x = 0
        road_max_y = 0
        for (yy = 1; yy < (grid_strada_h - 1); yy++)
        {
            for (xx = 1; xx < (grid_strada_w - 1); xx++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1)
                {
                    scale_ = 3
                    newx_ = (xx * scale_)
                    newy_ = (yy * scale_)
                    var tile_dx = ds_grid_get(grid_map, (newx_ + 4), newy_) == -1
                    var tile_sx = ds_grid_get(grid_map, (newx_ - 1), newy_) == -1
                    if (tile_dx && tile_sx)
                    {
                        if (road_max_y < yy)
                        {
                            road_max_x = xx
                            road_max_y = yy
                        }
                    }
                }
            }
        }
        exit_x = ((road_max_x * 6) * 16)
        exit_y = ((road_max_y * 6) * 16)
        exit_spawn_x = (exit_x + 48)
        exit_spawn_y = (exit_y + 48)
        if (from_area == (0 << 0))
        {
            player_spawn_x = exit_spawn_x
            player_spawn_y = exit_spawn_y
        }
        ds_grid_set_disk(grid_building, (road_max_x * 6), (road_max_y * 6), 20, -1)
        ooo = instance_create_depth(exit_x, exit_y, (-y), obj_avamposto_wood)
        ooo.need_to_check = 0
        ooo.decor_id = (38 << 0)
        ooo = instance_create_depth((exit_x + 80), exit_y, (-y), obj_avamposto_wood)
        ooo.need_to_check = 0
        ooo.decor_id = (38 << 0)
        ooo = instance_create_depth((exit_x + 16), exit_y, (-y), obj_concrete_16x32)
        ooo.need_to_check = 0
        ooo.decor_id = (10 << 0)
        instance_create_depth((exit_x + 64), (exit_y + 32), (-y), obj_loner1)
        instance_create_depth((exit_x + 64), (exit_y + 64), (-y), obj_loner1)
        tel = instance_create_depth(exit_spawn_x, exit_spawn_y, (-y), obj_teleporter)
        tel.toward = (0 << 0)
        tel.from = area
        icon = instance_create_depth(exit_spawn_x, exit_spawn_y, 2000, obj_minimap_icon)
        icon.icon = (2 << 0)
        road_max_x = grid_strada_h
        road_max_y = grid_strada_w
        for (yy = 1; yy < (grid_strada_h - 1); yy++)
        {
            for (xx = 1; xx < (grid_strada_w - 1); xx++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1)
                {
                    scale_ = 3
                    newx_ = (xx * scale_)
                    newy_ = (yy * scale_)
                    tile_dx = ds_grid_get(grid_map, (newx_ + 4), newy_) == -1
                    tile_sx = ds_grid_get(grid_map, (newx_ - 1), newy_) == -1
                    if (tile_dx && tile_sx)
                    {
                        if (yy < road_max_y)
                        {
                            road_max_x = xx
                            road_max_y = yy
                        }
                    }
                }
            }
        }
        exit_x = ((road_max_x * 6) * 16)
        exit_y = ((road_max_y * 6) * 16)
        exit_spawn_x = (exit_x + 48)
        exit_spawn_y = (exit_y + 48)
        if (from_area == (3 << 0))
        {
            player_spawn_x = exit_spawn_x
            player_spawn_y = exit_spawn_y
        }
        ds_grid_set_disk(grid_building, (road_max_x * 6), (road_max_y * 6), 20, -1)
        tel = instance_create_depth(exit_spawn_x, exit_spawn_y, (-y), obj_teleporter)
        tel.toward = (3 << 0)
        tel.from = area
        icon = instance_create_depth(exit_spawn_x, exit_spawn_y, 2000, obj_minimap_icon)
        icon.icon = (2 << 0)
        road_max_x = grid_strada_h
        road_max_y = grid_strada_w
        for (yy = 1; yy < (grid_strada_h - 1); yy++)
        {
            for (xx = 1; xx < (grid_strada_w - 1); xx++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1)
                {
                    scale_ = 3
                    newx_ = (xx * scale_)
                    newy_ = (yy * scale_)
                    var tile_su = ds_grid_get(grid_map, newx_, (newy_ - 1)) == -1
                    var tile_giu = ds_grid_get(grid_map, newx_, (newy_ + 4)) == -1
                    if (tile_su && tile_giu)
                    {
                        if (yy < road_max_y)
                        {
                            road_max_x = xx
                            road_max_y = yy
                        }
                    }
                }
            }
        }
        exit_x = ((road_max_x * 6) * 16)
        exit_y = ((road_max_y * 6) * 16)
        exit_spawn_x = (exit_x + 48)
        exit_spawn_y = (exit_y + 48)
        if (from_area == (5 << 0))
        {
            player_spawn_x = exit_spawn_x
            player_spawn_y = exit_spawn_y
        }
        ds_grid_set_disk(grid_building, (road_max_x * 6), (road_max_y * 6), 20, -1)
        tel = instance_create_depth(exit_spawn_x, exit_spawn_y, (-y), obj_teleporter)
        tel.toward = (5 << 0)
        tel.from = area
        icon = instance_create_depth(exit_spawn_x, exit_spawn_y, 2000, obj_minimap_icon)
        icon.icon = (2 << 0)
    }
    if (area == (3 << 0))
    {
        road_max_x = 0
        road_max_y = 0
        for (yy = 1; yy < (grid_strada_h - 1); yy++)
        {
            for (xx = 1; xx < (grid_strada_w - 1); xx++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1)
                {
                    scale_ = 3
                    newx_ = (xx * scale_)
                    newy_ = (yy * scale_)
                    tile_dx = ds_grid_get(grid_map, (newx_ + 4), newy_) == -1
                    tile_sx = ds_grid_get(grid_map, (newx_ - 1), newy_) == -1
                    if (tile_dx && tile_sx)
                    {
                        if (road_max_y < yy)
                        {
                            road_max_x = xx
                            road_max_y = yy
                        }
                    }
                }
            }
        }
        exit_x = ((road_max_x * 6) * 16)
        exit_y = ((road_max_y * 6) * 16)
        exit_spawn_x = (exit_x + 48)
        exit_spawn_y = (exit_y + 48)
        if (from_area == (2 << 0))
        {
            player_spawn_x = exit_spawn_x
            player_spawn_y = exit_spawn_y
        }
        ds_grid_set_disk(grid_building, (road_max_x * 6), (road_max_y * 6), 20, -1)
        tel = instance_create_depth(exit_spawn_x, exit_spawn_y, (-y), obj_teleporter)
        tel.toward = (2 << 0)
        tel.from = area
        icon = instance_create_depth(exit_spawn_x, exit_spawn_y, 2000, obj_minimap_icon)
        icon.icon = (2 << 0)
        road_max_x = grid_strada_h
        road_max_y = grid_strada_w
        for (yy = 1; yy < (grid_strada_h - 1); yy++)
        {
            for (xx = 1; xx < (grid_strada_w - 1); xx++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1)
                {
                    scale_ = 3
                    newx_ = (xx * scale_)
                    newy_ = (yy * scale_)
                    tile_sopra = ds_grid_get(grid_map, newx_, (newy_ - 1)) == -1
                    tile_sotto = ds_grid_get(grid_map, newx_, (newy_ + 4)) == -1
                    if (tile_sopra && tile_sotto)
                    {
                        if (xx < road_max_x)
                        {
                            road_max_x = xx
                            road_max_y = yy
                        }
                    }
                }
            }
        }
        exit_x = ((road_max_x * 6) * 16)
        exit_y = ((road_max_y * 6) * 16)
        exit_spawn_x = (exit_x + 48)
        exit_spawn_y = (exit_y + 48)
        if (from_area == (4 << 0))
        {
            player_spawn_x = exit_spawn_x
            player_spawn_y = exit_spawn_y
        }
        ds_grid_set_disk(grid_building, (road_max_x * 6), (road_max_y * 6), 20, -1)
        tel = instance_create_depth(exit_spawn_x, exit_spawn_y, (-y), obj_teleporter)
        tel.toward = (4 << 0)
        tel.from = area
        icon = instance_create_depth(exit_spawn_x, exit_spawn_y, 2000, obj_minimap_icon)
        icon.icon = (2 << 0)
    }
    if (area == (4 << 0))
    {
        exit_spawn_x = swamp_player_spawnx
        exit_spawn_y = swamp_player_spawny
        player_spawn_x = exit_spawn_x
        player_spawn_y = exit_spawn_y
        tel = instance_create_depth((exit_spawn_x + 64), exit_spawn_y, (-y), obj_teleporter)
        tel.toward = (3 << 0)
        tel.from = area
        icon = instance_create_depth((exit_spawn_x + 64), exit_spawn_y, 2000, obj_minimap_icon)
        icon.icon = (2 << 0)
    }
    if (area == (5 << 0))
    {
        road_max_x = 0
        road_max_y = 0
        for (yy = 1; yy < (grid_strada_h - 1); yy++)
        {
            for (xx = 1; xx < (grid_strada_w - 1); xx++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1)
                {
                    scale_ = 3
                    newx_ = (xx * scale_)
                    newy_ = (yy * scale_)
                    tile_sopra = ds_grid_get(grid_map, newx_, (newy_ - 1)) == -1
                    tile_sotto = ds_grid_get(grid_map, newx_, (newy_ + 4)) == -1
                    if (tile_sopra && tile_sotto)
                    {
                        if (road_max_x < xx)
                        {
                            road_max_x = xx
                            road_max_y = yy
                        }
                    }
                }
            }
        }
        exit_x = ((road_max_x * 6) * 16)
        exit_y = ((road_max_y * 6) * 16)
        exit_spawn_x = (exit_x + 48)
        exit_spawn_y = (exit_y + 48)
        player_spawn_x = exit_spawn_x
        player_spawn_y = exit_spawn_y
        ds_grid_set_disk(grid_building, (road_max_x * 6), (road_max_y * 6), 20, -1)
        tel = instance_create_depth(exit_spawn_x, exit_spawn_y, (-y), obj_teleporter)
        tel.toward = (2 << 0)
        icon = instance_create_depth(exit_spawn_x, exit_spawn_y, 2000, obj_minimap_icon)
        icon.icon = (2 << 0)
    }
    return;
}

