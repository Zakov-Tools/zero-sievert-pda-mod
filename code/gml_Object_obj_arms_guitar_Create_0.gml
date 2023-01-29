image_speed = 0.3
linked_id = -4
emitter_sound = audio_emitter_create()
audio_emitter_position(emitter_sound, x, y, 0)
max_dis = 180
audio_emitter_falloff(emitter_sound, 32, max_dis, 1)
audio_play_sound_on(emitter_sound, snd_main_menu, true, 10)
