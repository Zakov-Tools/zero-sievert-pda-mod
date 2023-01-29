var o = obj_controller
alpha += a
if (alpha >= 1 && pausa == 0)
{
    alarm[0] = time_black
    pausa = 1
}
if (alpha <= 0)
{
    instance_destroy()
    obj_player.state = gml_Script_scr_player_state_move
}
alpha = clamp(alpha, 0, 1)
if (alpha == 1)
{
    var h = (floor(o.sleep_h_hour[o.sleep_hour]) * 60)
    var m = (frac(o.sleep_h_hour[o.sleep_hour]) * 60)
    var tot_m = (h + m)
    obj_light_controller.minute += (tot_m / time_black)
}
