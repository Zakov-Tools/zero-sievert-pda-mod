if (!instance_exists(linked_id))
{
    instance_destroy()
    audio_emitter_free(emitter_sound)
}
else
{
    image_xscale = linked_id.image_xscale
    depth = (linked_id.depth - 2)
    if (linked_id.human_state_now != (8 << 0))
    {
        instance_destroy()
        audio_emitter_free(emitter_sound)
        linked_id.draw_weapon = 1
    }
}
