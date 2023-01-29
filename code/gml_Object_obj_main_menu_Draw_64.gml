display_set_gui_size(480, 270)
var camx = 0
var camy = 0
var cax = camera_get_view_x(view_camera[0])
var cay = camera_get_view_y(view_camera[0])
if (page_state != (11 << 0))
{
    var startx = (option_startx[page_state] - (button_w / 2))
    var starty = (option_starty[page_state] - (button_h / 2))
    var n_option = array_length_2d(option_name, page_state)
    draw_sprite(s_main_menu, 0, camx, camy)
    if (page_state == (15 << 0))
    {
        draw_sprite(s_death_screen, 0, 0, 0)
        var _x = 240
        var _y = 50
        var _h = 12
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        if (!surface_exists(surface_credits))
        {
            surface_credits = surface_create(s_credits_w, s_credits_h)
            surface_set_target(surface_credits)
            draw_clear_alpha(c_black, 0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            draw_set_font(font_credits_small)
            for (var i = 0; i < array_length_1d(credits_text); i++)
            {
                if (credits_text[i] != 0)
                {
                    var _text = (credits_text[i] + "\n")
                    var _c = credits_color[i]
                    if (credits_size[i] == 2)
                        draw_text_transformed_color(_x, (0 + (i * _h)), _text, 2, 2, 0, _c, _c, _c, _c, 1)
                    else
                        draw_text_color(_x, (0 + (i * _h)), _text, _c, _c, _c, _c, 1)
                }
            }
            surface_reset_target()
        }
        draw_surface(surface_credits, 0, (_y + credits_y))
    }
    if (page_state == (13 << 0))
    {
        draw_sprite(tut_image[tutorial_page][tutorial_sub_page], 0, 0, 0)
        draw_set_font(font0)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        draw_text_transformed(tut_page_name_x, tutorial_text_y, tut_text_cat[tutorial_page], 2, 2, 0)
        draw_set_halign(fa_center)
        var _sub_page = tutorial_sub_page
        var _max_sub_page = array_length_2d(tut_image, tutorial_page)
        var _t = ((string((tutorial_sub_page + 1)) + " / ") + string(_max_sub_page))
        draw_text_transformed(tut_page_sub_page_x, tutorial_text_y, _t, 2, 2, 0)
        var _w = tut_page_next_w
        var _sprite_w = 10
        var _off = ((tut_page_next_w - _sprite_w) / 2)
        _c = c_white
        if scr_mouse_inside(((cax + tut_page_previous_x) - _off), ((cay + tut_page_next_y) - _off), _w, _w)
            _c = 0x91F2FF
        draw_sprite_ext(s_hud_freccia, 1, tut_page_previous_x, tut_page_next_y, 1, 1, 0, _c, 1)
        _c = c_white
        if scr_mouse_inside(((cax + tut_page_next_x) - _off), ((cay + tut_page_next_y) - _off), _w, _w)
            _c = 0x91F2FF
        draw_sprite_ext(s_hud_freccia, 0, tut_page_next_x, tut_page_next_y, 1, 1, 0, _c, 1)
    }
    for (i = 0; i < n_option; i++)
    {
        var col_rect = c_black
        var col_text_selected = c_hover
        var c_sotto = c_black
        var but_sep = button_h_sep
        if (page_state == (5 << 0))
            but_sep = 25
        if (option_type[page_state][i] == (0 << 0) || option_type[page_state][i] == (3 << 0))
        {
            if (option_selected == i)
            {
                col_rect = c_hover
                col_text_selected = c_black
            }
        }
        if (option_type[page_state][i] == (3 << 0))
        {
            if (global.slot_selected == (i + 1))
            {
                col_rect = c_hover
                col_text_selected = c_black
            }
        }
        if (col_rect != c_black)
            draw_rectangle_color((camx + startx), ((camy + starty) + (but_sep * i)), ((camx + startx) + button_w), (((camy + starty) + button_h) + (but_sep * i)), col_rect, col_rect, col_rect, col_rect, 0)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_set_font(font0)
        if (col_rect == c_black)
            draw_text_transformed_color((camx + option_startx[page_state]), (((camy + option_starty[page_state]) + (but_sep * i)) + 1), option_name[page_state][i], 2, 2, 0, c_sotto, c_sotto, c_sotto, c_sotto, 1)
        draw_text_transformed_color((camx + option_startx[page_state]), ((camy + option_starty[page_state]) + (but_sep * i)), option_name[page_state][i], 2, 2, 0, col_text_selected, col_text_selected, col_text_selected, col_text_selected, 1)
        if (option_type[page_state][i] == (1 << 0))
        {
            draw_sprite_ext(s_hud_slider_bar, 0, (camx + slider_startx), ((camy + option_starty[page_state]) + (but_sep * i)), 1, 1, 0, c_hover, 1)
            var slider_w = sprite_get_width(s_hud_slider_bar)
            var slider_pointx = (slider_w * option_var[page_state][i])
            draw_sprite_ext(s_hud_slider_point, 0, ((camx + slider_startx) + slider_pointx), ((camy + option_starty[page_state]) + (but_sep * i)), 1, 1, 0, c_hover, 1)
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_middle)
            _t = option_var[page_state][i]
            draw_text_color(((slider_startx + slider_w) + 15), ((camy + option_starty[page_state]) + (but_sep * i)), string(_t), col_text_selected, col_text_selected, col_text_selected, col_text_selected, 1)
        }
        if (option_type[page_state][i] == (2 << 0))
        {
            var k = option_var[page_state][i]
            var a_on = 0
            var a_off = 0
            if (k == 1)
            {
                a_on = 1
                a_off = 0.3
            }
            else
            {
                a_on = 0.3
                a_off = 1
            }
            draw_text_transformed_color((on_x + (on_w / 2)), ((option_starty[page_state] + (but_sep * i)) + 1), "ON", 2, 2, 0, c_black, c_black, c_black, c_black, a_on)
            draw_text_transformed_color((on_x + (on_w / 2)), (option_starty[page_state] + (but_sep * i)), "ON", 2, 2, 0, c_hover, c_hover, c_hover, c_hover, a_on)
            draw_text_transformed_color(((on_x + on_w) + (on_w / 2)), ((option_starty[page_state] + (but_sep * i)) + 1), "OFF", 2, 2, 0, c_black, c_black, c_black, c_black, a_off)
            draw_text_transformed_color(((on_x + on_w) + (on_w / 2)), (option_starty[page_state] + (but_sep * i)), "OFF", 2, 2, 0, c_hover, c_hover, c_hover, c_hover, a_off)
            if scr_mouse_inside((cax + on_x), ((cay + starty) + (but_sep * i)), on_w, button_h)
            {
                draw_rectangle_color(on_x, (starty + (but_sep * i)), (on_x + on_w), ((starty + (but_sep * i)) + button_h), c_hover, c_hover, c_hover, c_hover, 0)
                draw_text_transformed_color((on_x + (on_w / 2)), (option_starty[page_state] + (but_sep * i)), "ON", 2, 2, 0, c_black, c_black, c_black, c_black, 1)
            }
            if scr_mouse_inside(((cax + on_x) + on_w), ((cay + starty) + (but_sep * i)), on_w, button_h)
            {
                draw_rectangle_color((on_x + on_w), (starty + (but_sep * i)), (on_x + (on_w * 2)), ((starty + (but_sep * i)) + button_h), c_hover, c_hover, c_hover, c_hover, 0)
                draw_text_transformed_color(((on_x + on_w) + (on_w / 2)), (option_starty[page_state] + (but_sep * i)), "OFF", 2, 2, 0, c_black, c_black, c_black, c_black, 1)
            }
        }
        if (option_name[page_state][i] == "SLOT 1" || option_name[page_state][i] == "SLOT 2" || option_name[page_state][i] == "SLOT 3")
        {
            if file_exists((("save_general_" + string((i + 1))) + ".ini"))
            {
                ini_open((("save_general_" + string((i + 1))) + ".ini"))
                var time_played = ini_read_real("Real time played", "seconds", 0)
                ini_close()
                draw_set_font(font0)
                draw_set_halign(fa_center)
                draw_set_valign(fa_middle)
                var hour_played = (time_played div 3600)
                var min_played = ((time_played - (hour_played * 3600)) div 60)
                var text_time_played = (((string(hour_played) + "H ") + string(min_played)) + "M")
                scr_draw_text_outlined(((camx + option_startx[page_state]) + 50), ((camy + option_starty[page_state]) + (but_sep * i)), text_time_played, c_white, c_black, 1, 1)
            }
        }
    }
}
if (page_state == (5 << 0))
{
    draw_set_font(font_quest)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    for (i = 0; i < array_length_1d(global.kb_id); i++)
    {
        var _tx = keyb_t_startx
        var _bx = keyb_k_startx
        var sy = keyb_starty
        var sep = keyb_sep
        var key_n = scr_key_map(global.kb_now[i])
        if (i > keyb_n_fila)
        {
            _tx = (keyb_t_startx + keyb_offset_w)
            _bx = (keyb_k_startx + keyb_offset_w)
            sy = (keyb_starty - ((keyb_n_fila + 1) * sep))
        }
        var c_ = 16777215
        draw_set_halign(fa_left)
        draw_text_color((camx + _tx), ((sy + (i * sep)) + 1), global.kb_name[i], c_black, c_black, c_black, c_black, 1)
        draw_text_color((camx + _tx), (sy + (i * sep)), global.kb_name[i], c_hover, c_hover, c_hover, c_hover, 1)
        draw_set_halign(fa_center)
        var c_t = c_hover
        if scr_mouse_inside(((cax + _bx) - (keyb_w / 2)), (((cay + sy) - 1) + (i * keyb_sep)), keyb_w, keyb_h)
        {
            c_t = c_black
            draw_rectangle_color((_bx - (keyb_w / 2)), ((sy - 1) + (i * keyb_sep)), (_bx + (keyb_w / 2)), (((sy - 1) + (i * keyb_sep)) + 11), c_hover, c_hover, c_hover, c_hover, 0)
        }
        else
            draw_text_color((camx + _bx), ((sy + (i * sep)) + 1), key_n, c_black, c_black, c_black, c_black, 1)
        draw_text_color((camx + _bx), (sy + (i * sep)), key_n, c_t, c_t, c_t, c_t, 1)
    }
}
if (page_state == (11 << 0))
{
    var c = c_black
    draw_rectangle_color((camx - 1), (camy - 1), ((camx + 480) + 1), ((camy + 270) + 1), c, c, c, c, 0)
    draw_set_font(font0)
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    draw_text_transformed(240, 25, "choose a starting equipment", 2, 2, 0)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    for (i = 0; i < array_length_1d(global.trait_id); i++)
    {
        c = c_white
        var cc = c_black
        if (i == global.trait_hover)
        {
            c = c_black
            cc = c_white
        }
        draw_rectangle_color(global.trait_sx, (global.trait_sy + (global.trait_h * i)), (global.trait_sx + global.trait_w), ((global.trait_sy + (global.trait_h * i)) + global.trait_h), cc, cc, cc, cc, 0)
        draw_text_transformed_color((global.trait_sx + (global.trait_w / 2)), ((global.trait_sy + (global.trait_h / 2)) + (global.trait_h * i)), global.trait_name[i], 1, 1, 0, c, c, c, c, 1)
    }
    draw_set_font(font0)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    c = c_white
    cc = c_black
    if scr_mouse_inside((camx + global.trait_go_x), (camy + global.trait_go_y), global.trait_go_w, global.trait_go_h)
    {
        c = c_black
        cc = c_white
    }
    draw_rectangle_color(global.trait_go_x, global.trait_go_y, (global.trait_go_x + global.trait_go_w), (global.trait_go_y + global.trait_go_h), cc, cc, cc, cc, 0)
    draw_text_transformed_color((global.trait_go_x + (global.trait_go_w / 2)), (global.trait_go_y + (global.trait_go_h / 2)), "start", 2, 2, 0, c, c, c, c, 1)
    c = c_white
    cc = c_black
    if scr_mouse_inside((camx + global.trait_go_x), ((camy + global.trait_go_y) + global.trait_go_h), global.trait_go_w, global.trait_go_h)
    {
        c = c_black
        cc = c_white
    }
    draw_rectangle_color(global.trait_go_x, (global.trait_go_y + global.trait_go_h), (global.trait_go_x + global.trait_go_w), (global.trait_go_y + (global.trait_go_h * 2)), cc, cc, cc, cc, 0)
    draw_text_transformed_color((global.trait_go_x + (global.trait_go_w / 2)), ((global.trait_go_y + (global.trait_go_h / 2)) + global.trait_go_h), "Back", 2, 2, 0, c, c, c, c, 1)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    c = c_white
    cc = c_black
    if (global.hardcore_hover == 1)
    {
        c = 0
        cc = 16777215
    }
    _t = "HARDCORE MODE"
    draw_rectangle_color(global.hardcore_x, global.hardcore_y, (global.hardcore_x + global.hardcore_w), (global.hardcore_y + global.hardcore_h), cc, cc, cc, cc, 0)
    draw_text_transformed_color((global.hardcore_x + (global.hardcore_w / 2)), (global.hardcore_y + (global.hardcore_h / 2)), _t, 1, 1, 0, c, c, c, c, 1)
}
var gx = (camx + 20)
var gy = ((camy + 270) - 20)
draw_set_font(font0)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
if (page_state != (13 << 0))
    draw_text_color(gx, gy, global.game_version, c_hover, c_hover, c_hover, c_hover, 1)
