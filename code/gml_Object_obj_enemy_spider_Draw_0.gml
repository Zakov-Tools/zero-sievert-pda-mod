if (image_alpha > 0)
{
    var cy = (sprite_get_height(sprite_index) / 2)
    draw_sprite_ext(s_shadow, 1, x, (y + cy), 1, 1, 0, c_black, 0.5)
}
event_inherited()
