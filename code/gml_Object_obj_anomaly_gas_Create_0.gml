collision = 0
active = 0
damage = 1
depth = ((-y) + 16)
var x1 = (x div 8)
var y1 = (y div 8)
mp_grid_add_cell(global.grid_move, x1, y1)
mp_grid_add_cell(global.grid_move, (x1 + 1), y1)
mp_grid_add_cell(global.grid_move, x1, (y1 + 1))
mp_grid_add_cell(global.grid_move, (x1 + 1), (y1 + 1))
var _rad = obj_rad_25
if scr_chance(20)
    _rad = 603
instance_create_depth(x, y, 0, _rad)
