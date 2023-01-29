function scr_respec_skill(argument0) //gml_Script_scr_respec_skill
{
    var _skill_id = argument0
    var _destroy = 1
    if (global.sk_base[_skill_id] == 1)
    {
        var _specializzata = 0
        for (var i = 0; i < array_length_2d(global.sk_upgrade, _skill_id); i++)
        {
            var get_spec_skill = global.sk_upgrade[_skill_id][i]
            if (global.sk_lvl[get_spec_skill] >= 0)
            {
                _specializzata = 1
                var _amount_now = global.sk_lvl[get_spec_skill]
                global.sk_lvl[get_spec_skill] = -1
                global.sk_lvl[_skill_id] = global.sk_lvl_max[_skill_id]
                scr_draw_text_with_box("Skill successfully respected")
            }
        }
        if (_specializzata == 0)
        {
            scr_draw_text_with_box("You can't use this book yet: no specialisation found")
            _destroy = 0
        }
    }
    return _destroy;
}

