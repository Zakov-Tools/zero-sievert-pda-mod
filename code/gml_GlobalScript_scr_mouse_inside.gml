function scr_mouse_inside(argument0, argument1, argument2, argument3) //gml_Script_scr_mouse_inside
{
    var startx = argument0
    var starty = argument1
    var area_w = argument2
    var area_h = argument3
    if (mouse_x >= startx && mouse_x <= (startx + area_w) && mouse_y >= starty && mouse_y < (starty + area_h))
        return 1;
    return;
}

