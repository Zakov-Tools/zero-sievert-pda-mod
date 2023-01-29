function scr_choose_footstep_sound(argument0) //gml_Script_scr_choose_footstep_sound
{
    var f_type = argument0
    var sound_ = -1
    var om = obj_map_generator
    var os = obj_sound_controller
    var x1 = (x div 16)
    var y1 = ((y + 8) div 16)
    var sound_grass = choose(16, 17, 18, 19)
    var sound_concrete = choose(28, 29, 30, 31)
    var sound_mud = choose(24, 25, 26, 27)
    var sound_dirt = choose(20, 21, 22, 23)
    var sound_wood = choose(32, 33, 34, 35)
    var sound_metal = choose(36, 37, 38, 39)
    var sound_dog = choose(7, 8, 9, 10, 11)
    var sound_big = choose(12, 13, 14, 15)
    if (room == room1)
    {
        switch f_type
        {
            case (0 << 0):
                break
            case (2 << 0):
                sound_ = sound_dog
                break
            case (4 << 0):
                break
            case (5 << 0):
                sound_ = sound_big
                break
            case (1 << 0):
                if (y <= om.map_height)
                {
                    if (om.area == (4 << 0))
                        sound_ = sound_mud
                    else
                        sound_ = sound_grass
                    if (ds_grid_get(om.grid_floor2, x1, y1) == 0 || ds_grid_get(om.grid_floor2, x1, y1) == 4)
                        sound_ = sound_dirt
                    if (ds_grid_get(om.grid_floor2, x1, y1) == 1)
                        sound_ = sound_concrete
                    if (ds_grid_get(om.grid_floor2, x1, y1) == 5 || ds_grid_get(om.grid_floor2, x1, y1) == 5)
                        sound_ = sound_grass
                    if (ds_grid_get(om.grid_strada, (x div 96), (y div 96)) == 1)
                        sound_ = sound_concrete
                }
                else
                {
                    var get_cell = tilemap_get(om.layer_tileset_floor_indoor, x1, y1)
                    var celly = (get_cell div 32)
                    var cellx = (get_cell - (celly * 32))
                    var material = ds_grid_get(os.grid_footstep, cellx, celly)
                    switch material
                    {
                        case (0 << 0):
                            sound_ = sound_concrete
                            break
                        case (1 << 0):
                            sound_ = sound_wood
                            break
                        case (2 << 0):
                            sound_ = sound_metal
                            break
                    }

                }
                break
            default:

        }

    }
    if (room == r_hub)
    {
        if (y < 1195)
        {
            var get_tile_id = layer_tilemap_get_id("Floor")
            get_cell = tilemap_get(get_tile_id, x1, y1)
            celly = (get_cell div 32)
            cellx = (get_cell - (celly * 32))
            material = ds_grid_get(os.grid_footstep, cellx, celly)
            switch material
            {
                case (0 << 0):
                    sound_ = sound_concrete
                    break
                case (1 << 0):
                    sound_ = sound_wood
                    break
                case (2 << 0):
                    sound_ = sound_metal
                    break
            }

        }
        else
            sound_ = sound_dirt
    }
    if (room == test_room)
    {
        switch f_type
        {
            case (0 << 0):
                break
            case (2 << 0):
                sound_ = sound_dog
                break
            case (4 << 0):
                break
            case (1 << 0):
                sound_ = sound_grass
                break
            case (5 << 0):
                sound_ = sound_big
                break
            default:

        }

    }
    if (room == room_tutorial)
        sound_ = sound_concrete
    if (sound_ != -1)
    {
        audio_play_sound_on(emitter_walk, sound_, false, 5)
        if (object_index == obj_player)
        {
            var _sound_equipment = choose(345, 346, 347, 348)
            audio_play_sound(_sound_equipment, 11, false)
            if scr_chance(35)
            {
                var _sound_metal = choose(349, 350, 351, 352)
                audio_play_sound(_sound_metal, 11, false)
            }
        }
    }
    return;
}

