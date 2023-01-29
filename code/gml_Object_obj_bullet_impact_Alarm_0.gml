audio_emitter_position(my_emitter, x, y, 0)
audio_emitter_position(my_emitter_ricochet, x, y, 0)
audio_emitter_falloff(my_emitter, 64, 260, 1)
audio_emitter_falloff(my_emitter_ricochet, 64, 260, 1)
audio_play_sound_on(my_emitter, sound_impact, false, 15)
if scr_chance(35)
{
    var _sound_ricochet = choose(231, 232, 233, 234)
    audio_play_sound_on(my_emitter_ricochet, _sound_ricochet, false, 14)
}
var _durata = round(((audio_sound_length(sound_impact) * 60) + 1))
alarm[1] = 180
