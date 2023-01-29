var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (start == 1)
{
    draw_set_font(font0)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    for (var i = 0; i < ds_list_size(list_menu); i++)
    {
        var cc = c_white
        var im = 0
        var get_action = ds_list_find_value(list_menu, i)
        if (hover == get_action)
        {
            cc = 9564927
            im = 1
        }
        draw_sprite(s_hud_use, im, (x - camx), ((y - camy) + (i * sh)))
        draw_text_color(((x - camx) + (sw / 2)), ((((y - camy) + (i * sh)) + (sh / 2)) + 1), action_name[get_action], cc, cc, cc, cc, 1)
    }
    if (prompt == 1 && scrap_subito == 0)
    {
        var _w = 180
        var _h = 60
        var _x = (240 - (_w / 2))
        var _y = (135 - (_h / 2))
        scr_draw_box(s_box_testo_pop_up, _x, _y, _w, _h, 1)
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        var _t = ""
        if (prompt_action == (2 << 0))
            _t = "Are you sure you want to scrap it?\nPress the corresponding key"
        scr_draw_text_outlined(240, (_y + 11), _t, c_white, c_black, 1, 1)
        draw_set_font(font_quest)
        draw_text(240, (_y + 40), "[Y] yes / [N] no")
    }
}
