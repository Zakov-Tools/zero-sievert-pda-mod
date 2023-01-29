depth = -9999
if keyboard_check_pressed(ord("Q"))
{
    var _counter = 0
    with (obj_node_parent)
    {
        tree_pos = _counter
        _counter++
    }
    with (obj_bt_line_parent)
    {
        var _list_node_collision = ds_list_create()
        var _w = sprite_get_width(s_bt_line_kit)
        var _x2 = (x + lengthdir_x((_w * image_xscale), image_angle))
        var _y2 = (y + lengthdir_y((_w * image_xscale), image_angle))
        var _num = collision_line_list(x, y, _x2, _y2, 15, 1, 1, _list_node_collision, 0)
        if (_num == 2)
        {
            var _id_first = ds_list_find_value(_list_node_collision, 0)
            var _first_y = _id_first.y
            var _id_second = ds_list_find_value(_list_node_collision, 1)
            var _second_y = _id_second.y
            if (_first_y > _second_y)
            {
                array_push(_id_second.tree_child_temp, _id_first)
                _id_first.tree_parent = _id_second.tree_pos
            }
            else
            {
                array_push(_id_first.tree_child_temp, _id_second)
                _id_second.tree_parent = _id_first.tree_pos
            }
        }
    }
    with (obj_node_parent)
    {
        var _n_child = array_length(tree_child_temp)
        var _ordered_list = sort_instances_left_to_right(tree_child_temp)
        for (var i = 0; i < array_length(_ordered_list); i++)
        {
            var _inst_id = _ordered_list[i]
            var _get_pos = _inst_id.tree_pos
            array_push(tree_child, _get_pos)
        }
    }
    with (obj_node_parent)
    {
        var _t_pos = ("i = " + string(tree_pos))
        show_debug_message(_t_pos)
        var _t_tree_id = ("tree_id[i] = " + global.node_name[tree_id])
        show_debug_message(_t_tree_id)
        var _t_tree_parent = ("tree_parent[i] = " + string(tree_parent))
        show_debug_message(_t_tree_parent)
        var _t_tree_pos = ("tree_pos[i] = " + string(tree_pos))
        show_debug_message(_t_tree_pos)
        var _tree_can_be_interrupted = ("tree_can_be_interrupted[i] = " + string(tree_can_be_interrupted))
        show_debug_message(_tree_can_be_interrupted)
        var _t_tree_child = "tree_child[i] = [ "
        for (i = 0; i < array_length(tree_child); i++)
        {
            _t_tree_child += (" " + string(tree_child[i]))
            if (i < (array_length(tree_child) - 1))
                _t_tree_child += " ,"
        }
        _t_tree_child += " ]"
        show_debug_message(_t_tree_child)
    }
}
if keyboard_check(ord("I"))
{
    if mouse_check_button_pressed(mb_left)
    {
        if instance_position(mouse_x, mouse_y, obj_node_parent)
        {
            var _id = instance_position(mouse_x, mouse_y, obj_node_parent)
            var _node_id = _id.my_id
            if (global.node_type[_node_id] == (4 << 0))
            {
                if (_id.tree_can_be_interrupted == 1)
                    _id.tree_can_be_interrupted = 0
                else
                    _id.tree_can_be_interrupted = 1
            }
        }
    }
}
if keyboard_check(vk_control)
{
    if mouse_check_button_pressed(mb_left)
    {
        if instance_position(mouse_x, mouse_y, obj_node_parent)
        {
            _id = instance_position(mouse_x, mouse_y, obj_node_parent)
            if (first_selected == 0)
            {
                first_x = _id.x
                first_y = _id.y
                first_selected = 1
            }
            else
            {
                second_x = _id.x
                second_y = _id.y
                first_selected = 0
                var _line = instance_create_depth(first_x, first_y, 50, obj_bt_line)
                var _dis = point_distance(first_x, first_y, second_x, second_y)
                var _scale = (_dis / 10)
                _line.image_xscale = _scale
                _line.image_angle = point_direction(first_x, first_y, second_x, second_y)
                _line.direction = point_direction(first_x, first_y, second_x, second_y)
                show_debug_message("line created")
                show_debug_message(((string(first_x) + " , ") + string(first_y)))
            }
        }
    }
}
if mouse_check_button_pressed(mb_right)
{
    if instance_position(mouse_x, mouse_y, obj_bt_line)
    {
        _id = instance_position(mouse_x, mouse_y, obj_bt_line)
        with (_id)
            instance_destroy()
    }
}
over_node_id = -4
if instance_position(mouse_x, mouse_y, obj_node_parent)
{
    _id = instance_position(mouse_x, mouse_y, obj_node_parent)
    over_node_id = _id
}
