if (state == (65 << 0))
{
    sprite_index = s_rabbit_idle2
    image_speed = 0.5
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
