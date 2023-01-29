depth = -10
ds_list_clear(list_coll)
var _w = sprite_get_width(s_bt_line_kit)
var _x2 = (x + lengthdir_x((_w * image_xscale), image_angle))
var _y2 = (y + lengthdir_y((_w * image_xscale), image_angle))
var _num = collision_line_list(x, y, _x2, _y2, 15, 1, 1, list_coll, 0)
var _size = ds_list_size(list_coll)
if (_size == 1)
    sprite_index = s_bt_line_kit
if (_size == 2)
    sprite_index = s_bt_line_kit_2
if (_size > 2)
    sprite_index = s_bt_line_kit_3
