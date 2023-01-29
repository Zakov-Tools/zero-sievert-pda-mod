function scr_freeze_time(argument0) //gml_Script_scr_freeze_time
{
    var freezdur = argument0
    var _t = (current_time + freezdur)
    while (current_time < _t)
    {
    }
    return;
}

