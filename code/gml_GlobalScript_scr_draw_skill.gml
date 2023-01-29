function scr_draw_skill(argument0, argument1, argument2) //gml_Script_scr_draw_skill
{
    var s_id_ = argument0
    var xx = argument1
    var yy = argument2
    var draw_normal = 1
    if (global.sk_hover == s_id_)
    {
        if (global.sk_base[global.sk_hover] == 1 && global.sk_lvl[global.sk_hover] >= global.sk_lvl_max[global.sk_hover])
        {
            draw_normal = 0
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_text((xx + 40), (yy + 5), "specialize")
        }
    }
    if (global.sk_upgrading == 1)
    {
        if (global.sk_selected == s_id_)
        {
            draw_normal = 0
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_text((xx + 40), (yy + 5), "specialize")
        }
    }
    if (draw_normal == 1)
    {
        draw_set_font(font0)
        draw_set_halign(fa_left)
        var id_skill = s_id_
        for (var i = 0; i < array_length_2d(global.sk_upgrade, s_id_); i++)
        {
            var spec_id = global.sk_upgrade[s_id_][i]
            if (global.sk_lvl[spec_id] >= 0)
                id_skill = spec_id
        }
        var name_ = global.sk_name[id_skill]
        draw_text(xx, yy, name_)
        var w = (sprite_get_width(s_pda_skill_level) + 2)
        for (i = 0; i < global.sk_lvl_max[id_skill]; i++)
        {
            var im = 0
            if (floor(global.sk_lvl[id_skill]) > i)
                im = 1
            draw_sprite(s_pda_skill_level, im, (xx + (w * i)), (yy + 10))
        }
    }
    return;
}

