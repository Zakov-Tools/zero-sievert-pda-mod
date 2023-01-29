function scr_animation_end(argument0) //gml_Script_scr_animation_end
{
    var _s = argument0
    var _end = 0
    if (ani_end == 0)
    {
        if ((image_index + image_speed) >= image_number)
        {
            ani_end = 1
            _end = 1
        }
    }
    if (image_index > 0 && image_index < (image_number - 1))
        ani_end = 0
    return _end;
}

