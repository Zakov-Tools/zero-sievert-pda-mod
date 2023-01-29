event_inherited()
depth = (-y)
fire_sound = snd_fire1
var l = instance_create_depth(x, y, (-y), obj_light)
l.light_id = (0 << 0)
emitter_sound = audio_emitter_create()
audio_emitter_position(emitter_sound, x, (y - 10), 0)
audio_emitter_falloff(emitter_sound, 32, 128, 1)
audio_play_sound_on(emitter_sound, fire_sound, 10, 1)
