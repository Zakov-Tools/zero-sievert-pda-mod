function scr_save_tracked_craft() //gml_Script_scr_save_tracked_craft
{
    ini_open(global.save_general)
    for (var m = 0; m < global.last_stastic_craft; m++)
        ini_write_real("Track items", ("craft_" + string(m)), global.craft_track[m])
    ini_close()
    return;
}

