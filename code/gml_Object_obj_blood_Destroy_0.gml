if surface_exists(global.surface_blood)
{
    surface_set_target(global.surface_blood)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
    surface_reset_target()
}
