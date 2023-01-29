function scr_player_talk() //gml_Script_scr_player_talk
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.npc_id
    var speaker_enum_id = speak_nearest.npc_speaker_id[speaker_id_]
    if keyboard_check_pressed(vk_escape)
    {
        obj_controller.can_pause = 0
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_click_text_npc, 9, false)
    }
    if mouse_check_button_pressed(mb_left)
    {
        var _n_opzioni = array_length_2d(speak_nearest.text, speaker_enum_id)
        var _opzione_selezionata = -1
        for (var i = 0; i < _n_opzioni; i++)
        {
            if scr_mouse_inside((camx + 24), ((camy + 72) + (i * 12)), 96, 12)
                _opzione_selezionata = i
        }
        if (_opzione_selezionata != -1)
        {
            var _dia_tipo = speak_nearest.dia_type[speaker_enum_id][_opzione_selezionata]
            switch _dia_tipo
            {
                case (0 << 0):
                    state = gml_Script_scr_player_state_move
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (1 << 0):
                    state = gml_Script_scr_player_ask
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (2 << 0):
                    state = gml_Script_scr_player_quest_list
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (3 << 0):
                    if (speak_nearest.npc_trader_id[speaker_id_] != (0 << 0))
                    {
                        var _can_trade = 1
                        if (speaker_id_ == (63 << 0))
                        {
                            if (global.quest_unique_done[(172 << 0)] == 0)
                            {
                                _can_trade = 0
                                with (obj_junk_trader)
                                {
                                    obj_player.state = gml_Script_scr_player_state_move
                                    scr_draw_npc_text(id, (84 << 0))
                                }
                            }
                        }
                        if (_can_trade == 1)
                        {
                            trading = 1
                            looting = 0
                            global.page_trader = 0
                            if (room == r_hub)
                                global.speaker_nearest.money_trader = global.trader_money_all
                            scr_open_inventory()
                            scr_load_trader_item()
                            state = gml_Script_scr_player_state_inventory
                            audio_play_sound(snd_ui_click_text_npc, 9, false)
                        }
                    }
                    break
                case (6 << 0):
                    state = gml_Script_scr_player_repair_equipment
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (7 << 0):
                    state = gml_Script_scr_player_heal_me
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (8 << 0):
                    obj_player.state = gml_Script_scr_player_state_choose_map
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
                case (9 << 0):
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    var prezzo = 5000
                    if (global.cc_enter_paid == 0)
                    {
                        if (global.player_money >= prezzo)
                        {
                            global.player_money -= prezzo
                            global.cc_enter_paid = 1
                            with (obj_solid_crismon_base_ingresso)
                                instance_destroy()
                            state = gml_Script_scr_player_state_move
                            scr_draw_text_with_box("You can now enter the base")
                        }
                        else
                            scr_draw_text_with_box("You don't have enough Roubles")
                    }
                    else
                        scr_draw_text_with_box("You have already paid")
                    break
                case (4 << 0):
                    scr_draw_text_with_box("in development")
                    break
                case (5 << 0):
                    scr_draw_text_with_box("in development")
                    break
                case (10 << 0):
                    global.text_custom_question = obj_controller.dia_type_answer[speaker_enum_id][_opzione_selezionata]
                    state = gml_Script_scr_player_show_answer_custom
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    global.az_done[(12 << 0)] = 1
                    break
                case (11 << 0):
                    if (global.az_done[(13 << 0)] == 0)
                    {
                        global.text_custom_question = obj_controller.dia_type_answer[speaker_enum_id][_opzione_selezionata]
                        state = gml_Script_scr_player_show_text_custom
                        audio_play_sound(snd_ui_click_text_npc, 9, false)
                        global.text_custom_index = _dia_tipo
                    }
                    else
                        scr_draw_text_with_box("You have already accepted the proposal")
                    break
                case (12 << 0):
                    state = gml_Script_scr_player_refill
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    break
            }

        }
    }
    return;
}

