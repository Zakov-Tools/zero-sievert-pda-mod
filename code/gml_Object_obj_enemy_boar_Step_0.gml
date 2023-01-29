event_inherited()
if (state == npc_state_alert[npc_id] || state == (41 << 0))
{
    var _chance = 0.8333333333333334
    if (state == (41 << 0))
        _chance = 1.6666666666666667
    if scr_chance(_chance)
    {
        var sound = choose(304, 305, 306, 307, 308)
        audio_play_sound_on(emitter_talk, sound, false, 5)
    }
}
