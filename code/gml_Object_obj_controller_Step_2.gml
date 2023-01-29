if keyboard_check_pressed(vk_escape)
{
    var _can_pause = 1
    if (room == room1)
    {
        if instance_exists(obj_map_generator)
        {
            if (obj_map_generator.state < (18 << 0))
                _can_pause = 0
        }
    }
    if (!instance_exists(obj_exit_screen))
    {
        if (can_pause == 1 && _can_pause == 1)
        {
            if (room == r_hub)
            {
                scr_save_time()
                scr_save_player_status()
                scr_save_or_load(1)
            }
            scr_save_exp()
            scr_save_skill()
            ini_open(global.save_general)
            ini_write_real("Real time played", "seconds", obj_light_controller.real_time_played)
            ini_close()
            audio_pause_all()
            instance_deactivate_region(0, 0, room_width, room_height, true, false)
            var camx = camera_get_view_x(view_camera[0])
            var camy = camera_get_view_y(view_camera[0])
            instance_create_depth(x, y, -10000, obj_main_menu)
        }
    }
}
if (can_pause == 0)
    can_pause = 1
