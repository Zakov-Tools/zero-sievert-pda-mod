function scr_b_quest_scatola_nera(argument0, argument1) //gml_Script_scr_b_quest_scatola_nera
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(306, ((xx * 16) + 48), ((yy * 16) + 144))
    instance_create_depth(((xx * 16) + 89), ((yy * 16) + 148), 0, obj_chest_scatola_nera)
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 176), 0, obj_chest_green_army_morto)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 80), 0, obj_chest_green_army_morto)
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 96), 0, obj_chest_green_army_morto)
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 160), 0, obj_chest_green_army_morto)
    ds_grid_set(grid_floor2, (xx + 2), (yy + 7), 0)
    ds_grid_set(grid_floor2, (xx + 2), (yy + 8), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 6), 0)
    ds_grid_set(grid_floor2, (xx + 3), (yy + 9), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 9), 0)
    ds_grid_set(grid_floor2, (xx + 4), (yy + 10), 0)
    ds_grid_set(grid_floor2, (xx + 5), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 5), (yy + 9), 0)
    ds_grid_set(grid_floor2, (xx + 5), (yy + 10), 0)
    ds_grid_set(grid_floor2, (xx + 6), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 6), (yy + 9), 0)
    ds_grid_set(grid_floor2, (xx + 6), (yy + 10), 0)
    ds_grid_set(grid_floor2, (xx + 7), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 7), (yy + 7), 0)
    ds_grid_set(grid_floor2, (xx + 7), (yy + 10), 0)
    ds_grid_set(grid_floor2, (xx + 8), (yy + 5), 0)
    ds_grid_set(grid_floor2, (xx + 8), (yy + 7), 0)
    ds_grid_set(grid_floor2, (xx + 8), (yy + 10), 0)
    ds_grid_set(grid_floor2, (xx + 8), (yy + 11), 0)
    ds_grid_set(grid_floor2, (xx + 9), (yy + 6), 0)
    ds_grid_set(grid_floor2, (xx + 9), (yy + 10), 0)
    ds_grid_set(grid_floor2, (xx + 9), (yy + 11), 0)
    ds_grid_set(grid_floor2, (xx + 10), (yy + 6), 0)
    ds_grid_set(grid_floor2, (xx + 10), (yy + 10), 0)
    ds_grid_set(grid_floor2, (xx + 11), (yy + 7), 0)
    ds_grid_set(grid_floor2, (xx + 11), (yy + 8), 0)
    ds_grid_set(grid_floor2, (xx + 11), (yy + 9), 0)
    ds_grid_set(grid_floor2, (xx + 12), (yy + 7), 0)
    return;
}

