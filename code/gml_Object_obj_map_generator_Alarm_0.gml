if (!surface_exists(surf_radiation))
{
    surf_radiation = surface_create((room_width div 8), (room_height div 8))
    surface_set_target(surf_radiation)
    draw_clear_alpha(c_black, 0)
    for (var yy = 1; yy < (grid_rw - 1); yy++)
    {
        for (var xx = 1; xx < (grid_rh - 1); xx++)
        {
            if (ds_grid_get(grid_radiation, xx, yy) > 0)
            {
                var xn = xx
                var yn = yy
                var rad = ds_grid_get(grid_radiation, xx, yy)
                if (rad > 0 && rad < 200)
                    draw_sprite_ext(s_particles_1px, 0, xn, yn, 1, 1, 0, 0x00E2FF, 0.75)
                else if (rad >= 200 && rad < 400)
                    draw_sprite_ext(s_particles_1px, 0, xn, yn, 1, 1, 0, 0x0071FF, 0.75)
                else if (rad >= 400)
                    draw_sprite_ext(s_particles_1px, 0, xn, yn, 1, 1, 0, c_red, 0.75)
            }
        }
    }
    surface_reset_target()
    show_debug_message("Surface rad created")
}
