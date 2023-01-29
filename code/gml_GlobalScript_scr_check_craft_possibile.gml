var _array_return;
function scr_check_craft_possibile(argument0) //gml_Script_scr_check_craft_possibile
{
    var _craft_id = argument0
    var _have_skill = 0
    var _have_module = 0
    var _dont_have_skill_lvl = 0
    var _req_skill_id = global.craft_req_skill_id[_craft_id]
    var _req_skill_lvl = global.craft_req_skill_lvl[_craft_id]
    var _req_module_id = global.craft_req_module_id[_craft_id]
    var _req_module_lvl = global.craft_req_module_lvl[_craft_id]
    if (_req_skill_id == 0)
        _have_skill = 1
    if (_req_skill_id != 0)
    {
        if (global.sk_lvl[_req_skill_id] >= _req_skill_lvl)
            _have_skill = 1
        else
            _dont_have_skill_lvl = 1
    }
    if (_req_module_id == -1)
        _have_module = 1
    if (_req_module_id != -1)
    {
        for (var i = 0; i < array_length_1d(global.sl_id); i++)
        {
            if (global.sl_base_id[i] == _req_module_id)
            {
                if (global.base_lvl[_req_module_id] >= _req_module_lvl)
                    _have_module = 1
            }
        }
    }
    _array_return[0] = _have_skill
    _array_return[1] = _have_module
    return _array_return;
}

