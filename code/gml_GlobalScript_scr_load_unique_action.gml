function scr_load_unique_action() //gml_Script_scr_load_unique_action
{
    ini_open(global.save_general)
    for (var i = 0; i < array_length_1d(global.az_section); i++)
        global.az_done[i] = ini_read_real(global.az_section[i], global.az_key[i], 0)
    ini_close()
    return;
}

