collision = 0
active = 0
damage = 1
var x1 = (x div 8)
var y1 = (y div 8)
mp_grid_add_cell(global.grid_move, x1, y1)
mp_grid_add_cell(global.grid_move, (x1 + 1), y1)
mp_grid_add_cell(global.grid_move, x1, (y1 + 1))
mp_grid_add_cell(global.grid_move, (x1 + 1), (y1 + 1))
my_emitter = audio_emitter_create()
audio_emitter_falloff(my_emitter, 32, 128, 1)
audio_emitter_position(my_emitter, x, y, 0)
audio_emitter_gain(my_emitter, 0)
audio_play_sound_on(my_emitter, snd_anomaly_fire_2, true, 1)
var _rad = obj_rad_25
if scr_chance(25)
    _rad = 603
instance_create_depth(x, y, 0, _rad)
