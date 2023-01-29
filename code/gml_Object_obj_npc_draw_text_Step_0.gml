if instance_exists(id_npc)
{
    x = id_npc.x
    y = id_npc.y
    if (id_npc.image_alpha > 0)
        visible = true
    else
        visible = false
}
else
    instance_destroy()
