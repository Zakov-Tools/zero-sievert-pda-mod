function scr_player_quest_list() //gml_Script_scr_player_quest_list
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.npc_speaker_id[speak_nearest.npc_id]
    var quest_amount = array_length_1d(speak_nearest.quest_array)
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
        if (speak_nearest.is_a_quest_giver[speaker_id_] == 1)
        {
            for (var k = 0; k < quest_amount; k++)
            {
                if scr_mouse_inside((camx + 24), ((camy + 72) + ((k + 1) * 12)), 96, 12)
                {
                    if (speak_nearest.quest_array[k] != (0 << 0))
                    {
                        global.which_quest_is_shown = speak_nearest.quest_array[k]
                        global.quest_index_del_npc = k
                        audio_play_sound(snd_ui_click_text_npc, 9, false)
                        var grid_w = 10
                        var grid_h = 4
                        var grid_item_ = ds_grid_create(grid_w, grid_h)
                        ds_grid_clear(grid_item_, 0)
                        var get_type_reward = speak_nearest.quest_premio[k]
                        var quanti_reward = array_length_2d(global.q_reward_id, get_type_reward)
                        for (var i = 0; i < quanti_reward; i++)
                        {
                            if (global.q_reward_qnt[get_type_reward][i] > 0)
                            {
                                var id_item = global.q_reward_id[get_type_reward][i]
                                var item_qnt = global.q_reward_qnt[get_type_reward][i]
                                var placed = 0
                                var necessario_w = (sprite_get_width(item_sprite_inv[id_item]) div 16)
                                var necessario_h = (sprite_get_height(item_sprite_inv[id_item]) div 16)
                                for (var yy = 0; yy < grid_h; yy++)
                                {
                                    for (var xx = 0; xx < grid_w; xx++)
                                    {
                                        if (placed == 0)
                                        {
                                            if (ds_grid_get(grid_item_, xx, yy) == 0)
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
                                                    var objx = ((camx + 32) + (xx * 16))
                                                    var objy = ((camy + 160) + (yy * 16))
                                                    var oggetto = instance_create_layer(objx, objy, "layer_draw_item", obj_item)
                                                    oggetto.my_id = id_item
                                                    oggetto.qnt = item_qnt
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
                        }
                        ds_grid_destroy(grid_item_)
                        state = gml_Script_scr_player_show_quest
                    }
                }
            }
        }
    }
    return;
}

