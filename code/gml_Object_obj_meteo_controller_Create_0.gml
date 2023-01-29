meteo_dark[(0 << 0)] = 0
meteo_dark[(1 << 0)] = 0.1
meteo_dark[(2 << 0)] = 0.3
meteo_dark[(3 << 0)] = 0.6
meteo_dark[(4 << 0)] = 0
meteo_dark[(5 << 0)] = 0
meteo_dark[(6 << 0)] = 0
meteo_dark[(9 << 0)] = 0
meteo_dark[(10 << 0)] = 0.1
meteo_dark[(11 << 0)] = 0.1
meteo_dark[(12 << 0)] = 0.1
meteo_dark[(13 << 0)] = 0.3
global.meteo_rain = (0 << 0)
global.meteo_fog = (4 << 0)
global.meteo_dark = 0
change_meteo_time = 54000
meteo_rain_prima = (0 << 0)
meteo_fog_prima = (4 << 0)
rad_rain_1_amount = 25
rad_rain_2_amount = 75
rad_rain_3_amount = 200
var i = (1 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 3
meteo_rain1[i] = 2
meteo_rain2[i] = 1
meteo_rain3[i] = 1
meteo_no_fog[i] = 3
meteo_fog1[i] = 1
meteo_fog2[i] = 0
meteo_rad_rain_1[i] = 0
meteo_rad_rain_2[i] = 0
meteo_rad_rain_3[i] = 0
i = (2 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 2
meteo_rain1[i] = 3
meteo_rain2[i] = 2
meteo_rain3[i] = 2
meteo_no_fog[i] = 4
meteo_fog1[i] = 1
meteo_fog2[i] = 1
meteo_rad_rain_1[i] = 1
meteo_rad_rain_2[i] = 1
meteo_rad_rain_3[i] = 0
i = (3 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 4
meteo_rain1[i] = 3
meteo_rain2[i] = 2
meteo_rain3[i] = 2
meteo_no_fog[i] = 4
meteo_fog1[i] = 1
meteo_fog2[i] = 0
meteo_rad_rain_1[i] = 1
meteo_rad_rain_2[i] = 1
meteo_rad_rain_3[i] = 1
i = (4 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 1
meteo_rain1[i] = 1
meteo_rain2[i] = 2
meteo_rain3[i] = 4
meteo_no_fog[i] = 0
meteo_fog1[i] = 2
meteo_fog2[i] = 1
meteo_rad_rain_1[i] = 1
meteo_rad_rain_2[i] = 1
meteo_rad_rain_3[i] = 1
i = (6 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 2
meteo_rain1[i] = 2
meteo_rain2[i] = 2
meteo_rain3[i] = 2
meteo_no_fog[i] = 2
meteo_fog1[i] = 1
meteo_fog2[i] = 1
meteo_rad_rain_1[i] = 1
meteo_rad_rain_2[i] = 1
meteo_rad_rain_3[i] = 1
i = (7 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 4
meteo_rain1[i] = 1
meteo_rain2[i] = 1
meteo_rain3[i] = 1
meteo_no_fog[i] = 4
meteo_fog1[i] = 1
meteo_fog2[i] = 1
meteo_rad_rain_1[i] = 0
meteo_rad_rain_2[i] = 0
meteo_rad_rain_3[i] = 0
for (i = 0; i < array_length_1d(meteo_map); i++)
{
    var map_ = meteo_map[i]
    meteo_rain_list[map_] = ds_list_create()
    repeat meteo_no_rain[i]
        ds_list_add(meteo_rain_list[i], (0 << 0))
    repeat meteo_rain1[i]
        ds_list_add(meteo_rain_list[i], (1 << 0))
    repeat meteo_rain2[i]
        ds_list_add(meteo_rain_list[i], (2 << 0))
    repeat meteo_rain3[i]
        ds_list_add(meteo_rain_list[i], (3 << 0))
    repeat meteo_rad_rain_1[i]
        ds_list_add(meteo_rain_list[i], (10 << 0))
    repeat meteo_rad_rain_2[i]
        ds_list_add(meteo_rain_list[i], (11 << 0))
    repeat meteo_rad_rain_3[i]
        ds_list_add(meteo_rain_list[i], (12 << 0))
    meteo_fog_list[map_] = ds_list_create()
    repeat meteo_no_fog[i]
        ds_list_add(meteo_fog_list[i], (4 << 0))
    repeat meteo_fog1[i]
        ds_list_add(meteo_fog_list[i], (5 << 0))
    repeat meteo_fog2[i]
        ds_list_add(meteo_fog_list[i], (6 << 0))
}
global.state_emission_now = (0 << 0)
global.is_emission_now = 0
global.emission_make_npc_die = 0
global.emission_timer_now = 0
global.emission_min_timer = (((10 + choose(2, 4, 6, 8)) * 60) * 60)
global.emission_done = 0
emission_chance[(1 << 0)] = 5
emission_chance[(2 << 0)] = 10
emission_chance[(3 << 0)] = 10
emission_chance[(4 << 0)] = 15
emission_chance[(6 << 0)] = 10
global.emission_shader_brightness_max = 0.55
global.emission_shader_brightness_medium = 0.3
global.emission_shader_brightness_low = 0.1
global.emission_shader_contrast_max = 0.3
global.emission_shader_contrast_medium = 0.22
global.emission_shader_contrast_low = 0.1
global.emission_shader_red_max = 1.35
global.emission_shader_green_max = 0.9
global.emission_shader_blue_max = 1.35
for (i = 0; i < (23 << 0); i++)
{
    global.emission_has_shader[i] = 0
    global.emission_shader_brightness[i] = 1
    global.emission_shader_contrast[i] = 1
    global.emission_shader_gamma[i] = 1
}
global.emission_shader_brightness_now = 0
global.emission_shader_contrast_now = 0
global.emission_shader_gamma_now = 1
global.emission_shader_red_now = 1
global.emission_shader_blue_now = 1
global.emission_shader_green_now = 1
i = (0 << 0)
global.emission_timer[i] = 1
i = (1 << 0)
global.emission_timer[i] = 1200
i = (2 << 0)
global.emission_timer[i] = 60
i = (3 << 0)
global.emission_timer[i] = 240
global.emission_has_shader[i] = 1
i = (4 << 0)
global.emission_timer[i] = 30
global.emission_has_shader[i] = 1
i = (5 << 0)
global.emission_timer[i] = 15
global.emission_has_shader[i] = 1
i = (6 << 0)
global.emission_timer[i] = 3
global.emission_has_shader[i] = 1
i = (7 << 0)
global.emission_timer[i] = 8
i = (8 << 0)
global.emission_timer[i] = 4
global.emission_has_shader[i] = 1
i = (9 << 0)
global.emission_timer[i] = 4
global.emission_has_shader[i] = 1
i = (10 << 0)
global.emission_timer[i] = 8
i = (11 << 0)
global.emission_timer[i] = 4
global.emission_has_shader[i] = 1
i = (12 << 0)
global.emission_timer[i] = 4
global.emission_has_shader[i] = 1
i = (13 << 0)
global.emission_timer[i] = 8
i = (14 << 0)
global.emission_timer[i] = 12
global.emission_has_shader[i] = 1
i = (15 << 0)
global.emission_timer[i] = 180
global.emission_has_shader[i] = 1
i = (16 << 0)
global.emission_timer[i] = 180
i = (17 << 0)
global.emission_timer[i] = 180
global.emission_has_shader[i] = 1
i = (18 << 0)
global.emission_timer[i] = 600
global.emission_has_shader[i] = 1
i = (19 << 0)
global.emission_timer[i] = 900
global.emission_has_shader[i] = 1
i = (20 << 0)
global.emission_timer[i] = 3600
global.emission_has_shader[i] = 1
i = (21 << 0)
global.emission_timer[i] = 120
global.emission_has_shader[i] = 1
i = (22 << 0)
global.emission_timer[i] = 180
