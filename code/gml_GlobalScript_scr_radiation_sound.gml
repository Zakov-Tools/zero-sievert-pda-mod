function scr_radiation_sound() //gml_Script_scr_radiation_sound
{
    if (radiation > 5 && radiation < 33)
    {
        if (!audio_is_playing(snd_radiation_low))
            audio_play_sound(snd_radiation_low, 10, false)
        if audio_is_playing(snd_radiation_medium)
            audio_stop_sound(snd_radiation_low)
        if audio_is_playing(snd_radiation_high)
            audio_stop_sound(snd_radiation_high)
    }
    if (radiation >= 33 && radiation < 75)
    {
        if (!audio_is_playing(snd_radiation_medium))
            audio_play_sound(snd_radiation_medium, 10, false)
        if audio_is_playing(snd_radiation_low)
            audio_stop_sound(snd_radiation_low)
        if audio_is_playing(snd_radiation_high)
            audio_stop_sound(snd_radiation_high)
    }
    if (radiation >= 75)
    {
        if (!audio_is_playing(snd_radiation_high))
            audio_play_sound(snd_radiation_high, 10, false)
        if audio_is_playing(snd_radiation_low)
            audio_stop_sound(snd_radiation_low)
        if audio_is_playing(snd_radiation_medium)
            audio_stop_sound(snd_radiation_medium)
    }
    return;
}

