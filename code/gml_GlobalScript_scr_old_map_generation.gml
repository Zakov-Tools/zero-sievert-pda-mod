var train_arrx;
function scr_old_map_generation() //gml_Script_scr_old_map_generation
{
    if (area == (1 << 0))
    {
        raggio = 3
        var direzioni = 8
        var quale_direzione = (360 div direzioni)
        for (var i = 0; i < direzioni; i += 1)
        {
            controllerx = generator_startx
            controllery = generator_starty
            var j = 0
            var amount = 400
            var dir = irandom(360)
            repeat amount
            {
                j++
                ds_grid_set_disk(grid_map, controllerx, controllery, raggio, -1)
                dir = irandom(360)
                if scr_chance(7)
                    dir = (i * quale_direzione)
                var dirx = lengthdir_x(raggio, dir)
                var diry = lengthdir_y(raggio, dir)
                controllerx += dirx
                controllery += diry
                var offset_dai_margini = 14
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
            amount = 140
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
    }
    if (area == (4 << 0))
    {
        var h2 = (grid_map_h div 2)
        ds_grid_set_region(grid_map, (grid_map_w - 30), h2, grid_map_w, (h2 + 3), -1)
        swamp_player_spawnx = ((grid_map_w - 15) * 32)
        swamp_player_spawny = ((h2 + 1) * 32)
        var jj = 0
        repeat (1400)
        {
            jj++
            var ppp = 15
            var px = irandom_range(ppp, (grid_map_w - ppp))
            var py = irandom_range(ppp, (grid_map_h - ppp))
            var range = 1
            if (frac((jj / 50)) == 0)
                range = 6
            ds_grid_set_disk(grid_map, px, py, range, -1)
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
    var train_start_x = 0
    var train_start_y = 0
    var train_stop_x = 0
    var train_stop_y = 0
    if (area == (1 << 0))
    {
        train_start_x = grid_train_w
        train_start_y = (grid_train_h div 2)
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
        train_start_y = ((grid_train_h div 2) + 10)
        for (i = 0; i < grid_train_w; i++)
            ds_grid_set(grid_train, i, train_start_y, 1)
    }
    if (area == (4 << 0))
    {
        train_start_x = grid_train_w
        train_start_y = (grid_train_h div 2)
        for (i = grid_train_w; i > (grid_train_w div 2); i--)
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
            jj = 0
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
    if (area == (3 << 0))
    {
        surface_road_industrial_area = surface_create(grid_tile_w, grid_tile_h)
        surface_set_target(surface_road_industrial_area)
        draw_sprite(s_industrial_area_road, 0, 0, 0)
        var sprite_w = sprite_get_width(s_industrial_area_road)
        var sprite_h = sprite_get_height(s_industrial_area_road)
        for (var sx = 0; sx < sprite_w; sx++)
        {
            for (var sy = 0; sy < sprite_h; sy++)
            {
                var pixel_color = surface_getpixel(surface_road_industrial_area, sx, sy)
                if (pixel_color == 0)
                    ds_grid_set(grid_strada, sx, sy, 1)
                if (pixel_color == 255)
                    ds_grid_set_region(grid_map, (sx * 3), (sy * 3), ((sx * 3) + 2), ((sy * 3) + 2), -1)
            }
        }
        surface_reset_target()
    }
    if (area == (5 << 0))
    {
        road_start_pos = 3
        stradax = road_startx[road_start_pos]
        straday = road_starty[road_start_pos]
        var stop_at = 50
        var stop_search = 0
        var stop = 0
        var pp = 0
        repeat (50)
        {
            if (stop == 0)
            {
                if (ds_grid_get(grid_map, ((stradax - 1) * 3), (straday * 3)) == -1)
                {
                    if (stop_search == 0)
                    {
                        stop_at = (pp + 4)
                        stop_search = 1
                    }
                }
                if (pp == stop_at)
                {
                    stop = 1
                    var exit_x = (((stradax + 1) * 6) * 16)
                    var exit_y = ((straday * 6) * 16)
                    var ooo = instance_create_depth((exit_x - 8), exit_y, (-y), obj_concrete_16x32)
                    ooo.need_to_check = 0
                    ooo.decor_id = (9 << 0)
                    ooo = instance_create_depth((exit_x - 8), (exit_y + 32), (-y), obj_concrete_16x32)
                    ooo.need_to_check = 0
                    ooo.decor_id = (9 << 0)
                    ooo = instance_create_depth((exit_x - 8), (exit_y + 64), (-y), obj_concrete_16x32)
                    ooo.need_to_check = 0
                    ooo.decor_id = (9 << 0)
                }
                ds_grid_set(grid_strada, stradax, straday, 1)
                dir = road_direction[road_start_pos]
                stradax -= 1
                straday += 0
            }
            pp++
        }
    }
    if (area == (7 << 0))
    {
        surface_road_zaton = surface_create(grid_strada_w, grid_strada_h)
        surface_set_target(surface_road_zaton)
        draw_sprite(s_zaton_road, 0, 0, 0)
        sprite_w = sprite_get_width(s_zaton_road)
        sprite_h = sprite_get_height(s_zaton_road)
        var zat_building = 0
        for (sx = 0; sx < sprite_w; sx++)
        {
            for (sy = 0; sy < sprite_h; sy++)
            {
                pixel_color = surface_getpixel(surface_road_zaton, sx, sy)
                if (pixel_color == 0)
                    ds_grid_set(grid_strada, sx, sy, 1)
                if (pixel_color == make_color_rgb(0, 255, 0))
                {
                    train_start_x = grid_train_w
                    train_start_y = sy
                    var zaton_stop_train_x = sx
                    var zaton_stop_train_y = sy
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
    if (area == (1 << 0) || area == (3 << 0) || area == (2 << 0) || area == (7 << 0))
    {
        for (var yy = 1; yy < (grid_tile_w - 1); yy++)
        {
            for (var xx = 1; xx < (grid_tile_h - 1); xx++)
            {
                if scr_chance(5)
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
                    var which_floor2 = choose(5, 6)
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
    layer_create(100, "road_layer")
    var road_tileset_sprite = 0
    if (area == (7 << 0))
        road_tileset_sprite = 14
    else
        road_tileset_sprite = 12
    var layer_tileset_road = layer_tilemap_create("road_layer", 0, 0, road_tileset_sprite, grid_strada_w, grid_strada_h)
    scr_autotiling_road(layer_tileset_road)
    layer_create(75, "railroad_layer")
    var layer_tileset_railroad = layer_tilemap_create("railroad_layer", 0, 0, 18, grid_train_w, grid_train_h)
    for (yy = 0; yy < grid_train_h; yy++)
    {
        for (xx = 0; xx < grid_train_w; xx++)
        {
            if (ds_grid_get(grid_train, xx, yy) == 1)
            {
                ds_grid_set_region(grid_map, (xx * 3), (yy * 3), ((xx * 3) + 2), ((yy * 3) + 2), -1)
                ds_grid_set_region(grid_building, (xx * 6), (yy * 6), ((xx * 6) + 5), ((yy * 6) + 5), (2 << 0))
                ds_grid_set_region(grid_floor2, (xx * 6), ((yy * 6) + 1), ((xx * 6) + 5), ((yy * 6) + 4), 6)
                tilemap_set(layer_tileset_railroad, 1, xx, yy)
            }
        }
    }
    if (area != (7 << 0))
    {
        var tarr = -1
        for (var tx = 0; tx < grid_train_w; tx++)
        {
            for (var ty = 0; ty < grid_train_h; ty++)
            {
                if (ds_grid_get(grid_train, tx, ty) == 1)
                {
                    var txmx = (tx * 3)
                    var tymy = (ty * 3)
                    if (ds_grid_get(grid_map, txmx, (tymy + 4)) == -1 && ds_grid_get(grid_map, (txmx + 1), (tymy + 4)) == -1 && ds_grid_get(grid_map, txmx, (tymy + 4)) == -1)
                    {
                        tarr++
                        train_arrx[tarr] = tx
                        train_arry[tarr] = ty
                    }
                }
            }
        }
        var choose_tarr = 0
        choose_tarr = irandom((array_length_1d(train_arrx) - 1))
        choose_tarr = clamp(choose_tarr, 0, (array_length_1d(train_arrx) - 1))
        train_stop_x = train_arrx[choose_tarr]
        train_stop_y = train_arry[choose_tarr]
    }
    if (area == (7 << 0))
    {
        train_stop_x = zaton_stop_train_x
        train_stop_y = zaton_stop_train_y
    }
    ds_grid_set_disk(grid_building, (train_stop_x * 6), (train_stop_y * 6), 10, (1 << 0))
    for (xx = 0; xx < grid_map_w; xx++)
    {
        for (yy = 0; yy < grid_map_h; yy++)
        {
            if (ds_grid_get(grid_map, xx, yy) == -1)
                ds_grid_set_region(grid_tile, (xx * 2), (yy * 2), ((xx * 2) + 1), ((yy * 2) + 1), -1)
        }
    }
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
                    }
                }
            }
        }
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
    if (area == (4 << 0))
    {
        for (xx = 0; xx < grid_rw; xx++)
        {
            for (yy = 0; yy < grid_rh; yy++)
            {
                if (ds_grid_get(grid_tile, xx, yy) == -7)
                {
                    ds_grid_set(grid_radiation, xx, yy, 300)
                    tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -7
                    tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -7
                    tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -7
                    tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -7
                    if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                    {
                        if scr_chance(50)
                        {
                            var oo = instance_create_depth((xx * 16), (yy * 16), 0, obj_erba_alta_swamp)
                            oo.decor_id = (6 << 0)
                            oo.need_to_check = 0
                        }
                    }
                }
            }
        }
    }
    depth = 50
    layer_create(200, "floor_layer")
    layer_create(-50, "fence_layer")
    layer_create(-8400, "wall_above_layer")
    layer_create(-8200, "wall_below_layer")
    layer_create(50, "fence_shadow_layer")
    layer_create(175, "wall_swamp")
    layer_create(125, "water_layer")
    var layer_tileset_floor = layer_tilemap_create("floor_layer", 0, 0, area_tileset_floor[area], grid_tile_w, grid_tile_h)
    var layer_tileset_wall_above = layer_tilemap_create("wall_above_layer", 0, 0, area_tileset_wall[area], grid_tile_w, grid_tile_h)
    var layer_tileset_wall_below = layer_tilemap_create("wall_below_layer", 0, 0, area_tileset_wall[area], grid_tile_w, grid_tile_h)
    var layer_tileset_wall_swamp = layer_tilemap_create("wall_swamp", 0, 0, area_tileset_wall[area], grid_tile_w, grid_tile_h)
    var layer_tileset_water = layer_tilemap_create("water_layer", 0, 0, 9, grid_tile_w, grid_tile_h)
    for (xx = 0; xx < grid_tile_w; xx++)
    {
        for (yy = 0; yy < grid_tile_h; yy++)
            tilemap_set(layer_tileset_floor, area_tileset_floor_box[area], xx, yy)
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
                if (area_autotiling_mode[area] == (2 << 0))
                {
                    if ((!tile_sopra) && (!tile_sotto) && (!tile_dx) && (!tile_sx))
                    {
                        if ((!tile_sopra_dx) && (!tile_sopra_sx) && (!tile_sotto_dx) && (!tile_sotto_sx))
                            tilemap_set(layer_tileset_wall_below, 4, xx, yy)
                        if (tile_sopra_dx && (!tile_sopra_sx) && (!tile_sotto_dx) && (!tile_sotto_sx))
                            tilemap_set(layer_tileset_wall_below, 16, xx, yy)
                        if ((!tile_sopra_dx) && tile_sopra_sx && (!tile_sotto_dx) && (!tile_sotto_sx))
                            tilemap_set(layer_tileset_wall_below, 17, xx, yy)
                        if ((!tile_sopra_dx) && (!tile_sopra_sx) && tile_sotto_dx && (!tile_sotto_sx))
                            tilemap_set(layer_tileset_wall_below, 12, xx, yy)
                        if ((!tile_sopra_dx) && (!tile_sopra_sx) && (!tile_sotto_dx) && tile_sotto_sx)
                            tilemap_set(layer_tileset_wall_below, 13, xx, yy)
                    }
                    if (tile_sopra && (!tile_sotto) && (!tile_dx) && (!tile_sx))
                        tilemap_set(layer_tileset_wall_below, 2, xx, yy)
                    if ((!tile_sopra) && (!tile_sotto) && tile_dx && (!tile_sx))
                        tilemap_set(layer_tileset_wall_below, 7, xx, yy)
                    if ((!tile_sopra) && (!tile_sotto) && (!tile_dx) && tile_sx)
                        tilemap_set(layer_tileset_wall_below, 5, xx, yy)
                    if (tile_sopra && (!tile_sotto) && (!tile_dx) && tile_sx)
                        tilemap_set(layer_tileset_wall_below, 1, xx, yy)
                    if (tile_sopra && (!tile_sotto) && tile_dx && (!tile_sx))
                        tilemap_set(layer_tileset_wall_below, 3, xx, yy)
                    if ((!tile_sopra) && tile_sotto && (!tile_dx) && tile_sx)
                        tilemap_set(layer_tileset_wall_below, 9, xx, yy)
                    if ((!tile_sopra) && tile_sotto && tile_dx && (!tile_sx))
                        tilemap_set(layer_tileset_wall_below, 11, xx, yy)
                    if ((!tile_sopra) && tile_sotto && (!tile_dx) && (!tile_sx))
                        tilemap_set(layer_tileset_wall_below, 10, xx, yy)
                }
            }
        }
    }
    for (xx = 1; xx < (grid_tile_w - 1); xx++)
    {
        for (yy = 1; yy < (grid_tile_h - 1); yy++)
        {
            if (ds_grid_get(grid_water, xx, yy) == -1)
            {
                tile_sopra = ds_grid_get(grid_water, xx, (yy - 1)) == -1
                tile_sx = ds_grid_get(grid_water, (xx - 1), yy) == -1
                tile_dx = ds_grid_get(grid_water, (xx + 1), yy) == -1
                tile_sotto = ds_grid_get(grid_water, xx, (yy + 1)) == -1
                tile_sotto_sx = ds_grid_get(grid_water, (xx - 1), (yy + 1)) == -1
                tile_sotto_dx = ds_grid_get(grid_water, (xx + 1), (yy + 1)) == -1
                tile_sopra_sx = ds_grid_get(grid_water, (xx - 1), (yy - 1)) == -1
                tile_sopra_dx = ds_grid_get(grid_water, (xx + 1), (yy - 1)) == -1
                if (tile_sopra && tile_sotto && tile_dx && tile_sx && tile_sopra_dx && tile_sopra_sx && tile_sotto_dx && tile_sotto_sx)
                    instance_create_depth((xx * 16), (yy * 16), 0, obj_solid_can_see)
                if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                {
                    tilemap_set(layer_tileset_water, 4, xx, yy)
                    if (!tile_sopra_dx)
                        tilemap_set(layer_tileset_water, 16, xx, yy)
                    if (!tile_sopra_sx)
                        tilemap_set(layer_tileset_water, 17, xx, yy)
                    if (!tile_sotto_dx)
                        tilemap_set(layer_tileset_water, 12, xx, yy)
                    if (!tile_sotto_sx)
                        tilemap_set(layer_tileset_water, 13, xx, yy)
                }
                if ((!tile_sopra) && tile_sotto && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_water, 1, xx, yy)
                if ((!tile_sopra) && tile_sotto && tile_dx && tile_sx)
                    tilemap_set(layer_tileset_water, 2, xx, yy)
                if ((!tile_sopra) && tile_sotto && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_water, 3, xx, yy)
                if (tile_sopra && tile_sotto && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_water, 5, xx, yy)
                if (tile_sopra && tile_sotto && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_water, 7, xx, yy)
                if (tile_sopra && (!tile_sotto) && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_water, 9, xx, yy)
                if (tile_sopra && (!tile_sotto) && tile_dx && tile_sx)
                    tilemap_set(layer_tileset_water, 10, xx, yy)
                if (tile_sopra && (!tile_sotto) && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_water, 11, xx, yy)
            }
        }
    }
    offset_dai_margini = 6
    for (xx = 1; xx < (grid_tile_w - 1); xx++)
    {
        for (yy = 1; yy < (grid_tile_h - 1); yy++)
        {
            if (xx == offset_dai_margini || xx == (grid_tile_w - offset_dai_margini))
                instance_create_depth((xx * 16), (yy * 16), 0, obj_solid)
            if (yy == offset_dai_margini || yy == (grid_tile_h - offset_dai_margini))
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
    scr_building_sprite()
    if (area == (3 << 0) || area == (7 << 0))
        scr_autotiling_road(layer_tileset_road)
    var lista_place = ds_list_create()
    for (i = 0; i < array_length_2d(area_obj, area); i++)
    {
        repeat area_obj_amount[area][i]
            ds_list_add(lista_place, area_obj[area][i])
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
                if (area_obj_amount_now[area][which_place] < area_obj_amount[area][which_place])
                {
                    if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(grid_building, xx, yy) == (0 << 0))
                    {
                        var can_place = 1
                        var raggio_ = place_radius[which_place]
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
                            instance_create_depth(posx, posy, (-y), place_obj[which_place])
                            var icon = instance_create_depth(posx, posy, 2000, obj_minimap_icon)
                            icon.icon = place_icon[which_place]
                            area_obj_amount_now[area][which_place] += 1
                        }
                    }
                }
            }
            else
                j = (_try - 1)
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
    repeat (50)
    {
        xx = irandom(grid_tile_w)
        yy = irandom(grid_tile_h)
        if (ds_grid_get(grid_tile, xx, yy) == -1)
        {
            tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -1
            tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -1
            tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -1
            tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -1
            if (tile_sopra && tile_sotto && tile_dx && tile_sx)
            {
                tx = (((xx * 16) + 8) + irandom_range(-8, 8))
                ty = (((yy * 16) + 8) + irandom_range(-8, 8))
                instance_create_depth(tx, ty, (-y), obj_chest_wood_box)
                var iconx = (xx * 16)
                var icony = (yy * 16)
                icon = instance_create_depth(iconx, icony, 2000, obj_minimap_icon)
                icon.icon = (4 << 0)
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
                    var xm = (xx * 6)
                    var ym = (yy * 6)
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
    layer_create(90, "parking_layer")
    var layer_tileset_parking = layer_tilemap_create("parking_layer", 0, 0, 16, grid_parking_w, grid_parking_h)
    for (yy = 0; yy < grid_parking_w; yy++)
    {
        for (xx = 0; xx < grid_parking_h; xx++)
        {
            if (ds_grid_get(grid_parking, xx, yy) == 1)
            {
                tile_sopra = ds_grid_get(grid_parking, xx, (yy - 1)) == 1
                tile_sx = ds_grid_get(grid_parking, (xx - 1), yy) == 1
                tile_dx = ds_grid_get(grid_parking, (xx + 1), yy) == 1
                tile_sotto = ds_grid_get(grid_parking, xx, (yy + 1)) == 1
                if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                    tilemap_set(layer_tileset_parking, 6, xx, yy)
                if ((!tile_sopra) && tile_sotto && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_parking, 1, xx, yy)
                if ((!tile_sopra) && tile_sotto && tile_dx && tile_sx)
                    tilemap_set(layer_tileset_parking, 2, xx, yy)
                if ((!tile_sopra) && tile_sotto && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_parking, 3, xx, yy)
                if (tile_sopra && tile_sotto && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_parking, 5, xx, yy)
                if (tile_sopra && tile_sotto && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_parking, 7, xx, yy)
                if (tile_sopra && (!tile_sotto) && tile_dx && (!tile_sx))
                    tilemap_set(layer_tileset_parking, 9, xx, yy)
                if (tile_sopra && (!tile_sotto) && tile_dx && tile_sx)
                    tilemap_set(layer_tileset_parking, 10, xx, yy)
                if (tile_sopra && (!tile_sotto) && (!tile_dx) && tile_sx)
                    tilemap_set(layer_tileset_parking, 11, xx, yy)
            }
        }
    }
    ini_open(global.save_general)
    var quest_amount = 30
    for (j = 0; j < quest_amount; j++)
    {
        var quest_id_ = ini_read_real("Quest", ((("y_" + string(j)) + "_x_") + string(0)), -1)
        if (quest_id_ != -1)
        {
            if (global.quest_type[quest_id_] == (4 << 0))
            {
                if (global.quest_retrive_map[quest_id_] == area)
                {
                    var quest_status = ini_read_real("Quest", ((("y_" + string(j)) + "_x_") + string(1)), -1)
                    if (quest_status == 1)
                    {
                        var retrive_chest_created = 0
                        repeat (400)
                        {
                            if (retrive_chest_created == 0)
                            {
                                xx = irandom(grid_tile_w)
                                yy = irandom(grid_tile_h)
                                if (ds_grid_get(grid_tile, xx, yy) == -1 && ds_grid_get(grid_building, xx, yy) == (0 << 0))
                                {
                                    tile_sopra = ds_grid_get(grid_tile, xx, (yy - 1)) == -1
                                    tile_sx = ds_grid_get(grid_tile, (xx - 1), yy) == -1
                                    tile_dx = ds_grid_get(grid_tile, (xx + 1), yy) == -1
                                    tile_sotto = ds_grid_get(grid_tile, xx, (yy + 1)) == -1
                                    if (tile_sopra && tile_sotto && tile_dx && tile_sx)
                                    {
                                        tx = (((xx * 16) + 8) + irandom_range(-8, 8))
                                        ty = (((yy * 16) + 8) + irandom_range(-8, 8))
                                        instance_create_depth(tx, ty, ((-y) + 10), chest_retrive_object)
                                        retrive_chest_created = 1
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    ini_close()
    return;
}

