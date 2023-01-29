function scr_level_up_skill(argument0, argument1) //gml_Script_scr_level_up_skill
{
    var sid = argument0
    var amount = argument1
    if (sid == (0 << 0) || sid == (8 << 0) || sid == (4 << 0) || sid == (12 << 0))
        amount *= global.sk_k[(49 << 0)]
    var _destroy = 0
    if (global.sk_base[sid] == 1)
    {
        var specializzata = 0
        for (var i = 0; i < array_length_2d(global.sk_upgrade, sid); i++)
        {
            var get_spec_skill = global.sk_upgrade[sid][i]
            if (global.sk_lvl[get_spec_skill] >= 0)
            {
                specializzata = 1
                global.sk_lvl[get_spec_skill] += amount
                _destroy = 1
                if (floor(global.sk_lvl[get_spec_skill]) > global.sk_last_level[get_spec_skill])
                {
                    global.sk_last_level[get_spec_skill] = floor(global.sk_lvl[get_spec_skill])
                    var get_skill_name = string(global.sk_name[get_spec_skill])
                    var get_skill_lvl = string(floor(global.sk_lvl[get_spec_skill]))
                    audio_play_sound(snd_level_up, 20, false)
                    scr_draw_text_with_box(((get_skill_name + " level ") + get_skill_lvl))
                }
            }
        }
        if (specializzata == 0)
        {
            if (global.sk_lvl[sid] < global.sk_lvl_max[sid])
            {
                global.sk_lvl[sid] += amount
                _destroy = 1
                if (floor(global.sk_lvl[sid]) > global.sk_last_level[sid])
                {
                    global.sk_last_level[sid] = floor(global.sk_lvl[sid])
                    get_skill_name = string(global.sk_name[sid])
                    get_skill_lvl = string(floor(global.sk_lvl[sid]))
                    audio_play_sound(snd_level_up, 20, false)
                    scr_draw_text_with_box(((get_skill_name + " level ") + get_skill_lvl))
                }
            }
        }
    }
    return _destroy;
}

