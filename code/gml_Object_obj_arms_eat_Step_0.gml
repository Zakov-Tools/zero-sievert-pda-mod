if (!instance_exists(linked_id))
    instance_destroy()
else
{
    image_xscale = linked_id.image_xscale
    depth = (linked_id.depth - 2)
    if (linked_id.human_state_now != (2 << 0))
    {
        instance_destroy()
        linked_id.draw_weapon = 1
    }
}
