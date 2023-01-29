function scr_get_status_state(argument0, argument1) //gml_Script_scr_get_status_state
{
    var mood = argument0
    var t = argument1
    var sta = 0
    if (t >= global.status_state[mood][0])
        sta = (0 << 0)
    else if (t < global.status_state[mood][0] && t >= global.status_state[mood][1])
        sta = (1 << 0)
    else if (t < global.status_state[mood][1] && t >= global.status_state[mood][2])
        sta = (2 << 0)
    else if (t < global.status_state[mood][2] && t >= global.status_state[mood][3])
        sta = (3 << 0)
    else if (t < global.status_state[mood][3])
        sta = (4 << 0)
    if (mood == (3 << 0))
    {
        if (t <= global.status_state[mood][0])
            sta = (0 << 0)
        else if (t > global.status_state[mood][0] && t <= global.status_state[mood][1])
            sta = (1 << 0)
        else if (t > global.status_state[mood][1] && t <= global.status_state[mood][2])
            sta = (2 << 0)
        else if (t > global.status_state[mood][2] && t <= global.status_state[mood][3])
            sta = (3 << 0)
        else if (t > global.status_state[mood][3])
            sta = (4 << 0)
    }
    return sta;
}

