function scr_get_emission_shader_value(argument0, argument1, argument2, argument3, argument4) //gml_Script_scr_get_emission_shader_value
{
    var _lerp = argument0
    var _brightness_min = argument1
    var _brightness_max = argument2
    var _contrast_min = argument3
    var _contrast_max = argument4
    if (_lerp == 0)
    {
        global.emission_shader_brightness_now = _brightness_max
        global.emission_shader_contrast_now = _contrast_max
    }
    if (_lerp == 1)
    {
        var _div = (global.emission_timer_now / global.emission_timer[global.state_emission_now])
        global.emission_shader_brightness_now = lerp(_brightness_min, _brightness_max, _div)
        global.emission_shader_contrast_now = lerp(_contrast_min, _contrast_max, _div)
    }
    return;
}

