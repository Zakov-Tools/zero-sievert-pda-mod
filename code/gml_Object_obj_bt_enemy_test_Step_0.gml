tick_now++
if (tick_now >= tick_max)
{
    tick_now = 0
    node_state_now = 3
    pos_now = pos_roof
    show_debug_message("\n\nNEW TICK\n")
    fun_bt_traverse(pos_now)
    for (var i = 0; i < array_length(tree_id); i++)
        tree_condition_checked[i] += 1
}
var _action_now = tree_id[node_running_now]
switch _action_now
{
    case (17 << 0):
        gml_Script_fun_move_to_target(obj_bt_player_test, 1)
        break
    case (19 << 0):
        gml_Script_fun_move_to_pos(startx, starty, 1)
        break
    case (18 << 0):
        gml_Script_fun_move_to_target(obj_bt_player_test, 0)
        break
}

