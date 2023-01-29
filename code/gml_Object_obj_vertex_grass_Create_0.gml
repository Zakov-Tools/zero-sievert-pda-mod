var om = obj_map_generator
grid_grass = ds_grid_create(om.grid_tile_w, om.grid_tile_h)
ds_grid_clear(grid_grass, (-3 << 0))
for (var xx = 0; xx < om.grid_tile_w; xx++)
{
    for (var yy = 0; yy < om.grid_tile_h; yy++)
    {
    }
}
var a = (0 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1431
global.grass_distribution[a] = 1
global.grass_range_min[a] = 64
global.grass_range_max[a] = 128
global.grass_potenza[a] = 1
global.grass_amount[a] = 150000
a = (1 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1433
global.grass_distribution[a] = 1
global.grass_range_min[a] = 32
global.grass_range_max[a] = 96
global.grass_potenza[a] = 1
global.grass_amount[a] = 150000
a = (2 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1435
global.grass_distribution[a] = 1
global.grass_range_min[a] = 32
global.grass_range_max[a] = 96
global.grass_potenza[a] = 1
global.grass_amount[a] = 150000
a = (3 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1434
global.grass_distribution[a] = 1
global.grass_range_min[a] = 32
global.grass_range_max[a] = 96
global.grass_potenza[a] = 1
global.grass_amount[a] = 150000
a = (4 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1438
global.grass_distribution[a] = 1
global.grass_range_min[a] = 32
global.grass_range_max[a] = 96
global.grass_potenza[a] = 1
global.grass_amount[a] = 100000
a = (5 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1437
global.grass_distribution[a] = 1
global.grass_range_min[a] = 32
global.grass_range_max[a] = 96
global.grass_potenza[a] = 1
global.grass_amount[a] = 75000
a = (6 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1436
global.grass_distribution[a] = 1
global.grass_range_min[a] = 32
global.grass_range_max[a] = 96
global.grass_potenza[a] = 1
global.grass_amount[a] = 25000
a = (7 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1439
global.grass_distribution[a] = 1
global.grass_range_min[a] = 32
global.grass_range_max[a] = 96
global.grass_potenza[a] = 1
global.grass_amount[a] = 150000
a = (9 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1440
global.grass_distribution[a] = 1
global.grass_range_min[a] = 0
global.grass_range_max[a] = 140
global.grass_potenza[a] = 1
global.grass_amount[a] = 150000
a = (8 << 0)
global.grass_id[a] = a
global.grass_draw[a] = 0
global.grass_image[a] = 1837
global.grass_distribution[a] = 1
global.grass_range_min[a] = 16
global.grass_range_max[a] = 96
global.grass_potenza[a] = 1
global.grass_amount[a] = 150000
grass_mode = 0
grass_radius = irandom_range(32, 96)
grass_rect_hor = 96
grass_rect_ver = 48
grass_number = 65
grass_sprite = choose(1434, 1435)
grass_random_image = 1
grass_animate = 1
grass_pattern = 1
grass_wind = 0.7
grass_speed = 0.65
wind_hsp = 0
pattern_size = 5
grass_wind_k = 0.0004
grass_speed_k = 0.003
wind_hsp_k = 0.0002
pattern_size_k = 0.05
alarm[2] = 60
bugfix = 0
start_drawing = 0
if grass_animate
{
    uni_time = shader_get_uniform(shd_grass, "time")
    uni_dist = shader_get_uniform(shd_grass, "wave_dist")
    uni_slow = shader_get_uniform(shd_grass, "slow")
    uni_spd = shader_get_uniform(shd_grass, "wind_spd")
    uni_patbool = shader_get_uniform(shd_grass, "patbool")
    uni_pattern = shader_get_uniform(shd_grass, "pattern")
}
grass_numero = global.erba_amount
var kk = grass_numero
if (kk > 0)
{
    switch obj_map_generator.area
    {
        case (1 << 0):
            scr_dynamic_grass((7 << 0), 0)
            scr_dynamic_grass((0 << 0), (400000 * kk))
            scr_dynamic_grass((1 << 0), (140000 * kk))
            scr_dynamic_grass((2 << 0), (300000 * kk))
            break
        case (2 << 0):
            scr_dynamic_grass((7 << 0), 0)
            scr_dynamic_grass((2 << 0), (340000 * kk))
            scr_dynamic_grass((0 << 0), (200000 * kk))
            scr_dynamic_grass((3 << 0), (150000 * kk))
            break
        case (3 << 0):
            scr_dynamic_grass((7 << 0), 0)
            scr_dynamic_grass((2 << 0), (350000 * kk))
            scr_dynamic_grass((3 << 0), (150000 * kk))
            break
        case (4 << 0):
            scr_dynamic_grass((7 << 0), 0)
            scr_dynamic_grass((4 << 0), (400000 * kk))
            scr_dynamic_grass((5 << 0), (250000 * kk))
            scr_dynamic_grass((6 << 0), (170000 * kk))
            scr_dynamic_grass((9 << 0), (2000 * kk))
            break
        case (6 << 0):
            scr_dynamic_grass((7 << 0), (25000 * kk))
            scr_dynamic_grass((2 << 0), (340000 * kk))
            scr_dynamic_grass((0 << 0), (200000 * kk))
            scr_dynamic_grass((3 << 0), (150000 * kk))
            break
    }

}
start_drawing = 1
