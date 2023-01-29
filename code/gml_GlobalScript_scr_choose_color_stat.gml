function scr_choose_color_stat(argument0, argument1) //gml_Script_scr_choose_color_stat
{
    var stat_to_check = argument0
    var positive_is_green = argument1
    var col = 16777215
    if (positive_is_green == 1)
    {
        if (stat_to_check > 0)
            col = 9688723
        if (stat_to_check < 0)
            col = 5855724
    }
    else
    {
        if (stat_to_check > 0)
            col = 5855724
        if (stat_to_check < 0)
            col = 9688723
    }
    return col;
}

