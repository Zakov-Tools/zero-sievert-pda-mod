function scr_player_show_text_custom() //gml_Script_scr_player_show_text_custom
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.npc_speaker_id[speak_nearest.npc_id]
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_talk
        scr_barra_testo_reset_offset()
        audio_play_sound(snd_ui_click_text_npc, 9, false)
        obj_controller.can_pause = 0
    }
    var a = global.text_custom_index
    global.dialogue_type_text_hover[a] = -1
    for (var i = 0; i < array_length_2d(global.dialogue_type_text_x, global.text_custom_index); i++)
    {
        var _bw = global.dialogue_type_text_w[a][i]
        var _bh = global.dialogue_type_text_h[a][i]
        var _sx = ((camx + global.dialogue_type_text_x[a][i]) - (_bw / 2))
        var _sy = ((camy + global.dialogue_type_text_y[a][i]) - (_bh / 2))
        if scr_mouse_inside(_sx, _sy, _bw, _bh)
            global.dialogue_type_text_hover[a] = i
    }
    if mouse_check_button_released(mb_left)
    {
        if (global.dialogue_type_text_hover[a] != -1)
        {
            audio_play_sound(snd_ui_click_text_npc, 9, false)
            switch global.text_custom_index
            {
                case (11 << 0):
                    if (global.dialogue_type_text_hover[a] == 1)
                    {
                        state = gml_Script_scr_player_talk
                        scr_barra_testo_reset_offset()
                    }
                    if (global.dialogue_type_text_hover[a] == 0)
                    {
                        global.az_done[(13 << 0)] = 1
                        state = gml_Script_scr_player_state_move
                        scr_draw_text_with_box("You accepted the proposal")
                        if instance_exists(obj_leader_faction1)
                        {
                            with (obj_leader_faction1)
                                lista_text()
                        }
                    }
                    break
            }

        }
    }
    return;
}

