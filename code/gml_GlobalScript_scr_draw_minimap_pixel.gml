function scr_draw_minimap_pixel(argument0, argument1, argument2, argument3) //gml_Script_scr_draw_minimap_pixel
{
    var s_ = argument0
    var xx = argument1
    var yy = argument2
    var cc = argument3
    var a = 0.1
    draw_sprite_ext(s_, 0, (xx * 1), (yy * 1), 1, 1, 0, cc, 1)
    draw_sprite_ext(s_, 0, ((xx - 1) * 1), (yy * 1), 1, 1, 0, cc, a)
    draw_sprite_ext(s_, 0, ((xx + 1) * 1), (yy * 1), 1, 1, 0, cc, a)
    draw_sprite_ext(s_, 0, (xx * 1), ((yy - 1) * 1), 1, 1, 0, cc, a)
    draw_sprite_ext(s_, 0, (xx * 1), ((yy + 1) * 1), 1, 1, 0, cc, a)
    return;
}

