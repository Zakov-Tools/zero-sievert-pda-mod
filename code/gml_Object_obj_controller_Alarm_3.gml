if (room == room1)
{
    if (global.airdrop_created == 0)
    {
        if (scr_chance(20) || global.general_debug == 1)
        {
            var _placed = 0
            repeat (50000)
            {
                if (_placed == 0)
                {
                    var xx = irandom((room_width div 16))
                    var yy = irandom((obj_map_generator.map_height div 16))
                    if (ds_grid_get(obj_map_generator.grid_tile, xx, yy) == -1 && ds_grid_get(obj_map_generator.grid_building, xx, yy) != (1 << 0))
                    {
                        _placed = 1
                        global.airdrop_created = 1
                        audio_play_sound(snd_airplane, 10, false)
                        instance_create_depth((xx * 16), (yy * 16), 0, obj_chest_air_drop)
                        ds_list_add(global.list_intresting_id, (3 << 0))
                        var _off = irandom(10)
                        var _dir = irandom(360)
                        ds_list_add(global.list_intresting_x, (xx + lengthdir_x(_off, _dir)))
                        ds_list_add(global.list_intresting_y, (yy + lengthdir_y(_off, _dir)))
                        var _amount_max = (4 + irandom(3))
                        var _amount_now = 0
                        repeat (1000)
                        {
                            if (_amount_now < _amount_max)
                            {
                                _off = 10
                                var _offx = irandom_range((-_off), _off)
                                var _offy = irandom_range((-_off), _off)
                                var _x = ((xx * 16) + (_offx * 16))
                                var _y = ((yy * 16) + (_offy * 16))
                                var _free = scr_check_position_free(_x, _y)
                                if (_free == 1)
                                {
                                    var _npc_to_create = obj_enemy_human_bandit_regular
                                    if scr_chance(20)
                                        _npc_to_create = 727
                                    instance_create_depth(_x, _y, 0, _npc_to_create)
                                    _amount_now++
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
