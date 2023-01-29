function scr_player_state_skill2() //gml_Script_scr_player_state_skill2
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var oo = obj_controller
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + oo.pda_icon_back_x), (camy + oo.pda_icon_back_y), oo.pda_icon_back_w, oo.pda_icon_back_h)
        {
            state = gml_Script_scr_player_state_pda
            audio_play_sound(snd_ui_pda_back, 10, false)
            oo.pda_loading_now = oo.pda_loading_max
            oo.pda_map_mouse_press = 0
            global.sk_selected = -1
            global.sk_upgrading = 0
        }
    }
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
        global.sk_selected = -1
        global.sk_upgrading = 0
    }
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
        obj_controller.can_pause = 0
        global.sk_selected = -1
        global.sk_upgrading = 0
    }
    global.sk_hover = -1
    for (var i = 0; i < array_length_1d(global.sk_id); i++)
    {
        if scr_mouse_inside((camx + global.sk_startx), (camy + global.sk_y[i]), global.sk_button_w, global.sk_button_h)
        {
            if (global.sk_lvl[global.sk_id[i]] != -1)
                global.sk_hover = global.sk_id[i]
        }
    }
    if (global.sk_hover != -1)
    {
        if mouse_check_button_pressed(mb_left)
        {
            global.sk_selected = global.sk_hover
            if (global.sk_base[global.sk_hover] == 1 && global.sk_lvl[global.sk_hover] >= global.sk_lvl_max[global.sk_hover])
                global.sk_upgrading = 1
            else
                global.sk_upgrading = 0
        }
    }
    global.sk_spec_hover = -1
    if (global.sk_upgrading == 1)
    {
        for (i = 0; i < array_length_2d(global.sk_upgrade, global.sk_selected); i++)
        {
            if scr_mouse_inside((camx + global.sk_des_x), ((camy + global.sk_starty) + (global.sk_spec_h * i)), global.sk_des_w, global.sk_spec_h)
            {
                global.sk_spec_hover = global.sk_upgrade[global.sk_selected][i]
                if mouse_check_button(mb_left)
                {
                    global.sk_unlocking_now++
                    if (global.sk_unlocking_now >= global.sk_unlocking_max)
                    {
                        global.sk_lvl[global.sk_spec_hover] = 0
                        global.sk_selected = global.sk_spec_hover
                        global.sk_unlocking_now = 0
                        global.sk_upgrading = 0
                        scr_save_skill()
                    }
                }
                else
                    global.sk_unlocking_now = 0
            }
        }
    }
    return;
}

