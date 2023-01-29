function scr_b_junk_trader(argument0, argument1) //gml_Script_scr_b_junk_trader
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(323, ((xx * 16) + 39), ((yy * 16) + 40))
    ds_grid_set(grid_floor2, (xx + 0), (yy + 1), 0)
    ds_grid_set(grid_floor2, (xx + 0), (yy + 2), 0)
    ds_grid_set(grid_floor2, (xx + 0), (yy + 3), 0)
    ds_grid_set(grid_floor2, (xx + 1), (yy + 0), 0)
    ds_grid_set(grid_floor2, (xx + 1), (yy + 1), 0)
    ds_grid_set(grid_floor2, (xx + 1), (yy + 2), 0)
    ds_grid_set(grid_floor2, (xx + 1), (yy + 3), 0)
    ds_grid_set(grid_floor2, (xx + 1), (yy + 4), 0)
    ds_grid_set(grid_floor2, (xx + 2), (yy + 0), 0)
    ds_grid_set(grid_floor2, (xx + 2), (yy + 1), 0)
    ds_grid_set(grid_floor2, (xx + 2), (yy + 2), 0)
    ds_grid_set(grid_floor2, (xx + 2), (yy + 3), 0)
    ds_grid_set(grid_floor2, (xx + 2), (yy + 4), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 0), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 1), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 2), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 3), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 4), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 1), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 2), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 3), 0)
    return;
}

