function scr_player_state_base() //gml_Script_scr_player_state_base
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
            global.sl_selected = -1
            global.base_selected = -1
            global.base_installing_now = 0
        }
    }
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
        global.sl_selected = -1
        global.base_selected = -1
        global.base_installing_now = 0
    }
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
        obj_controller.can_pause = 0
        global.sl_selected = -1
        global.base_selected = -1
        global.base_installing_now = 0
    }
    if (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right) || keyboard_check_pressed(vk_anykey))
    {
        if (global.pda_info == 1)
            global.pda_info = 0
    }
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + global.pda_icon_info_x), (camy + global.pda_icon_info_y), 17, 17)
            global.pda_info = 1
    }
    if (global.pda_info == 0)
    {
        global.sl_hover = -1
        for (var i = 0; i < array_length_1d(global.sl_id); i++)
        {
            if scr_mouse_inside((camx + global.sl_x[i]), (camy + global.sl_y[i]), global.sl_w, global.sl_w)
                global.sl_hover = global.sl_id[i]
        }
        if mouse_check_button_pressed(mb_left)
        {
            if (global.sl_hover != -1)
                global.sl_selected = global.sl_hover
        }
        if (global.sl_selected != -1)
        {
            global.base_hover = -1
            if (global.sl_free[global.sl_selected] == 0)
            {
                for (i = 0; i < array_length_1d(global.base_id); i++)
                {
                    var bb_id = global.base_id[i]
                    if scr_mouse_inside((camx + global.base_x[bb_id]), (camy + global.base_y[bb_id]), global.sl_w, global.sl_w)
                        global.base_hover = bb_id
                }
                if mouse_check_button_pressed(mb_left)
                {
                    if (global.base_hover != -1)
                        global.base_selected = global.base_hover
                }
                if (global.base_selected != -1)
                {
                    if scr_mouse_inside(((camx + global.base_install_x) - (global.base_install_w / 2)), ((camy + global.base_install_y) - (global.base_install_h / 2)), global.base_install_w, global.base_install_h)
                    {
                        var already_installed = 0
                        var list_already_installed = ds_list_create()
                        for (i = 0; i < array_length_1d(global.sl_id); i++)
                        {
                            var bbase_id = global.sl_base_id[i]
                            if (bbase_id != -1)
                                ds_list_add(list_already_installed, bbase_id)
                        }
                        var ll = ds_list_size(list_already_installed)
                        if (ll > 0)
                        {
                            for (var j = 0; j < ll; j++)
                            {
                                var confronto = ds_list_find_value(list_already_installed, j)
                                if (global.base_selected == confronto)
                                    already_installed = 1
                            }
                        }
                        if (already_installed == 1)
                        {
                            if mouse_check_button_pressed(mb_left)
                                scr_draw_text_with_box("Already installed!")
                        }
                        if (already_installed == 0)
                        {
                            if mouse_check_button(mb_left)
                            {
                                if (room == r_hub)
                                    global.base_installing_now += 1
                            }
                            else
                                global.base_installing_now = 0
                            if mouse_check_button_pressed(mb_left)
                            {
                                if (room != r_hub)
                                    scr_draw_text_with_box("You can install modules only in the bunker")
                            }
                            if (global.base_installing_now >= global.base_installing_max)
                            {
                                global.sl_free[global.sl_selected] = 2
                                global.sl_base_id[global.sl_selected] = global.base_selected
                                global.base_installing_now = 0
                                scr_save_skill()
                            }
                        }
                    }
                    else
                        global.base_installing_now = 0
                }
            }
            if (global.sl_free[global.sl_selected] == 2)
            {
                if (room == r_hub)
                {
                    if scr_mouse_inside(((camx + global.base_install_x) - (global.base_install_w / 2)), ((camy + global.base_install_y) - (global.base_install_h / 2)), global.base_install_w, global.base_install_h)
                    {
                        var is_storage_base = 0
                        if (global.sl_base_id[global.sl_selected] == (1 << 0))
                            is_storage_base = 1
                        if (is_storage_base == 0)
                        {
                            if mouse_check_button(mb_left)
                                global.base_installing_now += 1
                            else
                                global.base_installing_now = 0
                            if (global.base_installing_now >= global.base_installing_max)
                            {
                                global.sl_free[global.sl_selected] = 0
                                global.base_lvl[global.sl_base_id[global.sl_selected]] = 0
                                global.sl_base_id[global.sl_selected] = -1
                                global.base_installing_now = 0
                                obj_base_parent.alarm[0] = 1
                            }
                        }
                        else if mouse_check_button_pressed(mb_left)
                            scr_draw_text_with_box("Storage is the only module that can not be uninstalled")
                    }
                }
                else if mouse_check_button_pressed(mb_left)
                {
                    if scr_mouse_inside(((camx + global.base_install_x) - (global.base_install_w / 2)), ((camy + global.base_install_y) - (global.base_install_h / 2)), global.base_install_w, global.base_install_h)
                        scr_draw_text_with_box("You can uninstall modules only in the bunker")
                }
            }
        }
    }
    return;
}

