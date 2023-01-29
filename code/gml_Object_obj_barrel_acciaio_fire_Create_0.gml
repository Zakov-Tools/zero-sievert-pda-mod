event_inherited()
image_speed = 0
depth = (-y)
var l = instance_create_depth(x, y, (-y), obj_light)
l.light_id = (0 << 0)
fire_sound = 360
emitter_sound = audio_emitter_create()
audio_emitter_position(emitter_sound, x, (y - 10), 0)
audio_emitter_falloff(emitter_sound, 16, 128, 1)
alarm[10] = 2
