var _array;
function scr_enemy_search_aim_moving(argument0, argument1) //gml_Script_scr_enemy_search_aim_moving
{
    var _target_x = argument0
    var _target_y = argument1
    var _dis = point_distance(x, y, _target_x, _target_y)
    var _move_x = ds_list_create()
    var _move_y = ds_list_create()
    _array[0] = 0
    _array[1] = 0
    var _x = (_target_x div 16)
    var _y = (_target_y div 16)
    var _g = 8
    var _pos_found = 0
    var _dis_max = (_dis * 1.5)
    _dis_max = clamp(_dis_max, 30, 200)
    var _rad = (_dis / _dis_max)
    var _incr = ((_dis_max - _rad) / 5)
    for (_rad = _dis; _rad < _dis_max; _rad += _incr)
    {
        for (var i = 0; i < 360; i += 45)
        {
            if (_pos_found == 0)
            {
                var _new_x = (_target_x + lengthdir_x(_rad, i))
                var _new_y = (_target_y + lengthdir_y(_rad, i))
                _x = (_new_x div 16)
                _y = (_new_x div 16)
                if (ds_grid_get(obj_controller.grid_motion, _x, _y) == 0)
                {
                    if (point_distance(x, y, _new_x, _new_y) < (_dis * 1.5))
                    {
                        if (!(collision_line(_new_x, _new_y, _target_x, _target_y, obj_solid, false, true)))
                        {
                            if (!(collision_line(_new_x, _new_y, x, y, obj_solid, false, true)))
                            {
                                _pos_found = 0
                                ds_list_add(_move_x, _new_x)
                                ds_list_add(_move_y, _new_y)
                            }
                        }
                    }
                }
            }
        }
    }
    if (ds_list_size(_move_x) > 0)
    {
        var _size = ds_list_size(_move_x)
        var _index = irandom((_size - 1))
        _array[0] = ds_list_find_value(_move_x, _index)
        _array[1] = ds_list_find_value(_move_y, _index)
    }
    return _array;
}

