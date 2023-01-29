function scr_building_sprite() //gml_Script_scr_building_sprite
{
    surface_building = surface_create(grid_tile_w, grid_tile_h)
    surface_set_target(surface_building)
    for (var quale_building = 0; quale_building < area_different_building[area]; quale_building++)
    {
        var building_amount = area_building_amount[area][quale_building]
        var built = 0
        var get_sprite = area_building_sprite[area][quale_building]
        var sprite_w = sprite_get_width(get_sprite)
        var sprite_h = sprite_get_height(get_sprite)
        var layer_tileset_fence_shadow = layer_tilemap_create("fence_shadow_layer", 0, 0, area_building_tileset_wall_shadow[area][quale_building], grid_tile_w, grid_tile_h)
        repeat (20000)
        {
            if (built < building_amount)
            {
                var xx = irandom(grid_tile_w)
                var yy = irandom(grid_tile_h)
                if (area == (3 << 0))
                {
                    if (quale_building == 0)
                    {
                        xx = choose(96, 144)
                        yy = choose(102, 144)
                    }
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
                            var iconx = ((xx + (sprite_w / 2)) * 16)
                            var icony = ((yy + (sprite_w / 2)) * 16)
                            var icon = instance_create_depth(iconx, icony, 2000, obj_minimap_icon)
                            icon.icon = area_building_icon[area][quale_building]
                            built += 1
                            var offset_b = 12
                            if (area == (3 << 0))
                            {
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
                                    ds_grid_set(grid_building, (xx + sx), (yy + sy), -1)
                            }
                            var which_building = irandom(sprite_get_number(get_sprite))
                            which_building = clamp(which_building, 0, sprite_get_number(get_sprite))
                            draw_sprite(get_sprite, which_building, xx, yy)
                            for (sx = 0; sx < sprite_w; sx++)
                            {
                                for (sy = 0; sy < sprite_h; sy++)
                                {
                                    var pixel_color = surface_getpixel(surface_building, (xx + sx), (yy + sy))
                                    var chest_x = ((xx + sx) * 16)
                                    var chest_y = ((yy + sy) * 16)
                                    switch pixel_color
                                    {
                                        case 0:
                                            ds_grid_set(grid_building, (xx + sx), (yy + sy), -5)
                                            break
                                        case 7895160:
                                            ds_grid_set(grid_floor2, (xx + sx), (yy + sy), 0)
                                            break
                                        case 10395294:
                                            ds_grid_set(grid_floor2, (xx + sx), (yy + sy), 1)
                                            break
                                        case 16711935:
                                            var xx_ = ((xx + sx) div 6)
                                            var yy_ = ((yy + sy) div 6)
                                            ds_grid_set(grid_strada, xx_, yy_, 1)
                                            break
                                        case 16711842:
                                            xx_ = ((xx + sx) div 6)
                                            yy_ = ((yy + sy) div 6)
                                            ds_grid_set(grid_parking, xx_, yy_, 1)
                                            break
                                        case 16775936:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_tree, obj_tree, 1, (1 << 0))
                                            break
                                        case 16705024:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_tree_dead, obj_tree_dead, 1, (2 << 0))
                                            break
                                        case 8388863:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_house_5x3, obj_house5x3, 1, (34 << 0))
                                            break
                                        case 4718735:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_house_container, obj_house_container, 1, (36 << 0))
                                            break
                                        case 5898421:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_avamposto_wood, obj_avamposto_wood, 1, (38 << 0))
                                            break
                                        case 6881491:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_house_5x3_burnt, obj_house_burnt, 1, (35 << 0))
                                            break
                                        case 3801205:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_house_diagonale, obj_house_diagonale, 1, (39 << 0))
                                            break
                                        case 2621520:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_hangar, obj_hangar, 1, (40 << 0))
                                            break
                                        case 14418140:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_factory, obj_factory, 1, (41 << 0))
                                            break
                                        case 13238474:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_factory_big, obj_factory_big, 1, (42 << 0))
                                            break
                                        case 11403438:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_factory_diagonale, obj_factory_diagonale, 1, (43 << 0))
                                            break
                                        case 9765013:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_zaton_grattacielo, obj_zaton_grattacielo, 1, (30 << 0))
                                            break
                                        case 7536755:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_zaton_negozi, obj_zaton_negozio, 1, (31 << 0))
                                            break
                                        case 11141228:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_zaton_ospedale, obj_zaton_ospedale, 1, (33 << 0))
                                            break
                                        case 8912982:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_zaton_polizia, obj_zaton_polizia, 1, (32 << 0))
                                            break
                                        case 14745600:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_car, obj_car, 1, (17 << 0))
                                            break
                                        case 8716288:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_lampione1, obj_lampione, 1, (19 << 0))
                                            break
                                        case 10813440:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_cassonetto, obj_cassonetto, 1, (20 << 0))
                                            break
                                        case 12910592:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_container, obj_container, 1, (21 << 0))
                                            break
                                        case 14745742:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_panchina, obj_panchina, 1, (22 << 0))
                                            break
                                        case 13107327:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_bidone_piccolo, obj_bidone_piccolo, 1, (23 << 0))
                                            break
                                        case 10441984:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_barrier_su, obj_barrier_su, 1, (14 << 0))
                                            break
                                        case 12346368:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_barrier_giu, obj_barrier_giu, 1, (15 << 0))
                                            break
                                        case 14644992:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_barrier_dx, obj_barrier_dx, 1, (13 << 0))
                                            break
                                        case 16746496:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_barrier_sx, obj_barrier_sx, 1, (12 << 0))
                                            break
                                        case 8603136:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_concrete_32x48, obj_concrete_32x48, 1, (11 << 0))
                                            break
                                        case 6304512:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_concrete_16x32, obj_concrete_16x32, 1, (9 << 0))
                                            break
                                        case 16711680:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_barrel, obj_barrel_acciaio_fire, 1, (18 << 0))
                                            break
                                        case 65526:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_chest_tool_box, obj_chest_tool_box, 0, 0)
                                            break
                                        case 29695:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_chest_electronic_box, obj_chest_electronic_box, 0, 0)
                                            break
                                        case 31350:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_chest_medication, obj_chest_medication_box, 0, 0)
                                            break
                                        case 21328:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_chest_wood2, obj_chest_wood_box, 0, 0)
                                            break
                                        case 57304:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_chest_weapon_box_common, obj_weapon_box_common, 0, 0)
                                            break
                                        case 62386:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_chest_weapon_box_rare, obj_weapon_box_rare, 0, 0)
                                            break
                                        case 38802:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_chest_weapon_box_legendary, obj_weapon_box_legendary, 0, 0)
                                            break
                                        case 255:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_bandit_novice_idle, obj_enemy_human_bandit_novice, 0, 0)
                                            break
                                        case 220:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_bandit_regular_idle, obj_enemy_human_bandit_regular, 0, 0)
                                            break
                                        case 181:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_bandit_expert_idle, obj_enemy_human_bandit_regular, 0, 0)
                                            break
                                        case 143:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_enemy_zombie_idle, obj_enemy_zombie, 0, 0)
                                            break
                                        case 5480194:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_wood_pile_orizzontale, obj_wood_pile_orizzontale, 1, (26 << 0))
                                            break
                                        case 6602498:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_wood_pile_verticale, obj_wood_pile_verticale, 1, (27 << 0))
                                            break
                                        case 8781571:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_sawmill_1, obj_sawmill1, 1, (28 << 0))
                                            break
                                        case 7659266:
                                            scr_place_obj_map_generation(chest_x, chest_y, s_sawmill_2, obj_sawmill2, 1, (29 << 0))
                                            break
                                    }

                                }
                            }
                            for (var bx = (sprite_w - 1); bx > -1; bx--)
                            {
                                for (var by = (sprite_h - 1); by > -1; by--)
                                {
                                    sx = (xx + bx)
                                    sy = (yy + by)
                                    if (ds_grid_get(grid_building, sx, sy) == -5)
                                    {
                                        instance_create_depth((sx * 16), (sy * 16), -999, obj_solid)
                                        var ttile = area_building_sprite_wall[area][quale_building]
                                        var tile_sopra = ds_grid_get(grid_building, sx, (sy - 1)) == -5
                                        var tile_sx = ds_grid_get(grid_building, (sx - 1), sy) == -5
                                        var tile_dx = ds_grid_get(grid_building, (sx + 1), sy) == -5
                                        var tile_sotto = ds_grid_get(grid_building, sx, (sy + 1)) == -5
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
                                        if (tile_dx && tile_sx)
                                        {
                                            tilemap_set(layer_tileset_fence_shadow, 1, sx, sy)
                                            tilemap_set(layer_tileset_fence_shadow, 6, sx, (sy + 1))
                                        }
                                        if ((!tile_dx) && (!tile_sx))
                                        {
                                            tilemap_set(layer_tileset_fence_shadow, 4, sx, sy)
                                            tilemap_set(layer_tileset_fence_shadow, 9, sx, (sy + 1))
                                        }
                                        if ((!tile_dx) && tile_sx)
                                        {
                                            tilemap_set(layer_tileset_fence_shadow, 3, sx, sy)
                                            tilemap_set(layer_tileset_fence_shadow, 8, sx, (sy + 1))
                                        }
                                        if (tile_dx && (!tile_sx))
                                        {
                                            tilemap_set(layer_tileset_fence_shadow, 2, sx, sy)
                                            tilemap_set(layer_tileset_fence_shadow, 7, sx, (sy + 1))
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
    surface_reset_target()
    return;
}

