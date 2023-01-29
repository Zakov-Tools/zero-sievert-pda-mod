function scr_set_skill_variables() //gml_Script_scr_set_skill_variables
{
    var n_skill = array_length_1d(global.skill_name)
    for (var i = 1; i < n_skill; i++)
    {
        var id_ = global.skill_id[i]
        if (global.skill_unlocked[id_] == 1)
            global.skill_var[id_] = global.skill_var_value[id_]
    }
    return;
}

