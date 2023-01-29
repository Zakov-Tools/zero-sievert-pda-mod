function scr_save_skill() //gml_Script_scr_save_skill
{
    ini_open(global.save_general)
    var quante_skill = array_length_1d(global.sk_id)
    for (var i = 0; i < quante_skill; i++)
    {
        var iid = global.sk_id[i]
        ini_write_real("skill", string(iid), global.sk_lvl[iid])
        ini_write_real("skill last level", string(iid), floor(global.sk_lvl[iid]))
    }
    for (i = 0; i < array_length_1d(global.base_id); i++)
    {
        var get_id = global.base_id[i]
        ini_write_real("Base", string(get_id), global.base_lvl[get_id])
    }
    for (i = 0; i < array_length_1d(global.sl_id); i++)
    {
        get_id = global.sl_id[i]
        ini_write_real("Base slot", string(get_id), global.sl_base_id[get_id])
        ini_write_real("Base slot occupato", string(get_id), global.sl_free[get_id])
    }
    ini_close()
    return;
}

