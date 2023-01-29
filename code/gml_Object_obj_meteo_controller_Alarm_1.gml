global.emission_timer_now = 0
global.state_emission_now += 1
global.is_emission_now = 1
if (global.state_emission_now == (5 << 0))
    audio_play_sound(snd_thunder_emission, 20, false)
if (global.state_emission_now == (2 << 0))
    audio_play_sound(snd_rumble_4, 20, false)
if (global.state_emission_now == (7 << 0))
    audio_play_sound(snd_explosive_massive_1, 20, false)
if (global.state_emission_now != (23 << 0))
    alarm[1] = global.emission_timer[global.state_emission_now]
if (global.state_emission_now == (23 << 0))
{
    global.state_emission_now = (0 << 0)
    global.is_emission_now = 0
    global.emission_done = 1
}
