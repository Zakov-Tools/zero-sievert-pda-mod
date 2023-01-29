if instance_exists(obj_surface_aim)
{
    var _w = sprite_get_width(s_aim_rectangle)
    x = ((obj_surface_aim.x - (_w / 2)) + off_x)
    y = (obj_surface_aim.y + obj_surface_aim.pointer_off)
}
else
    instance_destroy()
