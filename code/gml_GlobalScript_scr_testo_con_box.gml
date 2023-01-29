function scr_testo_con_box(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_scr_testo_con_box
{
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    var cosa_scrivere = argument0
    var offsety = argument1
    var offset = argument2
    var colore_box = argument4
    var colore_bordo = argument5
    var alpha_box = argument6
    var text_w = (string_width(cosa_scrivere) + (offset * 2))
    var text_h = (argument3 + (offset * 2))
    var startx = (x - (text_w / 2))
    var starty = ((y - (text_h / 2)) + offsety)
    draw_sprite_ext(s_testo_box, 0, startx, starty, text_w, text_h, 0, colore_box, alpha_box)
    draw_sprite_ext(s_testo_box, 0, (startx - 1), (starty - 1), (text_w + 2), 1, 0, colore_bordo, 1)
    draw_sprite_ext(s_testo_box, 0, (startx - 1), (((starty - 1) + text_h) + 1), (text_w + 2), 1, 0, colore_bordo, 1)
    draw_sprite_ext(s_testo_box, 0, (startx - 1), (starty - 1), 1, (text_h + 2), 0, colore_bordo, 1)
    draw_sprite_ext(s_testo_box, 0, (((startx - 1) + text_w) + 1), (starty - 1), 1, (text_h + 2), 0, colore_bordo, 1)
    draw_text_color(x, ((y + offsety) + 1), cosa_scrivere, c_black, c_black, c_black, c_black, 1)
    draw_text(x, (y + offsety), cosa_scrivere)
    return;
}

