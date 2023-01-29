function scr_scala_item_stat(argument0, argument1, argument2, argument3, argument4, argument5) //gml_Script_scr_scala_item_stat
{
    var xx = argument0
    var yy = argument1
    var max_value = argument3
    var stat_valuex = (xx + off_n_v)
    var stat_valuey = (yy + 2)
    var stat_sprite_w = sprite_get_width(s_hud_inv_stat)
    var cosa_scalare = argument4
    draw_text(xx, yy, argument2)
    draw_sprite(s_hud_inv_stat, 0, stat_valuex, stat_valuey)
    var scala = ((stat_sprite_w * cosa_scalare) / max_value)
    if (argument5 == 1)
        scala = (stat_sprite_w - scala)
    scala = clamp(scala, 0, stat_sprite_w)
    draw_sprite_ext(s_hud_inv_stat2, 0, stat_valuex, stat_valuey, scala, 1, 0, c_white, 1)
    draw_sprite(s_hud_inv_stat, 1, stat_valuex, stat_valuey)
    return;
}

