var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_set_alpha(a)
var c = c_black
draw_rectangle_color(camx, camy, (camx + 480), (camy + 270), c, c, c, c, 0)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_font(font_death_screen)
var cc = 0x6161F4
draw_text_color((camx + 240), (camy + 90), "KILLED IN ACTION", cc, cc, cc, cc, a)
if (show_text == 1)
{
    if (mouse_in_the_button == 1)
    {
        var u = c_white
        var p = c_black
    }
    else
    {
        u = c_black
        p = c_white
    }
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_set_font(font_main_menu)
    draw_rectangle_color(((camx + button_x) - (button_w / 2)), ((camy + button_y) - (button_h / 2)), ((camx + button_x) + (button_w / 2)), ((camy + button_y) + (button_h / 2)), u, u, u, u, 0)
    draw_text_color((camx + button_x), (camy + button_y), "Continue", p, p, p, p, 1)
}
