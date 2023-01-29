function scr_get_weapon_stat(argument0, argument1, argument2) //gml_Script_scr_get_weapon_stat
{
    var id_instance_ = argument0
    var stat_start = argument1
    var stat_ = argument2
    var item_id_ = id_instance_.my_id
    var stat_return = stat_start
    var somma = 0
    for (var i = 0; i < 11; i++)
    {
        if (id_instance_.mod_id[i] != -1)
        {
            var get_id_ = id_instance_.mod_id[i]
            somma += stat_[get_id]
        }
    }
    return;
}

