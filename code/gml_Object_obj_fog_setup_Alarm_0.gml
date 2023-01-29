var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (created_first_time == 0 && global.fog_enable == 1)
    alarm[1] = 5
if (global.fog_enable == 1)
{
    if (created_first_time == 1 && buffer_exists(vb))
        vertex_delete_buffer(vb)
    vertex_format_begin()
    vertex_format_add_position_3d()
    vf = vertex_format_end()
    vb = vertex_create_buffer()
    vertex_begin(vb, vf)
    var _vb = vb
    var _solid_trovati = 0
    with (obj_solid)
    {
        if (point_distance(x, y, obj_controller.x, obj_controller.y) < 300)
        {
            _solid_trovati = 1
            var sw = sprite_width
            var sh = sprite_height
            var ox = sprite_xoffset
            var oy = sprite_yoffset
            var bl = sprite_get_bbox_left(sprite_index)
            var bt = sprite_get_bbox_top(sprite_index)
            var br = (sprite_get_bbox_right(sprite_index) + 1)
            var bd = (sprite_get_bbox_bottom(sprite_index) + 1)
            var o = 0
            var k = 0
            if (image_xscale == -1)
                k = 1
            var x1 = ((((x - ox) + bl) - o) + (k * sw))
            var y1 = (((y - oy) + bt) - o)
            var x2 = ((((x - ox) + br) + o) + (k * sw))
            var y2 = (((y - oy) + bd) + o)
            scr_quad(_vb, x1, y1, x2, y1)
            scr_quad(_vb, x1, y1, x1, y2)
            scr_quad(_vb, x2, y1, x2, y2)
            scr_quad(_vb, x1, y2, x2, y2)
        }
    }
    vertex_end(vb)
    if (_solid_trovati == 1)
    {
        global.fog_of_war_draw = 1
        if (created_first_time == 1)
            vertex_freeze(vb)
    }
    else
        global.fog_of_war_draw = 0
    created_first_time = 1
}
else
    global.fog_of_war_draw = 0
alarm[0] = intervallo_generate_vertex
