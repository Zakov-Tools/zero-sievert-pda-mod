function scr_bug_map_generator() //gml_Script_scr_bug_map_generator
{
    var _amount = 0
    var _ret = bug_map
    for (xx = 0; xx < grid_map_w; xx++)
    {
        for (yy = 0; yy < grid_map_h; yy++)
        {
            if (ds_grid_get(grid_map, xx, yy) == -1)
                _amount++
        }
    }
    return _amount;
}

