audio_group_load(2)
audio_group_load(10)
audio_group_load(15)
audio_group_load(3)
audio_group_load(4)
audio_group_load(8)
audio_group_load(1)
audio_group_load(7)
audio_group_load(5)
audio_group_load(6)
audio_group_load(9)
audio_group_load(11)
audio_group_load(12)
audio_group_load(13)
audio_group_load(16)
alarm[0] = 90
audio_falloff_set_model(4)
alarm[1] = 30
alarm[2] = 120
alarm[3] = 240
sound_emitter_wind = audio_emitter_create()
audio_emitter_position(sound_emitter_wind, x, y, 0)
audio_emitter_falloff(sound_emitter_wind, 150, 500, 1)
emitter_volume[0] = 0.5
sound_emitter_bird_stream = audio_emitter_create()
audio_emitter_position(sound_emitter_bird_stream, x, y, 0)
audio_emitter_falloff(sound_emitter_bird_stream, 150, 500, 1)
emitter_volume[1] = 0.5
how_many_emitter = array_length_1d(emitter_volume)
volume_modifier = 0.05
volume_time = 0
volume_time_max = 180
counter_thunder = 0
counter_thunder_max = 600
var a = 0
bullet_hit_flesh[a] = 162
a++
bullet_hit_flesh[a] = 163
a++
bullet_hit_flesh[a] = 164
a++
bullet_hit_flesh[a] = 165
a++
bullet_hit_flesh[a] = 166
a++
bullet_hit_flesh[a] = 167
a++
bullet_hit_flesh[a] = 168
a = 0
bullet_hit_near[a] = 147
a++
bullet_hit_near[a] = 148
a++
bullet_hit_near[a] = 149
a++
bullet_hit_near[a] = 150
a++
bullet_hit_near[a] = 151
a++
bullet_hit_near[a] = 152
a++
bullet_hit_near[a] = 153
a++
bullet_hit_near[a] = 154
a++
bullet_hit_near[a] = 155
a++
bullet_hit_near[a] = 156
a++
bullet_hit_near[a] = 157
a++
bullet_hit_near[a] = 158
a++
bullet_hit_near[a] = 159
a++
bullet_hit_near[a] = 160
a++
bullet_hit_near[a] = 161
a = (0 << 0)
var i = 0
global.bullet_impact[a][i] = 0
a = (1 << 0)
i = 0
global.bullet_impact[a][i] = 199
i++
global.bullet_impact[a][i] = 200
i++
global.bullet_impact[a][i] = 201
i++
global.bullet_impact[a][i] = 202
i++
global.bullet_impact[a][i] = 203
i++
global.bullet_impact[a][i] = 204
i++
global.bullet_impact[a][i] = 205
i++
global.bullet_impact[a][i] = 206
i++
a = (4 << 0)
i = 0
global.bullet_impact[a][i] = 207
i++
global.bullet_impact[a][i] = 208
i++
global.bullet_impact[a][i] = 209
i++
global.bullet_impact[a][i] = 210
a = (2 << 0)
i = 0
global.bullet_impact[a][i] = 211
i++
global.bullet_impact[a][i] = 212
i++
global.bullet_impact[a][i] = 213
i++
global.bullet_impact[a][i] = 214
i++
global.bullet_impact[a][i] = 215
i++
global.bullet_impact[a][i] = 216
i++
global.bullet_impact[a][i] = 217
i++
global.bullet_impact[a][i] = 218
i++
a = (5 << 0)
i = 0
global.bullet_impact[a][i] = 190
i++
global.bullet_impact[a][i] = 191
i++
global.bullet_impact[a][i] = 192
i++
global.bullet_impact[a][i] = 193
i++
global.bullet_impact[a][i] = 194
i++
global.bullet_impact[a][i] = 195
i++
global.bullet_impact[a][i] = 196
i++
global.bullet_impact[a][i] = 197
i++
a = (3 << 0)
i = 0
global.bullet_impact[a][i] = 174
i++
global.bullet_impact[a][i] = 175
i++
global.bullet_impact[a][i] = 176
i++
global.bullet_impact[a][i] = 177
i++
a = (6 << 0)
i = 0
global.bullet_impact[a][i] = 190
i++
global.bullet_impact[a][i] = 191
i++
global.bullet_impact[a][i] = 192
i++
global.bullet_impact[a][i] = 193
i++
global.bullet_impact[a][i] = 194
i++
global.bullet_impact[a][i] = 195
i++
global.bullet_impact[a][i] = 196
i++
global.bullet_impact[a][i] = 197
i++
global.bullet_impact[a][i] = 174
i++
global.bullet_impact[a][i] = 175
i++
global.bullet_impact[a][i] = 176
i++
global.bullet_impact[a][i] = 177
i++
grid_footstep = ds_grid_create(32, 64)
for (var xx = 0; xx < 32; xx++)
{
    for (var yy = 0; yy < 64; yy++)
        ds_grid_set(grid_footstep, xx, yy, (0 << 0))
}
for (xx = 0; xx < 2; xx++)
{
    for (yy = 12; yy < 14; yy++)
        ds_grid_set(grid_footstep, xx, yy, (1 << 0))
}
for (xx = 9; xx < 15; xx++)
{
    for (yy = 16; yy < 20; yy++)
        ds_grid_set(grid_footstep, xx, yy, (2 << 0))
}
for (xx = 15; xx < 21; xx++)
{
    for (yy = 10; yy < 11; yy++)
        ds_grid_set(grid_footstep, xx, yy, (2 << 0))
}
ds_grid_set(grid_footstep, 17, 23, (1 << 0))
ds_grid_set(grid_footstep, 18, 23, (1 << 0))
ds_grid_set(grid_footstep, 19, 23, (1 << 0))
ds_grid_set(grid_footstep, 20, 23, (1 << 0))
