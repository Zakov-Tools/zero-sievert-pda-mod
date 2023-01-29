function scr_draw_geiger_counter() //gml_Script_scr_draw_geiger_counter
{
    if instance_exists(obj_player)
    {
        var rx = (obj_player.x div 8)
        var ry = ((obj_player.y + 8) div 8)
        var c = 0
        if (room == room1)
        {
            if instance_exists(obj_map_generator)
            {
                c = ds_grid_get(obj_map_generator.grid_radiation, rx, ry)
                if (!is_undefined(c))
                    c = round(c)
            }
        }
        if (!is_undefined(c))
        {
            var angle_off = 0
            if (c > 15)
                angle_off = pda_geiger_counter_angle_offset
            var _rad_max_counter = 500
            var g_counter_angle = (((180 * (-c)) / _rad_max_counter) + angle_off)
            var counter_x = 430
            var counter_y = 99
            draw_sprite_ext(s_pda_counter, 0, counter_x, counter_y, 1, 1, g_counter_angle, c_white, 1)
            var amount_x = 450
            var amount_y = 131
            draw_set_font(font_quest)
            draw_set_halign(fa_right)
            draw_set_valign(fa_top)
            var rad_t = (string(c) + " mSv")
            draw_text(amount_x, amount_y, rad_t)
        }
    }
    return;
}

