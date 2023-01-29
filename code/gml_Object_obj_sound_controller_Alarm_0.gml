if (room == room1)
{
    if (obj_map_generator.area == (1 << 0))
    {
        if (!audio_is_playing(snd_wind_slow))
            audio_play_sound_on(sound_emitter_wind, snd_wind_slow, true, 5)
    }
}
