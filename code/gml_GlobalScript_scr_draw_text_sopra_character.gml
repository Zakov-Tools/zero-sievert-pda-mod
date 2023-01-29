function scr_draw_text_sopra_character(argument0, argument1) //gml_Script_scr_draw_text_sopra_character
{
    var id_ = argument0
    var t = argument1
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    var cc = 0xE5DADA
    var cc2 = 0x1A1A1A
    draw_text_color(id_.x, (id_.y - 18), t, cc2, cc2, cc2, cc2, 1)
    draw_text_color(id_.x, (id_.y - 19), t, cc, cc, cc, cc, 1)
    return;
}

