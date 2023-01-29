function scr_barra_testo_step(argument0, argument1) //gml_Script_scr_barra_testo_step
{
    var i = argument0
    var t = argument1
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if mouse_check_button(mb_left)
    {
        var o = obj_controller
        draw_set_font(font_quest)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        var text_ = t
        var off = o.testo_cursore_off[i]
        var text_h = string_height_ext(text_, 12, o.testo_surface_w[i])
        if (text_h > o.testo_surface_h[i])
        {
            var b_w = sprite_get_width(o.testo_barra_sprite[i])
            var b_h = sprite_get_height(o.testo_barra_sprite[i])
            if scr_mouse_inside((((camx + o.testo_barra_x[i]) - (b_w / 2)) - off), ((camy + o.testo_barra_y[i]) - off), (b_w + (off * 2)), (b_h + (off * 2)))
            {
                var diff = (text_h - o.testo_surface_h[i])
                var diff_m = ((mouse_y - camy) - o.testo_start_y[i])
                diff_m = clamp(diff_m, 0, o.testo_barra_h[i])
                if (diff_m >= 0 && diff_m <= o.testo_barra_h[i])
                {
                    o.testo_surface_y[i] = ((diff * diff_m) / o.testo_barra_h[i])
                    o.testo_cursore_y[i] = (diff_m + o.testo_start_y[i])
                }
            }
        }
    }
    var _mouse_wheel_up = mouse_wheel_up()
    var _mouse_wheel_down = mouse_wheel_down()
    var _scroll_direction = 0
    if (_mouse_wheel_up == 1)
        _scroll_direction = -2
    if (_mouse_wheel_down == 1)
        _scroll_direction = 2
    if (i == 1)
    {
        if (mouse_x < (camx + 220))
            _scroll_direction = 0
    }
    if (_mouse_wheel_up == 1 || _mouse_wheel_down == 1)
    {
        o = obj_controller
        draw_set_font(font_quest)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        text_ = t
        off = o.testo_cursore_off[i]
        text_h = string_height_ext(text_, 12, o.testo_surface_w[i])
        if (text_h > o.testo_surface_h[i])
        {
            b_w = sprite_get_width(o.testo_barra_sprite[i])
            b_h = sprite_get_height(o.testo_barra_sprite[i])
            o.testo_surface_y[i] += _scroll_direction
            o.testo_cursore_y[i] += _scroll_direction
            o.testo_surface_y[i] = clamp(o.testo_surface_y[i], 0, (text_h - o.testo_surface_h[i]))
            o.testo_cursore_y[i] = (o.testo_barra_y[i] + ((b_h * o.testo_surface_y[i]) / (text_h - o.testo_surface_h[i])))
        }
    }
    return;
}

