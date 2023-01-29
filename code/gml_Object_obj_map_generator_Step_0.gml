if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
depth = 150
switch state
{
    case (18 << 0):
        if (keyboard_check_released(vk_anykey) || mouse_check_button_released(mb_any))
        {
            state = (19 << 0)
            audio_master_gain(global.volume_master)
            obj_meteo_controller.alarm[0] = obj_meteo_controller.change_meteo_time
            obj_meteo_controller.alarm[2] = global.emission_min_timer
        }
        break
    case (19 << 0):
        break
}

if (global.general_debug == 1)
{
    if (debug == 1)
    {
        if keyboard_check_pressed(vk_up)
            alarm[2] = 1
    }
    if keyboard_check_pressed(ord("Y"))
    {
        if (!instance_exists(obj_camera_test))
            instance_create_depth(x, y, (-y), obj_camera_test)
        else
        {
            with (obj_camera_test)
                instance_destroy()
        }
    }
}
