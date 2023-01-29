function scr_load_rep() //gml_Script_scr_load_rep
{
    ini_open(global.save_general)
    for (var i = 0; i < 10; i++)
    {
        for (var j = 0; j < 10; j++)
            ds_grid_set(global.grid_faction, i, j, ini_read_real("faction", ((("rep_" + string(i)) + "_") + string(j)), 0))
    }
    global.faction_joined = ini_read_real("faction", "joined", -1)
    ini_close()
    return;
}

