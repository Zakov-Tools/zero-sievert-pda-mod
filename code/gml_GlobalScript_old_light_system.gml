function old_light_system() //gml_Script_old_light_system
{
    if (room == r_hub)
    {
        if (!surface_exists(surface_light))
        {
            surface_light = surface_create(480, 270)
            surface_set_target(surface_light)
            var alpha_surf = 1
            if (global.night_vision == 1)
                alpha_surf = 0
            var c_surf = color_surface
            var aa = 0.7
            if (obj_player.y > 1146)
                aa = darkness_now
            else
                c_surf = c_black
            draw_clear_alpha(c_surf, alpha_surf)
            gpu_set_blendmode(bm_subtract)
            with (obj_light)
            {
                var angle = 0
                if (object_index == obj_light_torch)
                    angle = point_direction(x, y, mouse_x, mouse_y)
                if (light_id == (12 << 0))
                    angle = light_direction
                draw_sprite_ext(light_sprite, 0, (x - camx), (y - camy), scale, scale, angle, c_black, alpha_togliere)
            }
            with (obj_player)
            {
                for (var i = (7 << 0); i <= (10 << 0); i++)
                {
                    if (torch_have[weapon_slot_now][i] == 1)
                    {
                        if (torch_on[weapon_slot_now][i] == 1)
                        {
                            var _x = torch_x[weapon_slot_now][i]
                            var _y = torch_y[weapon_slot_now][i]
                            var _id_torch = torch_id[weapon_slot_now][i]
                            var _scale = mod_torch_scale[_id_torch]
                            var _angle = weapon_pointing_direction
                            draw_sprite_ext(mod_torch_png[_id_torch], 0, ((x + _x) - camx), ((y + _y) - camy), _scale, _scale, _angle, c_black, mod_torch_alpha_togliere[_id_torch])
                        }
                    }
                }
            }
            gpu_set_blendmode(bm_normal)
            with (obj_light)
            {
                angle = 0
                if (object_index == obj_light_torch)
                    angle = point_direction(x, y, mouse_x, mouse_y)
                if (light_id == (12 << 0))
                    angle = light_direction
                var _c = light_color
                var _a = alpha_mettere
                if (global.night_vision == 1)
                {
                    _c = c_white
                    _a = 0.8
                }
                draw_sprite_ext(light_sprite, 0, (x - camx), (y - camy), scale, scale, angle, _c, _a)
            }
            with (obj_player)
            {
                for (i = (7 << 0); i <= (10 << 0); i++)
                {
                    if (torch_have[weapon_slot_now][i] == 1)
                    {
                        if (torch_on[weapon_slot_now][i] == 1)
                        {
                            _x = torch_x[weapon_slot_now][i]
                            _y = torch_y[weapon_slot_now][i]
                            _id_torch = torch_id[weapon_slot_now][i]
                            _scale = mod_torch_scale[_id_torch]
                            _angle = weapon_pointing_direction
                            draw_sprite_ext(mod_torch_png[_id_torch], 0, ((x + _x) - camx), ((y + _y) - camy), _scale, _scale, _angle, mod_torch_col[_id_torch], mod_torch_alpha_mettere[_id_torch])
                        }
                    }
                }
            }
            gpu_set_blendmode(bm_normal)
            surface_reset_target()
        }
        draw_set_alpha(aa)
        draw_surface(surface_light, camx, camy)
        draw_set_alpha(1)
        surface_free(surface_light)
    }
    if (room == room1 || room == test_room)
    {
        var darkness_tot = (darkness_now + global.meteo_dark)
        c_surf = color_surface
        if (global.meteo_dark > 0 && hour >= ciclo_time[(1 << 0)] && hour < ciclo_time[(2 << 0)])
            c_surf = ciclo_color[(3 << 0)]
        darkness_tot = clamp(darkness_tot, 0, 1)
        alpha_surf = darkness_tot
        if (room == room1)
        {
            var o = obj_map_generator
            if (obj_player.y > o.map_height)
            {
                var px = (obj_player.x div 16)
                var py = (obj_player.y div 16)
                var dark_light = ds_grid_get(o.grid_light_indoor, px, py)
                switch dark_light
                {
                    case (0 << 0):
                        alpha_surf = darkness_max
                        c_surf = ciclo_color[(3 << 0)]
                        break
                    case (1 << 0):
                        alpha_surf = darkness_tot
                        c_surf = ciclo_color[(3 << 0)]
                        break
                    case (2 << 0):
                        alpha_surf = (darkness_tot + ((1 - darkness_tot) / 2))
                        c_surf = ciclo_color[(3 << 0)]
                        break
                }

            }
        }
        if (global.night_vision == 1)
            alpha_surf = darkness_tot
        if (alpha_surf > 0)
        {
            if (!surface_exists(surface_light))
            {
                var camx = camera_get_view_x(view_camera[0])
                var camy = camera_get_view_y(view_camera[0])
                surface_light = surface_create(480, 270)
                surface_set_target(surface_light)
                if (ciclo_now == (0 << 0) || ciclo_now == (2 << 0))
                {
                    if (global.meteo_dark > 0)
                    {
                    }
                }
                draw_clear_alpha(c_surf, alpha_surf)
                gpu_set_blendmode(bm_subtract)
                with (obj_light)
                {
                    angle = 0
                    if (object_index == obj_light_torch)
                        angle = point_direction(x, y, mouse_x, mouse_y)
                    if (light_id == (12 << 0))
                        angle = light_direction
                    draw_sprite_ext(light_sprite, 0, (x - camx), (y - camy), scale, scale, angle, c_black, alpha_togliere)
                }
                with (obj_player)
                {
                    for (i = (7 << 0); i <= (10 << 0); i++)
                    {
                        if (torch_have[weapon_slot_now][i] == 1)
                        {
                            if (torch_on[weapon_slot_now][i] == 1)
                            {
                                _x = torch_x[weapon_slot_now][i]
                                _y = torch_y[weapon_slot_now][i]
                                _id_torch = torch_id[weapon_slot_now][i]
                                _scale = mod_torch_scale[_id_torch]
                                _angle = weapon_pointing_direction
                                draw_sprite_ext(mod_torch_png[_id_torch], 0, ((x + _x) - camx), ((y + _y) - camy), _scale, _scale, _angle, c_black, mod_torch_alpha_togliere[_id_torch])
                            }
                        }
                    }
                }
                gpu_set_blendmode(bm_normal)
                with (obj_light)
                {
                    angle = 0
                    if (object_index == obj_light_torch)
                        angle = point_direction(x, y, mouse_x, mouse_y)
                    if (light_id == (12 << 0))
                        angle = light_direction
                    _c = light_color
                    _a = alpha_mettere
                    if (global.night_vision == 1)
                    {
                        _c = 16777215
                        _a = 0.8
                    }
                    draw_sprite_ext(light_sprite, 0, (x - camx), (y - camy), scale, scale, angle, _c, _a)
                }
                with (obj_player)
                {
                    for (i = (7 << 0); i <= (10 << 0); i++)
                    {
                        if (torch_have[weapon_slot_now][i] == 1)
                        {
                            if (torch_on[weapon_slot_now][i] == 1)
                            {
                                _x = torch_x[weapon_slot_now][i]
                                _y = torch_y[weapon_slot_now][i]
                                _id_torch = torch_id[weapon_slot_now][i]
                                _scale = mod_torch_scale[_id_torch]
                                _angle = weapon_pointing_direction
                                draw_sprite_ext(mod_torch_png[_id_torch], 0, ((x + _x) - camx), ((y + _y) - camy), _scale, _scale, _angle, mod_torch_col[_id_torch], mod_torch_alpha_mettere[_id_torch])
                            }
                        }
                    }
                }
                surface_reset_target()
            }
            draw_surface(surface_light, camx, camy)
            surface_free(surface_light)
        }
    }
    return;
}

