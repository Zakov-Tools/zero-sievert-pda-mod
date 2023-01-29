function scr_save_rep() //gml_Script_scr_save_rep
{
    ini_open(global.save_general)
    for (var i = 0; i < 10; i++)
    {
        for (var j = 0; j < 10; j++)
            ini_write_real("faction", ((("rep_" + string(i)) + "_") + string(j)), ds_grid_get(global.grid_faction, i, j))
    }
    ini_write_real("faction", "joined", global.faction_joined)
    ini_close()
    return;
}

