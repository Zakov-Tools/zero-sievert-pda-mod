start_drawing = 1
gpu_set_ztestenable(1)
vertex_format_begin()
vertex_format_add_position_3d()
vertex_format_add_texcoord()
vertex_format_add_custom(2, 4)
vertex_format_add_custom(2, 4)
vertex_format_add_custom(2, 4)
vertex_format_add_color()
var format = vertex_format_end()
vbuff = vertex_create_buffer()
vertex_begin(vbuff, format)
switch obj_map_generator.area
{
    case (1 << 0):
        grass_number = 300000
        break
    case (2 << 0):
        grass_number = 230000
        break
    case (3 << 0):
        grass_number = 230000
        break
    case (4 << 0):
        grass_number = 250000
        break
}

repeat grass_number
{
    switch obj_map_generator.area
    {
        case (1 << 0):
            grass_sprite = choose(1431, 1431, 1433)
            break
        case (2 << 0):
            grass_sprite = choose(1435, 1435, 1434)
            break
        case (3 << 0):
            grass_sprite = choose(1435, 1435, 1434)
            break
        case (4 << 0):
            grass_sprite = choose(1438, 1438, 1437, 1436)
            break
    }

    var im_ind = 0
    if grass_random_image
        im_ind = irandom((sprite_get_number(grass_sprite) - 1))
    tex = sprite_get_texture(grass_sprite, im_ind)
    var uvs = sprite_get_uvs(grass_sprite, im_ind)
    var uv_left = uvs[0]
    var uv_top = uvs[1]
    var uv_right = uvs[2]
    var uv_bottom = uvs[3]
    var spr_w = sprite_get_width(grass_sprite)
    var spr_h = sprite_get_height(grass_sprite)
    if (room == room1)
    {
        if (grass_mode == 0)
        {
            var left = random_range((-spr_w), room_width)
            var top = random_range((-spr_h), obj_map_generator.map_height)
        }
        else if (grass_mode == 1)
        {
            var rand_dist = random(grass_radius)
            var rand_dir = random(360)
            left = (x + lengthdir_x(rand_dist, rand_dir))
            top = (y + lengthdir_y(rand_dist, rand_dir))
        }
        else if (grass_mode == 2)
        {
            left = random_range(x, (x + grass_rect_hor))
            top = random_range(y, (y + grass_rect_ver))
        }
    }
    else if (grass_mode == 0)
    {
        left = random_range((-spr_w), room_width)
        top = random_range((-spr_h), room_height)
    }
    else if (grass_mode == 1)
    {
        rand_dist = random(grass_radius)
        rand_dir = random(360)
        left = (x + lengthdir_x(rand_dist, rand_dir))
        top = (y + lengthdir_y(rand_dist, rand_dir))
    }
    else if (grass_mode == 2)
    {
        left = random_range(x, (x + grass_rect_hor))
        top = random_range(y, (y + grass_rect_ver))
    }
    var right = (left + spr_w)
    var bottom = (top + spr_h)
    var xx = (left + (spr_w / 2))
    var yy = (top + (spr_h / 2))
    var place = 1
    if (room == room1)
    {
        var x1 = (xx div 16)
        var y1 = (yy div 16)
        var g_w = obj_map_generator.grid_water
        if (ds_grid_get(g_w, x1, y1) == -1)
            place = 0
        var g_t = obj_map_generator.grid_tile
        if (ds_grid_get(g_t, x1, y1) == -7)
            place = 0
        var gf2 = ds_grid_get(obj_map_generator.grid_floor2, x1, y1)
        if (gf2 == 1 || gf2 == 6 || gf2 == 0 || gf2 == 5)
        {
            if scr_chance(95)
                place = 0
        }
    }
    if (place == 1)
    {
        var dep = ((-bottom) + 2)
        vertex_position_3d(vbuff, left, top, dep)
        vertex_texcoord(vbuff, uv_left, uv_top)
        vertex_texcoord(vbuff, uv_left, uv_top)
        vertex_texcoord(vbuff, (uv_right - uv_left), (uv_bottom - uv_top))
        vertex_texcoord(vbuff, xx, yy)
        vertex_colour(vbuff, 16777215, 1)
        vertex_position_3d(vbuff, right, top, dep)
        vertex_texcoord(vbuff, uv_right, uv_top)
        vertex_texcoord(vbuff, uv_left, uv_top)
        vertex_texcoord(vbuff, (uv_right - uv_left), (uv_bottom - uv_top))
        vertex_texcoord(vbuff, xx, yy)
        vertex_colour(vbuff, 16777215, 1)
        vertex_position_3d(vbuff, left, bottom, dep)
        vertex_texcoord(vbuff, uv_left, uv_bottom)
        vertex_texcoord(vbuff, uv_left, uv_top)
        vertex_texcoord(vbuff, (uv_right - uv_left), (uv_bottom - uv_top))
        vertex_texcoord(vbuff, xx, yy)
        vertex_colour(vbuff, 16777215, 1)
        vertex_position_3d(vbuff, right, top, dep)
        vertex_texcoord(vbuff, uv_right, uv_top)
        vertex_texcoord(vbuff, uv_left, uv_top)
        vertex_texcoord(vbuff, (uv_right - uv_left), (uv_bottom - uv_top))
        vertex_texcoord(vbuff, xx, yy)
        vertex_colour(vbuff, 16777215, 1)
        vertex_position_3d(vbuff, right, bottom, dep)
        vertex_texcoord(vbuff, uv_right, uv_bottom)
        vertex_texcoord(vbuff, uv_left, uv_top)
        vertex_texcoord(vbuff, (uv_right - uv_left), (uv_bottom - uv_top))
        vertex_texcoord(vbuff, xx, yy)
        vertex_colour(vbuff, 16777215, 1)
        vertex_position_3d(vbuff, left, bottom, dep)
        vertex_texcoord(vbuff, uv_left, uv_bottom)
        vertex_texcoord(vbuff, uv_left, uv_top)
        vertex_texcoord(vbuff, (uv_right - uv_left), (uv_bottom - uv_top))
        vertex_texcoord(vbuff, xx, yy)
        vertex_colour(vbuff, 16777215, 1)
    }
}
vertex_end(vbuff)
vertex_freeze(vbuff)
if bugfix
    gpu_set_ztestenable(0)
