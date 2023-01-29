function scr_enemy_alert_others() //gml_Script_scr_enemy_alert_others
{
    var _faction = faction
    var _target = target
    var _target_relation = target_relation
    var _last_seen_x = last_seen_x
    var _last_seen_y = last_seen_y
    var _last_shot_x = last_shot_x
    var _last_shot_y = last_shot_y
    var _target_visto = target_visto
    var _target_visto_prima_volta = target_visto_prima_volta
    var my__id = id
    var xx = x
    var yy = y
    var _last_close_seen_x = 0
    var _last_close_seen_y = 0
    var _new_target = _target
    var _new_last_seen_x = _last_seen_x
    var _new_last_seen_y = _last_seen_y
    var _new_shooted_first_time = shooted_first_time
    var _new_just_shot = just_shot
    var _chase_new_target_location = 0
    var _new_must_take_cover = must_take_cover
    var _stop_search = 0
    with (obj_npc_parent)
    {
        if (_stop_search == 0)
        {
            if (id != my__id)
            {
                if (faction == _faction)
                {
                    if (point_distance(x, y, xx, yy) < 260)
                    {
                        if (!instance_exists(_target))
                        {
                            if instance_exists(target)
                            {
                                if (target_relation == (2 << 0))
                                {
                                    _new_target = target
                                    _new_last_seen_x = last_seen_x
                                    _new_last_seen_y = last_seen_y
                                    _stop_search = 1
                                }
                            }
                        }
                        if instance_exists(_target)
                        {
                            if instance_exists(target)
                            {
                                if (_target_relation != (2 << 0) && target_relation == (2 << 0))
                                {
                                    _new_target = target
                                    if (target_visto_prima_volta == 1)
                                    {
                                        _new_last_seen_x = last_seen_x
                                        _new_last_seen_y = last_seen_y
                                        _stop_search = 1
                                    }
                                    else if (just_shot == 2)
                                        _new_must_take_cover = 1
                                    else
                                    {
                                        _new_last_seen_x = last_seen_x
                                        _new_last_seen_y = last_seen_y
                                        _stop_search = 1
                                        _new_must_take_cover = 0
                                    }
                                }
                                if (_target == target)
                                {
                                    if (target_visto == 1 && _target_visto == 0)
                                    {
                                        if collision_line(x, y, xx, yy, obj_solid, false, true)
                                        {
                                            _new_last_seen_x = x
                                            _new_last_seen_y = y
                                            _chase_new_target_location = 1
                                        }
                                        else
                                        {
                                            _new_last_seen_x = last_seen_x
                                            _new_last_seen_y = last_seen_y
                                            _stop_search = 1
                                            _chase_new_target_location = 0
                                        }
                                    }
                                    if (_target_visto_prima_volta == 0 && target_visto_prima_volta == 0)
                                    {
                                        _stop_search = 0
                                        _new_must_take_cover = 1
                                    }
                                    else
                                    {
                                        _stop_search = 1
                                        _new_must_take_cover = 0
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    chase_new_target_location = _chase_new_target_location
    last_seen_x = _new_last_seen_x
    last_seen_y = _new_last_seen_y
    target = _new_target
    just_shot = _new_just_shot
    shooted_first_time = _new_shooted_first_time
    must_take_cover = _new_must_take_cover
    return;
}

