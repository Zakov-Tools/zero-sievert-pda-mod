var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (!surface_exists(surface_light))
{
    surface_light = surface_create(480, 270)
    var darkness_tot = (darkness_now + global.meteo_dark)
    var c_surf = color_surface
    if (room == r_hub)
    {
        darkness_tot = 0.7
        if (obj_player.y > 1146)
            darkness_tot = darkness_now
        else
            c_surf = c_black
    }
    if (room == room1 || room == test_room)
    {
        if (global.meteo_dark > 0 && hour >= ciclo_time[(1 << 0)] && hour < ciclo_time[(2 << 0)])
            c_surf = ciclo_color[(3 << 0)]
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
                        darkness_tot = darkness_max
                        c_surf = ciclo_color[(3 << 0)]
                        break
                    case (1 << 0):
                        c_surf = ciclo_color[(3 << 0)]
                        break
                    case (2 << 0):
                        darkness_tot += ((1 - darkness_tot) / 2)
                        c_surf = ciclo_color[(3 << 0)]
                        break
                }

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
                o = 90
                if (o.headset_type[_headset_id] == (1 << 0))
                {
                    var _c_nvg = 16777215
                    darkness_tot = 1
                }
            }
        }
    }
    darkness_tot = clamp(darkness_tot, 0, 1)
    var alpha_surf = darkness_tot
    surface_set_target(surface_light)
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
    if (global.night_vision == 1)
    {
        draw_sprite_ext(s_glow_nvg_ext, 0, (obj_player.x - camx), (obj_player.y - camy), 1, 1, 0, c_white, 0.6)
        var _follow_x = mouse_x
        var _follow_y = mouse_y
        if (global.aiming == 1)
        {
            _follow_x = obj_surface_aim.x
            _follow_y = obj_surface_aim.y
        }
        draw_sprite_ext(s_glow_nvg_int, 0, (_follow_x - camx), (_follow_y - camy), 1, 1, 0, c_white, 0.7)
    }
    gpu_set_blendmode(bm_normal)
    if (darkness_tot > 0)
    {
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
                _a = 0.95
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
                        _c = mod_torch_col[_id_torch]
                        _a = mod_torch_alpha_mettere[_id_torch]
                        if (global.night_vision == 1)
                        {
                            _c = 16777215
                            _a = 0.95
                        }
                        draw_sprite_ext(mod_torch_png[_id_torch], 0, ((x + _x) - camx), ((y + _y) - camy), _scale, _scale, _angle, _c, _a)
                    }
                }
            }
        }
    }
    if (global.night_vision == 1)
    {
        gpu_set_blendmode(bm_subtract)
        draw_sprite_ext(s_glow_nvg_ext, 0, (obj_player.x - camx), (obj_player.y - camy), 1, 1, 0, c_white, 0.4)
        _follow_x = mouse_x
        _follow_y = mouse_y
        if (global.aiming == 1)
        {
            _follow_x = obj_surface_aim.x
            _follow_y = obj_surface_aim.y
        }
        draw_sprite_ext(s_glow_nvg_int, 0, (_follow_x - camx), (_follow_y - camy), 1, 1, 0, c_white, 0.4)
        gpu_set_blendmode(bm_normal)
    }
    surface_reset_target()
    draw_surface(surface_light, camx, camy)
    surface_free(surface_light)
}
if (room == room1)
{
    if (global.show_surf_radiation == 1)
    {
        if surface_exists(obj_map_generator.surf_radiation)
            draw_surface_ext(obj_map_generator.surf_radiation, 0, 0, 8, 8, 0, c_white, 1)
    }
}
