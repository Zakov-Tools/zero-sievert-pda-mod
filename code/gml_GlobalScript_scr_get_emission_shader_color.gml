function scr_get_emission_shader_color(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_scr_get_emission_shader_color
{
    var _lerp = argument0
    var _red_min = argument1
    var _red_max = argument2
    var _green_min = argument3
    var _green_max = argument4
    var _blue_min = argument5
    var _blue_max = argument6
    if (_lerp == 0)
    {
        global.emission_shader_red_now = _red_max
        global.emission_shader_blue_now = _green_max
        global.emission_shader_green_now = _blue_max
    }
    if (_lerp == 1)
    {
        var _div = (global.emission_timer_now / global.emission_timer[global.state_emission_now])
        global.emission_shader_red_now = lerp(_red_min, _red_max, _div)
        global.emission_shader_blue_now = lerp(_blue_min, _blue_max, _div)
        global.emission_shader_green_now = lerp(_green_min, _green_max, _div)
    }
    return;
}

