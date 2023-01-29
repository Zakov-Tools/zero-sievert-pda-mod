function scr_player_map() //gml_Script_scr_player_map
{
    if global.kb_pressed[(11 << 0)]
    {
        state = gml_Script_scr_player_state_move
        if instance_exists(obj_hud_minimap_menu)
        {
            with (obj_hud_minimap_menu)
                instance_destroy()
        }
    }
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
        if instance_exists(obj_hud_minimap_menu)
            instance_destroy(obj_hud_minimap_menu)
    }
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_state_move
        obj_controller.can_pause = 0
        audio_play_sound(snd_ui_pda_back, 10, false)
        if instance_exists(obj_hud_minimap_menu)
            instance_destroy(obj_hud_minimap_menu)
    }
    var oo = obj_controller
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + oo.pda_icon_back_x), (camy + oo.pda_icon_back_y), oo.pda_icon_back_w, oo.pda_icon_back_h)
        {
            state = gml_Script_scr_player_state_pda
            audio_play_sound(snd_ui_pda_back, 10, false)
            oo.pda_loading_now = oo.pda_loading_max
            oo.pda_map_mouse_press = 0
        }
    }
    if (!instance_exists(obj_hud_minimap_menu))
    {
        if (oo.pda_loading_map_now >= (oo.pda_loading_map_max + 10))
        {
            if scr_mouse_inside((camx + 57), (camy + 37), 331, 179)
            {
                if mouse_check_button_pressed(mb_left)
                {
                    global.mouse_pressed_x = mouse_x
                    global.mouse_pressed_y = mouse_y
                    oo.pda_map_mouse_press = 1
                }
                if (mouse_check_button(mb_left) && oo.pda_map_mouse_press == 1)
                {
                    global.minimap_off_x = ((global.minimap_start_off_x + mouse_x) - global.mouse_pressed_x)
                    global.minimap_off_y = ((global.minimap_start_off_y + mouse_y) - global.mouse_pressed_y)
                    global.minimap_off_x = clamp(global.minimap_off_x, -150, 150)
                    global.minimap_off_y = clamp(global.minimap_off_y, -160, 70)
                }
                if mouse_check_button_released(mb_left)
                {
                    if (oo.pda_map_mouse_press == 1)
                    {
                        global.minimap_start_off_x = global.minimap_off_x
                        global.minimap_start_off_y = global.minimap_off_y
                        oo.pda_map_mouse_press = 0
                    }
                }
            }
        }
    }
    if mouse_check_button_pressed(mb_right)
    {
        if scr_mouse_inside((camx + 57), (camy + 37), 331, 179)
        {
            if instance_exists(obj_hud_minimap_menu)
                instance_destroy(obj_hud_minimap_menu)
            else
            {
                var sw = sprite_get_width(s_hud_minimap_menu)
                var sh = (sprite_get_height(s_hud_minimap_menu) * 2)
                var xx = (mouse_x + 8)
                var yy = mouse_y
                if (((mouse_x + sw) + 8) > (camx + 480))
                    xx = ((mouse_x - sw) - 8)
                if (((mouse_y + sh) + 8) > (camy + 270))
                    yy = ((mouse_y - sh) - 8)
                var aa = instance_create_depth(xx, yy, -9999, obj_hud_minimap_menu)
                aa.marker_x = mouse_x
                aa.marker_y = mouse_y
            }
        }
    }
    return;
}

