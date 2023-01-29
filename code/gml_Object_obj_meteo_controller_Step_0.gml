if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
    global.emission_timer_now += 1
    if (global.fog_rain == 0)
    {
        global.meteo_rain = (0 << 0)
        global.meteo_fog = (4 << 0)
        global.meteo_dark = 0
    }
}
