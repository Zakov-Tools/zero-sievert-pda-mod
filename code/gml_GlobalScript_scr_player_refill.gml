function scr_player_refill() //gml_Script_scr_player_refill
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
        if scr_mouse_inside((camx + 24), ((camy + 72) + 12), 96, 12)
        {
            var _hunger = obj_player.energy
            var _hunger_max = obj_player.energy_max
            var _money = floor(((_hunger_max - _hunger) * 30))
            if (global.player_money >= _money)
            {
                global.player_money -= _money
                obj_player.energy = obj_player.energy_max
                global.trader_money_all += _money
                ini_open(global.save_general)
                ini_write_real("traders", "money", global.trader_money_all)
                ini_close()
                scr_draw_text_with_box("You are no longer hungry")
            }
            else
                scr_draw_text_with_box("Not enough roubles")
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        if scr_mouse_inside((camx + 24), ((camy + 72) + 24), 96, 12)
        {
            var _thirst = obj_player.thirst
            var _thirst_max = obj_player.thirst_max
            _money = floor(((_thirst_max - _thirst) * 40))
            if (global.player_money >= _money)
            {
                global.player_money -= _money
                obj_player.thirst = obj_player.thirst_max
                global.trader_money_all += _money
                ini_open(global.save_general)
                ini_write_real("traders", "money", global.trader_money_all)
                ini_close()
                scr_draw_text_with_box("You are no longer thirsty")
            }
            else
                scr_draw_text_with_box("Not enough roubles")
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
    }
    return;
}

