function scr_player_state_start() //gml_Script_scr_player_state_start
{
    if instance_exists(obj_train)
    {
        if (global.general_debug == 0)
        {
            x = obj_train.x
            y = obj_train.y
        }
    }
    visible = false
    if (global.general_debug == 1)
    {
        dkey = keyboard_check(global.kb_now[(2 << 0)])
        wkey = keyboard_check(global.kb_now[(0 << 0)])
        skey = keyboard_check(global.kb_now[(1 << 0)])
        akey = keyboard_check(global.kb_now[(3 << 0)])
        shift_key = keyboard_check(global.kb_now[(4 << 0)])
        var _spd = 1
        if shift_key
            _spd = 3
        hspd = ((dkey - akey) * _spd)
        vspd = ((skey - wkey) * _spd)
        x += hspd
        y += vspd
    }
    return;
}

