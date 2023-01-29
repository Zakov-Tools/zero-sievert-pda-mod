function scr_player_state_sleep() //gml_Script_scr_player_state_sleep
{
    if global.kb_pressed[(5 << 0)]
    {
        if (!instance_exists(obj_sleep_fade))
            state = gml_Script_scr_player_state_move
    }
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var o = obj_controller
    o.sleep_b_hover = -1
    if scr_mouse_inside((camx + o.sleep_b_sleep_x), (camy + o.sleep_b_sleep_y), o.sleep_b_w, o.sleep_b_h)
        o.sleep_b_hover = 0
    if scr_mouse_inside((camx + o.sleep_b_back_x), (camy + o.sleep_b_back_y), o.sleep_b_w, o.sleep_b_h)
        o.sleep_b_hover = 1
    if keyboard_check_pressed(vk_escape)
    {
        obj_controller.can_pause = 0
        state = gml_Script_scr_player_state_move
    }
    if mouse_check_button_pressed(mb_left)
    {
        if (o.sleep_b_hover == 1)
            state = gml_Script_scr_player_state_move
        if (!instance_exists(obj_sleep_fade))
        {
            if (o.sleep_b_hover == 0)
                instance_create_depth(x, y, 0, obj_sleep_fade)
        }
    }
    if mouse_check_button(mb_left)
    {
        if scr_mouse_inside(((camx + o.sleep_x) + 14), ((camy + 135) - 7), 168, 14)
        {
            var mx = (mouse_x - camx)
            for (var i = 0; i < array_length_1d(o.sleep_h_x); i++)
            {
                if (abs((mx - o.sleep_h_x[i])) < 4)
                    o.sleep_hour = i
            }
        }
    }
    return;
}

