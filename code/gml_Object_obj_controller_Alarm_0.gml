mp_grid_add_instances(global.grid_move, obj_solid, 1)
mp_grid_add_instances(global.grid_move, obj_solid_can_see, 1)
mp_grid_to_ds_grid(global.grid_move, grid_motion)
if (room == room1)
{
    var o = obj_map_generator
    for (var xx = 0; xx < o.grid_tile_w; xx++)
    {
        for (var yy = 0; yy < o.grid_tile_h; yy++)
        {
            if (ds_grid_get(o.grid_tile, xx, yy) == -7)
            {
                ds_grid_set(grid_motion, xx, yy, -1)
                mp_grid_add_cell(global.grid_move, xx, yy)
            }
        }
    }
}
