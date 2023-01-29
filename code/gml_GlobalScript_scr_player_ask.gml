function scr_player_ask() //gml_Script_scr_player_ask
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.npc_speaker_id[speak_nearest.npc_id]
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_talk
        audio_play_sound(snd_ui_click_text_npc, 9, false)
        obj_controller.can_pause = 0
    }
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + 24), (camy + 72), 96, 12)
        {
            state = gml_Script_scr_player_talk
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        var quanti_text = array_length_2d(speak_nearest.question, speaker_id_)
        for (var i = 0; i < quanti_text; i++)
        {
            if scr_mouse_inside((camx + 24), ((camy + 72) + ((i + 1) * 12)), 96, 12)
            {
                global.which_question = i
                state = gml_Script_scr_player_show_answer
                audio_play_sound(snd_ui_click_text_npc, 9, false)
                if (speaker_id_ == (27 << 0))
                    global.az_done[(5 << 0)] = 1
            }
        }
    }
    return;
}

