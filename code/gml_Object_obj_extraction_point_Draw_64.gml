display_set_gui_size(480, 270)
if (timer_exit > 0)
{
    draw_set_font(font0)
    draw_set_halign(fa_left)
    draw_set_valign(fa_middle)
    var xx = 187
    var yy = 95
    var t = ("Leaving in " + string(((timer_exit_max - timer_exit) / 60)))
    var c1 = c_lime
    var c2 = 0x191B19
    draw_text_transformed_color((xx + 2), yy, t, 2, 2, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx - 2), yy, t, 2, 2, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx - 2), (yy - 2), t, 2, 2, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx + 2), (yy - 2), t, 2, 2, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx - 2), (yy + 2), t, 2, 2, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx + 2), (yy + 2), t, 2, 2, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color(xx, (yy + 2), t, 2, 2, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color(xx, (yy - 2), t, 2, 2, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color(xx, yy, t, 2, 2, 0, c1, c1, c1, c1, 1)
}
