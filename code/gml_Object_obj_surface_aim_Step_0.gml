depth = -9750
if (instance_exists(obj_player) && global.aiming == 0)
{
    x = mouse_x
    y = mouse_y
}
if instance_exists(obj_player)
{
    var ergo = (obj_player.total_ergo * global.sk_k[(18 << 0)])
    var _ax = lerp(x, mouse_x, (0.4 * ergo))
    var _ay = lerp(y, mouse_y, (0.4 * ergo))
    x = _ax
    y = _ay
}
pointer = 0
if (global.aiming == 1)
{
    if instance_position(mouse_x, mouse_y, obj_npc_parent)
        var enemy_scoped = instance_position(mouse_x, mouse_y, obj_npc_parent)
}
if (pointer == 1)
{
    var _w = sprite_get_width(s_aim_rectangle)
    pointer_x += (pointer_increase * pointer_k)
    if (pointer_x >= _w)
    {
        pointer_x = _w
        pointer_k = -1
    }
    if (pointer_x <= 0)
    {
        pointer_x = 0
        pointer_k = 1
    }
    if (pointer_x >= ((_w / 2) - (pointer_aim_w / 2)) && pointer_x <= ((_w / 2) + (pointer_aim_w / 2)))
        global.aim_pointer_inside = 1
    else
        global.aim_pointer_inside = 0
}
