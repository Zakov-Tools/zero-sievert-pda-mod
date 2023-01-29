var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
var draw_normal = 1
if instance_exists(obj_player)
{
    if (obj_player.state != gml_Script_scr_player_state_start && obj_player.state != gml_Script_scr_player_state_dead)
    {
        if (room == room1)
        {
            var rx = (x div 8)
            var ry = ((y + 8) div 8)
            rx = clamp(rx, 1, (obj_map_generator.grid_rw - 1))
            ry = clamp(ry, 1, (obj_map_generator.grid_rh - 1))
            var c = ds_grid_get(obj_map_generator.grid_radiation, rx, ry)
            var difesa_rad = 0
            if (obj_player.armor_now != -1)
                difesa_rad = obj_player.armor_radiation[obj_player.armor_now]
            var radiation_ = ((c - global.injector_factor[(8 << 0)]) - difesa_rad)
            radiation_ = clamp(radiation_, 0, 1000)
            radiation_amount += (radiation_ - 200)
            radiation_amount = clamp(radiation_amount, 0, radiation_)
            var amount = (radiation_amount / 600)
            amount = clamp(amount, 0, 1)
            if (global.meteo_rain != (10 << 0) && global.meteo_rain != (11 << 0) && global.meteo_rain != (12 << 0))
            {
                if (amount > 0 && global.night_vision == 0 && obj_player.state != gml_Script_scr_player_state_start)
                {
                    draw_normal = 0
                    application_surface_draw_enable(false)
                    shader_set(shd_radiation)
                    shader_set_uniform_f(shader_radiation_time, ((0.00001 * current_time) % 1))
                    shader_set_uniform_f(shader_radiation_intensity, amount)
                    var a = application_get_position()
                    var xscale = ((a[2] - a[0]) / surface_get_width(application_surface))
                    var yscale = ((a[3] - a[1]) / surface_get_height(application_surface))
                    draw_surface_ext(application_surface, a[0], a[1], xscale, yscale, 0, c_white, 1)
                    shader_reset()
                }
            }
        }
        if (global.night_vision == 1)
        {
            if instance_exists(obj_player)
            {
                if (obj_player.headset_now != (0 << 0))
                {
                    var _headset_id = obj_player.headset_now
                    var o = obj_player
                    if (o.headset_type[_headset_id] == (1 << 0))
                    {
                        draw_normal = 0
                        application_surface_draw_enable(false)
                        shader_set(shd_night_vision)
                        var uni_brightness_amount = shader_get_uniform(shd_night_vision, "brightness_amount")
                        shader_set_uniform_f(uni_brightness_amount, o.headset_brightness[_headset_id])
                        var uni_contrast_amount = shader_get_uniform(shd_night_vision, "contrast_amount")
                        shader_set_uniform_f(uni_contrast_amount, o.headset_contrast[_headset_id])
                        var uni_gamma_amount = shader_get_uniform(shd_night_vision, "gamma_amount")
                        shader_set_uniform_f(uni_gamma_amount, o.headset_gamma[_headset_id])
                        var uni_red_amount = shader_get_uniform(shd_night_vision, "red_amount")
                        shader_set_uniform_f(uni_red_amount, o.headset_red[_headset_id])
                        var uni_green_amount = shader_get_uniform(shd_night_vision, "green_amount")
                        shader_set_uniform_f(uni_green_amount, o.headset_green[_headset_id])
                        var uni_blue_amount = shader_get_uniform(shd_night_vision, "blue_amount")
                        shader_set_uniform_f(uni_blue_amount, o.headset_blue[_headset_id])
                        var uni_grain_time = shader_get_uniform(shd_night_vision, "grain_time")
                        shader_set_uniform_f(uni_grain_time, ((0.00001 * current_time) % 1))
                        var uni_grain_amount = shader_get_uniform(shd_night_vision, "grain_amount")
                        shader_set_uniform_f(uni_grain_amount, o.headset_grain[_headset_id])
                        a = application_get_position()
                        xscale = ((a[2] - a[0]) / surface_get_width(application_surface))
                        yscale = ((a[3] - a[1]) / surface_get_height(application_surface))
                        draw_surface_ext(application_surface, a[0], a[1], xscale, yscale, 0, c_white, 1)
                        shader_reset()
                    }
                }
            }
        }
        if (global.is_emission_now == 1)
        {
            if (global.emission_has_shader[global.state_emission_now] == 1)
            {
                draw_normal = 0
                application_surface_draw_enable(false)
                shader_set(shd_night_vision)
                uni_brightness_amount = shader_get_uniform(shd_night_vision, "brightness_amount")
                shader_set_uniform_f(uni_brightness_amount, global.emission_shader_brightness_now)
                uni_contrast_amount = shader_get_uniform(shd_night_vision, "contrast_amount")
                shader_set_uniform_f(uni_contrast_amount, global.emission_shader_contrast_now)
                uni_gamma_amount = shader_get_uniform(shd_night_vision, "gamma_amount")
                shader_set_uniform_f(uni_gamma_amount, 1)
                uni_red_amount = shader_get_uniform(shd_night_vision, "red_amount")
                shader_set_uniform_f(uni_red_amount, global.emission_shader_red_now)
                uni_green_amount = shader_get_uniform(shd_night_vision, "green_amount")
                shader_set_uniform_f(uni_green_amount, global.emission_shader_green_now)
                uni_blue_amount = shader_get_uniform(shd_night_vision, "blue_amount")
                shader_set_uniform_f(uni_blue_amount, global.emission_shader_blue_now)
                uni_grain_time = shader_get_uniform(shd_night_vision, "grain_time")
                shader_set_uniform_f(uni_grain_time, ((0.00001 * current_time) % 1))
                uni_grain_amount = shader_get_uniform(shd_night_vision, "grain_amount")
                shader_set_uniform_f(uni_grain_amount, 0)
                a = application_get_position()
                xscale = ((a[2] - a[0]) / surface_get_width(application_surface))
                yscale = ((a[3] - a[1]) / surface_get_height(application_surface))
                draw_surface_ext(application_surface, a[0], a[1], xscale, yscale, 0, c_white, 1)
                shader_reset()
            }
        }
        if (draw_normal == 1)
            application_surface_draw_enable(true)
    }
}
if (draw_normal == 1)
{
    global.night_vision = 0
    application_surface_draw_enable(true)
}
