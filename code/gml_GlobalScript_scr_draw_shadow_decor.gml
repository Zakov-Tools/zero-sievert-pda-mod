function scr_draw_shadow_decor() //gml_Script_scr_draw_shadow_decor
{
    if sprite_exists(sprite_index)
    {
        var shadow_height = 0.4
        var ox = sprite_get_xoffset(sprite_index)
        var oy = sprite_get_yoffset(sprite_index)
        var drawx = x
        if (oy == 0)
            var drawy = ((((y + sprite_height) - oy) + (sprite_height * shadow_height)) - 1)
        else
            drawy = ((y + sprite_height) - oy)
        draw_sprite_ext(sprite_index, image_index, drawx, (drawy - 3), image_xscale, (-shadow_height), 0, c_white, 1)
    }
    return;
}

