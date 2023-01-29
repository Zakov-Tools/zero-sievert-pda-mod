var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (room == room1)
{
    var cell_w = obj_map_generator.grid_tile_w
    var cell_h = obj_map_generator.grid_tile_h
    var sx = (240 - (cell_w / 2))
    var sy = (135 - (cell_h / 2))
    if (start_drawing_surface == 1)
    {
        if (!surface_exists(surface_map))
        {
            var _off = 48
            var surf_w = (((room_width div 16) * 1) + _off)
            var surf_h = (((room_height div 16) * 1) + _off)
            surface_map = surface_create(surf_w, surf_h)
            surface_set_target(surface_map)
            draw_clear_alpha(0x1A1A1A, 1)
            for (var yy = 1; yy < (cell_w - 1); yy++)
            {
                for (var xx = 1; xx < (cell_h - 1); xx++)
                {
                    var posx = (sx + xx)
                    var posy = (sy + yy)
                    if (ds_grid_get(obj_map_generator.grid_tile, xx, yy) == -1)
                    {
                        var cc = c_white
                        if (obj_map_generator.area_tileset_floor_box[obj_map_generator.area] == 1)
                            cc = 0x519251
                        if (obj_map_generator.area_tileset_floor_box[obj_map_generator.area] == 2)
                            cc = 0x519251
                        if (obj_map_generator.area_tileset_floor_box[obj_map_generator.area] == 6)
                            cc = 0x519251
                        if (obj_map_generator.area_tileset_floor_box[obj_map_generator.area] == 4)
                            cc = 0x73AFCC
                        scr_draw_minimap_pixel(s_minimap_floor_wall, xx, yy, cc)
                    }
                }
            }
            for (yy = 1; yy < (cell_w - 1); yy++)
            {
                for (xx = 1; xx < (cell_h - 1); xx++)
                {
                    posx = xx
                    posy = yy
                    cc = c_white
                    var floor_2 = ds_grid_get(obj_map_generator.grid_floor2, xx, yy)
                    switch floor_2
                    {
                        case 0:
                            cc = 0x465367
                            break
                        case 6:
                            cc = 0x465367
                            break
                        case 4:
                            cc = 0x465367
                            break
                        case 1:
                            cc = 0x79766F
                            break
                        case 7:
                            cc = 0x367BB8
                            break
                    }

                    if (cc != c_white)
                        scr_draw_minimap_pixel(s_minimap_floor_wall, posx, posy, cc)
                }
            }
            for (yy = 1; yy < (cell_w - 1); yy++)
            {
                for (xx = 1; xx < (cell_h - 1); xx++)
                {
                    if (ds_grid_get(obj_map_generator.grid_water, xx, yy) == -1)
                        scr_draw_minimap_pixel(s_minimap_floor_wall, xx, yy, 0xE1E046)
                }
            }
            var road_w = obj_map_generator.grid_strada_w
            var road_h = obj_map_generator.grid_strada_h
            for (yy = 1; yy < (road_w - 1); yy++)
            {
                for (xx = 1; xx < (road_h - 1); xx++)
                {
                    if (ds_grid_get(obj_map_generator.grid_strada, xx, yy) == 1)
                    {
                        posx = (xx * 6)
                        posy = (yy * 6)
                        draw_sprite_ext(s_minimap_floor_wall, 0, (posx * 1), (posy * 1), 6, 6, 0, 0x3A3734, 1)
                    }
                }
            }
            if (obj_map_generator.area != (4 << 0))
            {
                var map_w = obj_map_generator.grid_map_w
                var map_h = obj_map_generator.grid_map_h
                for (yy = 0; yy < map_w; yy++)
                {
                    for (xx = 0; xx < map_h; xx++)
                    {
                        if (ds_grid_get(obj_map_generator.grid_map, xx, yy) == -7)
                            draw_sprite_ext(s_minimap_floor_wall, 0, ((xx * 2) * 1), ((yy * 2) * 1), 2, 2, 0, 0x1A1A1A, 1)
                    }
                }
            }
            surface_reset_target()
            show_debug_message("Surface map created")
            instance_deactivate_object(obj_minimap_icon)
        }
        if (!surface_exists(surface_map_statica))
        {
            surf_w = ((room_width div 16) * 1)
            surf_h = ((room_height div 16) * 1)
            surface_map_statica = surface_create(surf_w, surf_h)
        }
    }
}
