show_explosion = 1
alarm[11] = 240
if instance_exists(obj_indoor)
{
    var _indoor = instance_nearest(x, y, obj_indoor)
    with (_indoor)
        instance_destroy()
}
