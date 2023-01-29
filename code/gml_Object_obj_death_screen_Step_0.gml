a += alpha_gain
a = clamp(a, 0, 1)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if scr_mouse_inside(((camx + button_x) - (button_w / 2)), ((camy + button_y) - (button_h / 2)), button_w, button_h)
{
    mouse_in_the_button = 1
    if mouse_check_button_pressed(mb_left)
    {
        audio_group_set_gain(1, 1, 50)
        audio_group_set_gain(6, 1, 50)
        room_goto(r_hub)
    }
}
else
    mouse_in_the_button = 0
