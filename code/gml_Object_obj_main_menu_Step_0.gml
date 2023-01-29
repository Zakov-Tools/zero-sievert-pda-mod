var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (!audio_group_is_loaded(14))
    audio_group_load(14)
if (!audio_is_playing(snd_main_menu_2))
    audio_play_sound(snd_main_menu_2, 20, false)
var _normal = 1
if (new_version == 1)
    _normal = 0
if (global.ga_pop_up == 1)
    _normal = 0
if (_normal == 1)
{
    if (page_state != (11 << 0))
    {
        var startx = (option_startx[page_state] - (button_w / 2))
        var starty = (option_starty[page_state] - (button_h / 2))
        var n_option = array_length_2d(option_name, page_state)
        var but_hover = 0
        var but_pressed = 0
        for (var i = 0; i < n_option; i++)
        {
            if scr_mouse_inside((camx + startx), ((camy + starty) + (button_h_sep * i)), button_w, button_h)
            {
                option_selected = i
                but_hover = 1
                if mouse_check_button_released(mb_left)
                    but_pressed = 1
            }
        }
        if (but_hover == 0)
            option_selected = -1
        if (page_state == (4 << 0))
        {
            global.volume_master = option_var[(4 << 0)][(0 << 0)]
            global.volume_radiation = option_var[(4 << 0)][(1 << 0)]
            global.volume_heart = option_var[(4 << 0)][(2 << 0)]
            global.volume_main_menu = option_var[(4 << 0)][(3 << 0)]
            audio_group_set_gain(3, global.volume_radiation, 1)
            audio_group_set_gain(13, global.volume_heart, 1)
            audio_group_set_gain(14, global.volume_main_menu, 1)
            audio_master_gain(global.volume_master)
            if mouse_check_button_pressed(mb_left)
                can_slide = 1
            if mouse_check_button_released(mb_left)
                can_slide = 0
            if (can_slide == 1)
            {
                if mouse_check_button(mb_left)
                {
                    var s_w = sprite_get_width(s_hud_slider_bar)
                    if scr_mouse_inside(((camx + slider_startx) - offset_slider), (camy + starty), (s_w + (offset_slider * 2)), button_h)
                    {
                        option_var[(4 << 0)][(0 << 0)] = (((mouse_x - camx) - slider_startx) / s_w)
                        option_var[(4 << 0)][(0 << 0)] = clamp(option_var[(4 << 0)][(0 << 0)], 0, 1)
                    }
                }
                if mouse_check_button(mb_left)
                {
                    s_w = sprite_get_width(s_hud_slider_bar)
                    if scr_mouse_inside(((camx + slider_startx) - offset_slider), ((camy + starty) + button_h_sep), (s_w + (offset_slider * 2)), button_h)
                    {
                        option_var[(4 << 0)][(1 << 0)] = (((mouse_x - camx) - slider_startx) / s_w)
                        option_var[(4 << 0)][(1 << 0)] = clamp(option_var[(4 << 0)][(1 << 0)], 0, 1)
                    }
                }
                if mouse_check_button(mb_left)
                {
                    s_w = sprite_get_width(s_hud_slider_bar)
                    if scr_mouse_inside(((camx + slider_startx) - offset_slider), ((camy + starty) + (button_h_sep * 2)), (s_w + (offset_slider * 2)), button_h)
                    {
                        option_var[(4 << 0)][(2 << 0)] = (((mouse_x - camx) - slider_startx) / s_w)
                        option_var[(4 << 0)][(2 << 0)] = clamp(option_var[(4 << 0)][(2 << 0)], 0, 1)
                    }
                }
                if mouse_check_button(mb_left)
                {
                    s_w = sprite_get_width(s_hud_slider_bar)
                    if scr_mouse_inside(((camx + slider_startx) - offset_slider), ((camy + starty) + (button_h_sep * 3)), (s_w + (offset_slider * 2)), button_h)
                    {
                        option_var[(4 << 0)][(3 << 0)] = (((mouse_x - camx) - slider_startx) / s_w)
                        option_var[(4 << 0)][(3 << 0)] = clamp(option_var[(4 << 0)][(3 << 0)], 0, 1)
                    }
                }
            }
        }
        if (page_state == (7 << 0))
        {
            global.toggle_sprint = option_var[(7 << 0)][(0 << 0)]
            global.bunker_animation = option_var[(7 << 0)][(1 << 0)]
            global.hud_item_overlay = option_var[(7 << 0)][(2 << 0)]
            if mouse_check_button_pressed(mb_left)
            {
                for (i = 0; i < n_option; i++)
                {
                    if (option_type[page_state][i] == (2 << 0))
                    {
                        if scr_mouse_inside((camx + on_x), ((camy + starty) + (button_h_sep * i)), on_w, button_h)
                            option_var[(7 << 0)][i] = true
                        if scr_mouse_inside(((camx + on_x) + on_w), ((camy + starty) + (button_h_sep * i)), on_w, button_h)
                            option_var[(7 << 0)][i] = false
                    }
                }
            }
            if mouse_check_button_pressed(mb_left)
                can_slide = 1
            if mouse_check_button_released(mb_left)
            {
                can_slide = 0
                s_w = sprite_get_width(s_hud_slider_bar)
            }
            if (can_slide == 1)
            {
                if mouse_check_button(mb_left)
                {
                    s_w = sprite_get_width(s_hud_slider_bar)
                    if scr_mouse_inside(((camx + slider_startx) - offset_slider), ((camy + starty) + (button_h_sep * 2)), (s_w + (offset_slider * 2)), button_h)
                    {
                        option_var[(7 << 0)][(2 << 0)] = (((mouse_x - camx) - slider_startx) / s_w)
                        option_var[(7 << 0)][(2 << 0)] = clamp(option_var[(7 << 0)][(2 << 0)], 0, 1)
                    }
                }
            }
        }
        if (page_state == (6 << 0))
        {
            global.erba_dinamica = option_var[(6 << 0)][(1 << 0)]
            global.erba_amount = option_var[(6 << 0)][(0 << 0)]
            global.fog_rain = option_var[(6 << 0)][(2 << 0)]
            global.low_spec = option_var[(6 << 0)][(3 << 0)]
            global.fullscreen = option_var[(6 << 0)][(4 << 0)]
            global.fog_enable = option_var[(6 << 0)][(5 << 0)]
            global.fog_alpha = option_var[(6 << 0)][(6 << 0)]
            if mouse_check_button_pressed(mb_left)
            {
                for (i = 0; i < n_option; i++)
                {
                    if (option_type[page_state][i] == (2 << 0))
                    {
                        if scr_mouse_inside((camx + on_x), ((camy + starty) + (button_h_sep * i)), on_w, button_h)
                            option_var[(6 << 0)][i] = 1
                        if scr_mouse_inside(((camx + on_x) + on_w), ((camy + starty) + (button_h_sep * i)), on_w, button_h)
                            option_var[(6 << 0)][i] = 0
                    }
                }
            }
            if mouse_check_button_pressed(mb_left)
                can_slide = 1
            if mouse_check_button_released(mb_left)
            {
                can_slide = 0
                s_w = sprite_get_width(s_hud_slider_bar)
                if scr_mouse_inside(((camx + slider_startx) - offset_slider), (camy + starty), (s_w + (offset_slider * 2)), button_h)
                    scr_draw_text_with_box("This change will be applied only to the next run.")
            }
            if (can_slide == 1)
            {
                if mouse_check_button(mb_left)
                {
                    s_w = sprite_get_width(s_hud_slider_bar)
                    if scr_mouse_inside(((camx + slider_startx) - offset_slider), (camy + starty), (s_w + (offset_slider * 2)), button_h)
                    {
                        option_var[(6 << 0)][(0 << 0)] = (((mouse_x - camx) - slider_startx) / s_w)
                        option_var[(6 << 0)][(0 << 0)] = clamp(option_var[(6 << 0)][(0 << 0)], 0, 1)
                    }
                    if scr_mouse_inside(((camx + slider_startx) - offset_slider), ((camy + starty) + (button_h_sep * 6)), (s_w + (offset_slider * 2)), button_h)
                    {
                        option_var[(6 << 0)][(6 << 0)] = (((mouse_x - camx) - slider_startx) / s_w)
                        option_var[(6 << 0)][(6 << 0)] = clamp(option_var[(6 << 0)][(6 << 0)], 0, 1)
                    }
                }
            }
        }
        if (page_state == (14 << 0))
        {
            global.ga_collect_data = option_var[(14 << 0)][(0 << 0)]
            if mouse_check_button_pressed(mb_left)
            {
                for (i = 0; i < n_option; i++)
                {
                    if (option_type[page_state][i] == (2 << 0))
                    {
                        if scr_mouse_inside((camx + on_x), ((camy + starty) + (button_h_sep * i)), on_w, button_h)
                        {
                            option_var[(14 << 0)][i] = 1
                            if (i == (0 << 0))
                                scr_draw_text_with_box("In order for this change to be effective, the game must be restarted.")
                            global.ga_collect_data = 1
                            ini_open("settings.ini")
                            ini_write_real("Game analytics", "collect_data", global.ga_collect_data)
                            ini_close()
                            ga_onResume()
                            ga_setEnabledEventSubmission(1)
                        }
                        if scr_mouse_inside(((camx + on_x) + on_w), ((camy + starty) + (button_h_sep * i)), on_w, button_h)
                        {
                            option_var[(14 << 0)][i] = 0
                            if (i == (0 << 0))
                                scr_draw_text_with_box("The game will no longer collect game data")
                            global.ga_collect_data = 0
                            ini_open("settings.ini")
                            ini_write_real("Game analytics", "collect_data", global.ga_collect_data)
                            ini_close()
                            ga_onStop()
                            ga_setEnabledEventSubmission(0)
                        }
                    }
                }
            }
        }
        if (page_state == (2 << 0))
        {
            if keyboard_check_pressed(vk_escape)
            {
                if instance_exists(obj_main_menu)
                {
                    with (obj_main_menu)
                        instance_destroy()
                }
                audio_resume_all()
                if (room == r_hub)
                    instance_activate_all()
                instance_activate_region((x - 480), (y - 270), 960, 540, true)
                obj_controller.can_pause = 0
            }
        }
        if (page_state == (5 << 0))
        {
            var ww = keyb_w
            var hh = keyb_h
            var _wait_next_step = 0
            if (wait_input == 1)
            {
                _wait_next_step = 1
                var _key_is_pressed = 0
                var _key_pressed = -4
                if keyboard_check_pressed(vk_anykey)
                    _key_pressed = keyboard_key
                if mouse_check_button_pressed(mb_any)
                    _key_pressed = mouse_lastbutton
                if (_key_pressed != -4)
                {
                    var t = scr_key_map(_key_pressed)
                    var valid_key = 1
                    var _key_no_mouse = 0
                    var already_key = 0
                    if (t == "Error")
                        valid_key = 0
                    if (global.kb_accept_mouse[key_selected] == 0)
                    {
                        if mouse_check_button_pressed(mb_any)
                        {
                            valid_key = 0
                            _key_no_mouse = 1
                        }
                    }
                    for (i = 0; i < array_length_1d(global.kb_id); i++)
                    {
                        if (global.kb_now[i] == _key_pressed)
                            already_key = 1
                    }
                    if (valid_key == 1 && already_key == 0)
                    {
                        global.kb_now[key_selected] = _key_pressed
                        wait_input = 0
                        scr_draw_text_with_box("Key set")
                    }
                    if (valid_key == 0)
                    {
                        scr_draw_text_with_box("Invalid key")
                        wait_input = 0
                    }
                    if (already_key == 1)
                    {
                        scr_draw_text_with_box("Key already used")
                        wait_input = 0
                    }
                    if (_key_no_mouse == 1)
                    {
                        wait_input = 0
                        scr_draw_text_with_box("This key doesn't accept a mouse button")
                    }
                }
            }
            if (mouse_check_button_pressed(mb_left) && wait_input == 0 && _wait_next_step == 0)
            {
                for (i = 0; i < array_length_1d(global.kb_id); i++)
                {
                    var _tx = keyb_t_startx
                    var _bx = keyb_k_startx
                    var sy = keyb_starty
                    var sep = keyb_sep
                    if (i > keyb_n_fila)
                    {
                        _tx = (keyb_t_startx + keyb_offset_w)
                        _bx = (keyb_k_startx + keyb_offset_w)
                        sy = (keyb_starty - ((keyb_n_fila + 1) * sep))
                    }
                    if scr_mouse_inside(((camx + _bx) - (ww / 2)), (((camy + sy) - 1) + (i * keyb_sep)), ww, hh)
                    {
                        scr_draw_text_with_box("Waiting for input...")
                        wait_input = 1
                        key_selected = i
                    }
                }
            }
        }
        if (state_sure == 1)
        {
            but_pressed = 0
            option_selected = -1
            var _selected = 0
            sure_hover = 0
            var _yx = (sure_yes_x - (sure_w / 2))
            var _yy = (sure_yes_y - (sure_h / 2))
            if scr_mouse_inside((_yx + camx), (_yy + camy), sure_w, sure_h)
            {
                sure_hover = 1
                if mouse_check_button_released(mb_left)
                    _selected = 1
            }
            var _nx = (sure_no_x - (sure_w / 2))
            var _ny = (sure_no_y - (sure_h / 2))
            if scr_mouse_inside((_nx + camx), (_ny + camy), sure_w, sure_h)
            {
                sure_hover = 2
                if mouse_check_button_released(mb_left)
                    _selected = 2
            }
            if keyboard_check_pressed(ord("N"))
                _selected = 2
            if keyboard_check_pressed(ord("Y"))
                _selected = 1
            if (_selected == 2)
                state_sure = 0
            if (_selected == 1)
            {
                scr_save_or_load(0)
                audio_stop_all()
                room_goto(r_menu)
            }
        }
        if (but_pressed == 1 && can_press == 1 && state_sure == 0)
        {
            can_press = 0
            alarm[0] = 10
            switch page_state
            {
                case (0 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            page_state = (1 << 0)
                            break
                        case (1 << 0):
                            page_state = (10 << 0)
                            break
                        case (2 << 0):
                            page_state = (12 << 0)
                            break
                        case (3 << 0):
                            page_state = (3 << 0)
                            break
                        case (4 << 0):
                            url_open("https://discord.gg/4HPNUpWVU9")
                            break
                        case (5 << 0):
                            page_state = (14 << 0)
                            option_var[(14 << 0)][(0 << 0)] = global.ga_collect_data
                            break
                        case (6 << 0):
                            page_state = (15 << 0)
                            credits_movement = 0
                            alarm[2] = 120
                            break
                        case (7 << 0):
                            game_end()
                            break
                    }

                    break
                case (3 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            page_state = (4 << 0)
                            break
                        case (1 << 0):
                            page_state = (7 << 0)
                            break
                        case (2 << 0):
                            page_state = (6 << 0)
                            break
                        case (3 << 0):
                            page_state = (8 << 0)
                            break
                        case (4 << 0):
                            page_state = (5 << 0)
                            break
                        case (5 << 0):
                            if (room == r_menu)
                                page_state = (0 << 0)
                            else
                                page_state = (2 << 0)
                            break
                    }

                    break
                case (1 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            global.slot_selected = 1
                            break
                        case (1 << 0):
                            global.slot_selected = 2
                            break
                        case (2 << 0):
                            global.slot_selected = 3
                            break
                        case (3 << 0):
                            page_state = (11 << 0)
                            break
                        case (4 << 0):
                            page_state = (0 << 0)
                            break
                    }

                    break
                case (10 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            global.slot_selected = 1
                            if file_exists((("save_" + string(global.slot_selected)) + ".ini"))
                            {
                                scr_aggiorna_save_slot()
                                room_goto(r_hub)
                            }
                            else
                                scr_draw_text_with_box("No file found")
                            break
                        case (1 << 0):
                            global.slot_selected = 2
                            if file_exists((("save_" + string(global.slot_selected)) + ".ini"))
                            {
                                scr_aggiorna_save_slot()
                                room_goto(r_hub)
                            }
                            else
                                scr_draw_text_with_box("No file found")
                            break
                        case (2 << 0):
                            global.slot_selected = 3
                            if file_exists((("save_" + string(global.slot_selected)) + ".ini"))
                            {
                                scr_aggiorna_save_slot()
                                room_goto(r_hub)
                            }
                            else
                                scr_draw_text_with_box("No file found")
                            break
                        case (3 << 0):
                            page_state = (0 << 0)
                            break
                    }

                    break
                case (9 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            class_selected = (0 << 0)
                            break
                        case (1 << 0):
                            class_selected = (1 << 0)
                            break
                        case (2 << 0):
                            class_selected = (2 << 0)
                            break
                        case (3 << 0):
                            if (class_selected != -1)
                            {
                                file_delete((("save_" + string(global.slot_selected)) + ".ini"))
                                file_delete((("save_general_" + string(global.slot_selected)) + ".ini"))
                                file_delete((("save_player_chest_" + string(global.slot_selected)) + ".ini"))
                                file_delete((("save_hub_" + string(global.slot_selected)) + ".ini"))
                                scr_aggiorna_save_slot()
                                ini_open((("save_" + string(global.slot_selected)) + ".ini"))
                                ini_write_real("Class", "Class_id", class_selected)
                                ini_write_real("Main", "new game", 1)
                                ini_close()
                                room_goto(r_hub)
                            }
                            break
                        case (4 << 0):
                            page_state = (1 << 0)
                            break
                    }

                    break
                case (2 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            if instance_exists(obj_main_menu)
                            {
                                with (obj_main_menu)
                                    instance_destroy()
                            }
                            audio_resume_all()
                            instance_activate_region((x - 480), (y - 270), 960, 540, true)
                            if (room == r_hub)
                                instance_activate_all()
                            obj_controller.can_pause = 0
                            break
                        case (1 << 0):
                            page_state = (3 << 0)
                            break
                        case (2 << 0):
                            page_state = (12 << 0)
                            break
                        case (3 << 0):
                            url_open("https://discord.gg/4HPNUpWVU9")
                            break
                        case (4 << 0):
                            state_sure = 1
                            break
                    }

                    break
                case (16 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            scr_open_url("https://discord.gg/YxsVGAhcyf")
                            break
                        case (1 << 0):
                            scr_open_url("https://store.steampowered.com/app/1782120/ZERO_Sievert/")
                            break
                        case (2 << 0):
                            scr_open_url("https://www.kickstarter.com/projects/1886143857/zero-sievert")
                            break
                        case (3 << 0):
                            if (room == r_menu)
                                page_state = (0 << 0)
                            else
                                page_state = (2 << 0)
                            break
                    }

                    break
                case (5 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            ini_open("settings.ini")
                            for (i = 0; i < array_length_1d(global.kb_id); i++)
                            {
                                global.kb_now[i] = global.kb_default[i]
                                ini_write_real("Keybinding", global.kb_name[i], global.kb_default[i])
                            }
                            ini_close()
                            break
                        case (1 << 0):
                            ini_open("settings.ini")
                            for (i = 0; i < array_length_1d(global.kb_id); i++)
                                ini_write_real("Keybinding", global.kb_name[i], global.kb_now[i])
                            ini_close()
                            page_state = (3 << 0)
                            break
                    }

                    break
                case (4 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            break
                        case (1 << 0):
                            break
                        case (2 << 0):
                            break
                        case (4 << 0):
                            if (but_pressed == 1)
                            {
                                page_state = (3 << 0)
                                ini_open("settings.ini")
                                ini_write_real("settings", "master volume", global.volume_master)
                                ini_write_real("settings", "radiation volume", global.volume_radiation)
                                ini_write_real("settings", "heart volume", global.volume_heart)
                                ini_write_real("settings", "main volume", global.volume_main_menu)
                                ini_close()
                                audio_group_set_gain(3, global.volume_radiation, 1)
                                audio_group_set_gain(13, global.volume_heart, 1)
                                audio_group_set_gain(14, global.volume_main_menu, 1)
                                audio_master_gain(global.volume_master)
                            }
                            break
                        default:

                    }

                    break
                case (6 << 0):
                    switch option_selected
                    {
                        case (7 << 0):
                            page_state = (3 << 0)
                            if (global.erba_amount < 0.12)
                                global.erba_amount = 0
                            ini_open("settings.ini")
                            ini_write_real("settings", "fog rain", global.fog_rain)
                            ini_write_real("settings", "dynamic grass", global.erba_dinamica)
                            ini_write_real("settings", "amount grass", global.erba_amount)
                            ini_write_real("settings", "low spec", global.low_spec)
                            ini_write_real("settings", "fullscreen", global.fullscreen)
                            ini_write_real("settings", "fog of war", global.fog_enable)
                            ini_write_real("settings", "fog of war alpha", global.fog_alpha)
                            ini_close()
                            window_set_fullscreen(global.fullscreen)
                            break
                    }

                    break
                case (7 << 0):
                    switch option_selected
                    {
                        case (3 << 0):
                            page_state = (3 << 0)
                            ini_open("settings.ini")
                            ini_write_real("settings", "bunker_animation", global.bunker_animation)
                            ini_write_real("settings", "toggle_sprint", global.toggle_sprint)
                            ini_write_real("settings", "item_overlay", global.hud_item_overlay)
                            ini_close()
                            break
                    }

                    break
                case (8 << 0):
                    switch option_selected
                    {
                        case (3 << 0):
                            page_state = (3 << 0)
                            ini_open("settings.ini")
                            ini_write_real("resolution", "resolution", global.resolution)
                            ini_close()
                            if (!window_get_fullscreen())
                                window_center()
                            break
                        case (0 << 0):
                            window_set_size(1280, 720)
                            global.resolution = (0 << 0)
                            break
                        case (1 << 0):
                            window_set_size(1920, 1080)
                            global.resolution = (1 << 0)
                            break
                        case (2 << 0):
                            window_set_size(2560, 1440)
                            global.resolution = (2 << 0)
                            break
                    }

                    break
                case (12 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            page_state = (13 << 0)
                            tutorial_page = (0 << 0)
                            tutorial_sub_page = 0
                            break
                        case (1 << 0):
                            page_state = (13 << 0)
                            tutorial_page = (1 << 0)
                            tutorial_sub_page = 0
                            break
                        case (4 << 0):
                            page_state = (13 << 0)
                            tutorial_page = (4 << 0)
                            tutorial_sub_page = 0
                            break
                        case (2 << 0):
                            page_state = (13 << 0)
                            tutorial_page = (2 << 0)
                            tutorial_sub_page = 0
                            break
                        case (5 << 0):
                            page_state = (13 << 0)
                            tutorial_page = (5 << 0)
                            tutorial_sub_page = 0
                            break
                        case (3 << 0):
                            page_state = (13 << 0)
                            tutorial_page = (3 << 0)
                            tutorial_sub_page = 0
                            break
                        case (6 << 0):
                            if (room == r_menu)
                                page_state = (0 << 0)
                            else
                                page_state = (2 << 0)
                            break
                    }

                    break
                case (13 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            page_state = (12 << 0)
                            break
                    }

                    break
                case (14 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            break
                        case (1 << 0):
                            url_open("https://modernwolf.net/media/Developers/CaboStudio/Privacy%20Notice_%20Zero%20Sievert.pdf")
                            break
                        case (2 << 0):
                            if (room == r_menu)
                            {
                                page_state = (0 << 0)
                                ini_open("settings.ini")
                                ini_write_real("Game analytics", "collect_data", global.ga_collect_data)
                                ini_close()
                            }
                            else
                                page_state = (2 << 0)
                            break
                        default:

                    }

                    break
                case (15 << 0):
                    switch option_selected
                    {
                        case (0 << 0):
                            page_state = (0 << 0)
                            break
                    }

                    break
            }

        }
    }
    if (page_state == (13 << 0))
    {
        if mouse_check_button_pressed(mb_left)
        {
            var _w = tut_page_next_w
            var _sprite_w = 10
            var _off = ((tut_page_next_w - _sprite_w) / 2)
            if scr_mouse_inside(((camx + tut_page_previous_x) - _off), ((camy + tut_page_next_y) - _off), _w, _w)
                tutorial_sub_page -= 1
            if scr_mouse_inside(((camx + tut_page_next_x) - _off), ((camy + tut_page_next_y) - _off), _w, _w)
                tutorial_sub_page += 1
            var _max = array_length_2d(tut_image, tutorial_page)
            tutorial_sub_page = clamp(tutorial_sub_page, 0, (_max - 1))
        }
    }
    if (page_state == (11 << 0))
    {
        global.trait_hover = -1
        for (i = 0; i < array_length_1d(global.trait_id); i++)
        {
            if scr_mouse_inside((camx + global.trait_sx), ((camy + global.trait_sy) + (global.trait_h * i)), global.trait_w, global.trait_h)
                global.trait_hover = i
        }
        if mouse_check_button_pressed(mb_left)
        {
            if (global.trait_hover != -1)
            {
                global.trait_selected = global.trait_hover
                with (obj_item)
                    instance_destroy()
                var grid_x = 240
                var grid_y = global.trait_sy
                var grid_w = 12
                var grid_h = 5
                var grid_item_ = ds_grid_create(grid_w, grid_h)
                ds_grid_clear(grid_item_, 0)
                for (i = 0; i < array_length_2d(global.arr_trait_item_id, global.trait_selected); i++)
                {
                    var id_item = global.arr_trait_item_id[global.trait_selected][i]
                    var placed = 0
                    var necessario_w = (sprite_get_width(item_sprite_inv[id_item]) div 16)
                    var necessario_h = (sprite_get_height(item_sprite_inv[id_item]) div 16)
                    for (var yy = 0; yy < grid_h; yy++)
                    {
                        for (var xx = 0; xx < grid_w; xx++)
                        {
                            if (ds_grid_get(grid_item_, xx, yy) == 0)
                            {
                                if (placed == 0)
                                {
                                    var can_place = 1
                                    if ((xx + necessario_w) > grid_w)
                                        can_place = 0
                                    if ((yy + necessario_h) > grid_h)
                                        can_place = 0
                                    for (var ix = 0; ix < necessario_w; ix++)
                                    {
                                        for (var iy = 0; iy < necessario_h; iy++)
                                        {
                                            if (ds_grid_get(grid_item_, (xx + ix), (yy + iy)) == 1)
                                                can_place = 0
                                        }
                                    }
                                    if (can_place == 1)
                                    {
                                        for (ix = 0; ix < necessario_w; ix++)
                                        {
                                            for (iy = 0; iy < necessario_h; iy++)
                                                ds_grid_set(grid_item_, (xx + ix), (yy + iy), 1)
                                        }
                                        var objx = ((camx + grid_x) + (xx * 16))
                                        var objy = ((camy + grid_y) + (yy * 16))
                                        var oggetto = instance_create_depth(objx, objy, -8000, obj_item)
                                        oggetto.my_id = id_item
                                        oggetto.qnt = global.arr_trait_item_qnt[global.trait_selected][i]
                                        oggetto.my_x = (xx * 16)
                                        oggetto.my_y = (yy * 16)
                                        oggetto.sprite_index = item_sprite_inv[id_item]
                                        placed = 1
                                    }
                                }
                            }
                        }
                    }
                }
                ds_grid_destroy(grid_item_)
            }
        }
        global.hardcore_hover = -1
        for (i = 0; i < array_length_1d(global.trait_id); i++)
        {
            if scr_mouse_inside((camx + global.hardcore_x), (camy + global.hardcore_y), global.hardcore_w, global.hardcore_h)
                global.hardcore_hover = 1
        }
        if mouse_check_button_pressed(mb_left)
        {
            if (global.hardcore_hover == 1)
                scr_draw_text_with_box("In Development")
        }
        if mouse_check_button_pressed(mb_left)
        {
            if scr_mouse_inside((camx + global.trait_go_x), (camy + global.trait_go_y), global.trait_go_w, global.trait_go_h)
            {
                if (global.trait_selected != -1)
                {
                    file_delete((("save_" + string(global.slot_selected)) + ".ini"))
                    file_delete((("save_general_" + string(global.slot_selected)) + ".ini"))
                    file_delete((("save_player_chest_" + string(global.slot_selected)) + ".ini"))
                    file_delete((("save_hub_" + string(global.slot_selected)) + ".ini"))
                    scr_aggiorna_save_slot()
                    ini_open((("save_" + string(global.slot_selected)) + ".ini"))
                    ini_write_real("trait", "id", global.trait_selected)
                    ini_write_real("Main", "new game", 1)
                    ini_close()
                    var _equipment = string(global.trait_selected)
                    ga_addDesignEvent(("StartingEquipment:" + _equipment))
                    room_goto(r_hub)
                }
            }
            if scr_mouse_inside((camx + global.trait_go_x), ((camy + global.trait_go_y) + global.trait_go_h), global.trait_go_w, global.trait_go_h)
            {
                page_state = (1 << 0)
                with (obj_item)
                    instance_destroy()
            }
        }
    }
    if (page_state == (15 << 0))
    {
        if (credits_movement == 1)
            credits_y -= credits_speed
        var _reset = 0
        if mouse_wheel_up()
        {
            credits_y += (credits_jump * 2)
            _reset = 1
        }
        if mouse_wheel_down()
        {
            credits_y -= (credits_jump * 2)
            _reset = 1
        }
        if keyboard_check(vk_up)
        {
            credits_y += credits_jump
            _reset = 1
        }
        if keyboard_check(vk_down)
        {
            credits_y -= credits_jump
            _reset = 1
        }
        credits_y = clamp(credits_y, ((-s_credits_h) + 270), 0)
        if (_reset == 1)
        {
            credits_movement = 0
            alarm[2] = 90
        }
    }
    if (page_state_before != page_state)
        can_slide = 0
    page_state_before = page_state
    if (keyboard_check_pressed(vk_f5) && keyboard_check(vk_control))
    {
        global.slot_selected = 1
        room_goto(test_room)
    }
}
else
{
    var _x = new_version_close_x
    var _y = new_version_close_y
    _w = new_version_close_w
    if scr_mouse_inside((camx + _x), (camy + _y), _w, _w)
    {
        if mouse_check_button_pressed(mb_left)
        {
            if (new_version == 1)
                new_version = 0
        }
    }
    if (global.ga_pop_up == 1)
    {
        ga_pop_up_hover = 0
        var _xx = (ga_pop_up_yes_x - (ga_pop_up_w / 2))
        _yy = (ga_pop_up_yes_y - (ga_pop_up_h / 2))
        if scr_mouse_inside((camx + _xx), (camy + _yy), ga_pop_up_w, ga_pop_up_h)
        {
            ga_pop_up_hover = 1
            if mouse_check_button_released(mb_left)
            {
                global.ga_pop_up = 0
                ini_open("settings.ini")
                ini_write_real("Game analytics", "pop_up", 0)
                ini_close()
                global.ga_collect_data = 1
                ini_open("settings.ini")
                ini_write_real("Game analytics", "collect_data", global.ga_collect_data)
                ini_close()
                ga_onResume()
                ga_setEnabledEventSubmission(1)
            }
        }
        _xx = (ga_pop_up_no_x - (ga_pop_up_w / 2))
        _yy = (ga_pop_up_no_y - (ga_pop_up_h / 2))
        if scr_mouse_inside((camx + _xx), (camy + _yy), ga_pop_up_w, ga_pop_up_h)
        {
            ga_pop_up_hover = 2
            if mouse_check_button_released(mb_left)
            {
                global.ga_pop_up = 0
                ini_open("settings.ini")
                ini_write_real("Game analytics", "pop_up", 0)
                ini_close()
                global.ga_collect_data = 0
                ini_open("settings.ini")
                ini_write_real("Game analytics", "collect_data", 0)
                ini_close()
                ga_setEnabledEventSubmission(0)
                ga_onStop()
            }
        }
        var _lx = (ga_link1_x - (ga_link_w / 2))
        var _ly = (ga_link1_y - (ga_link_h / 2))
        if scr_mouse_inside((camx + _lx), (camy + _ly), ga_link_w, ga_link_h)
        {
            if mouse_check_button_released(mb_left)
                url_open("https://modernwolf.net/media/Developers/CaboStudio/Privacy%20Notice_%20Zero%20Sievert.pdf")
        }
        _lx = (ga_link2_x - (ga_link_w / 2))
        _ly = (ga_link2_y - (ga_link_h / 2))
        if scr_mouse_inside((camx + _lx), (camy + _ly), ga_link_w, ga_link_h)
        {
            if mouse_check_button_released(mb_left)
                url_open("https://gameanalytics.com/privacy/")
        }
    }
}
