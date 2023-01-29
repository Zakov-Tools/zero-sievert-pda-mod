var already_done = global.quest_unique_done[(70 << 0)]
if (already_done == 1)
{
    instance_destroy()
    var _x = (x + 0)
    var _y = (y + 0)
    ds_grid_set(obj_controller.grid_motion, _x, _y, 0)
    mp_grid_clear_cell(global.grid_move, _x, _y)
}
alarm[10] = 120
