function scr_wolf_decidi_attaccare() //gml_Script_scr_wolf_decidi_attaccare
{
    var _x = x
    var _y = y
    var _id = id
    var _dis = 500
    var _xto = 0
    var _yto = 0
    var _ret = 1
    var _counter = 0
    if instance_exists(obj_enemy_wolf_brown)
    {
        with (obj_enemy_wolf_brown)
        {
            if (id != _id)
            {
                _counter++
                if (point_distance(x, y, _x, _y) < _dis)
                {
                    _dis = point_distance(x, y, _x, _y)
                    _xto = x
                    _yto = y
                }
            }
        }
        if (_dis > 96)
        {
            state = (51 << 0)
            move_point_x = _xto
            move_point_y = _yto
            _ret = 0
        }
        if (_counter == 0)
        {
            if (state == (48 << 0))
            {
                _dis = irandom_range(150, 260)
                var _dir = irandom(360)
                var _movex = (x + lengthdir_x(_dis, _dir))
                var _movey = (y + lengthdir_y(_dis, _dir))
                for (var _free = scr_check_position_free(_movex, _movey); _free == 0; _free = scr_check_position_free(_movex, _movey))
                {
                    _dis = irandom_range(150, 260)
                    _dir = irandom(360)
                    _movex = (x + lengthdir_x(_dis, _dir))
                    _movey = (y + lengthdir_y(_dis, _dir))
                }
                move_point_x = _movex
                move_point_y = _movey
                state = (51 << 0)
            }
            else
                state = (42 << 0)
        }
    }
    return _ret;
}

