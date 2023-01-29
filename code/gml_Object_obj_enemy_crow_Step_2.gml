if (state == (68 << 0))
{
    sprite_index = s_crow_idle2
    image_speed = 0.5
}
else if (state == (71 << 0))
{
    sprite_index = s_crow_fly
    image_speed = 2
}
else if (state == (72 << 0))
{
    sprite_index = s_crow_eat
    image_speed = 0.5
}
else if (state == (73 << 0))
{
    sprite_index = s_crow_fly
    image_speed = 2
}
else
{
    if (xprevious != x || yprevious != y)
    {
        sprite_index = npc_sprite_move[npc_id]
        image_speed = npc_ims_move[npc_id]
    }
    if (xprevious == x && yprevious == y)
    {
        sprite_index = npc_sprite_idle[npc_id]
        image_speed = npc_ims_idle[npc_id]
    }
}
