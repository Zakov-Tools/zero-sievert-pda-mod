if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
if (global.meteo_dark > 0)
    meteo_alpha += meteo_alpha_increase
else
    meteo_alpha -= 0.005
meteo_alpha = clamp(meteo_alpha, 0, global.meteo_dark)
if (!instance_exists(obj_main_menu))
{
    if instance_exists(obj_player)
    {
        if (obj_player.state != gml_Script_scr_player_state_start)
        {
            second += time_increase
            time_second += time_increase
        }
    }
}
real_time_step++
if (real_time_step >= 59)
{
    real_time_step = 0
    real_time_played += 1
}
if (second >= 59)
{
    second = 0
    minute += 1
}
if (minute >= 59)
{
    minute = 0
    hour += 1
}
if (hour >= 23)
{
    hour = 0
    time_second = 0
    day += 1
    day_now += 1
    if (day_now > 7)
        day_now = 1
}
if (day >= 30)
{
    day = 1
    month += 1
}
if (month > 12)
{
    month = 1
    year += 1
}
if (global.general_debug == 1)
{
    if (keyboard_check(ord("T")) && keyboard_check_pressed(vk_left))
        hour -= 1
    if (keyboard_check(ord("T")) && keyboard_check_pressed(vk_right))
        hour += 1
}
var t_alba = ciclo_time[(0 << 0)]
var t_giorno = ciclo_time[(1 << 0)]
var t_tra = ciclo_time[(2 << 0)]
var t_notte = ciclo_time[(3 << 0)]
var t_hm = (hour + ((1 * minute) / 60))
if (hour >= ciclo_time[(0 << 0)] && hour < ciclo_time[(1 << 0)])
{
    ciclo_now = (0 << 0)
    darkness_now = (darkness_max - (((t_hm - t_alba) * darkness_max) / (t_giorno - t_alba)))
    var merge_amount = (1 - ((1 * darkness_now) / darkness_max))
    color_surface = merge_color(ciclo_color[(3 << 0)], ciclo_color[(0 << 0)], merge_amount)
}
if (hour >= ciclo_time[(1 << 0)] && hour < ciclo_time[(2 << 0)])
{
    ciclo_now = (1 << 0)
    darkness_now = 0
    color_surface = ciclo_color[(1 << 0)]
}
if (hour >= ciclo_time[(2 << 0)] && hour < ciclo_time[(3 << 0)])
{
    ciclo_now = (2 << 0)
    darkness_now = (((t_hm - t_tra) * darkness_max) / (t_notte - t_tra))
    merge_amount = ((1 * darkness_now) / darkness_max)
    color_surface = merge_color(ciclo_color[(0 << 0)], ciclo_color[(3 << 0)], merge_amount)
}
if (hour >= ciclo_time[(3 << 0)] || hour < ciclo_time[(0 << 0)])
{
    ciclo_now = (3 << 0)
    darkness_now = darkness_max
    color_surface = ciclo_color[(3 << 0)]
}
darkness_now = clamp(darkness_now, 0, darkness_max)
