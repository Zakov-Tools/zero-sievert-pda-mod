function scr_camera_shake(argument0, argument1) //gml_Script_scr_camera_shake
{
    var dir = argument1
    var a = argument0
    var xx = (-(lengthdir_x(a, dir)))
    var yy = lengthdir_y(a, dir)
    var wview = camera_get_view_width(view_camera[0])
    var hview = camera_get_view_height(view_camera[0])
    camera_set_view_pos(view_camera[0], (((-((wview / 2))) + obj_camera.x) + xx), (((-((hview / 2))) + obj_camera.y) + yy))
    obj_camera.x += xx
    obj_camera.y += yy
    return;
}

