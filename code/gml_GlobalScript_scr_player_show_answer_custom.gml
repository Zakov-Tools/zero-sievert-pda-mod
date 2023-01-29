function scr_player_show_answer_custom() //gml_Script_scr_player_show_answer_custom
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
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + 24), (camy + 72), 96, 12)
        {
            state = gml_Script_scr_player_talk
            scr_barra_testo_reset_offset()
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
    }
    scr_barra_testo_step(0, global.text_custom_question)
    return;
}

