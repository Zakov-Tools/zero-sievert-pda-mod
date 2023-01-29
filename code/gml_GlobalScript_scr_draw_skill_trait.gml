function scr_draw_skill_trait(argument0, argument1, argument2, argument3, argument4) //gml_Script_scr_draw_skill_trait
{
    var s_id_ = argument0
    var xx = argument1
    var yy = argument2
    var lvl_max_ = argument4
    draw_set_font(font0)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    var id_skill = s_id_
    var name_ = argument3
    draw_text(xx, yy, name_)
    var w = (sprite_get_width(s_pda_skill_level) + 2)
    for (var i = 0; i < lvl_max_; i++)
    {
        var im = 0
        if (floor(s_id_) > i)
            im = 1
        draw_sprite(s_pda_skill_level, im, (xx + (w * i)), (yy + 10))
    }
    return;
}

