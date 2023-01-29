if (can_draw == 1)
{
    if (arma_moddable[my_id] == 0)
    {
    }
    else
    {
        if (!surface_exists(surface_item))
            surface_item = surface_create(96, 32)
        surface_set_target(surface_item)
        draw_clear_alpha(c_black, 0)
        scr_draw_item_weapon_modded()
        surface_reset_target()
    }
}
