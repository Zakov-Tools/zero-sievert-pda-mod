function scr_player_state_stat() //gml_Script_scr_player_state_stat
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
    }
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_state_move
        obj_controller.can_pause = 0
        audio_play_sound(snd_ui_pda_back, 10, false)
    }
    var oo = obj_controller
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + oo.pda_icon_back_x), (camy + oo.pda_icon_back_y), oo.pda_icon_back_w, oo.pda_icon_back_h)
        {
            state = gml_Script_scr_player_state_pda
            audio_play_sound(snd_ui_pda_back, 10, false)
            oo.pda_loading_now = oo.pda_loading_max
            oo.pda_map_mouse_press = 0
        }
    }
    camx = camera_get_view_x(view_camera[0])
    camy = camera_get_view_y(view_camera[0])
    if mouse_check_button(mb_left)
    {
        var o = obj_controller
        draw_set_font(font_quest)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        var off = o.testo_cursore_off[2]
        var text_h = ((array_length_1d(global.stat_id) * 12) + 48)
        if (text_h > o.testo_surface_h[2])
        {
            var b_w = sprite_get_width(o.testo_barra_sprite[2])
            var b_h = sprite_get_height(o.testo_barra_sprite[2])
            if scr_mouse_inside((((camx + o.testo_barra_x[2]) - (b_w / 2)) - off), ((camy + o.testo_barra_y[2]) - off), (b_w + (off * 2)), (b_h + (off * 2)))
            {
                var diff = (text_h - o.testo_surface_h[2])
                var diff_m = ((mouse_y - camy) - o.testo_start_y[2])
                diff_m = clamp(diff_m, 0, o.testo_barra_h[2])
                if (diff_m >= 0 && diff_m <= o.testo_barra_h[2])
                {
                    o.testo_surface_y[2] = ((diff * diff_m) / o.testo_barra_h[2])
                    o.testo_cursore_y[2] = (diff_m + o.testo_start_y[2])
                }
            }
        }
    }
    var _mouse_wheel_up = mouse_wheel_up()
    var _mouse_wheel_down = mouse_wheel_down()
    var _scroll_direction = 0
    if (_mouse_wheel_up == 1)
        _scroll_direction = -4
    if (_mouse_wheel_down == 1)
        _scroll_direction = 4
    if (_mouse_wheel_up == 1 || _mouse_wheel_down == 1)
    {
        o = obj_controller
        draw_set_font(font_quest)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        off = o.testo_cursore_off[2]
        text_h = ((array_length_1d(global.stat_id) * 12) + 48)
        if (text_h > o.testo_surface_h[2])
        {
            b_w = sprite_get_width(o.testo_barra_sprite[2])
            b_h = sprite_get_height(o.testo_barra_sprite[2])
            o.testo_surface_y[2] += _scroll_direction
            o.testo_cursore_y[2] += _scroll_direction
            o.testo_surface_y[2] = clamp(o.testo_surface_y[2], 0, (text_h - o.testo_surface_h[2]))
            o.testo_cursore_y[2] = (o.testo_start_y[2] + ((b_h * o.testo_surface_y[2]) / (text_h - o.testo_surface_h[2])))
        }
    }
    return;
}

