function scr_dynamic_grass(argument0, argument1) //gml_Script_scr_dynamic_grass
{
    var index = argument0
    var amount = argument1
    global.grass_draw[index] = 1
    gpu_set_ztestenable(1)
    vertex_format_begin()
    vertex_format_add_position_3d()
    vertex_format_add_texcoord()
    vertex_format_add_custom(2, 4)
    vertex_format_add_custom(2, 4)
    vertex_format_add_custom(2, 4)
    vertex_format_add_color()
    var format = vertex_format_end()
    vbuff[index] = vertex_create_buffer()
    vertex_begin(vbuff[index], format)
    if (index != (7 << 0) && index != (9 << 0))
    {
        repeat amount
        {
            var im_ind = 0
            if grass_random_image
                im_ind = irandom((sprite_get_number(global.grass_image[index]) - 1))
            tex[index] = sprite_get_texture(global.grass_image[index], im_ind)
            var uvs = sprite_get_uvs(global.grass_image[index], im_ind)
            var uv_left = uvs[0]
            var uv_top = uvs[1]
            var uv_right = uvs[2]
            var uv_bottom = uvs[3]
            var spr_w = sprite_get_width(global.grass_image[index])
            var spr_h = sprite_get_height(global.grass_image[index])
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
                if (obj_map_generator.area == (4 << 0))
                {
                    if (index == (6 << 0))
                    {
                        if (ds_grid_get(g_w, x1, y1) == -1)
                        {
                            if scr_chance(20)
                                place = 1
                        }
                    }
                }
                var g_t = obj_map_generator.grid_tile
                if (ds_grid_get(g_t, x1, y1) == -7)
                    place = 0
                var gf2 = ds_grid_get(obj_map_generator.grid_floor2, x1, y1)
                if (gf2 == 1 || gf2 == 6 || gf2 == 0 || gf2 == 5)
                {
                    if scr_chance(95)
                        place = 0
                }
                if (gf2 == 10)
                    place = 0
                if instance_exists(obj_chest_general)
                {
                    var near = instance_nearest(xx, yy, obj_chest_general)
                    if (point_distance(xx, yy, near.x, near.y) < 16)
                    {
                        if scr_chance(100)
                            place = 0
                    }
                }
                if (obj_map_generator.area == (6 << 0))
                {
                    if (x1 >= 89 && x1 <= 230 && y1 >= 59 && y1 <= 133)
                        place = 0
                }
            }
            if (place == 1)
            {
                var dep = ((-bottom) + 2)
                vertex_position_3d(vbuff[index], left, top, dep)
                vertex_texcoord(vbuff[index], uv_left, uv_top)
                vertex_texcoord(vbuff[index], uv_left, uv_top)
                vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                vertex_texcoord(vbuff[index], xx, yy)
                vertex_colour(vbuff[index], 16777215, 1)
                vertex_position_3d(vbuff[index], right, top, dep)
                vertex_texcoord(vbuff[index], uv_right, uv_top)
                vertex_texcoord(vbuff[index], uv_left, uv_top)
                vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                vertex_texcoord(vbuff[index], xx, yy)
                vertex_colour(vbuff[index], 16777215, 1)
                vertex_position_3d(vbuff[index], left, bottom, dep)
                vertex_texcoord(vbuff[index], uv_left, uv_bottom)
                vertex_texcoord(vbuff[index], uv_left, uv_top)
                vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                vertex_texcoord(vbuff[index], xx, yy)
                vertex_colour(vbuff[index], 16777215, 1)
                vertex_position_3d(vbuff[index], right, top, dep)
                vertex_texcoord(vbuff[index], uv_right, uv_top)
                vertex_texcoord(vbuff[index], uv_left, uv_top)
                vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                vertex_texcoord(vbuff[index], xx, yy)
                vertex_colour(vbuff[index], 16777215, 1)
                vertex_position_3d(vbuff[index], right, bottom, dep)
                vertex_texcoord(vbuff[index], uv_right, uv_bottom)
                vertex_texcoord(vbuff[index], uv_left, uv_top)
                vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                vertex_texcoord(vbuff[index], xx, yy)
                vertex_colour(vbuff[index], 16777215, 1)
                vertex_position_3d(vbuff[index], left, bottom, dep)
                vertex_texcoord(vbuff[index], uv_left, uv_bottom)
                vertex_texcoord(vbuff[index], uv_left, uv_top)
                vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                vertex_texcoord(vbuff[index], xx, yy)
                vertex_colour(vbuff[index], 16777215, 1)
            }
        }
        vertex_end(vbuff[index])
        vertex_freeze(vbuff[index])
    }
    if (index == (7 << 0))
    {
        var list_pos_x = ds_list_create()
        var list_pos_y = ds_list_create()
        if instance_exists(obj_anomaly_fire)
        {
            with (obj_anomaly_fire)
            {
                ds_list_add(list_pos_x, x)
                ds_list_add(list_pos_y, y)
            }
        }
        if instance_exists(obj_anomaly_gas)
        {
            with (obj_anomaly_gas)
            {
                ds_list_add(list_pos_x, x)
                ds_list_add(list_pos_y, y)
            }
        }
        if instance_exists(obj_anomaly_electric_generator)
        {
            with (obj_anomaly_gas)
            {
                ds_list_add(list_pos_x, x)
                ds_list_add(list_pos_y, y)
            }
        }
        if (ds_list_size(list_pos_x) > 0)
        {
            for (var i = 0; i < ds_list_size(list_pos_x); i++)
            {
                repeat (8)
                {
                    im_ind = 0
                    if grass_random_image
                        im_ind = irandom((sprite_get_number(global.grass_image[index]) - 1))
                    tex[index] = sprite_get_texture(global.grass_image[index], im_ind)
                    uvs = sprite_get_uvs(global.grass_image[index], im_ind)
                    uv_left = uvs[0]
                    uv_top = uvs[1]
                    uv_right = uvs[2]
                    uv_bottom = uvs[3]
                    spr_w = sprite_get_width(global.grass_image[index])
                    spr_h = sprite_get_height(global.grass_image[index])
                    if (room == room1)
                    {
                        rand_dist = random(24)
                        rand_dir = random(360)
                        left = (ds_list_find_value(list_pos_x, i) + lengthdir_x(rand_dist, rand_dir))
                        top = (ds_list_find_value(list_pos_y, i) + lengthdir_y(rand_dist, rand_dir))
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
                    right = (left + spr_w)
                    bottom = (top + spr_h)
                    xx = (left + (spr_w / 2))
                    yy = (top + (spr_h / 2))
                    place = 1
                    if (room == room1)
                    {
                        x1 = (xx div 16)
                        y1 = (yy div 16)
                        g_w = obj_map_generator.grid_water
                        if (ds_grid_get(g_w, x1, y1) == -1)
                            place = 0
                        g_t = obj_map_generator.grid_tile
                        if (ds_grid_get(g_t, x1, y1) == -7)
                            place = 0
                        gf2 = ds_grid_get(obj_map_generator.grid_floor2, x1, y1)
                        if (gf2 == 1 || gf2 == 6 || gf2 == 0)
                        {
                            if scr_chance(80)
                                place = 0
                        }
                    }
                    if (place == 1)
                    {
                        dep = ((-bottom) + 2)
                        vertex_position_3d(vbuff[index], left, top, dep)
                        vertex_texcoord(vbuff[index], uv_left, uv_top)
                        vertex_texcoord(vbuff[index], uv_left, uv_top)
                        vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                        vertex_texcoord(vbuff[index], xx, yy)
                        vertex_colour(vbuff[index], 16777215, 1)
                        vertex_position_3d(vbuff[index], right, top, dep)
                        vertex_texcoord(vbuff[index], uv_right, uv_top)
                        vertex_texcoord(vbuff[index], uv_left, uv_top)
                        vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                        vertex_texcoord(vbuff[index], xx, yy)
                        vertex_colour(vbuff[index], 16777215, 1)
                        vertex_position_3d(vbuff[index], left, bottom, dep)
                        vertex_texcoord(vbuff[index], uv_left, uv_bottom)
                        vertex_texcoord(vbuff[index], uv_left, uv_top)
                        vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                        vertex_texcoord(vbuff[index], xx, yy)
                        vertex_colour(vbuff[index], 16777215, 1)
                        vertex_position_3d(vbuff[index], right, top, dep)
                        vertex_texcoord(vbuff[index], uv_right, uv_top)
                        vertex_texcoord(vbuff[index], uv_left, uv_top)
                        vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                        vertex_texcoord(vbuff[index], xx, yy)
                        vertex_colour(vbuff[index], 16777215, 1)
                        vertex_position_3d(vbuff[index], right, bottom, dep)
                        vertex_texcoord(vbuff[index], uv_right, uv_bottom)
                        vertex_texcoord(vbuff[index], uv_left, uv_top)
                        vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                        vertex_texcoord(vbuff[index], xx, yy)
                        vertex_colour(vbuff[index], 16777215, 1)
                        vertex_position_3d(vbuff[index], left, bottom, dep)
                        vertex_texcoord(vbuff[index], uv_left, uv_bottom)
                        vertex_texcoord(vbuff[index], uv_left, uv_top)
                        vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                        vertex_texcoord(vbuff[index], xx, yy)
                        vertex_colour(vbuff[index], 16777215, 1)
                    }
                }
            }
        }
        else
            global.grass_draw[index] = 0
        vertex_end(vbuff[index])
        vertex_freeze(vbuff[index])
    }
    if (index == (9 << 0))
    {
        if instance_exists(obj_cristallo_viola)
        {
            var _x = obj_cristallo_viola.x
            var _y = obj_cristallo_viola.y
            repeat amount
            {
                im_ind = 0
                if grass_random_image
                    im_ind = irandom((sprite_get_number(global.grass_image[index]) - 1))
                tex[index] = sprite_get_texture(global.grass_image[index], im_ind)
                uvs = sprite_get_uvs(global.grass_image[index], im_ind)
                uv_left = uvs[0]
                uv_top = uvs[1]
                uv_right = uvs[2]
                uv_bottom = uvs[3]
                spr_w = sprite_get_width(global.grass_image[index])
                spr_h = sprite_get_height(global.grass_image[index])
                if (room == room1)
                {
                    rand_dist = irandom_range(global.grass_range_min[index], global.grass_range_max[index])
                    rand_dir = random(360)
                    left = (_x + lengthdir_x(rand_dist, rand_dir))
                    top = (_y + lengthdir_y(rand_dist, rand_dir))
                }
                else if (grass_mode == 0)
                {
                    left = random_range((-spr_w), room_width)
                    top = random_range((-spr_h), room_height)
                }
                else if (grass_mode == 1)
                {
                    rand_dist = irandom_range(global.grass_range_min[index], global.grass_range_max[index])
                    rand_dir = random(360)
                    left = (x + lengthdir_x(rand_dist, rand_dir))
                    top = (y + lengthdir_y(rand_dist, rand_dir))
                }
                else if (grass_mode == 2)
                {
                    left = random_range(x, (x + grass_rect_hor))
                    top = random_range(y, (y + grass_rect_ver))
                }
                right = (left + spr_w)
                bottom = (top + spr_h)
                xx = (left + (spr_w / 2))
                yy = (top + (spr_h / 2))
                place = 1
                if (room == room1)
                {
                    x1 = (xx div 16)
                    y1 = (yy div 16)
                    g_w = obj_map_generator.grid_water
                    if (ds_grid_get(g_w, x1, y1) == -1)
                        place = 0
                    g_t = obj_map_generator.grid_tile
                    if (ds_grid_get(g_t, x1, y1) == -7)
                        place = 0
                    gf2 = ds_grid_get(obj_map_generator.grid_floor2, x1, y1)
                    if (gf2 == 1 || gf2 == 6 || gf2 == 0)
                    {
                        if scr_chance(80)
                            place = 0
                    }
                }
                if (place == 1)
                {
                    dep = ((-bottom) + 2)
                    vertex_position_3d(vbuff[index], left, top, dep)
                    vertex_texcoord(vbuff[index], uv_left, uv_top)
                    vertex_texcoord(vbuff[index], uv_left, uv_top)
                    vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                    vertex_texcoord(vbuff[index], xx, yy)
                    vertex_colour(vbuff[index], 16777215, 1)
                    vertex_position_3d(vbuff[index], right, top, dep)
                    vertex_texcoord(vbuff[index], uv_right, uv_top)
                    vertex_texcoord(vbuff[index], uv_left, uv_top)
                    vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                    vertex_texcoord(vbuff[index], xx, yy)
                    vertex_colour(vbuff[index], 16777215, 1)
                    vertex_position_3d(vbuff[index], left, bottom, dep)
                    vertex_texcoord(vbuff[index], uv_left, uv_bottom)
                    vertex_texcoord(vbuff[index], uv_left, uv_top)
                    vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                    vertex_texcoord(vbuff[index], xx, yy)
                    vertex_colour(vbuff[index], 16777215, 1)
                    vertex_position_3d(vbuff[index], right, top, dep)
                    vertex_texcoord(vbuff[index], uv_right, uv_top)
                    vertex_texcoord(vbuff[index], uv_left, uv_top)
                    vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                    vertex_texcoord(vbuff[index], xx, yy)
                    vertex_colour(vbuff[index], 16777215, 1)
                    vertex_position_3d(vbuff[index], right, bottom, dep)
                    vertex_texcoord(vbuff[index], uv_right, uv_bottom)
                    vertex_texcoord(vbuff[index], uv_left, uv_top)
                    vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                    vertex_texcoord(vbuff[index], xx, yy)
                    vertex_colour(vbuff[index], 16777215, 1)
                    vertex_position_3d(vbuff[index], left, bottom, dep)
                    vertex_texcoord(vbuff[index], uv_left, uv_bottom)
                    vertex_texcoord(vbuff[index], uv_left, uv_top)
                    vertex_texcoord(vbuff[index], (uv_right - uv_left), (uv_bottom - uv_top))
                    vertex_texcoord(vbuff[index], xx, yy)
                    vertex_colour(vbuff[index], 16777215, 1)
                }
            }
            vertex_end(vbuff[index])
            vertex_freeze(vbuff[index])
        }
        else
            global.grass_draw[index] = 0
    }
    if bugfix
        gpu_set_ztestenable(0)
    return;
}

