draw_set_font(font_quest)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
if keyboard_check(vk_f12)
{
    var c_text = c_white
    var c_o = c_black
    var xx = 50
    var yy = 50
    var t = tutorial_text[state]
    var c1 = c_text
    var c2 = c_o
    var w = 400
    var s = 1
    var o = 1
    var h = 10
    scr_draw_box(s_box_testo2, (xx - 5), (yy - 5), (w + 10), 190, 0.9)
    draw_text_ext_color((xx + o), yy, t, h, w, c2, c2, c2, c2, 1)
    draw_text_ext_color((xx + o), yy, t, h, w, c2, c2, c2, c2, 1)
    draw_text_ext_color((xx - o), yy, t, h, w, c2, c2, c2, c2, 1)
    draw_text_ext_color((xx - o), (yy - o), h, w, w, c2, c2, c2, c2, 1)
    draw_text_ext_color((xx + o), (yy - o), t, h, w, c2, c2, c2, c2, 1)
    draw_text_ext_color((xx - o), (yy + o), t, h, w, c2, c2, c2, c2, 1)
    draw_text_ext_color((xx + o), (yy + o), t, h, w, c2, c2, c2, c2, 1)
    draw_text_ext_color(xx, (yy + o), t, h, w, c2, c2, c2, c2, 1)
    draw_text_ext_color(xx, (yy - o), t, h, w, c2, c2, c2, c2, 1)
    draw_text_ext_color(xx, yy, t, h, w, c1, c1, c1, c1, 1)
}
else
{
    c_text = c_white
    c_o = c_black
    scr_draw_text_outlined(80, 10, (("Hold F1 to show " + tutorial_name[state]) + " tutorial"), c_text, c_o, 1, 1)
}
