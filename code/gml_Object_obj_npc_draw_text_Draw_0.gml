draw_set_font(font_quest)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
if (counter < string_length(t))
    counter += 0.8
if (counter >= (string_length(t) - 2) && counter < (string_length(t) - 1))
    alarm[0] = 110
var sub_t = string_copy(t, 1, ceil(counter))
var c2 = c_black
var c1 = c_white
scr_draw_text_outlined(x, (y - 24), sub_t, c1, c2, 1, 1)
