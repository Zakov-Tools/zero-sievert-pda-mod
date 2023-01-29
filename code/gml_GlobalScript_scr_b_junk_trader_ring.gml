function scr_b_junk_trader_ring(argument0, argument1) //gml_Script_scr_b_junk_trader_ring
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(2, ((xx * 16) + 128), ((yy * 16) + 80))
    scr_place_obj_map(2, ((xx * 16) + 48), ((yy * 16) + 80))
    scr_place_obj_map(2, ((xx * 16) + 96), ((yy * 16) + 48))
    scr_place_obj_map(2, ((xx * 16) + 80), ((yy * 16) + 48))
    scr_place_obj_map(2, ((xx * 16) + 40), ((yy * 16) + 111))
    scr_place_obj_map(2, ((xx * 16) + 136), ((yy * 16) + 110))
    scr_place_obj_map(2, ((xx * 16) + 112), ((yy * 16) + 64))
    scr_place_obj_map(2, ((xx * 16) + 64), ((yy * 16) + 64))
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 90), 0, obj_chest_grigoriy_ring)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 4), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 6), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 3), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 4), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 6), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 7), 0)
    ds_grid_set(grid_floor2, (xx + 5), (yy + 3), 0)
    ds_grid_set(grid_floor2, (xx + 5), (yy + 4), 0)
    ds_grid_set(grid_floor2, (xx + 5), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 5), (yy + 6), 0)
    ds_grid_set(grid_floor2, (xx + 5), (yy + 7), 0)
    ds_grid_set(grid_floor2, (xx + 6), (yy + 3), 0)
    ds_grid_set(grid_floor2, (xx + 6), (yy + 4), 0)
    ds_grid_set(grid_floor2, (xx + 6), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 6), (yy + 6), 0)
    ds_grid_set(grid_floor2, (xx + 6), (yy + 7), 0)
    ds_grid_set(grid_floor2, (xx + 7), (yy + 4), 0)
    ds_grid_set(grid_floor2, (xx + 7), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 7), (yy + 6), 0)
    return;
}

