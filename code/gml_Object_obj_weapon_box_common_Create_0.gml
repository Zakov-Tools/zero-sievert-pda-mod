event_inherited()
tipo = (21 << 0)
if scr_chance(50)
{
    instance_create_depth(x, y, 0, obj_chest_attachment)
    instance_destroy()
}
