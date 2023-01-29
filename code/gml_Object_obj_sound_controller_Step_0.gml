if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
audio_emitter_position(sound_emitter_wind, x, y, 0)
audio_emitter_position(sound_emitter_bird_stream, x, y, 0)
if (room == r_hub)
{
    if (obj_player.y < 1146)
    {
        if (!audio_is_playing(snd_bunker_loop1))
            audio_play_sound(snd_bunker_loop1, 2, false)
        if scr_chance(0.5)
        {
            var drip = choose(252, 253, 254, 255, 256)
            audio_play_sound(drip, 10, false)
        }
    }
}
if (room == room1)
{
    if (!instance_exists(obj_exit_screen))
    {
        if (obj_map_generator.area == (1 << 0) || obj_map_generator.area == (2 << 0) || obj_map_generator.area == (3 << 0) || obj_map_generator.area == (4 << 0))
        {
            if (y < obj_map_generator.map_height)
            {
                if (!audio_is_playing(snd_forest_day_1))
                    audio_play_sound(snd_forest_day_1, 15, false)
            }
            else if audio_is_playing(snd_forest_day_1)
                audio_stop_sound(snd_forest_day_1)
        }
        if (global.meteo_rain != (0 << 0))
        {
            if (global.meteo_rain == (1 << 0) || global.meteo_rain == (10 << 0))
            {
                if (!audio_is_playing(snd_rain_light))
                    audio_play_sound(snd_rain_light, 10, false)
                if audio_is_playing(snd_rain_medium)
                    audio_stop_sound(snd_rain_medium)
                if audio_is_playing(snd_rain_heavy)
                    audio_stop_sound(snd_rain_heavy)
            }
            if (global.meteo_rain == (2 << 0) || global.meteo_rain == (11 << 0))
            {
                if audio_is_playing(snd_rain_light)
                    audio_stop_sound(snd_rain_light)
                if (!audio_is_playing(snd_rain_medium))
                    audio_play_sound(snd_rain_medium, 10, false)
                if audio_is_playing(snd_rain_heavy)
                    audio_stop_sound(snd_rain_heavy)
                counter_thunder++
                if (counter_thunder >= counter_thunder_max)
                {
                    if scr_chance(0.05)
                    {
                        var thunder_ = choose(327, 328, 329, 330)
                        audio_play_sound(thunder_, 10, false)
                        counter_thunder = 0
                    }
                }
            }
            if (global.meteo_rain == (3 << 0) || global.meteo_rain == (12 << 0))
            {
                if audio_is_playing(snd_rain_light)
                    audio_stop_sound(snd_rain_light)
                if audio_is_playing(snd_rain_medium)
                    audio_stop_sound(snd_rain_medium)
                if (!audio_is_playing(snd_rain_heavy))
                    audio_play_sound(snd_rain_heavy, 10, false)
                counter_thunder++
                if (counter_thunder >= counter_thunder_max)
                {
                    if scr_chance(0.5)
                    {
                        thunder_ = choose(327, 328, 329, 330)
                        audio_play_sound(thunder_, 10, false)
                        counter_thunder = 0
                    }
                }
            }
        }
        else
        {
            if audio_is_playing(snd_rain_light)
                audio_stop_sound(snd_rain_light)
            if audio_is_playing(snd_rain_medium)
                audio_stop_sound(snd_rain_medium)
            if audio_is_playing(snd_rain_heavy)
                audio_stop_sound(snd_rain_heavy)
        }
        if (y > obj_map_generator.map_height)
        {
            if audio_is_playing(snd_rain_light)
                audio_stop_sound(snd_rain_light)
            if audio_is_playing(snd_rain_medium)
                audio_stop_sound(snd_rain_medium)
            if audio_is_playing(snd_rain_heavy)
                audio_stop_sound(snd_rain_heavy)
        }
    }
}
