var _arr;
if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
    var o = obj_map_generator
    depth = -9890
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var cam_w = camera_get_view_width(view_camera[0])
    var cam_h = camera_get_view_height(view_camera[0])
    if (room == room1)
    {
        if (global.player_is_indoor == 0)
        {
            if (obj_map_generator.area == (4 << 0))
            {
                var offset = 100
                var a = (33 << 0)
                part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                if scr_chance(50)
                    part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
            }
            if (obj_map_generator.area == (1 << 0) || obj_map_generator.area == (2 << 0) || obj_map_generator.area == (3 << 0) || obj_map_generator.area == (4 << 0) || obj_map_generator.area == (6 << 0))
            {
                if (obj_player.y < o.map_height)
                {
                    offset = 100
                    a = (35 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], camx, ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(25)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                }
            }
        }
    }
    if (room == room1)
    {
        if (global.player_is_indoor == 0)
        {
            switch global.meteo_rain
            {
                case (0 << 0):
                    global.meteo_rain_alpha = 0
                    break
                case (1 << 0):
                    var offsetx = 64
                    var region_h = 16
                    if scr_chance(75)
                    {
                        a = (3 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    if scr_chance(40)
                    {
                        a = (4 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    break
                case (2 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(100)
                    {
                        a = (3 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 2)
                    }
                    if scr_chance(60)
                    {
                        a = (4 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    break
                case (3 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(100)
                    {
                        a = (3 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 11)
                    }
                    if scr_chance(100)
                    {
                        a = (4 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 8)
                    }
                    break
                case (10 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(75)
                    {
                        a = (5 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    if scr_chance(40)
                    {
                        a = (6 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    break
                case (11 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(100)
                    {
                        a = (5 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 2)
                    }
                    if scr_chance(60)
                    {
                        a = (6 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    break
                case (12 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(100)
                    {
                        a = (5 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 11)
                    }
                    if scr_chance(100)
                    {
                        a = (6 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 8)
                    }
                    break
            }

            switch global.meteo_fog
            {
                case (4 << 0):
                    break
                case (5 << 0):
                    offset = 100
                    a = (33 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(50)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                    break
                case (6 << 0):
                    offset = 100
                    a = (33 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(100)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                    break
                case (7 << 0):
                    offset = 100
                    a = (34 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(50)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                    break
                case (8 << 0):
                    offset = 100
                    a = (34 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(100)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                    break
                default:

            }

        }
    }
    if (room == room1)
    {
        if (global.player_is_indoor == 0)
        {
            if (global.state_emission_now > (7 << 0))
            {
                if (!audio_is_playing(snd_rumble_long))
                    audio_play_sound(snd_rumble_long, 19, false)
            }
            if (global.state_emission_now > (19 << 0))
            {
                if (!audio_is_playing(snd_wind_fast))
                    audio_play_sound(snd_wind_fast, 19, false)
            }
            if (global.state_emission_now == (1 << 0))
            {
                offset = 60
                a = (45 << 0)
                part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), camx, (camy - offset), ((camy + cam_h) + offset), 0, 0)
                var _div = (global.emission_timer_now / global.emission_timer[(1 << 0)])
                var _chance = (power(_div, 2) * 100)
                if scr_chance(_chance)
                {
                    if scr_chance(50)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                }
                var _chance_sound = (_div * 9)
                if scr_chance(_chance_sound)
                {
                    var i = 0
                    _arr[i] = snd_crow1
                    i++
                    _arr[i] = snd_crow2
                    i++
                    _arr[i] = snd_crow3
                    i++
                    _arr[i] = snd_crow4
                    i++
                    _arr[i] = snd_crow5
                    i++
                    if scr_chance(35)
                    {
                        _arr[i] = snd_bird_fly1
                        i++
                        _arr[i] = snd_bird_fly2
                        i++
                        _arr[i] = snd_bird_fly3
                        i++
                        _arr[i] = snd_bird_fly4
                        i++
                        _arr[i] = snd_bird_fly5
                        i++
                    }
                    var _sound = _arr[irandom((array_length_1d(_arr) - 1))]
                    audio_play_sound(_sound, 14, false)
                }
            }
            switch global.state_emission_now
            {
                case (3 << 0):
                    scr_get_emission_shader_value(1, 0, global.emission_shader_brightness_max, 0, global.emission_shader_contrast_max)
                    break
                case (4 << 0):
                    scr_get_emission_shader_value(1, global.emission_shader_brightness_max, global.emission_shader_brightness_medium, global.emission_shader_contrast_max, global.emission_shader_contrast_low)
                    break
                case (5 << 0):
                    scr_get_emission_shader_value(1, global.emission_shader_brightness_medium, global.emission_shader_brightness_max, global.emission_shader_contrast_low, global.emission_shader_contrast_medium)
                    break
                case (6 << 0):
                    scr_get_emission_shader_value(1, global.emission_shader_brightness_max, global.emission_shader_brightness_low, global.emission_shader_contrast_medium, 0)
                    break
                case (7 << 0):
                    break
                case (8 << 0):
                    scr_get_emission_shader_value(1, 0, global.emission_shader_brightness_max, 0, global.emission_shader_contrast_medium)
                    break
                case (9 << 0):
                    scr_get_emission_shader_value(1, global.emission_shader_brightness_max, 0, global.emission_shader_contrast_medium, 0)
                    break
                case (10 << 0):
                    break
                case (11 << 0):
                    scr_get_emission_shader_value(1, 0, global.emission_shader_brightness_max, 0, global.emission_shader_contrast_medium)
                    break
                case (12 << 0):
                    scr_get_emission_shader_value(1, global.emission_shader_brightness_max, 0, global.emission_shader_contrast_medium, 0)
                    break
                case (13 << 0):
                    break
                case (14 << 0):
                    scr_get_emission_shader_value(1, 0, global.emission_shader_brightness_medium, 0, global.emission_shader_contrast_medium)
                    break
                case (15 << 0):
                    scr_get_emission_shader_value(1, global.emission_shader_brightness_medium, 0, global.emission_shader_contrast_medium, 0)
                    break
                case (16 << 0):
                    break
                case (17 << 0):
                    scr_get_emission_shader_value(1, 0, -0.15, 0, global.emission_shader_contrast_low)
                    scr_get_emission_shader_color(1, 1, global.emission_shader_red_max, 1, global.emission_shader_green_max, 1, global.emission_shader_blue_max)
                    break
                case (18 << 0):
                    offset = 60
                    a = (46 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), camx, (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    _div = (global.emission_timer_now / global.emission_timer[global.state_emission_now])
                    _chance = (_div * 100)
                    if scr_chance(_chance)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    break
                case (19 << 0):
                    offset = 60
                    a = (46 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), camx, (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    if (frac((global.emission_timer_now / 180)) == 0)
                    {
                        i = 0
                        _arr[i] = snd_thunder_5
                        i++
                        _arr[i] = snd_thunder_6
                        i++
                        _arr[i] = snd_thunder_7
                        i++
                        _arr[i] = snd_thunder4
                        i++
                        _arr[i] = snd_thunder_emission
                        i++
                        _sound = _arr[irandom((array_length_1d(_arr) - 1))]
                        audio_play_sound(_sound, 18, false)
                    }
                    var _sweep = snd_sweep_long_1
                    var _sweep_dur = round((audio_sound_length(_sweep) * 60))
                    if ((global.emission_timer[global.state_emission_now] - global.emission_timer_now) == _sweep_dur)
                    {
                        if (!audio_is_playing(_sweep))
                            audio_play_sound(_sweep, 21, false)
                    }
                    break
                case (20 << 0):
                    offset = 60
                    a = (46 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), camx, (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    if (frac((global.emission_timer_now / 90)) == 0)
                    {
                        audio_play_sound(snd_explosive_emp, 20, false)
                        a = (47 << 0)
                        for (i = 0; i < (270 + (offset * 2)); i += 35)
                            part_particles_create(particles_system[a], (camx - offset), ((camy - offset) + i), particles_type[a], 1)
                        var _hitbox = instance_create_depth((camx - offset), (camy - offset), -6000, obj_emission_hitbox)
                        _hitbox.hspd = 8
                    }
                    if (frac((global.emission_timer_now / 180)) == 0)
                    {
                        i = 0
                        _arr[i] = snd_thunder_5
                        i++
                        _arr[i] = snd_thunder_6
                        i++
                        _arr[i] = snd_thunder_7
                        i++
                        _arr[i] = snd_thunder4
                        i++
                        _arr[i] = snd_thunder_emission
                        i++
                        _sound = _arr[irandom((array_length_1d(_arr) - 1))]
                        audio_play_sound(_sound, 18, false)
                    }
                    global.emission_make_npc_die = 1
                    break
                case (21 << 0):
                    scr_get_emission_shader_value(1, -0.15, 0, global.emission_shader_contrast_low, 0)
                    scr_get_emission_shader_color(1, global.emission_shader_red_max, 1, global.emission_shader_green_max, 1, global.emission_shader_blue_max, 1)
                    obj_meteo_controller.alarm[0] = 15
                    break
                default:
                    break
            }

        }
    }
}
