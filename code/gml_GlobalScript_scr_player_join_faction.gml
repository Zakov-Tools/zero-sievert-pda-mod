function scr_player_join_faction() //gml_Script_scr_player_join_faction
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.npc_speaker_id[speak_nearest.npc_id]
    var speak_nearest_id = global.speaker_nearest.npc_id
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
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        if scr_mouse_inside((camx + 24), ((camy + 72) + 12), 96, 12)
        {
            var _faction_id = obj_controller.npc_faction[speak_nearest_id]
            if (global.faction_joined == -1)
            {
                var _joined = 0
                if (ds_grid_get(global.grid_faction, (0 << 0), _faction_id) >= global.faction_joined_min)
                {
                    _joined = 1
                    if (_faction_id == (2 << 0))
                    {
                        ds_grid_set(global.grid_faction, (0 << 0), (2 << 0), global.faction_limit_max)
                        ds_grid_set(global.grid_faction, (0 << 0), (3 << 0), 0)
                        ds_grid_set(global.grid_faction, (2 << 0), (0 << 0), ds_grid_get(global.grid_faction, (0 << 0), (2 << 0)))
                        ds_grid_set(global.grid_faction, (3 << 0), (0 << 0), ds_grid_get(global.grid_faction, (0 << 0), (3 << 0)))
                        ds_grid_set(global.grid_faction, (0 << 0), (1 << 0), clamp(ds_grid_get(global.grid_faction, (0 << 0), (1 << 0)), 0, global.faction_max))
                        ds_grid_set(global.grid_faction, (1 << 0), (0 << 0), ds_grid_get(global.grid_faction, (0 << 0), (1 << 0)))
                    }
                    if (_faction_id == (3 << 0))
                    {
                        ds_grid_set(global.grid_faction, (0 << 0), (3 << 0), global.faction_limit_max)
                        ds_grid_set(global.grid_faction, (0 << 0), (2 << 0), 0)
                        ds_grid_set(global.grid_faction, (2 << 0), (0 << 0), ds_grid_get(global.grid_faction, (0 << 0), (2 << 0)))
                        ds_grid_set(global.grid_faction, (3 << 0), (0 << 0), ds_grid_get(global.grid_faction, (0 << 0), (3 << 0)))
                        ds_grid_set(global.grid_faction, (0 << 0), (1 << 0), clamp(ds_grid_get(global.grid_faction, (0 << 0), (1 << 0)), 0, global.faction_max))
                        ds_grid_set(global.grid_faction, (1 << 0), (0 << 0), ds_grid_get(global.grid_faction, (0 << 0), (1 << 0)))
                    }
                }
                if (_joined == 0)
                    scr_draw_text_with_box("You need 100 reputation with this faction")
                if (_joined == 1)
                {
                    global.faction_joined = _faction_id
                    scr_save_rep()
                    state = gml_Script_scr_player_state_move
                    scr_draw_text_with_box(("You have joined " + global.faction_name[global.faction_joined]))
                }
            }
            else if (global.faction_joined == _faction_id)
                scr_draw_text_with_box("You have already joined this faction")
            else
                scr_draw_text_with_box("You can not join another faction")
        }
    }
    return;
}

