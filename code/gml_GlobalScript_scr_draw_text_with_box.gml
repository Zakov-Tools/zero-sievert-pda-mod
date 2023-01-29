function scr_draw_text_with_box(argument0) //gml_Script_scr_draw_text_with_box
{
    var text_ = argument0
    if instance_exists(obj_draw_something)
    {
        with (obj_draw_something)
            instance_destroy()
    }
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var a = instance_create_depth(camx, camy, (-y), obj_draw_something)
    a.t = text_
    return;
}

