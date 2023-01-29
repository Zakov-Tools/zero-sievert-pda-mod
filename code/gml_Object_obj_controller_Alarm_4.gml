if (!keyboard_check_pressed(vk_escape))
{
    if (disattiva == 1)
    {
        instance_deactivate_region((x - 480), (y - 270), 960, 540, false, true)
        instance_activate_region((x - 480), (y - 270), 960, 540, true)
        if (!instance_exists(obj_train))
            instance_activate_object(obj_train)
        if (!instance_exists(obj_map_generator))
            instance_activate_object(obj_map_generator)
        if (!instance_exists(obj_mouse))
            instance_activate_object(obj_mouse)
        if (!instance_exists(obj_sound_controller))
            instance_activate_object(obj_sound_controller)
        if (!instance_exists(obj_light_controller))
            instance_activate_object(obj_light_controller)
        if (!instance_exists(obj_meteo_controller))
            instance_activate_object(obj_meteo_controller)
        if (!instance_exists(obj_minimap))
            instance_activate_object(obj_minimap)
        if (!instance_exists(obj_surface_aim))
            instance_activate_object(obj_surface_aim)
        if (!instance_exists(obj_shader_controller))
            instance_activate_object(obj_shader_controller)
        if (!instance_exists(obj_object_shadow))
            instance_activate_object(obj_object_shadow)
        if (!instance_exists(obj_show_stat_item))
            instance_activate_object(obj_show_stat_item)
        if (!instance_exists(obj_camera))
            instance_activate_object(obj_camera)
        if (!instance_exists(obj_player_weapon))
            instance_activate_object(obj_player_weapon)
        instance_activate_object(obj_marker)
        if (room == room1)
        {
            if (obj_map_generator.area == (4 << 0))
            {
                if instance_exists(obj_faro)
                {
                    if (point_distance(x, y, obj_faro.x, obj_faro.y) < 270)
                    {
                        for (var i = 0; i < 30; i++)
                        {
                            if (global.save_quest_id[i] == (47 << 0) && global.save_quest_status[i] == 1)
                                instance_activate_region((x - 480), (y - 810), 960, 540, true)
                        }
                    }
                }
            }
        }
        if instance_exists(obj_player)
        {
            if (obj_player.state == gml_Script_scr_player_state_dead)
                instance_deactivate_object(obj_npc_parent)
        }
    }
    if (room == r_hub)
    {
        if instance_exists(obj_camera)
        {
            if (obj_camera.follow != (3 << 0))
            {
                instance_deactivate_object(obj_solid)
                instance_deactivate_object(obj_light)
                if (!instance_exists(obj_mouse))
                    instance_activate_object(obj_mouse)
                if (!instance_exists(obj_sound_controller))
                    instance_activate_object(obj_sound_controller)
                if (!instance_exists(obj_light_controller))
                    instance_activate_object(obj_light_controller)
                if (!instance_exists(obj_meteo_controller))
                    instance_activate_object(obj_meteo_controller)
                if (!instance_exists(obj_minimap))
                    instance_activate_object(obj_minimap)
                if (!instance_exists(obj_surface_aim))
                    instance_activate_object(obj_surface_aim)
                if (!instance_exists(obj_shader_controller))
                    instance_activate_object(obj_shader_controller)
                if (!instance_exists(obj_object_shadow))
                    instance_activate_object(obj_object_shadow)
                if (!instance_exists(obj_show_stat_item))
                    instance_activate_object(obj_show_stat_item)
                if (!instance_exists(obj_camera))
                    instance_activate_object(obj_camera)
                if (!instance_exists(obj_player_weapon))
                    instance_activate_object(obj_player_weapon)
                instance_activate_region((x - 480), (y - 270), 960, 540, true)
            }
        }
    }
}
var time_ = 20
if (global.low_spec == 1)
    time_ = 60
alarm[4] = time_
