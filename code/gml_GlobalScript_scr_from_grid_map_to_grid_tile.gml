function scr_from_grid_map_to_grid_tile() //gml_Script_scr_from_grid_map_to_grid_tile
{
    for (xx = 0; xx < grid_map_w; xx++)
    {
        for (yy = 0; yy < grid_map_h; yy++)
        {
            if (ds_grid_get(grid_map, xx, yy) == -1)
                ds_grid_set_region(grid_tile, (xx * 2), (yy * 2), ((xx * 2) + 1), ((yy * 2) + 1), -1)
        }
    }
    return;
}

