switch state
{
    case (0 << 0):
        ds_grid_clear(grid_map, -7)
        generator_startx = (grid_map_w div 2)
        generator_starty = (grid_map_h div 2)
        controllerx = generator_startx
        controllery = generator_starty
        debug_controller_x = controllerx
        debug_controller_y = controllery
        if (area == (1 << 0))
        {
            scr_b_forest_layout(0, 0)
            ds_grid_set_disk(grid_map, (grid_map_w div 2), (grid_map_h div 2), 30, -1)
            ds_grid_set_region(grid_building, 130, 113, 187, 171, (1 << 0))
            raggio = 4
            var direzioni = 8
            var quale_direzione = (360 div direzioni)
            for (var i = 0; i < direzioni; i += 1)
            {
                controllerx = generator_startx
                controllery = generator_starty
                var j = 0
                var amount = 750
                var dir = irandom(360)
                repeat amount
                {
                    j++
                    ds_grid_set_disk(grid_map, controllerx, controllery, raggio, -1)
                    dir = irandom(360)
                    if scr_chance(6)
                        dir = (i * quale_direzione)
                    var dirx = lengthdir_x(raggio, dir)
                    var diry = lengthdir_y(raggio, dir)
                    controllerx += dirx
                    controllery += diry
                    var offset_dai_margini = 12
                    if (controllerx < (raggio + offset_dai_margini) || controllerx > ((grid_map_w - raggio) - offset_dai_margini))
                        controllerx += (-dirx)
                    if (controllery < (raggio + offset_dai_margini) || controllery > ((grid_map_h - raggio) - offset_dai_margini))
                        controllery += (-diry)
                }
            }
        }
        if (area == (2 << 0))
        {
            raggio = 5
            direzioni = 8
            quale_direzione = (360 div direzioni)
            for (i = 0; i < direzioni; i += 1)
            {
                controllerx = generator_startx
                controllery = generator_starty
                j = 0
                amount = 220
                dir = irandom(360)
                repeat amount
                {
                    j++
                    ds_grid_set_disk(grid_map, controllerx, controllery, raggio, -1)
                    dir = irandom(360)
                    if scr_chance(4)
                        dir = (i * quale_direzione)
                    dirx = lengthdir_x(raggio, dir)
                    diry = lengthdir_y(raggio, dir)
                    controllerx += dirx
                    controllery += diry
                    offset_dai_margini = 12
                    if (controllerx < (raggio + offset_dai_margini) || controllerx > ((grid_map_w - raggio) - offset_dai_margini))
                        controllerx += (-dirx)
                    if (controllery < (raggio + offset_dai_margini) || controllery > ((grid_map_h - raggio) - offset_dai_margini))
                        controllery += (-diry)
                }
            }
        }
        if (area == (3 << 0))
        {
            ds_grid_set_region(grid_map, 21, 15, 129, 129, -1)
            scr_b_industrial_area_road(0, 0)
            raggio = 5
            direzioni = 8
            quale_direzione = (360 div direzioni)
            for (i = 0; i < direzioni; i += 1)
            {
                controllerx = generator_startx
                controllery = generator_starty
                j = 0
                amount = 75
                dir = irandom(360)
                repeat amount
                {
                    j++
                    ds_grid_set_disk(grid_map, controllerx, controllery, raggio, -1)
                    dir = irandom(360)
                    if scr_chance(7)
                        dir = (i * quale_direzione)
                    dirx = lengthdir_x(raggio, dir)
                    diry = lengthdir_y(raggio, dir)
                    controllerx += dirx
                    controllery += diry
                    offset_dai_margini = 12
                    if (controllerx < (raggio + offset_dai_margini) || controllerx > ((grid_map_w - raggio) - offset_dai_margini))
                        controllerx += (-dirx)
                    if (controllery < (raggio + offset_dai_margini) || controllery > ((grid_map_h - raggio) - offset_dai_margini))
                        controllery += (-diry)
                }
            }
            ds_grid_set_region(grid_building, 216, 117, 261, 142, (1 << 0))
        }
        if (area == (4 << 0))
            ds_grid_clear(grid_map, -1)
        if (area == (6 << 0))
        {
            scr_b_mall_layout(0, 0)
            ds_grid_set_region(grid_map, 21, 12, 135, 126, -1)
            ds_grid_set_region(grid_building, 81, 59, 230, 133, (1 << 0))
            raggio = 5
            direzioni = 8
            quale_direzione = (360 div direzioni)
            for (i = 0; i < direzioni; i += 1)
            {
                controllerx = generator_startx
                controllery = generator_starty
                j = 0
                amount = 650
                dir = irandom(360)
                repeat amount
                {
                    j++
                    ds_grid_set_disk(grid_map, controllerx, controllery, raggio, -1)
                    dir = irandom(360)
                    if scr_chance(6)
                        dir = (i * quale_direzione)
                    dirx = lengthdir_x(raggio, dir)
                    diry = lengthdir_y(raggio, dir)
                    controllerx += dirx
                    controllery += diry
                    offset_dai_margini = 12
                    if (controllerx < (raggio + offset_dai_margini) || controllerx > ((grid_map_w - raggio) - offset_dai_margini))
                        controllerx += (-dirx)
                    if (controllery < (raggio + offset_dai_margini) || controllery > ((grid_map_h - raggio) - offset_dai_margini))
                        controllery += (-diry)
                }
            }
        }
        if (area == (5 << 0))
        {
            raggio = 5
            direzioni = 8
            quale_direzione = (360 div direzioni)
            for (i = 0; i < direzioni; i += 1)
            {
                controllerx = generator_startx
                controllery = generator_starty
                j = 0
                amount = 120
                dir = irandom(360)
                repeat amount
                {
                    j++
                    ds_grid_set_disk(grid_map, controllerx, controllery, raggio, -1)
                    dir = irandom(360)
                    if scr_chance(7)
                        dir = (i * quale_direzione)
                    dirx = lengthdir_x(raggio, dir)
                    diry = lengthdir_y(raggio, dir)
                    controllerx += dirx
                    controllery += diry
                    offset_dai_margini = 14
                    if (controllerx < (raggio + offset_dai_margini) || controllerx > ((grid_map_w - raggio) - offset_dai_margini))
                        controllerx += (-dirx)
                    if (controllery < (raggio + offset_dai_margini) || controllery > ((grid_map_h - raggio) - offset_dai_margini))
                        controllery += (-diry)
                }
            }
        }
        if (area == (7 << 0))
        {
            raggio = 6
            direzioni = 8
            quale_direzione = (360 div direzioni)
            ds_grid_set_region(grid_map, 8, 8, 139, 139, -1)
        }
        if (area == (8 << 0))
        {
            ds_grid_set_region(grid_map, 15, 18, 129, 129, -1)
            ds_grid_set_region(grid_map, 111, 42, 153, 69, -1)
            raggio = 8
            direzioni = 8
            quale_direzione = (360 div direzioni)
            for (i = 0; i < direzioni; i += 1)
            {
                controllerx = generator_startx
                controllery = generator_starty
                j = 0
                amount = 100
                dir = irandom(360)
                repeat amount
                {
                    j++
                    ds_grid_set_disk(grid_map, controllerx, controllery, raggio, -1)
                    dir = irandom(360)
                    if scr_chance(7)
                        dir = (i * quale_direzione)
                    dirx = lengthdir_x(raggio, dir)
                    diry = lengthdir_y(raggio, dir)
                    controllerx += dirx
                    controllery += diry
                    offset_dai_margini = 6
                    if (controllerx < (raggio + offset_dai_margini) || controllerx > ((grid_map_w - raggio) - offset_dai_margini))
                        controllerx += (-dirx)
                    if (controllery < (raggio + offset_dai_margini) || controllery > ((grid_map_h - raggio) - offset_dai_margini))
                        controllery += (-diry)
                }
            }
            for (var yy = 0; yy < grid_tile_h; yy++)
            {
                for (var xx = 0; xx < grid_tile_w; xx++)
                {
                    if (ds_grid_get(grid_floor2, xx, yy) == 1)
                        ds_grid_set(grid_building, xx, yy, (2 << 0))
                }
            }
        }
        break
    case (1 << 0):
        train_start_x = 0
        train_start_y = 0
        train_stop_x = 0
        train_stop_y = 0
        if (area == (1 << 0))
        {
            var off = irandom_range(10, 13)
            train_start_x = grid_train_w
            train_start_y = ((grid_train_h div 2) + choose((-off), off))
            for (i = 0; i < grid_train_w; i++)
                ds_grid_set(grid_train, i, train_start_y, 1)
        }
        if (area == (2 << 0))
        {
            train_start_x = grid_train_w
            train_start_y = (grid_train_h div 2)
            for (i = 0; i < grid_train_w; i++)
                ds_grid_set(grid_train, i, train_start_y, 1)
        }
        if (area == (3 << 0))
        {
            train_start_x = grid_train_w
            train_start_y = 42
            for (i = 0; i < grid_train_w; i++)
                ds_grid_set(grid_train, i, train_start_y, 1)
        }
        if (area == (4 << 0))
        {
            train_start_x = grid_train_w
            train_start_y = ((grid_train_h div 3) * 2)
            for (i = (grid_train_w + 1); i > -1; i--)
                ds_grid_set(grid_train, i, train_start_y, 1)
        }
        if (area == (6 << 0))
        {
            train_start_x = grid_train_w
            train_start_y = 44
            for (i = 0; i < grid_train_w; i++)
                ds_grid_set(grid_train, i, train_start_y, 1)
        }
        if (area == (8 << 0))
        {
            train_start_x = grid_train_w
            train_start_y = 42
            for (i = 0; i < grid_train_w; i++)
                ds_grid_set(grid_train, i, train_start_y, 1)
        }
        var ro_offset = 10
        var ro = 0
        road_startx[ro] = ((grid_strada_w div 2) + irandom_range((-ro_offset), ro_offset))
        road_starty[ro] = 0
        road_direction[ro] = 270
        ro++
        road_startx[ro] = 0
        road_starty[ro] = ((grid_strada_h div 2) + irandom_range((-ro_offset), ro_offset))
        road_direction[ro] = 0
        ro++
        road_startx[ro] = ((grid_strada_w div 2) + irandom_range((-ro_offset), ro_offset))
        road_starty[ro] = grid_strada_h
        road_direction[ro] = 90
        ro++
        road_startx[ro] = grid_strada_w
        road_starty[ro] = ((grid_strada_h div 2) + irandom_range((-ro_offset), ro_offset))
        road_direction[ro] = 180
        if (area == (1 << 0))
        {
        }
        if (area == (2 << 0))
        {
            var road_start_pos = 0
            for (var ro_number = 0; ro_number < 1; ro_number++)
            {
                road_start_pos += ro_number
                if (road_start_pos > 3)
                    road_start_pos = 0
                var has_changed_direction = 0
                stradax = road_startx[road_start_pos]
                straday = road_starty[road_start_pos]
                strada_amount = 250
                var jj = 0
                repeat strada_amount
                {
                    ds_grid_set(grid_strada, stradax, straday, 1)
                    dir = road_direction[road_start_pos]
                    if (has_changed_direction == 1)
                    {
                        jj++
                        if (jj > 3)
                        {
                            has_changed_direction = 0
                            jj = 0
                        }
                    }
                    if (scr_chance(25) && has_changed_direction == 0)
                    {
                        dir = (road_direction[road_start_pos] + choose(-90, 90))
                        has_changed_direction = 1
                    }
                    dirx = lengthdir_x(1, dir)
                    diry = lengthdir_y(1, dir)
                    stradax += dirx
                    straday += diry
                }
            }
        }
        if (area == (7 << 0))
        {
            surface_road_zaton = surface_create(grid_strada_w, grid_strada_h)
            surface_set_target(surface_road_zaton)
            draw_sprite(s_zaton_road, 0, 0, 0)
            var sprite_w = sprite_get_width(s_zaton_road)
            var sprite_h = sprite_get_height(s_zaton_road)
            var zat_building = 0
            for (var sx = 0; sx < sprite_w; sx++)
            {
                for (var sy = 0; sy < sprite_h; sy++)
                {
                    var pixel_color = surface_getpixel(surface_road_zaton, sx, sy)
                    if (pixel_color == 0)
                        ds_grid_set(grid_strada, sx, sy, 1)
                    if (pixel_color == make_color_rgb(0, 255, 0))
                    {
                        train_start_x = grid_train_w
                        train_start_y = sy
                        zaton_stop_train_x = sx
                        zaton_stop_train_y = sy
                        for (i = 0; i < grid_train_w; i++)
                            ds_grid_set(grid_train, i, sy, 1)
                    }
                    if (pixel_color == make_color_rgb(255, 0, 0))
                    {
                        arr_zaton_building_x[zat_building] = (sx * 6)
                        arr_zaton_building_y[zat_building] = (sy * 6)
                        arr_zaton_building_fatto[zat_building] = 0
                        zat_building++
                    }
                }
            }
            surface_reset_target()
        }
        for (yy = 0; yy < grid_strada_w; yy++)
        {
            for (xx = 0; xx < grid_strada_h; xx++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1)
                {
                    ds_grid_set_region(grid_map, (xx * 3), (yy * 3), ((xx * 3) + 2), ((yy * 3) + 2), -1)
                    ds_grid_set_region(grid_building, (xx * 6), (yy * 6), ((xx * 6) + 5), ((yy * 6) + 5), (2 << 0))
                }
            }
        }
        break
    case (2 << 0):
        if (area == (1 << 0) || area == (3 << 0) || area == (2 << 0) || area == (7 << 0) || area == (8 << 0))
        {
            for (yy = 1; yy < (grid_tile_w - 1); yy++)
            {
                for (xx = 1; xx < (grid_tile_h - 1); xx++)
                {
                    if scr_chance(2.5)
                    {
                        var grandezza = (irandom(3) + 2)
                        for (var fx = 0; fx < grandezza; fx++)
                        {
                            for (var fy = 0; fy < grandezza; fy++)
                            {
                                if scr_chance(60)
                                    ds_grid_set(grid_floor2, (xx + fx), (yy + fy), 0)
                            }
                        }
                    }
                }
            }
        }
        if (area == (4 << 0))
        {
            for (yy = 1; yy < (grid_tile_w - 1); yy++)
            {
                for (xx = 1; xx < (grid_tile_h - 1); xx++)
                {
                    if scr_chance(5)
                    {
                        var which_floor2 = choose(0, 6)
                        grandezza = (irandom(3) + 2)
                        for (fx = 0; fx < grandezza; fx++)
                        {
                            for (fy = 0; fy < grandezza; fy++)
                            {
                                if scr_chance(60)
                                    ds_grid_set(grid_floor2, (xx + fx), (yy + fy), which_floor2)
                            }
                        }
                    }
                }
            }
        }
        if (area == (6 << 0))
        {
            for (yy = 1; yy < (grid_tile_w - 1); yy++)
            {
                for (xx = 1; xx < (grid_tile_h - 1); xx++)
                {
                    if scr_chance(2.5)
                    {
                        grandezza = (irandom(3) + 2)
                        for (fx = 0; fx < grandezza; fx++)
                        {
                            for (fy = 0; fy < grandezza; fy++)
                            {
                                if scr_chance(60)
                                {
                                    if (ds_grid_get(grid_floor2, (xx + fx), (yy + fy)) != 1)
                                        ds_grid_set(grid_floor2, (xx + fx), (yy + fy), 0)
                                }
                            }
                        }
                    }
                }
            }
        }
        break
    case (3 << 0):
        var _tiling_road = 1
        if (area == (3 << 0))
            _tiling_road = 0
        if (area == (8 << 0))
            _tiling_road = 0
        if (area == (6 << 0))
            _tiling_road = 0
        if (_tiling_road == 1)
            scr_autotiling_road(layer_tileset_road)
        for (yy = 0; yy < grid_train_h; yy++)
        {
            for (xx = 0; xx < grid_train_w; xx++)
            {
                if (ds_grid_get(grid_train, xx, yy) != -7)
                {
                    ds_grid_set_region(grid_map, (xx * 3), (yy * 3), ((xx * 3) + 2), ((yy * 3) + 2), -1)
                    ds_grid_set_region(grid_building, (xx * 6), (yy * 6), ((xx * 6) + 5), ((yy * 6) + 5), (2 << 0))
                }
                if (ds_grid_get(grid_train, xx, yy) == 1)
                {
                    ds_grid_set_region(grid_floor2, (xx * 6), ((yy * 6) + 1), ((xx * 6) + 5), ((yy * 6) + 4), 6)
                    tilemap_set(layer_tileset_railroad, 1, xx, yy)
                }
            }
        }
        break
    case (4 << 0):
        if (area != (7 << 0) && area != (3 << 0) && area != (8 << 0))
        {
            train_stop_x = irandom_range(10, (grid_train_w - 10))
            train_stop_y = train_start_y
        }
        if (area == (3 << 0))
        {
            train_stop_x = ((grid_train_w div 2) + irandom_range(-10, 10))
            train_stop_y = train_start_y
        }
        if (area == (7 << 0))
        {
            train_stop_x = zaton_stop_train_x
            train_stop_y = zaton_stop_train_y
        }
        if (area == (8 << 0))
        {
            train_stop_x = ((grid_train_w div 2) + irandom_range(-10, 10))
            train_stop_y = train_start_y
        }
        ds_grid_set_disk(grid_building, (train_stop_x * 6), (train_stop_y * 6), 20, (2 << 0))
        instance_create_depth(((train_stop_x * 6) + 48), ((train_stop_y * 6) + 48), 0, obj_train_stop)
        break
    case (5 << 0):
        scr_from_grid_map_to_grid_tile()
        break
    case (6 << 0):
        if (area == (1 << 0))
        {
            for (yy = 1; yy < (grid_48_x - 1); yy++)
            {
                for (xx = 1; xx < (grid_48_y - 1); xx++)
                {
                    if scr_chance(0.35)
                    {
                        var water_x = xx
                        var water_y = yy
                        repeat (irandom(20) + 5)
                        {
                            dir = choose(0, 90, 180, 270)
                            dirx = lengthdir_x(1, dir)
                            diry = lengthdir_y(1, dir)
                            ds_grid_set_region(grid_water, (water_x * 3), (water_y * 3), ((water_x * 3) + 2), ((water_y * 3) + 2), -1)
                            water_x += dirx
                            water_y += diry
                        }
                    }
                }
            }
            ds_grid_set_disk(grid_water, (grid_tile_w div 2), (grid_tile_h div 2), 50, -7)
        }
        if (area == (2 << 0))
        {
            for (yy = 1; yy < (grid_48_x - 1); yy++)
            {
                for (xx = 1; xx < (grid_48_y - 1); xx++)
                {
                    if scr_chance(0.05)
                    {
                        water_x = xx
                        water_y = yy
                        repeat (irandom(40) + 200)
                        {
                            dir = choose(0, 90, 180, 270)
                            dirx = lengthdir_x(1, dir)
                            diry = lengthdir_y(1, dir)
                            ds_grid_set_region(grid_water, (water_x * 3), (water_y * 3), ((water_x * 3) + 2), ((water_y * 3) + 2), -1)
                            water_x += dirx
                            water_y += diry
                            water_x = clamp(water_x, -1, (grid_48_x + 1))
                            water_y = clamp(water_y, -1, (grid_48_y + 1))
                        }
                    }
                }
            }
        }
        if (area == (4 << 0))
        {
            ds_grid_set_region(grid_water, 0, 0, grid_tile_w, grid_tile_h, -1)
            repeat (24)
            {
                var dir_f = 270
                fx = ((grid_map_w div 2) + irandom_range(-63, 63))
                fy = (irandom(5) + 7)
                jj = 0
                amount = 600
                repeat amount
                {
                    jj++
                    if (jj < amount)
                    {
                        var fiume_w = 1
                        dir = (270 + choose(90, -90))
                        if scr_chance(22)
                            dir = dir_f
                        if (frac((jj / 80)) == 0)
                            fiume_w = 6
                        dirx = lengthdir_x(1, dir)
                        diry = lengthdir_y(1, dir)
                        fx += dirx
                        fy += diry
                        offset_dai_margini = 9
                        if (fx < offset_dai_margini || fx > (grid_map_w - offset_dai_margini))
                            fx += (-dirx)
                        if (fy > (grid_map_h - offset_dai_margini))
                            jj = amount
                        ds_grid_set_disk(grid_map, fx, fy, fiume_w, -7)
                    }
                }
            }
            ds_grid_set_region(grid_map, 73, 0, 149, 54, -7)
            for (xx = 0; xx < grid_map_w; xx++)
            {
                for (yy = 0; yy < grid_map_h; yy++)
                {
                    if (ds_grid_get(grid_map, xx, yy) == -7)
                        ds_grid_set_region(grid_water, (xx * 2), (yy * 2), ((xx * 2) + 1), ((yy * 2) + 1), -7)
                }
            }
            var o = obj_controller
            var layout = 0
            if (global.quest_unique_done[(47 << 0)] == 0)
                layout = 0
            if (global.quest_unique_done[(47 << 0)] == 1 && global.quest_unique_done[(94 << 0)] == 0)
                layout = 2
            var _found = 0
            _found = scr_check_quest_from_file((47 << 0))
            if (_found == 1)
            {
                if (obj_light_controller.hour >= 21 || obj_light_controller.hour <= 3)
                    layout = 1
            }
            if (global.quest_unique_done[(94 << 0)] == 1)
                layout = 3
            if (layout == 0)
                scr_b_swamp_layout_before_quest(0, 0)
            if (layout == 1)
                scr_b_swamp_layout(0, 0)
            if (layout == 2)
                scr_b_swamp_layout_after_quest(0, 0)
            if (layout == 3)
                scr_b_swamp_layout_after_quest_viola(0, 0)
            ds_grid_set_region(grid_building, 197, 74, 231, 103, (1 << 0))
        }
        for (xx = 0; xx < grid_strada_w; xx++)
        {
            for (yy = 0; yy < grid_strada_h; yy++)
            {
                if (ds_grid_get(grid_strada, xx, yy) == 1 || ds_grid_get(grid_train, xx, yy) == 1)
                    ds_grid_set_region(grid_water, (xx * 6), (yy * 6), ((xx * 6) + 5), ((yy * 6) + 5), -7)
            }
        }
        for (xx = 0; xx < grid_tile_w; xx++)
        {
            for (yy = 0; yy < grid_tile_h; yy++)
            {
                if (ds_grid_get(grid_water, xx, yy) == -1)
                {
                    var tile_sopra = ds_grid_get(grid_water, xx, (yy - 1)) == -1
                    var tile_sx = ds_grid_get(grid_water, (xx - 1), yy) == -1
                    var tile_dx = ds_grid_get(grid_water, (xx + 1), yy) == -1
                    var tile_sotto = ds_grid_get(grid_water, xx, (yy + 1)) == -1
                    var tile_sotto_sx = ds_grid_get(grid_water, (xx - 1), (yy + 1)) == -1
                    var tile_sotto_dx = ds_grid_get(grid_water, (xx + 1), (yy + 1)) == -1
                    var tile_sopra_sx = ds_grid_get(grid_water, (xx - 1), (yy - 1)) == -1
                    var tile_sopra_dx = ds_grid_get(grid_water, (xx + 1), (yy - 1)) == -1
                    var tile_index = (((((1 * tile_sopra) + (2 * tile_sx)) + (4 * tile_dx)) + (8 * tile_sotto)) + 1)
                    if ((!tile_sopra) && (!tile_sotto) && (!tile_dx) && (!tile_sx))
                        ds_grid_set(grid_water, xx, yy, -7)
                }
            }
        }
        for (yy = 1; yy < (grid_tile_w - 1); yy++)
        {
            for (xx = 1; xx < (grid_tile_h - 1); xx++)
            {
                if (ds_grid_get(grid_water, xx, yy) == -1)
                    ds_grid_set(grid_building, xx, yy, (1 << 0))
            }
        }
        break
    case (7 << 0):
        depth = 50
        for (xx = 0; xx < grid_tile_w; xx++)
        {
            for (yy = 0; yy < grid_tile_h; yy++)
                tilemap_set(layer_tileset_floor, area_tileset_floor_box[area], xx, yy)
        }
        for (xx = 0; xx < grid_tile_w; xx++)
        {
            for (yy = grid_tile_h; yy < g_indoor_h; yy++)
                tilemap_set(layer_tileset_floor_indoor, 32, xx, yy)
        }
        for (xx = 1; xx < (grid_tile_w - 1); xx++)
        {
            for (yy = 1; yy < (grid_tile_h - 1); yy++)
            {
                if (ds_grid_get(grid_tile, xx, yy) != -1)
                {
                    tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -1
                    tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -1
                    tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -1
                    tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -1
                    tile_sotto_sx = ds_grid_get(grid_tile, (xx - 1), (yy + 1)) == -1
                    tile_sotto_dx = ds_grid_get(grid_tile, (xx + 1), (yy + 1)) == -1
                    tile_sopra_sx = ds_grid_get(grid_tile, (xx - 1), (yy - 1)) == -1
                    tile_sopra_dx = ds_grid_get(grid_tile, (xx + 1), (yy - 1)) == -1
                    tile_index = (((((1 * tile_sopra) + (2 * tile_sx)) + (4 * tile_dx)) + (8 * tile_sotto)) + 1)
                    if (area_autotiling_mode[area] == (0 << 0))
                    {
                        if (tile_sopra && (!tile_sotto) && (!tile_dx) && (!tile_sx))
                        {
                            tilemap_set(layer_tileset_wall_above, 2, xx, (yy - 1))
                            tilemap_set(layer_tileset_wall_above, 6, xx, yy)
                        }
                        if (tile_sopra && (!tile_sotto) && (!tile_dx) && tile_sx)
                        {
                            tilemap_set(layer_tileset_wall_above, 1, xx, (yy - 1))
                            tilemap_set(layer_tileset_wall_above, 5, xx, yy)
                        }
                        if (tile_sopra && (!tile_sotto) && tile_dx && (!tile_sx))
                        {
                            tilemap_set(layer_tileset_wall_above, 3, xx, (yy - 1))
                            tilemap_set(layer_tileset_wall_above, 7, xx, yy)
                        }
                        if ((!tile_sopra) && (!tile_sotto) && (!tile_sx) && tile_dx)
                        {
                            if (!tile_sotto_dx)
                                tilemap_set(layer_tileset_wall_above, 20, xx, yy)
                            else
                                tilemap_set(layer_tileset_wall_above, 7, xx, yy)
                            if (!tile_sopra_dx)
                            {
                                tilemap_set(layer_tileset_wall_above, 7, xx, (yy - 1))
                                tilemap_set(layer_tileset_wall_above, 16, xx, (yy - 2))
                            }
                        }
                        if ((!tile_sopra) && (!tile_sotto) && (!tile_dx) && tile_sx)
                        {
                            if (!tile_sotto_sx)
                                tilemap_set(layer_tileset_wall_above, 21, xx, yy)
                            else
                                tilemap_set(layer_tileset_wall_above, 5, xx, yy)
                            if (!tile_sopra_sx)
                            {
                                tilemap_set(layer_tileset_wall_above, 5, xx, (yy - 1))
                                tilemap_set(layer_tileset_wall_above, 17, xx, (yy - 2))
                            }
                        }
                        if ((!tile_sopra) && (!tile_sotto) && (!tile_dx) && (!tile_sx))
                            tilemap_set(layer_tileset_wall_above, 4, xx, yy)
                        if tile_sotto
                        {
                            if tile_sx
                            {
                                tilemap_set(layer_tileset_wall_below, 13, xx, yy)
                                tilemap_set(layer_tileset_wall_above, 9, xx, (yy - 1))
                            }
                            if tile_dx
                            {
                                tilemap_set(layer_tileset_wall_below, 15, xx, yy)
                                tilemap_set(layer_tileset_wall_above, 11, xx, (yy - 1))
                            }
                            if ((!tile_dx) && (!tile_sx))
                            {
                                tilemap_set(layer_tileset_wall_below, 14, xx, yy)
                                tilemap_set(layer_tileset_wall_above, 10, xx, (yy - 1))
                            }
                        }
                    }
                }
            }
        }
        break
    case (8 << 0):
        for (xx = 1; xx < (grid_tile_w - 1); xx++)
        {
            for (yy = 1; yy < (grid_tile_h - 1); yy++)
            {
                if (xx == offset_solid_dai_margini || xx == (grid_tile_w - offset_solid_dai_margini))
                    instance_create_depth((xx * 16), (yy * 16), 0, obj_solid)
                if (yy == offset_solid_dai_margini || yy == (grid_tile_h - offset_solid_dai_margini))
                    instance_create_depth((xx * 16), (yy * 16), 0, obj_solid)
                if (ds_grid_get(grid_tile, xx, yy) != -1)
                {
                    tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -7
                    tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -7
                    tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -7
                    tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -7
                    tile_index = (((((1 * tile_sopra) + (2 * tile_sx)) + (4 * tile_dx)) + (8 * tile_sotto)) + 1)
                    if (tile_index != 16)
                    {
                        if (area != (4 << 0))
                            instance_create_depth((xx * 16), (yy * 16), 0, obj_solid)
                    }
                }
            }
        }
        break
    case (9 << 0):
        if (area == (3 << 0))
            ds_grid_set_region(grid_building, 61, 42, 76, 52, (1 << 0))
        scr_building_list()
        if (area == (8 << 0))
            scr_cnpp_layout(0, 0)
        for (var bx = (grid_tile_w - 1); bx > 0; bx--)
        {
            for (var by = (grid_tile_h - 1); by > 0; by--)
            {
                sx = bx
                sy = by
                if (ds_grid_get(grid_fence, sx, sy) != -1)
                {
                    var ttile = ds_grid_get(grid_fence, sx, sy)
                    tile_sopra = 0
                    if (ds_grid_get(grid_fence, sx, (sy - 1)) != -1)
                        tile_sopra = 1
                    tile_sx = 0
                    if (ds_grid_get(grid_fence, (sx - 1), sy) != -1)
                        tile_sx = 1
                    tile_dx = 0
                    if (ds_grid_get(grid_fence, (sx + 1), sy) != -1)
                        tile_dx = 1
                    tile_sotto = 0
                    if (ds_grid_get(grid_fence, sx, (sy + 1)) != -1)
                        tile_sotto = 1
                    if (tile_sopra && (!tile_sotto) && (!tile_dx) && (!tile_sx))
                        scr_set_wall_building(sx, sy, ttile, 14)
                    else if ((!tile_sopra) && (!tile_sotto) && (!tile_sx) && tile_dx)
                        scr_set_wall_building(sx, sy, ttile, 17)
                    else if ((!tile_sopra) && (!tile_sotto) && (!tile_dx) && tile_sx)
                        scr_set_wall_building(sx, sy, ttile, 16)
                    else if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                        scr_set_wall_building(sx, sy, ttile, 13)
                    else if ((!tile_sopra) && tile_sotto && (!tile_dx) && (!tile_sx))
                        scr_set_wall_building(sx, sy, ttile, 11)
                    else if (tile_sopra && tile_sotto && (!tile_dx) && (!tile_sx))
                        scr_set_wall_building(sx, sy, ttile, 3)
                    else if ((!tile_sopra) && tile_sotto && tile_dx && (!tile_sx))
                        scr_set_wall_building(sx, sy, ttile, 1)
                    else if ((!tile_sopra) && tile_sotto && (!tile_dx) && tile_sx)
                        scr_set_wall_building(sx, sy, ttile, 2)
                    else if (tile_sopra && tile_sotto && tile_dx && (!tile_sx))
                        scr_set_wall_building(sx, sy, ttile, 4)
                    else if (tile_sopra && tile_sotto && (!tile_dx) && tile_sx)
                        scr_set_wall_building(sx, sy, ttile, 5)
                    else if (tile_sopra && (!tile_sotto) && tile_dx && tile_sx)
                        scr_set_wall_building(sx, sy, ttile, 10)
                    else if (tile_sopra && (!tile_sotto) && tile_dx && (!tile_sx))
                        scr_set_wall_building(sx, sy, ttile, 7)
                    else if (tile_sopra && (!tile_sotto) && (!tile_dx) && tile_sx)
                        scr_set_wall_building(sx, sy, ttile, 8)
                    else if ((!tile_sopra) && tile_sotto && tile_dx && tile_sx)
                        scr_set_wall_building(sx, sy, ttile, 15)
                    else if ((!tile_sopra) && (!tile_sotto) && tile_dx && tile_sx)
                        scr_set_wall_building(sx, sy, ttile, 9)
                }
            }
        }
        break
    case (10 << 0):
        var lista_place = ds_list_create()
        for (i = 0; i < array_length_2d(area_index, area); i++)
        {
            repeat area_obj_amount[area][i]
                ds_list_add(lista_place, area_index[area][i])
        }
        amount = 0
        var max_ = area_obj_total_amount[area]
        if (max_ > 0)
        {
            var _try = 75000
            for (j = 0; j < _try; j++)
            {
                if (amount < max_)
                {
                    xx = irandom(grid_tile_w)
                    yy = irandom(grid_tile_h)
                    ds_list_shuffle(lista_place)
                    var which_place = ds_list_find_value(lista_place, 0)
                    var place_id = area_obj[area][which_place]
                    if (area_obj_amount_now[area][which_place] < area_obj_amount[area][which_place])
                    {
                        if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(grid_building, xx, yy) == (0 << 0))
                        {
                            var can_place = 1
                            var raggio_ = place_radius[place_id]
                            for (sx = 0; sx < (raggio_ * 2); sx++)
                            {
                                for (sy = 0; sy < (raggio_ * 2); sy++)
                                {
                                    if (ds_grid_get(grid_tile, (xx + sx), (yy + sy)) == -7 || ds_grid_get(grid_building, (xx + sx), (yy + sy)) != (0 << 0))
                                        can_place = 0
                                }
                            }
                            if (can_place == 1)
                            {
                                ds_grid_set_disk(grid_building, (xx + raggio_), (yy + raggio_), raggio_, (2 << 0))
                                amount += 1
                                var posx = ((xx + raggio_) * 16)
                                var posy = ((yy + raggio_) * 16)
                                instance_create_depth(posx, posy, (-y), place_obj[place_id])
                                area_obj_amount_now[area][which_place] += 1
                            }
                        }
                    }
                }
                else
                    j = (_try - 1)
            }
        }
        break
    case (11 << 0):
        var ii = 0
        amount = (35 * global.sk_k[(15 << 0)])
        repeat amount
        {
            xx = irandom(grid_tile_w)
            yy = irandom(grid_tile_h)
            if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(grid_water, xx, yy) == -7 && ds_grid_get(grid_building, xx, yy) == (0 << 0))
            {
                tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -1
                tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -1
                tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -1
                tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -1
                if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                {
                    var tx = (((xx * 16) + 8) + irandom_range(-8, 8))
                    var ty = (((yy * 16) + 8) + irandom_range(-8, 8))
                    instance_create_depth(tx, ty, ((-y) + 20), obj_chest_map)
                    ii++
                    var iconx = (xx * 16)
                    var icony = (yy * 16)
                    var icon = instance_create_depth(iconx, icony, 2000, obj_minimap_icon)
                    icon.icon = (4 << 0)
                }
            }
        }
        lista_decor = ds_list_create()
        for (i = 0; i < area_different_decor[area]; i++)
        {
            repeat area_decor[area][i]
                ds_list_add(lista_decor, area_decor_obj[area][i])
        }
        repeat area_decor_number[area]
        {
            xx = irandom(grid_tile_w)
            yy = irandom(grid_tile_h)
            if (area == (6 << 0))
            {
                if scr_chance(21)
                {
                    xx = irandom_range(72, 230)
                    yy = irandom_range(48, 215)
                }
            }
            if (ds_grid_get(grid_tile, xx, yy) == -1)
            {
                if (ds_grid_get(grid_building, xx, yy) != (1 << 0))
                {
                    tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -1
                    tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -1
                    tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -1
                    tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -1
                    if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                    {
                        ds_list_shuffle(lista_decor)
                        var which_decor = ds_list_find_value(lista_decor, 0)
                        tx = (xx * 16)
                        ty = (yy * 16)
                        var decor_ = instance_create_depth(tx, ty, (-y), decor_obj[which_decor])
                        decor_.decor_id = which_decor
                        decor_.need_to_check = 1
                    }
                }
            }
        }
        break
    case (12 << 0):
        scr_autotiling_water()
        with (obj_decor_parent)
        {
            if (room == room1)
            {
                o = obj_map_generator
                if (o.decor_is_building[decor_id] == 1)
                {
                    if (o.b_image_has_entrance[decor_id][image_index] == 1)
                    {
                        var indoor_w = o.b_width[decor_id]
                        var indoor_h = o.b_height[decor_id]
                        off = 17
                        var _starting_x = off
                        var _starting_y = (o.grid_tile_h + off)
                        if (object_index == obj_mall_11)
                        {
                            _starting_x = 18
                            _starting_y = 438
                        }
                        var placed = 0
                        for (yy = _starting_y; yy < o.g_indoor_h; yy++)
                        {
                            for (xx = _starting_x; xx < (o.grid_tile_w - off); xx++)
                            {
                                if (placed == 0)
                                {
                                    if (ds_grid_get(o.grid_indoor, xx, yy) == 0)
                                    {
                                        can_place = 1
                                        if (ds_grid_get(o.grid_indoor, (xx + indoor_w), yy) == 1 || ds_grid_get(o.grid_indoor, xx, (yy + indoor_h)) == 1 || ds_grid_get(o.grid_indoor, (xx + indoor_w), (yy + indoor_h)) == 1)
                                            can_place = 0
                                        if ((xx + indoor_w) >= obj_map_generator.grid_tile_w)
                                            can_place = 0
                                        if ((yy + indoor_h) >= obj_map_generator.g_indoor_h)
                                            can_place = 0
                                        if (can_place == 1)
                                        {
                                            for (i = xx; i < (xx + indoor_w); i++)
                                            {
                                                for (j = yy; j < (yy + indoor_h); j++)
                                                {
                                                    if (ds_grid_get(o.grid_indoor, i, j) == 1)
                                                        can_place = 0
                                                }
                                            }
                                        }
                                        if (can_place == 1)
                                        {
                                            placed = 1
                                            var get_list = o.b_list[decor_id]
                                            ds_list_shuffle(get_list)
                                            var choose_indoor = ds_list_find_value(get_list, 0)
                                            var tele_x = ((x + o.b_x[decor_id][image_index]) + 8)
                                            var tele_y = ((y + o.b_y[decor_id][image_index]) + 10)
                                            script_execute(choose_indoor, xx, yy, tele_x, tele_y)
                                            for (i = (xx - off); i < ((xx + indoor_w) + off); i++)
                                            {
                                                for (j = (yy - off); j < ((yy + indoor_h) + off); j++)
                                                {
                                                    ds_grid_set(o.grid_indoor, i, j, 1)
                                                    ds_grid_set(o.grid_light_indoor, i, j, o.b_indoor_light[decor_id])
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        for (xx = 1; xx < (grid_tile_w - 1); xx++)
        {
            for (yy = 1; yy < (g_indoor_h - 1); yy++)
            {
                if (ds_grid_get(grid_water, xx, yy) == -1)
                {
                    var cell = tilemap_get(layer_tileset_water, xx, yy)
                    var ti = 0
                    if (cell < 30)
                        ti = 0
                    if ((cell >= 30) < 60)
                        ti = 1
                    if ((cell >= 60) < 90)
                        ti = 2
                    if ((cell >= 90) < 120)
                        ti = 3
                    tile_sopra = ds_grid_get(grid_water, xx, (yy - 1)) == -1
                    tile_sx = ds_grid_get(grid_water, (xx - 1), yy) == -1
                    tile_dx = ds_grid_get(grid_water, (xx + 1), yy) == -1
                    tile_sotto = ds_grid_get(grid_water, xx, (yy + 1)) == -1
                    tile_sotto_sx = ds_grid_get(grid_water, (xx - 1), (yy + 1)) == -1
                    tile_sotto_dx = ds_grid_get(grid_water, (xx + 1), (yy + 1)) == -1
                    tile_sopra_sx = ds_grid_get(grid_water, (xx - 1), (yy - 1)) == -1
                    tile_sopra_dx = ds_grid_get(grid_water, (xx + 1), (yy - 1)) == -1
                    var x1 = (xx * 16)
                    var y1 = (yy * 16)
                    if (tile_sopra && tile_sotto && tile_dx && tile_sx && tile_sopra_dx && tile_sopra_sx && tile_sotto_dx && tile_sotto_sx)
                    {
                    }
                    if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                    {
                        if (!tile_sopra_dx)
                            instance_create_depth(x1, y1, 0, obj_solid_can_see)
                        if (!tile_sopra_sx)
                            instance_create_depth(x1, y1, 0, obj_solid_can_see)
                        if (!tile_sotto_dx)
                            instance_create_depth(x1, y1, 0, obj_solid_can_see)
                        if (!tile_sotto_sx)
                            instance_create_depth(x1, y1, 0, obj_solid_can_see)
                    }
                    var o_dx = water_tile_off_dx[ti]
                    var o_sx = water_tile_off_sx[ti]
                    var o_su = water_tile_off_su[ti]
                    var o_giu = water_tile_off_giu[ti]
                    if ((!tile_sopra) && tile_sotto && tile_dx && (!tile_sx))
                        instance_create_depth((x1 + o_dx), (y1 + o_giu), 0, obj_solid_can_see)
                    if ((!tile_sopra) && tile_sotto && tile_dx && tile_sx)
                        instance_create_depth(x1, (y1 + o_giu), 0, obj_solid_can_see)
                    if ((!tile_sopra) && tile_sotto && (!tile_dx) && tile_sx)
                        instance_create_depth((x1 + o_sx), (y1 + o_giu), 0, obj_solid_can_see)
                    if (tile_sopra && tile_sotto && tile_dx && (!tile_sx))
                        instance_create_depth((x1 + o_dx), y1, 0, obj_solid_can_see)
                    if (tile_sopra && tile_sotto && (!tile_dx) && tile_sx)
                        instance_create_depth((x1 + o_sx), y1, 0, obj_solid_can_see)
                    if (tile_sopra && (!tile_sotto) && tile_dx && (!tile_sx))
                        instance_create_depth((x1 + o_dx), (y1 + o_su), 0, obj_solid_can_see)
                    if (tile_sopra && (!tile_sotto) && tile_dx && tile_sx)
                        instance_create_depth(x1, (y1 + o_su), 0, obj_solid_can_see)
                    if (tile_sopra && (!tile_sotto) && (!tile_dx) && tile_sx)
                        instance_create_depth((x1 + o_sx), (y1 + o_su), 0, obj_solid_can_see)
                }
            }
        }
        if (area == (7 << 0))
        {
            for (yy = 0; yy < grid_strada_w; yy++)
            {
                for (xx = 0; xx < grid_strada_h; xx++)
                {
                    if (ds_grid_get(grid_strada, xx, yy) == 1)
                    {
                        tile_sopra = ds_grid_get(grid_strada, xx, (yy - 1)) == 1
                        tile_sx = ds_grid_get(grid_strada, (xx - 1), yy) == 1
                        tile_dx = ds_grid_get(grid_strada, (xx + 1), yy) == 1
                        tile_sotto = ds_grid_get(grid_strada, xx, (yy + 1)) == 1
                        var xn = (xx * 96)
                        var yn = (yy * 96)
                        if (tile_sopra && tile_sotto && (!tile_sx) && (!tile_dx))
                        {
                            if scr_chance(50)
                            {
                                scr_place_obj_map_generation((xn - 8), (yn + 48), s_lampione1, obj_lampione, 1, (19 << 0))
                                scr_place_obj_map_generation((xn + 72), (yn + 48), s_lampione1, obj_lampione, 1, (19 << 0))
                            }
                            if scr_chance(30)
                            {
                                scr_place_obj_map_generation(xn, (yn + 80), s_bidone_piccolo, obj_bidone_piccolo, 1, (23 << 0))
                                scr_place_obj_map_generation((xn + 80), (yn + 80), s_bidone_piccolo, obj_bidone_piccolo, 1, (23 << 0))
                            }
                        }
                        if (tile_dx && tile_sx && (!tile_sopra) && (!tile_sotto))
                        {
                            if scr_chance(50)
                            {
                                scr_place_obj_map_generation((xn + 48), (yn - 8), s_lampione1, obj_lampione, 1, (19 << 0))
                                scr_place_obj_map_generation((xn + 48), (yn + 72), s_lampione1, obj_lampione, 1, (19 << 0))
                            }
                            if scr_chance(30)
                            {
                                scr_place_obj_map_generation((xn + 64), (yn - 8), s_bidone_piccolo, obj_bidone_piccolo, 1, (23 << 0))
                                scr_place_obj_map_generation((xn + 64), (yn + 72), s_bidone_piccolo, obj_bidone_piccolo, 1, (23 << 0))
                            }
                        }
                        if (tile_sotto && tile_sopra && tile_dx && tile_sx)
                        {
                            scr_place_obj_map_generation(xn, (yn - 8), s_signal_stop, obj_signal_stop, 1, (24 << 0))
                            scr_place_obj_map_generation((xn + 80), (yn - 8), s_signal_stop, obj_signal_stop, 1, (24 << 0))
                            scr_place_obj_map_generation(xn, (yn + 72), s_signal_stop, obj_signal_stop, 1, (24 << 0))
                            scr_place_obj_map_generation((xn + 80), (yn + 72), s_signal_stop, obj_signal_stop, 1, (24 << 0))
                        }
                        if (tile_sotto && (!tile_sopra) && tile_dx && tile_sx)
                            scr_place_obj_map_generation((xn + 80), (yn + 72), s_signal_stop, obj_signal_stop, 1, (24 << 0))
                        if (tile_sotto && tile_sopra && tile_dx && (!tile_sx))
                            scr_place_obj_map_generation((xn + 80), (yn - 8), s_signal_stop, obj_signal_stop, 1, (24 << 0))
                        if (tile_sotto && tile_sopra && (!tile_dx) && tile_sx)
                            scr_place_obj_map_generation(xn, (yn + 72), s_signal_stop, obj_signal_stop, 1, (24 << 0))
                        if ((!tile_sotto) && tile_sopra && tile_dx && tile_sx)
                            scr_place_obj_map_generation(xn, (yn - 8), s_signal_stop, obj_signal_stop, 1, (24 << 0))
                    }
                }
            }
        }
        if (area == (1 << 0) || area == (2 << 0) || area == (3 << 0) || area == (4 << 0))
        {
            repeat (75)
            {
                xx = (1 + irandom((grid_tile_w - 2)))
                yy = (1 + irandom((grid_tile_h - 2)))
                if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(grid_water, xx, yy) == -7)
                    instance_create_depth((xx * 16), (yy * 16), 0, obj_enemy_rabbit)
            }
        }
        var quest_amount = 30
        for (j = 0; j < quest_amount; j++)
        {
            ini_open(global.save_general)
            var quest_id_ = global.save_quest_id[j]
            if (quest_id_ != -1)
            {
                for (var k = 0; k < array_length_2d(global.quest_type, quest_id_); k++)
                {
                    if (global.quest_type[quest_id_][k] == (4 << 0))
                    {
                        if (global.quest_retrive_map[quest_id_][k] == area)
                        {
                            if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                            {
                                var retrive_chest_created = 0
                                repeat (5500)
                                {
                                    if (retrive_chest_created == 0)
                                    {
                                        xx = irandom_range(7, (grid_tile_w - 7))
                                        yy = irandom_range(7, (grid_tile_h - 7))
                                        if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(grid_building, xx, yy) != (1 << 0) && position_empty((xx * 16), (yy * 16)))
                                        {
                                            tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -1
                                            tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -1
                                            tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -1
                                            tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -1
                                            if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                                            {
                                                tx = (((xx * 16) + 8) + irandom_range(-8, 8))
                                                ty = (((yy * 16) + 8) + irandom_range(-8, 8))
                                                var chest_retrive_object = global.quest_retrive_chest[quest_id_][k]
                                                instance_create_depth(tx, ty, ((-y) + 10), chest_retrive_object)
                                                scr_add_objective_map_to_list(tx, ty, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                                                retrive_chest_created = 1
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (global.quest_type[quest_id_][k] == (5 << 0))
                    {
                        if (global.quest_retrive_map[quest_id_][k] == area)
                        {
                            if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                            {
                                retrive_chest_created = 0
                                var list_id_anomaly_generator = ds_list_create()
                                if instance_exists(obj_anomaly_fire_generator_big)
                                {
                                    with (obj_anomaly_fire_generator_big)
                                        ds_list_add(list_id_anomaly_generator, id)
                                }
                                if instance_exists(obj_anomaly_fire_generator_medium)
                                {
                                    with (obj_anomaly_fire_generator_big)
                                        ds_list_add(list_id_anomaly_generator, id)
                                }
                                if instance_exists(obj_anomaly_electric_generator)
                                {
                                    with (obj_anomaly_electric_generator)
                                        ds_list_add(list_id_anomaly_generator, id)
                                }
                                if instance_exists(obj_anomaly_gas_generator_big)
                                {
                                    with (obj_anomaly_gas_generator_big)
                                        ds_list_add(list_id_anomaly_generator, id)
                                }
                                if instance_exists(obj_anomaly_gas_generator_medium)
                                {
                                    with (obj_anomaly_fire_generator_big)
                                        ds_list_add(list_id_anomaly_generator, id)
                                }
                                if (ds_list_size(list_id_anomaly_generator) > 0)
                                {
                                    ds_list_shuffle(list_id_anomaly_generator)
                                    var gen_id = ds_list_find_value(list_id_anomaly_generator, 0)
                                    var an_id = gen_id.ano_id
                                    var dis = ((place_radius[an_id] * 16) / 2)
                                    dir = irandom(360)
                                    xx = (gen_id.x + lengthdir_x(dis, dir))
                                    yy = (gen_id.y + lengthdir_y(dis, dir))
                                    instance_create_depth(xx, yy, 0, global.quest_retrive_chest[quest_id_][k])
                                    scr_add_objective_map_to_list(xx, yy, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                                }
                            }
                        }
                    }
                    if (global.quest_type[quest_id_][k] == (6 << 0))
                    {
                        var _prosegui = 1
                        if (quest_id_ == (29 << 0))
                        {
                            if (global.az_done[(1 << 0)] == 1)
                                _prosegui = 0
                        }
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if (global.quest_contract_map[quest_id_][k] == area && _prosegui == 1)
                            {
                                var enemy_marked = 0
                                var enemy_placed = 0
                                if (!instance_exists(global.quest_obj_to_kill[quest_id_][k]))
                                {
                                    repeat (75000)
                                    {
                                        if (enemy_placed == 0)
                                        {
                                            xx = irandom(grid_tile_w)
                                            yy = irandom(grid_tile_h)
                                            if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(grid_building, xx, yy) != (1 << 0))
                                            {
                                                tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -1
                                                tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -1
                                                tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -1
                                                tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -1
                                                if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                                                {
                                                    enemy_placed = 1
                                                    instance_create_depth((xx * 16), (yy * 16), 0, global.quest_obj_to_kill[quest_id_][k])
                                                }
                                            }
                                        }
                                    }
                                }
                                if instance_exists(global.quest_obj_to_kill[quest_id_][k])
                                {
                                    with (global.quest_obj_to_kill[quest_id_][k])
                                    {
                                        if (enemy_marked == 0 && y < obj_map_generator.map_height)
                                        {
                                            quest_contract_is_me = 1
                                            quest_contract_grid_pos = j
                                            enemy_marked = 1
                                            scr_add_objective_map_to_list(x, y, j, quest_id_, 10)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (global.quest_type[quest_id_][k] == (16 << 0))
                    {
                        if (!instance_exists(global.quest_approach_obj[quest_id_][k]))
                        {
                            if (global.quest_approach_map[quest_id_][k] == area)
                            {
                                if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                                {
                                    enemy_placed = 0
                                    repeat (50000)
                                    {
                                        if (enemy_placed == 0)
                                        {
                                            xx = irandom(grid_tile_w)
                                            yy = irandom(grid_tile_h)
                                            if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(grid_building, xx, yy) != (1 << 0))
                                            {
                                                tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -1
                                                tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -1
                                                tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -1
                                                tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -1
                                                if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                                                {
                                                    enemy_placed = 1
                                                    instance_create_depth((xx * 16), (yy * 16), 0, global.quest_approach_obj[quest_id_][k])
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if instance_exists(global.quest_approach_obj[quest_id_][k])
                        {
                            if (global.quest_approach_map[quest_id_][k] == area)
                            {
                                if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                                {
                                    if (global.quest_marker[quest_id_][k] == 1)
                                    {
                                        var _obj = global.quest_approach_obj[quest_id_][k]
                                        scr_add_objective_map_to_list(_obj.x, _obj.y, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                                    }
                                }
                            }
                        }
                    }
                    if (global.quest_type[quest_id_][k] == (7 << 0))
                    {
                        if (global.quest_place_marker_map[quest_id_][k] == area)
                        {
                            if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                            {
                                var object_marked = 0
                                var object_placed = 0
                                if (!instance_exists(global.quest_place_marker_object[quest_id_][k]))
                                {
                                    for (xx = 5; xx < (grid_strada_w - 5); xx++)
                                    {
                                        for (yy = 5; yy < (grid_strada_h - 5); yy++)
                                        {
                                            if (object_placed == 0)
                                            {
                                                if (ds_grid_get(grid_strada, xx, yy) == 1)
                                                {
                                                    if scr_chance(25)
                                                    {
                                                        instance_create_depth((xx * 96), (yy * 96), 0, global.quest_place_marker_object[quest_id_][k])
                                                        object_placed = 1
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if instance_exists(global.quest_place_marker_object[quest_id_][k])
                                {
                                    with (global.quest_place_marker_object[quest_id_][k])
                                    {
                                        if (object_marked == 0)
                                        {
                                            if (x > 400 && x < (room_width - 400) && y > 400 && y < (obj_map_generator.map_height - 400))
                                            {
                                                object_marked = 1
                                                obj_controller.marked_object_id = id
                                                if (global.quest_marker[quest_id_][k] == 1)
                                                    scr_add_objective_map_to_list(x, y, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (quest_id_ == (4 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_quest_tp)
                            {
                                with (obj_quest_tp)
                                {
                                    instance_create_depth(x, y, 0, obj_chest_quest_tp)
                                    instance_destroy()
                                }
                            }
                        }
                    }
                    if (quest_id_ == (90 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_quest_document_2)
                            {
                                with (obj_quest_document_2)
                                {
                                    instance_create_depth(x, y, 0, obj_chest_quest_document_2)
                                    instance_destroy()
                                }
                            }
                        }
                    }
                    if (quest_id_ == (29 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_house_trader_forest)
                                scr_add_objective_map_to_list(obj_house_trader_forest.x, obj_house_trader_forest.y, j, quest_id_, 12)
                        }
                    }
                    if (quest_id_ == (37 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_lair_ghoul)
                                scr_add_objective_map_to_list(obj_lair_ghoul.x, obj_lair_ghoul.y, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                        }
                    }
                    if (quest_id_ == (31 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_quest_find_usb_sawmill)
                            {
                                with (obj_quest_find_usb_sawmill)
                                {
                                    instance_create_depth(x, y, 0, obj_chest_find_usb_sawmill)
                                    instance_destroy()
                                }
                            }
                        }
                    }
                    if (quest_id_ == (45 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_elicottero_distrutto)
                                scr_add_objective_map_to_list(obj_elicottero_distrutto.x, obj_elicottero_distrutto.y, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                        }
                    }
                    if (quest_id_ == (47 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_faro)
                                scr_add_objective_map_to_list(obj_faro.x, obj_faro.y, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                        }
                    }
                    if (quest_id_ == (94 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_cristallo_viola)
                                scr_add_objective_map_to_list(obj_cristallo_viola.x, obj_cristallo_viola.y, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                        }
                    }
                    if (quest_id_ == (62 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_tower_radio_1)
                                scr_add_objective_map_to_list(obj_tower_radio_1.x, obj_tower_radio_1.y, j, quest_id_, global.quest_marker_sub[quest_id_][k])
                        }
                    }
                    if (quest_id_ == (170 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_radio_tower_building)
                                scr_add_objective_map_to_list(obj_radio_tower_building.x, obj_radio_tower_building.y, j, quest_id_, 10)
                        }
                    }
                    if (quest_id_ == (28 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_quest_document_village_chest_spawner)
                            {
                                with (obj_quest_document_village_chest_spawner)
                                {
                                    instance_create_depth(x, y, 0, obj_chest_retrieve_document_village)
                                    instance_destroy()
                                }
                            }
                        }
                    }
                    if (quest_id_ == (66 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_quest_laboratory_1)
                            {
                                with (obj_quest_laboratory_1)
                                {
                                    instance_create_depth(x, y, 0, obj_chest_laboratory_1)
                                    instance_destroy()
                                }
                            }
                        }
                    }
                    if (quest_id_ == (172 << 0))
                    {
                        if (global.save_quest_amount_now[j][k] < global.quest_amount_max[quest_id_][k])
                        {
                            if instance_exists(obj_chest_grigoriy_ring)
                                scr_add_objective_map_to_list(obj_chest_grigoriy_ring.x, obj_chest_grigoriy_ring.y, j, quest_id_, 10)
                        }
                    }
                }
            }
            ini_close()
        }
        if instance_exists(obj_marker)
        {
            with (obj_marker)
            {
                if (my_id != -1)
                {
                    var add = 0
                    if (my_id == (1 << 0))
                    {
                        var pp = (0 << 0)
                        o = 22
                        var prima_volta_fatta = global.az_done[pp]
                        if (prima_volta_fatta == 1)
                            add = 1
                    }
                    if (my_id == (2 << 0))
                    {
                        pp = (10 << 0)
                        prima_volta_fatta = global.az_done[pp]
                        if (prima_volta_fatta == 1)
                            add = 1
                    }
                    if (add == 1)
                    {
                        ds_list_add(global.list_intresting_id, my_id)
                        ds_list_add(global.list_intresting_x, (x div 16))
                        ds_list_add(global.list_intresting_y, (y div 16))
                    }
                }
            }
        }
        for (xx = 0; xx < grid_tile_w; xx++)
        {
            for (yy = 0; yy < grid_tile_h; yy++)
            {
                if (ds_grid_get(grid_water, xx, yy) == -1)
                    ds_grid_set(grid_tile, xx, yy, -7)
            }
        }
        for (xx = 0; xx < grid_tile_w; xx++)
        {
            for (yy = 0; yy < grid_tile_h; yy++)
            {
                if (ds_grid_get(grid_tile, xx, yy) == -1)
                    ds_grid_set(grid_water, xx, yy, -7)
            }
        }
        var list_punti_uscita_x = ds_list_create()
        var list_punti_uscita_y = ds_list_create()
        randomize()
        var aggiungere = 0
        dir = choose(0, 1, 2, 3)
        for (xx = 10; xx < (grid_tile_w - 10); xx++)
        {
            yy = 0
            aggiungere = 1
            for (i = 1; i < grid_tile_h; i++)
            {
                if (aggiungere == 1)
                {
                    if (ds_grid_get(grid_tile, xx, (yy + i)) == -1 && ds_grid_get(grid_train, (xx div 6), ((yy + i) div 6)) == -7)
                    {
                        aggiungere = 0
                        ds_list_add(list_punti_uscita_x, xx)
                        ds_list_add(list_punti_uscita_y, (yy + i))
                    }
                }
            }
        }
        for (xx = 10; xx < (grid_tile_w - 10); xx++)
        {
            yy = grid_tile_h
            aggiungere = 1
            for (i = 1; i < grid_tile_h; i++)
            {
                if (aggiungere == 1)
                {
                    if (ds_grid_get(grid_tile, xx, (yy - i)) == -1 && ds_grid_get(grid_train, (xx div 6), ((yy - i) div 6)) == -7)
                    {
                        aggiungere = 0
                        ds_list_add(list_punti_uscita_x, xx)
                        ds_list_add(list_punti_uscita_y, (yy - i))
                    }
                }
            }
        }
        for (yy = 10; yy < (grid_tile_h - 10); yy++)
        {
            xx = 0
            aggiungere = 1
            for (i = 1; i < grid_tile_w; i++)
            {
                if (aggiungere == 1)
                {
                    if (ds_grid_get(grid_tile, (xx + i), yy) == -1 && ds_grid_get(grid_train, ((xx + i) div 6), (yy div 6)) == -7)
                    {
                        aggiungere = 0
                        ds_list_add(list_punti_uscita_x, (xx + i))
                        ds_list_add(list_punti_uscita_y, yy)
                    }
                }
            }
        }
        for (yy = 10; yy < (grid_tile_h - 10); yy++)
        {
            xx = grid_tile_w
            aggiungere = 1
            for (i = 1; i < grid_tile_w; i++)
            {
                if (aggiungere == 1)
                {
                    if (ds_grid_get(grid_tile, (xx - i), yy) == -1 && ds_grid_get(grid_train, ((xx + i) div 6), (yy div 6)) == -7)
                    {
                        aggiungere = 0
                        ds_list_add(list_punti_uscita_x, (xx - i))
                        ds_list_add(list_punti_uscita_y, yy)
                    }
                }
            }
        }
        var list_size = ds_list_size(list_punti_uscita_x)
        if (list_size > 0)
        {
            var index = irandom(list_size)
            x1 = (ds_list_find_value(list_punti_uscita_x, index) * 16)
            y1 = (ds_list_find_value(list_punti_uscita_y, index) * 16)
            var _x = x1
            var _y = y1
            instance_create_depth(x1, y1, 0, obj_extraction_point)
            ds_list_add(global.list_extraction_x, ds_list_find_value(list_punti_uscita_x, index))
            ds_list_add(global.list_extraction_y, ds_list_find_value(list_punti_uscita_y, index))
            var _try_max = 1000
            randomize()
            for (i = 0; i < _try_max; i++)
            {
                index = irandom((list_size - 1))
                x1 = (ds_list_find_value(list_punti_uscita_x, index) * 16)
                y1 = (ds_list_find_value(list_punti_uscita_y, index) * 16)
                var x2 = _x
                var y2 = _y
                if (point_distance(x1, y1, x2, y2) > 1750)
                {
                    ds_list_add(global.list_extraction_x, ds_list_find_value(list_punti_uscita_x, index))
                    ds_list_add(global.list_extraction_y, ds_list_find_value(list_punti_uscita_y, index))
                    instance_create_depth(x1, y1, 0, obj_extraction_point)
                    i = _try_max
                }
            }
        }
        else
            room_restart()
        if (area == (4 << 0))
        {
            var _w = grid_tile_w
            var _h = grid_tile_h
            var _amount = 0
            var _amount_max = (_w * _h)
            for (xx = 0; xx < grid_tile_w; xx++)
            {
                for (yy = 0; yy < grid_tile_h; yy++)
                {
                    if (ds_grid_get(grid_water, xx, yy) == -1)
                        _amount += 1
                }
            }
            if (_amount > (_amount_max * 0.6))
                room_restart()
        }
        break
    case (13 << 0):
        instance_create_depth(0, 0, 0, obj_vertex_grass)
        break
    case (14 << 0):
        if (area == (6 << 0))
        {
            if instance_exists(obj_enemy_spawner_killa)
            {
                var _list_killa = ds_list_create()
                with (obj_enemy_spawner_killa)
                    ds_list_add(_list_killa, id)
                ds_list_shuffle(_list_killa)
                var _choosen_id = ds_list_find_value(_list_killa, 0)
                instance_create_depth(_choosen_id.x, _choosen_id.y, 0, obj_boss_killa)
                with (obj_enemy_spawner_killa)
                    instance_destroy()
            }
        }
        if (area == (6 << 0))
        {
            k = 0
            if instance_exists(obj_enemy_spawner_mall)
            {
                with (obj_enemy_spawner_mall)
                {
                    global.mall_spawn_id[k] = k
                    global.mall_spawn_x[k] = x
                    global.mall_spawn_y[k] = y
                    k++
                }
                var _list_spawn = ds_list_create()
                for (i = 0; i < array_length_1d(global.spmall_obj); i++)
                {
                    repeat global.spmall_chance[i]
                        ds_list_add(_list_spawn, i)
                }
                var _amount_indoor = 20
                repeat _amount_indoor
                {
                    var _quante_posizioni = array_length_1d(global.mall_spawn_id)
                    var _pos_id = irandom((_quante_posizioni - 1))
                    var _spawn_mall_x = global.mall_spawn_x[_pos_id]
                    var _spawn_mall_y = global.mall_spawn_y[_pos_id]
                    ds_list_shuffle(_list_spawn)
                    var _index = ds_list_find_value(_list_spawn, 0)
                    repeat global.spmall_amount[_index]
                        instance_create_depth(_spawn_mall_x, _spawn_mall_y, 0, global.spmall_obj[_index])
                }
                with (obj_enemy_spawner_mall)
                    instance_destroy()
            }
        }
        var player_spawn_x = (train_start_x * 96)
        var player_spawn_y = (train_start_y * 96)
        var oggetto_train = instance_create_depth((train_start_x * 96), ((train_start_y * 96) + 56), 0, obj_train)
        oggetto_train.stop_x = (train_stop_x * 96)
        oggetto_train.stop_y = (train_stop_y * 96)
        instance_create_depth(player_spawn_x, player_spawn_y, 0, obj_surface_aim)
        instance_create_depth(player_spawn_x, player_spawn_y, 0, obj_show_stat_item)
        instance_create_depth(player_spawn_x, player_spawn_y, 0, obj_camera)
        can_draw_surf_floor2 = 1
        obj_decor_parent.alarm[0] = 1
        obj_meteo_controller.alarm[0] = 10
        obj_object_shadow.alarm[0] = 1
        obj_minimap.alarm[0] = 2
        obj_controller.alarm[0] = 2
        obj_fog_setup.alarm[0] = 1
        obj_fog_setup.alarm[1] = 5
        break
    case (15 << 0):
        _amount = 12
        var _n_max_gruppi_disponibili = array_length_1d(global.d_npc_id)
        var _list = ds_list_create()
        for (i = 0; i < array_length_2d(global.d_npc_map, area); i++)
        {
            _list_amount_messi[i] = 0
            repeat global.d_npc_map[area][i]
                ds_list_add(_list, i)
        }
        var _messi = 0
        repeat (500)
        {
            if (_messi < _amount)
            {
                ds_list_shuffle(_list)
                var _quale_mettere = ds_list_find_value(_list, 0)
                if (area == (2 << 0) && _messi == 0)
                    _quale_mettere = (8 << 0)
                var _aggiungere = 1
                if (global.d_npc_unique[_quale_mettere] == 1 && _list_amount_messi[_quale_mettere] != 0)
                    _aggiungere = 0
                if (_aggiungere == 1)
                {
                    ds_list_add(global.list_dynamic_npc, _quale_mettere)
                    _list_amount_messi[_quale_mettere] += 1
                    _messi += 1
                }
            }
        }
        var _list_temp_x = ds_list_create()
        var _list_temp_y = ds_list_create()
        var _list_temp_free_x = ds_list_create()
        var _list_temp_free_y = ds_list_create()
        var _motion = obj_controller.grid_motion
        for (xx = 5; xx < (grid_tile_w - 5); xx++)
        {
            for (yy = 5; yy < (grid_tile_h - 5); yy++)
            {
                if (ds_grid_get(grid_tile, xx, yy) == -1)
                {
                    if (ds_grid_get(_motion, xx, yy) == 0 && ds_grid_get(grid_water, xx, yy) == -7 && ds_grid_get(grid_building, xx, yy) != (2 << 0))
                    {
                        ds_list_add(_list_temp_free_x, ((xx * 16) + 8))
                        ds_list_add(_list_temp_free_y, ((xx * 16) + 8))
                        ds_list_add(_list_temp_x, (xx * 16))
                        ds_list_add(_list_temp_y, (yy * 16))
                    }
                }
            }
        }
        randomize()
        repeat _amount
        {
            var _pos_trovata = 0
            repeat (1000)
            {
                if (_pos_trovata == 0)
                {
                    var _list_pos_size = ds_list_size(_list_temp_x)
                    var _id_pos = irandom((_list_pos_size - 1))
                    ds_list_add(global.list_dynamic_npc_x, ds_list_find_value(_list_temp_x, _id_pos))
                    ds_list_add(global.list_dynamic_npc_y, ds_list_find_value(_list_temp_y, _id_pos))
                    _pos_trovata = 1
                }
            }
        }
        for (i = 0; i < _amount; i++)
        {
            var _id_group = array_get(global.d_npc_id, ds_list_find_value(global.list_dynamic_npc, i))
            var _create_x = ds_list_find_value(global.list_dynamic_npc_x, i)
            var _create_y = ds_list_find_value(global.list_dynamic_npc_y, i)
            _pos_trovata = 0
            _prova_x[0] = 0
            _prova_y[0] = 0
            var _path_amount = 0
            var _path_amount_max = 9
            repeat (15)
            {
                if (_path_amount < _path_amount_max)
                {
                    _list_pos_size = ds_list_size(_list_temp_free_x)
                    _id_pos = irandom((_list_pos_size - 1))
                    _prova_x[_path_amount] = ds_list_find_value(_list_temp_free_x, _id_pos)
                    _prova_y[_path_amount] = ds_list_find_value(_list_temp_free_y, _id_pos)
                    _path_amount++
                }
            }
            if (global.d_npc_amount[_id_group] > 0)
            {
                var list_new_x = ds_list_create()
                var list_new_y = ds_list_create()
                for (xx = -2; xx < 3; xx++)
                {
                    for (yy = -2; yy < 3; yy++)
                    {
                        var _gx = (_create_x div 16)
                        var _gy = (_create_y div 16)
                        if (ds_grid_get(obj_controller.grid_motion, (_gx + xx), (_gy + yy)) == 0 && ds_grid_get(grid_tile, (_gx + xx), (_gy + yy)) == -1 && ds_grid_get(grid_water, (_gx + xx), (_gy + yy)) == -7)
                        {
                            var _new_real_x = ((_gx + xx) * 16)
                            var _new_real_y = ((_gy + yy) * 16)
                            if (!(collision_line((_create_x + 8), (_create_y + 8), (_new_real_x + 8), (_new_real_y + 8), obj_solid, false, true)))
                            {
                                ds_list_add(list_new_x, (_gx + xx))
                                ds_list_add(list_new_y, (_gy + yy))
                            }
                        }
                    }
                }
                repeat global.d_npc_amount[_id_group]
                {
                    var _choose_index = irandom((ds_list_size(list_new_x) - 1))
                    var _new_x = (ds_list_find_value(list_new_x, _choose_index) * 16)
                    var _new_y = (ds_list_find_value(list_new_y, _choose_index) * 16)
                    var _group_created = instance_create_depth((_new_x + 8), (_new_y + 8), 0, global.d_npc_object[_id_group])
                    _group_created.follow_path = 1
                    k = 0
                    if (k < _path_amount_max)
                    {
                        _group_created.path_goto_x[k] = _prova_x[k]
                        _group_created.path_goto_y[k] = _prova_y[k]
                        if (k == 0)
                        {
                            _group_created.path_goto_x[k] = (_new_x + 8)
                            _group_created.path_goto_y[k] = (_new_y + 8)
                        }
                        for (k++; k < _path_amount_max; k++)
                        {
                            _group_created.path_goto_x[k] = _prova_x[k]
                            _group_created.path_goto_y[k] = _prova_y[k]
                            if (k == 0)
                            {
                                _group_created.path_goto_x[k] = (_new_x + 8)
                                _group_created.path_goto_y[k] = (_new_y + 8)
                            }
                        }
                    }
                }
            }
        }
        break
    case (16 << 0):
        j = 0
        with (obj_npc_parent)
        {
            if (y < obj_map_generator.map_height)
            {
                if (object_index != obj_enemy_rabbit)
                {
                    global.list_n_id[j] = id
                    global.list_n_npc_id[j] = npc_id
                    global.list_n_hp[j] = hp
                    global.list_n_x[j] = x
                    global.list_n_y[j] = y
                    global.list_n_follow_path[j] = follow_path
                    global.list_n_power[j] = npc_power[npc_id]
                    j++
                }
            }
        }
        with (obj_npc_parent)
            path_create_now = 1
        if (room != r_hub)
        {
            obj_controller.alarm[2] = 1
            obj_controller.alarm[4] = 2
            with (obj_npc_parent)
                state = npc_state_patrol[npc_id]
        }
        break
    case (17 << 0):
        break
}

tempo_generazione[state] = (current_time - tempo_start)
if (state == (17 << 0))
{
    var _timer = round(tempo_generazione[(17 << 0)])
    ga_addDesignEvent("Map_gen:Time", _timer)
}
switch state
{
    case (0 << 0):
        state = (1 << 0)
        break
    case (1 << 0):
        state = (2 << 0)
        break
    case (2 << 0):
        state = (3 << 0)
        break
    case (3 << 0):
        state = (4 << 0)
        break
    case (4 << 0):
        state = (5 << 0)
        break
    case (5 << 0):
        state = (6 << 0)
        break
    case (6 << 0):
        state = (7 << 0)
        break
    case (7 << 0):
        state = (8 << 0)
        break
    case (8 << 0):
        state = (9 << 0)
        break
    case (9 << 0):
        state = (10 << 0)
        break
    case (10 << 0):
        state = (11 << 0)
        break
    case (11 << 0):
        state = (12 << 0)
        break
    case (12 << 0):
        state = (13 << 0)
        break
    case (13 << 0):
        state = (14 << 0)
        break
    case (14 << 0):
        state = (15 << 0)
        break
    case (15 << 0):
        state = (16 << 0)
        break
    case (16 << 0):
        state = (17 << 0)
        break
    case (17 << 0):
        state = (18 << 0)
        break
    case (18 << 0):
        break
}

if (state != (19 << 0) && debug == 0)
    alarm[2] = time_beetween_generation
