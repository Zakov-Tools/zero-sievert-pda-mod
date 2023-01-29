audio_play_sound(snd_ui_pda_app_hover, 10, false)
if (mode == (0 << 0))
{
    if instance_exists(obj_extraction_point)
    {
        with (obj_extraction_point)
        {
            var _name = object_get_name(object_index)
            var t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0,") + _name) + " )")
            show_debug_message(t)
        }
    }
    if instance_exists(obj_editor_fence_parent)
    {
        with (obj_editor_fence_parent)
        {
            var xx = (x div 16)
            var yy = (y div 16)
            var ss = ""
            switch fence
            {
                case 1471:
                    ss = "s_tileset_fence_wood_big"
                    break
                case 1473:
                    ss = "s_tileset_fence_concrete1"
                    break
                case 1474:
                    ss = "s_tileset_fence_military"
                    break
            }

            t = ((((("grid_fence[# xx + " + string(xx)) + ", yy + ") + string(yy)) + " ] = ") + ss)
            show_debug_message(t)
        }
    }
    var oo = obj_editor
    if instance_exists(obj_decor_parent)
    {
        with (obj_decor_parent)
        {
            if (object_index != obj_solid)
            {
                var ll = array_length_1d(oo.decor_obj)
                for (var i = 0; i < ll; i++)
                {
                    if (object_index == oo.decor_obj[i])
                    {
                        t = (((((("scr_place_obj_map( " + string(i)) + " , xx*tile_box_size + ") + string(x)) + " , yy*tile_box_size + ") + string(y)) + " )")
                        show_debug_message(t)
                    }
                }
            }
        }
    }
    oo = obj_editor
    if instance_exists(obj_npc_parent)
    {
        with (obj_npc_parent)
        {
            ll = array_length_1d(oo.npc_my_id)
            for (i = 0; i < ll; i++)
            {
                if (npc_id == oo.npc_my_id[i])
                {
                    var obj_ = object_get_name(object_index)
                    t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0,") + obj_) + " )")
                    show_debug_message(t)
                }
            }
        }
    }
    if instance_exists(obj_enemy_spawner_parent)
    {
        with (obj_enemy_spawner_parent)
        {
            _name = object_get_name(object_index)
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0,") + _name) + " )")
            show_debug_message(t)
        }
    }
    oo = obj_editor
    if instance_exists(obj_chest_general)
    {
        with (obj_chest_general)
        {
            ll = array_length_1d(oo.chest_id)
            for (i = 0; i < ll; i++)
            {
                if (tipo == oo.chest_id[i])
                {
                    obj_ = object_get_name(object_index)
                    t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0,") + obj_) + " )")
                    show_debug_message(t)
                }
            }
        }
    }
    if instance_exists(obj_spawner_chest_parent)
    {
        with (obj_spawner_chest_parent)
        {
            _name = object_get_name(object_index)
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0,") + _name) + " )")
            show_debug_message(t)
        }
    }
    if instance_exists(obj_solid)
    {
        with (obj_solid)
        {
            if (object_index == obj_solid)
            {
                t = (((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0, obj_solid )")
                show_debug_message(t)
            }
        }
    }
    if instance_exists(obj_solid_can_see)
    {
        with (obj_solid_can_see)
        {
            t = (((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0, obj_solid_can_see )")
            show_debug_message(t)
        }
    }
    if instance_exists(obj_light)
    {
        with (obj_light)
        {
            _name = object_get_name(object_index)
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0, ") + _name) + " )")
            show_debug_message(t)
        }
    }
    if layer_exists("solid_layer")
    {
        var _solid_layer = layer_tilemap_get_id("solid_layer")
        var rw = (room_width div 16)
        var rh = (room_height div 16)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                var cell = tilemap_get(_solid_layer, xx, yy)
                if (cell != 0)
                {
                    var _obj_solid = obj_solid
                    switch cell
                    {
                        case 1:
                            _obj_solid = obj_solid
                            break
                        case 2:
                            _obj_solid = obj_solid_can_see
                            break
                    }

                    var _obj_solid_name = object_get_name(_obj_solid)
                    t = (((((("instance_create_depth( xx*tile_box_size + " + string((xx * 16))) + " , yy*tile_box_size + ") + string((yy * 16))) + " , 0, ") + _obj_solid_name) + " )")
                    show_debug_message(t)
                }
            }
        }
    }
    if layer_exists("floor2")
    {
        var floor2_layer = layer_tilemap_get_id("floor2")
        var floor2_tileset = tilemap_get_tileset(floor2_layer)
        rw = (room_width div 16)
        rh = (room_height div 16)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(floor2_layer, xx, yy)
                if (cell != 0)
                {
                    var floor2_ = -1
                    switch cell
                    {
                        case 1:
                            floor2_ = 0
                            break
                        case 2:
                            floor2_ = 1
                            break
                        case 3:
                            floor2_ = 6
                            break
                        case 5:
                            floor2_ = 8
                            break
                        case 6:
                            floor2_ = 10
                            break
                    }

                    t = ((((("obj_map_generator.grid_floor2[# xx + " + string(xx)) + ", yy + ") + string(yy)) + " ] = ") + string(floor2_))
                    show_debug_message(t)
                }
            }
        }
    }
    if layer_exists("road")
    {
        var road_layer = layer_tilemap_get_id("road")
        var road_tileset = tilemap_get_tileset(road_layer)
        rw = (room_width div 96)
        rh = (room_height div 96)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(road_layer, xx, yy)
                if (cell != 0)
                {
                    var t_ = (((("obj_map_generator.grid_strada[# (xx div 6) + " + string(xx)) + " , (yy div 6) + ") + string(yy)) + " ] = true")
                    show_debug_message(t_)
                    var t1_ = (((((("tilemap_set( obj_map_generator.layer_tileset_road ,  " + string(cell)) + " , (xx div 6) + ") + string(xx)) + " , (yy div 6) + ") + string(yy)) + " )")
                    show_debug_message(t1_)
                }
            }
        }
    }
    if layer_exists("water")
    {
        var water_layer = layer_tilemap_get_id("water")
        var water_tileset = tilemap_get_tileset(water_layer)
        rw = (room_width div 16)
        rh = (room_height div 16)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(water_layer, xx, yy)
                if (cell != 0)
                {
                    t_ = (((("obj_map_generator.grid_water[# xx + " + string(xx)) + " , yy + ") + string(yy)) + " ] = FLOOR")
                    show_debug_message(t_)
                    var t2_ = (((("obj_map_generator.grid_map[# (xx div 2) + " + string((xx div 2))) + " , (yy div 2) + ") + string((yy div 2))) + " ] = FLOOR")
                    show_debug_message(t2_)
                    t1_ = (((((("tilemap_set( obj_map_generator.layer_tileset_water , " + string(cell)) + " , xx + ") + string(xx)) + " , yy + ") + string(yy)) + " )")
                    show_debug_message(t1_)
                }
            }
        }
    }
    if layer_exists("parking")
    {
        var parking_layer = layer_tilemap_get_id("parking")
        var parking_tileset = tilemap_get_tileset(parking_layer)
        rw = (room_width div 96)
        rh = (room_height div 96)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(parking_layer, xx, yy)
                if (cell != 0)
                {
                    t_ = (((("obj_map_generator.grid_parking[# (xx div 6) + " + string(xx)) + " , (yy div 6) + ") + string(yy)) + " ] = true")
                    show_debug_message(t_)
                    t1_ = (((((("tilemap_set( obj_map_generator.layer_tileset_parking ,  " + string(cell)) + " , (xx div 6) + ") + string(xx)) + " , (yy div 6) + ") + string(yy)) + " )")
                    show_debug_message(t1_)
                }
            }
        }
    }
    if layer_exists("railroad")
    {
        var railroad_layer = layer_tilemap_get_id("railroad")
        var railroad_tileset = tilemap_get_tileset(railroad_layer)
        rw = (room_width div 96)
        rh = (room_height div 96)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(railroad_layer, xx, yy)
                if (cell != 0)
                {
                    t_ = (((("obj_map_generator.grid_train[# (xx div 6) + " + string(xx)) + " , (yy div 6) + ") + string(yy)) + " ] = 2")
                    show_debug_message(t_)
                    t1_ = (((((("tilemap_set( obj_map_generator.layer_tileset_railroad ,  " + string(cell)) + " , (xx div 6) + ") + string(xx)) + " , (yy div 6) + ") + string(yy)) + " )")
                    show_debug_message(t1_)
                }
            }
        }
    }
    if instance_exists(obj_indoor)
    {
        with (obj_indoor)
        {
            t = (((("var o_indoor = instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0, obj_indoor )")
            show_debug_message(t)
            var t1 = "o_indoor.tele_x = dest_x"
            show_debug_message(t1)
            var t2 = "o_indoor.tele_y = dest_y"
            show_debug_message(t2)
            t = "var o_indoor2 = instance_create_depth( x + o.b_x[decor_id,image_index] , y + o.b_y[decor_id,image_index] , 0, obj_indoor )"
            show_debug_message(t)
            t1 = ("o_indoor2.tele_x = xx*tile_box_size + 8 + " + string(x))
            show_debug_message(t1)
            t2 = ("o_indoor2.tele_y = yy*tile_box_size + 5 + " + string(y))
            show_debug_message(t2)
        }
    }
    if instance_exists(obj_indoor_specific_parent)
    {
        with (obj_indoor_specific_parent)
        {
            _name = object_get_name(object_index)
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0, ") + _name) + " )")
            show_debug_message(t)
        }
    }
    if layer_exists("indoor_floor")
    {
        var indoor_floor_layer = layer_tilemap_get_id("indoor_floor")
        var indoor_floor_tileset = tilemap_get_tileset(indoor_floor_layer)
        rw = (room_width div 16)
        rh = (room_height div 16)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(indoor_floor_layer, xx, yy)
                if (cell != 0)
                {
                    t_ = (((((("tilemap_set( o.layer_tileset_floor_indoor ,  " + string(cell)) + " , xx + ") + string(xx)) + " , yy + ") + string(yy)) + " )")
                    show_debug_message(t_)
                }
            }
        }
    }
    if layer_exists("indoor_wall_below")
    {
        var indoor_w_below_layer = layer_tilemap_get_id("indoor_wall_below")
        var indoor_w_b_tileset = tilemap_get_tileset(indoor_w_below_layer)
        rw = (room_width div 16)
        rh = (room_height div 16)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(indoor_w_below_layer, xx, yy)
                if (cell != 0)
                {
                    t_ = (((((("tilemap_set( o.layer_tileset_wall_below_indoor ,  " + string(cell)) + " , xx + ") + string(xx)) + " , yy + ") + string(yy)) + " )")
                    show_debug_message(t_)
                }
            }
        }
    }
    if layer_exists("indoor_wall_above")
    {
        var indoor_w_above_layer = layer_tilemap_get_id("indoor_wall_above")
        var indoor_w_a_tileset = tilemap_get_tileset(indoor_w_above_layer)
        rw = (room_width div 16)
        rh = (room_height div 16)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(indoor_w_above_layer, xx, yy)
                if (cell != 0)
                {
                    t_ = (((((("tilemap_set( o.layer_tileset_wall_above_indoor ,  " + string(cell)) + " , xx + ") + string(xx)) + " , yy + ") + string(yy)) + " )")
                    show_debug_message(t_)
                }
            }
        }
    }
    if layer_exists("indoor_cartelli")
    {
        var cartelli_layer = layer_tilemap_get_id("indoor_cartelli")
        var cartelli_tileset = tilemap_get_tileset(cartelli_layer)
        rw = (room_width div 16)
        rh = (room_height div 16)
        for (xx = 0; xx < rw; xx++)
        {
            for (yy = 0; yy < rh; yy++)
            {
                cell = tilemap_get(cartelli_layer, xx, yy)
                if (cell != 0)
                {
                    t1_ = (((((("tilemap_set( o.layer_tileset_cartelli ,  " + string(cell)) + " , (xx) + ") + string(xx)) + " , (yy ) + ") + string(yy)) + " )")
                    show_debug_message(t1_)
                }
            }
        }
    }
    if instance_exists(obj_spawner_ghoul)
    {
        with (obj_spawner_ghoul)
        {
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0 , ") + "obj_spawner_ghoul") + " )")
            show_debug_message(t)
        }
    }
    if instance_exists(obj_spawner_ghoul_quest_swamp)
    {
        with (obj_spawner_ghoul_quest_swamp)
        {
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0 , ") + "obj_spawner_ghoul_quest_swamp") + " )")
            show_debug_message(t)
        }
    }
    if instance_exists(obj_quest_object_parent)
    {
        with (obj_quest_object_parent)
        {
            var get_name = object_get_name(object_index)
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0 , ") + get_name) + " )")
            show_debug_message(t)
        }
    }
    if instance_exists(obj_quest_approach_parent)
    {
        with (obj_quest_approach_parent)
        {
            get_name = object_get_name(object_index)
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0 , ") + get_name) + " )")
            show_debug_message(t)
        }
    }
    if instance_exists(obj_door_parent)
    {
        with (obj_door_parent)
        {
            get_name = object_get_name(object_index)
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0 , ") + get_name) + " )")
            show_debug_message(t)
        }
    }
    if instance_exists(obj_solid_crismon_base_ingresso)
    {
        with (obj_solid_crismon_base_ingresso)
        {
            get_name = object_get_name(obj_solid_crismon_base_ingresso)
            t = (((((("instance_create_depth( xx*tile_box_size + " + string(x)) + " , yy*tile_box_size + ") + string(y)) + " , 0 , ") + get_name) + " )")
            show_debug_message(t)
        }
    }
}
if (mode == (1 << 0))
{
    oo = obj_editor
    if instance_exists(obj_decor_parent)
    {
        with (obj_decor_parent)
        {
            if (object_index != obj_solid)
            {
                ll = array_length_1d(oo.decor_obj)
                for (i = 0; i < ll; i++)
                {
                    if (sprite_index == oo.decor_sprite[i])
                    {
                        var o_name = object_get_name(object_index)
                        t = (((((("instance_create_depth( x + " + string(x)) + " , y + ") + string(y)) + " , 0 , ") + o_name) + " )")
                        show_debug_message(t)
                    }
                }
            }
        }
    }
    if instance_exists(obj_solid)
    {
        with (obj_solid)
        {
            if (object_index == obj_solid)
            {
                t = (((("instance_create_depth( x + " + string(x)) + " , y + ") + string(y)) + " , 0, obj_solid )")
                show_debug_message(t)
            }
        }
    }
    oo = obj_editor
    if instance_exists(obj_npc_parent)
    {
        with (obj_npc_parent)
        {
            ll = array_length_1d(oo.npc_my_id)
            for (i = 0; i < ll; i++)
            {
                if (npc_id == oo.npc_my_id[i])
                {
                    obj_ = object_get_name(object_index)
                    t = (((((("instance_create_depth( x + " + string(x)) + " , y + ") + string(y)) + " , 0,") + obj_) + " )")
                    show_debug_message(t)
                }
            }
        }
    }
}
