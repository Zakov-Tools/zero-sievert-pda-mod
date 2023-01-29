event_inherited()
if (shader_hit == 1)
    shader_set(shd_flash_hit)
if (xprevious > x)
{
    image_xscale = -1
    draw_self()
}
else if (xprevious == x)
    draw_self()
else if (xprevious < x)
{
    image_xscale = 1
    draw_self()
}
shader_reset()
