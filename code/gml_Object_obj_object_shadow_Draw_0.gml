if (can_draw_surface == 1)
{
    if (!surface_exists(surface_shadow))
    {
        surface_shadow = surface_create(room_width, room_height)
        surface_set_target(surface_shadow)
        draw_clear_alpha(c_black, 0)
        gpu_set_fog(true, c_black, 0, 1)
        if (room == room1)
        {
            var o = obj_map_generator
            if (o.area != (4 << 0))
            {
                for (var xx = 1; xx < (o.grid_tile_w - 1); xx++)
                {
                    for (var yy = 1; yy < (o.grid_tile_h - 1); yy++)
                    {
                        if (ds_grid_get(o.grid_tile, xx, yy) != -1)
                        {
                            var tile_sopra = ds_grid_get(o.grid_tile, xx, (yy - 1)) == -1
                            var tile_sotto = ds_grid_get(o.grid_tile, xx, (yy + 1)) == -1
                            var tile_sopra_water = ds_grid_get(o.grid_water, xx, (yy - 1)) == -1
                            var tile_water_a = ds_grid_get(o.grid_water, xx, yy) == -1
                            if (tile_sotto && (!tile_sopra) && (!tile_sopra_water) && (!tile_water_a))
                                draw_rectangle_color((xx * 16), (yy * 16), ((xx * 16) + 16), ((yy * 16) + 32), c_black, c_black, c_black, c_black, 0)
                        }
                    }
                }
            }
        }
        with (obj_hub_parent)
            scr_draw_shadow_decor()
        with (obj_barrel_acciaio_fire)
            scr_draw_shadow_decor()
        with (obj_decor_parent)
        {
            if (object_index != obj_solid)
            {
                if (visible == true)
                    scr_draw_shadow_decor()
            }
        }
        with (obj_wall_building)
        {
            var shadow_height = 0.8
            draw_sprite_ext(wall_s, cell, x, (y + 24), 1, (-shadow_height), 0, c_white, 1)
        }
        if (room == room1)
        {
            with (obj_solid)
            {
                if (object_index == obj_solid)
                {
                    if (y > (obj_map_generator.grid_tile_h * 16))
                        draw_rectangle_color(x, y, (x + 16), (y + 32), c_black, c_black, c_black, c_black, 0)
                }
            }
        }
        gpu_set_fog(false, c_white, 0, 0)
        surface_reset_target()
    }
    draw_set_alpha(0.5)
    draw_surface_part(surface_shadow, (x - 480), (y - 270), 960, 540, (x - 480), (y - 270))
    draw_set_alpha(1)
}