if (page_state == (8 << 0))
{
    _w = 380
    _h = 40
    _y = 200
    scr_draw_box(s_box_testo1, (240 - (_w / 2)), _y, _w, _h, 1)
    _t = "Note - when in fullscreen, the game will always scale to the correct resolution for your monitor. Due to pixelart scaling, resolution changes will only take effect in windowed mode."
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    _c = c_black
    draw_text_ext_color(240, ((_y + (_h / 2)) + 1), _t, 12, 360, _c, _c, _c, _c, 1)
    _c = c_white
    draw_text_ext_color(240, (_y + (_h / 2)), _t, 12, 360, _c, _c, _c, _c, 1)
}
if (state_sure == 1)
{
    _w = 180
    _h = 60
    _x = (240 - (_w / 2))
    _y = (135 - (_h / 2))
    scr_draw_box(s_box_testo_pop_up, _x, _y, _w, _h, 1)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    scr_draw_text_outlined(240, (_y + 11), "Are you sure you want to leave?", c_white, c_black, 1, 1)
    draw_set_font(font_quest)
    draw_set_valign(fa_middle)
    var _yx = (sure_yes_x - (sure_w / 2))
    var _yy = (sure_yes_y - (sure_h / 2))
    var _c_text = c_white
    if (sure_hover == 1)
    {
        _c = c_hover
        _c_text = c_black
        draw_rectangle_color(_yx, _yy, (_yx + sure_w), (_yy + sure_h), _c, _c, _c, _c, 0)
    }
    draw_text_color(sure_yes_x, sure_yes_y, "[Y] yes", _c_text, _c_text, _c_text, _c_text, 1)
    var _nx = (sure_no_x - (sure_w / 2))
    var _ny = (sure_no_y - (sure_h / 2))
    _c_text = c_white
    if (sure_hover == 2)
    {
        _c = c_hover
        _c_text = c_black
        draw_rectangle_color(_nx, _ny, (_nx + sure_w), (_ny + sure_h), _c, _c, _c, _c, 0)
    }
    draw_text_color(sure_no_x, sure_no_y, "[N] no", _c_text, _c_text, _c_text, _c_text, 1)
}
if (new_version == 1)
{
    draw_sprite(s_hud_new_version, 0, 0, 0)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    _t = global.new_version_text
    _c = c_black
    draw_text_color(240, 136, _t, _c, _c, _c, _c, 1)
    _c = c_white
    draw_text_color(240, 135, _t, _c, _c, _c, _c, 1)
}
if (global.ga_pop_up == 1)
{
    var _off_w = (ga_pop_up_box_w / 2)
    var _off_h = (ga_pop_up_box_h / 2)
    _bx = (240 - _off_w)
    var _by = (135 - _off_h)
    scr_draw_box(s_box_testo1, _bx, _by, (_off_w * 2), (_off_h * 2), 1)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    var _tt = "Hey Hunter, we'd like to track your progress as you scavenge and explore what's left of the world. We use some in-game analytic tech to gather device and gameplay data to help us understand how you survive, progress and to improve the prospects for you and other Hunters.\n\nGameAnalytics also like to track you and collect data to help them improve their tech.\n\nIf you are OK with that, choose Accept & Play. If you're not, we won't track any of it. You can change your settings at any time in the Data menu.\n\nSee you in the bunker!"
    _c = c_black
    draw_text_ext_color(240, (((135 - _off_h) + 5) + 1), _tt, 12, 300, _c, _c, _c, _c, 1)
    _c = c_white
    draw_text_ext_color(240, ((135 - _off_h) + 5), _tt, 12, 300, _c, _c, _c, _c, 1)
    draw_set_valign(fa_middle)
    _yx = (ga_pop_up_yes_x - (ga_pop_up_w / 2))
    _yy = (ga_pop_up_yes_y - (ga_pop_up_h / 2))
    _c_text = c_white
    if (ga_pop_up_hover == 1)
    {
        _c = c_hover
        _c_text = c_black
        draw_rectangle_color(_yx, _yy, (_yx + ga_pop_up_w), (_yy + ga_pop_up_h), _c, _c, _c, _c, 0)
    }
    draw_text_color(ga_pop_up_yes_x, ga_pop_up_yes_y, "Accept and Play", _c_text, _c_text, _c_text, _c_text, 1)
    _yx = (ga_pop_up_no_x - (ga_pop_up_w / 2))
    _yy = (ga_pop_up_no_y - (ga_pop_up_h / 2))
    _c_text = c_white
    if (ga_pop_up_hover == 2)
    {
        _c = c_hover
        _c_text = c_black
        draw_rectangle_color(_yx, _yy, (_yx + ga_pop_up_w), (_yy + ga_pop_up_h), _c, _c, _c, _c, 0)
    }
    draw_text_color(ga_pop_up_no_x, ga_pop_up_no_y, "Play without Analytics", _c_text, _c_text, _c_text, _c_text, 1)
    var _lx = (ga_link1_x - (ga_link_w / 2))
    var _ly = (ga_link1_y - (ga_link_h / 2))
    _c_text = 0xFFE89A
    if scr_mouse_inside((camx + _lx), (camy + _ly), ga_link_w, ga_link_h)
        _c_text = 0xFFC400
    draw_text_color(ga_link1_x, ga_link1_y, "Our Privacy Policy", _c_text, _c_text, _c_text, _c_text, 1)
    _lx = (ga_link2_x - (ga_link_w / 2))
    _ly = (ga_link2_y - (ga_link_h / 2))
    _c_text = 0xFFE89A
    if scr_mouse_inside((camx + _lx), (camy + _ly), ga_link_w, ga_link_h)
        _c_text = 16761856
    draw_text_color(ga_link2_x, ga_link2_y, "GameAnalytics Privacy Policy", _c_text, _c_text, _c_text, _c_text, 1)
}
