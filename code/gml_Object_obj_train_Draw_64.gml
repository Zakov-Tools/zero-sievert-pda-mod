display_set_gui_size(480, 270)
if (state == (8 << 0))
{
    if (global.general_debug == 0)
    {
        draw_rectangle_color(-1, -1, 481, (cinema_h / 2), c_black, c_black, c_black, c_black, 0)
        draw_rectangle_color(-1, (270 - (cinema_h * 1.5)), 481, 271, c_black, c_black, c_black, c_black, 0)
        draw_set_font(font0)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        draw_text(240, (270 - cinema_h), "[SPACE] skip")
        if (skip_go == 1)
        {
            if (skip_alpha > 0)
            {
                draw_set_alpha(skip_alpha)
                draw_rectangle_color(-1, -1, 481, 271, c_black, c_black, c_black, c_black, 0)
                draw_set_alpha(1)
            }
        }
    }
}
if (state == (9 << 0))
{
    if (global.general_debug == 0)
    {
        if (skip_go == 1)
        {
            if (skip_alpha > 0)
            {
                draw_set_alpha(skip_alpha)
                draw_rectangle_color(-1, -1, 481, 271, c_black, c_black, c_black, c_black, 0)
                draw_set_alpha(1)
            }
        }
    }
}
