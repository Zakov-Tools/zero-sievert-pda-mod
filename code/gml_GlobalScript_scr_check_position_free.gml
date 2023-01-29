function scr_check_position_free(argument0, argument1) //gml_Script_scr_check_position_free
{
    var _x = (argument0 div 16)
    var _y = (argument1 div 16)
    var _ret = 0
    if (room == room1)
    {
        if (ds_grid_get(obj_controller.grid_motion, _x, _y) == 0)
            _ret = 1
        else
            _ret = 0
    }
    else
        _ret = 1
    return _ret;
}

