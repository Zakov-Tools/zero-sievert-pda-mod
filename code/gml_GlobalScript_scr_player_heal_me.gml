function scr_player_heal_me() //gml_Script_scr_player_heal_me
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
            var p_hp = obj_player.hp
            var p_wound = obj_player.wound
            var p_hp_max = (obj_player.hp_max_total - p_wound)
            var money_hp = ((p_hp_max - p_hp) * global.heal_hp_k)
            if (global.player_money >= money_hp)
            {
                global.player_money -= money_hp
                obj_player.hp = obj_player.hp_max
                global.trader_money_all += money_hp
                ini_open(global.save_general)
                ini_write_real("traders", "money", global.trader_money_all)
                ini_close()
                scr_draw_text_with_box("You have been healed")
            }
            else
                scr_draw_text_with_box("Not enough roubles")
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        if scr_mouse_inside((camx + 24), ((camy + 72) + 24), 96, 12)
        {
            p_hp = obj_player.hp
            p_hp_max = obj_player.hp_max
            p_wound = obj_player.wound
            var money_wound = (p_wound * global.heal_wound_k)
            if (global.player_money >= money_wound)
            {
                global.player_money -= money_wound
                global.trader_money_all += money_wound
                ini_open(global.save_general)
                ini_write_real("traders", "money", global.trader_money_all)
                ini_close()
                obj_player.wound = 0
                scr_draw_text_with_box("You have been healed")
            }
            else
                scr_draw_text_with_box("Not enough roubles")
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        if scr_mouse_inside((camx + 24), ((camy + 72) + 36), 96, 12)
        {
            p_hp = obj_player.hp
            p_hp_max = (obj_player.hp_max - obj_player.wound)
            var p_rad = obj_player.radiation_accumulata
            money_wound = (p_rad * global.heal_rad_k)
            if (global.player_money >= money_wound)
            {
                global.player_money -= money_wound
                global.trader_money_all += money_wound
                ini_open(global.save_general)
                ini_write_real("traders", "money", global.trader_money_all)
                ini_close()
                obj_player.radiation_accumulata = 0
                scr_draw_text_with_box("You have been healed")
            }
            else
                scr_draw_text_with_box("Not enough roubles")
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
    }
    return;
}

