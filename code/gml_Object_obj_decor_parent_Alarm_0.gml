var m = obj_map_generator
var eccezione = 0
if (object_index == obj_train || object_index == obj_radio_tower || object_index == obj_tree_special || object_index == obj_train_hub)
    eccezione = 1
if (room == r_hub)
    need_to_check = 0
if (eccezione == 0)
{
    if (object_index != obj_solid)
    {
        if (need_to_check == 1)
        {
            if (room == room1)
            {
                var gx = (x div 16)
                var gy = (y div 16)
                var destroy = 0
                if (decor_id == (1 << 0) || decor_id == (2 << 0))
                {
                    x += irandom_range(-8, 8)
                    y += irandom_range(-8, 8)
                }
                var radx = (x div 8)
                var rady = (y div 8)
                if (ds_grid_get(m.grid_radiation, radx, rady) > 0)
                {
                    if (decor_id == (1 << 0))
                        decor_id = (2 << 0)
                }
                if (decor_id == (1 << 0))
                {
                    if instance_exists(obj_anomaly_fire)
                    {
                        if (distance_to_object(obj_anomaly_fire) < 32)
                            decor_id = (2 << 0)
                    }
                }
                if (decor_id == (1 << 0))
                {
                    if instance_exists(obj_anomaly_gas)
                    {
                        if (distance_to_object(obj_anomaly_gas) < 32)
                            decor_id = (2 << 0)
                    }
                }
                if (decor_id == (4 << 0))
                {
                    if instance_exists(obj_anomaly_gas)
                    {
                        if (distance_to_object(obj_anomaly_gas) < 32)
                            destroy = 1
                    }
                }
                if (ds_grid_get(obj_map_generator.grid_building, gx, gy) == -1)
                    destroy = 1
                var fx = (x div 96)
                var fy = (y div 96)
                if (ds_grid_get(obj_map_generator.grid_train, fx, fy) == 1)
                    destroy = 1
                if (point_distance(x, y, obj_train_stop.x, obj_train_stop.y) < 128)
                    destroy = 1
                if instance_exists(obj_indoor)
                {
                    var indoor_near = instance_nearest(x, y, obj_indoor)
                    if (distance_to_object(indoor_near) < 32)
                        destroy = 1
                }
                if (ds_grid_get(obj_map_generator.grid_water, gx, gy) == -1)
                    destroy = 1
                if (decor_id == (1 << 0) || decor_id == (2 << 0) || decor_id == (4 << 0) || decor_id == (8 << 0) || decor_id == (8 << 0))
                {
                    if (ds_grid_get(m.grid_floor2, gx, gy) == 1)
                    {
                        if (m.area == (6 << 0))
                        {
                            if scr_chance(30)
                                decor_id = (17 << 0)
                            else
                                destroy = 1
                        }
                        else
                            destroy = 1
                    }
                }
                if (m.area == (6 << 0))
                {
                    if (gx >= 50 && gx <= 250 && gy >= 48 && gy <= 197)
                    {
                        if scr_chance(20)
                            decor_id = (339 << 0)
                    }
                }
                if place_meeting(x, y, obj_chest_general)
                    destroy = 1
                if (decor_id == (290 << 0) || decor_id == (291 << 0))
                {
                    if (ds_grid_get(m.grid_floor2, gx, gy) == 1)
                        destroy = 1
                }
                if (ds_grid_get(m.grid_fence, gx, gy) != -1)
                    destroy = 1
                if instance_exists(obj_cristallo_viola)
                {
                    var _x = obj_cristallo_viola.x
                    var _y = obj_cristallo_viola.y
                    if (point_distance(x, y, _x, _y) < 264)
                        destroy = 1
                }
                var rx = (x div 96)
                var ry = (y div 96)
                if (ds_grid_get(m.grid_strada, rx, ry) == 1)
                {
                    if scr_chance(80)
                        destroy = 1
                    else
                    {
                        decor_id = choose((9 << 0), (10 << 0), (17 << 0))
                        if scr_chance(35)
                            decor_id = (11 << 0)
                        if scr_chance(15)
                            decor_id = (16 << 0)
                    }
                    if (m.area == (1 << 0))
                    {
                        if (distance_to_object(obj_house_dark) < 128 || distance_to_object(obj_house_dark3) < 128 || distance_to_object(obj_house_dark_police) < 128)
                            destroy = 1
                    }
                }
                if (ds_grid_get(m.grid_floor2, gx, gy) == 3)
                    destroy = 1
                sprite_index = m.decor_sprite[decor_id]
                if position_empty(x, y)
                    destroy = 1
                if (destroy == 0)
                {
                    destroy = 1
                    var snapx = x
                    var snapy = y
                    var decor_ = instance_create_depth(snapx, snapy, (-y), m.decor_obj[decor_id])
                    decor_.decor_id = decor_id
                    decor_.need_to_check = 0
                }
                if (destroy == 1)
                    instance_destroy()
            }
        }
        if (need_to_check == 0)
        {
            if (room != r_hub)
                sprite_index = obj_controller.decor_sprite[decor_id]
            image_index = irandom(sprite_get_number(sprite_index))
            if (obj_controller.decor_specchio[decor_id] == 1)
            {
                var get_sprite = obj_controller.decor_sprite[decor_id]
                var sx = sprite_get_xoffset(get_sprite)
                var sw = sprite_get_width(get_sprite)
                var ss = choose(1, -1)
                var s1 = 0
                if (ss == -1)
                    s1 = ((sw - sx) - sx)
                x += s1
                image_xscale = ss
            }
            else
                image_xscale = 1
            depth = (((-y) - sprite_get_height(sprite_index)) + sprite_get_yoffset(sprite_index))
            radx = (x div 8)
            rady = (y div 8)
            if (room == room1)
            {
                if (m.decor_radiation[decor_id] > 0)
                {
                    var sprite_w = sprite_get_width(sprite_index)
                    var sprite_h = sprite_get_height(sprite_index)
                    var centerx = (sprite_w div 16)
                    var centery = (sprite_h div 16)
                    var offx = sprite_get_xoffset(sprite_index)
                    var offy = sprite_get_yoffset(sprite_index)
                    var number_of_zone = ((m.decor_radiation[decor_id] div 10) + 1)
                    number_of_zone = clamp(number_of_zone, 1, 10)
                    for (var i = 0; i < number_of_zone; i++)
                    {
                        var off = (8 * (number_of_zone - i))
                        var starty = (((rady + ((sprite_h - offy) div 8)) - (centery / 2)) - 1)
                        var startx = ((radx + (((sprite_w / 2) - offx) div 8)) - (centerx / 2))
                        if (offx == 0)
                        {
                            startx = ((x - off) div 8)
                            var finx = (((x + sprite_w) + off) div 8)
                        }
                        else
                        {
                            startx = (((x - (sprite_w / 2)) - off) div 8)
                            finx = (((x + (sprite_w / 2)) + off) div 8)
                        }
                        var finy = ((((y + sprite_h) - offy) + off) div 8)
                        starty = (((y - offy) - off) div 8)
                        var radiation_ = (m.decor_radiation[decor_id] / number_of_zone)
                        ds_grid_add_region(m.grid_radiation, startx, starty, finx, finy, radiation_)
                    }
                }
            }
        }
    }
}
