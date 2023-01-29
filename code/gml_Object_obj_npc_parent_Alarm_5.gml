var _reset = 0
if instance_exists(target)
{
    if (target_relation == (2 << 0))
    {
        if (point_distance(x, y, target.x, target.y) < 300)
            _reset = 1
    }
}
else
    _reset = 1
path_end()
if (_reset == 1)
{
    state = npc_state_patrol[npc_id]
    target = -4
    search_target_id = -4
}
else
    alarm[5] = 90
