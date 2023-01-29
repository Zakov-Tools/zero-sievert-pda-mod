if (can_draw_surf_floor2 == 1)
{
    if (!surface_exists(surface_floor2))
    {
        surface_floor2 = surface_create(room_width, room_height)
        surface_set_target(surface_floor2)
        draw_clear_alpha(c_black, 0)
        for (var yy = 1; yy < (grid_tile_w - 1); yy++)
        {
            for (var xx = 1; xx < (grid_tile_h - 1); xx++)
            {
                var newx = (xx * 16)
                var newy = (yy * 16)
                switch ds_grid_get(grid_floor2, xx, yy)
                {
                    case 0:
                        if scr_chance(100)
                            draw_sprite(s_floor_dirt, 0, newx, newy)
                        else
                        {
                            var ff = choose(1444, 1442)
                            draw_sprite(ff, 0, newx, newy)
                        }
                        break
                    case 7:
                        draw_sprite(s_floor_foglie, 0, newx, newy)
                        break
                    case 1:
                        if scr_chance(50)
                            draw_sprite(s_floor_concrete, 0, newx, newy)
                        else if scr_chance(50)
                            draw_sprite(s_floor_concrete2, 0, newx, newy)
                        else
                            draw_sprite(s_floor_concrete3, 0, newx, newy)
                        if scr_chance(3)
                            draw_sprite(s_floor_concrete4, 0, newx, newy)
                        break
                    case 2:
                        draw_sprite(s_floor_grass_desert, 0, newx, newy)
                        break
                    case 4:
                        draw_sprite(s_floor_dirt_swamp, 0, newx, newy)
                        break
                    case 3:
                        break
                    case 5:
                        draw_sprite(s_floor_grass2, 0, newx, newy)
                        break
                    case 6:
                        draw_sprite(s_floor_dirt2, 0, newx, newy)
                        break
                    case 8:
                        draw_sprite(s_floor_dirt_rad, 0, newx, newy)
                        break
                    case 9:
                        draw_sprite(s_floor_grass_forest_2, 0, newx, newy)
                        break
                    case 10:
                        break
                }

            }
        }
        surface_reset_target()
        show_debug_message("Surface floor2 created")
    }
    if instance_exists(obj_controller)
    {
        if (obj_controller.disattiva_floor2 == 0)
            draw_surface_part(surface_floor2, (x - 480), (y - 270), 960, 540, (x - 480), (y - 270))
    }
}
if surface_exists(global.surface_blood)
    draw_surface(global.surface_blood, 0, 0)
