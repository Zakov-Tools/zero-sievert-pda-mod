function scr_barra_testo_draw(argument0, argument1) //gml_Script_scr_barra_testo_draw
{
    var i = argument0
    var t = argument1
    draw_set_font(font_quest)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var text_ = t
    var text_h = string_height_ext(text_, 12, testo_surface_w[i])
    if (!surface_exists(surface_testo))
    {
        surface_testo = surface_create(testo_surface_w[i], text_h)
        surface_set_target(surface_testo)
        draw_clear_alpha(c_black, 0)
        draw_text_ext(0, 0, text_, 12, testo_surface_w[i])
        surface_reset_target()
    }
    draw_surface_part(surface_testo, 0, testo_surface_y[i], testo_surface_w[i], testo_surface_h[i], testo_start_x[i], testo_start_y[i])
    surface_free(surface_testo)
    draw_sprite(testo_barra_sprite[i], 0, testo_barra_x[i], testo_barra_y[i])
    draw_sprite(testo_cursore_sprite[i], 0, testo_cursore_x[i], testo_cursore_y[i])
    return;
}

