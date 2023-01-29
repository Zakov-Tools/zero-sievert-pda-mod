function scr_get_relation(argument0, argument1) //gml_Script_scr_get_relation
{
    var _mine = argument0
    var _other = argument1
    if (object_index == obj_controller)
        var _rel = ds_grid_get(global.grid_faction, _mine, _other)
    else
        _rel = ds_grid_get(global.grid_faction, _mine, _other)
    if (_rel < global.faction_min)
        var _temp_rel = (2 << 0)
    if (_rel >= global.faction_min && _rel <= global.faction_max)
        _temp_rel = (0 << 0)
    if (_rel > global.faction_max)
        _temp_rel = (1 << 0)
    return _temp_rel;
}

