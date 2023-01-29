if (wall_building == 1 && drawing == 1)
{
    if (!surface_exists(surf_wall))
    {
        surf_wall = surface_create(16, 16)
        surface_set_target(surf_wall)
        draw_clear_alpha(c_black, 0)
        draw_set_alpha(1)
        draw_sprite(wall_s, cell, 0, 0)
        surface_reset_target()
    }
    if surface_exists(surf_wall)
        draw_surface(surf_wall, x, y)
}
