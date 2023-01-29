x = obj_player.x
y = obj_player.y
depth = 35
if keyboard_check_pressed(vk_f10)
{
    if (global.fog_enable == 1)
        global.fog_enable = 0
    else
        global.fog_enable = 1
}
