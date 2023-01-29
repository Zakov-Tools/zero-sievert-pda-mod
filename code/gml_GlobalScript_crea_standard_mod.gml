function crea_standard_mod(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_crea_standard_mod
{
    var weapon_id = argument0
    var mod_pos_ = argument1
    var moddable = argument2
    var mod_id_ = argument3
    var nec = argument4
    var mod_x = argument5
    var mod_y = argument6
    arma_mod_moddable[weapon_id][mod_pos_] = moddable
    arma_mod_id[weapon_id][mod_pos_] = mod_id_
    arma_mod_nec[weapon_id][mod_pos_] = nec
    arma_mod_x[weapon_id][mod_pos_] = mod_x
    arma_mod_y[weapon_id][mod_pos_] = mod_y
    return;
}

