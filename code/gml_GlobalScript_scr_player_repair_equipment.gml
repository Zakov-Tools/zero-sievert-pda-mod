function scr_player_repair_equipment() //gml_Script_scr_player_repair_equipment
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.npc_speaker_id[speak_nearest.npc_id]
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + 24), (camy + 72), 96, 12)
        {
            state = gml_Script_scr_player_talk
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        if scr_mouse_inside((camx + 24), ((camy + 72) + 12), 96, 12)
        {
            if (obj_player.armor_now != (0 << 0))
            {
                var p_wep1 = obj_player.armor_now
                var dur1 = obj_player.durability_slot[(11 << 0)]
                var wep_price = obj_player.armor_class[p_wep1]
                var _k = 380
                var dur_price = round((((1 - (dur1 / 100)) * _k) * power(wep_price, 2.25)))
                if (global.player_money >= dur_price)
                {
                    obj_player.durability_slot[(11 << 0)] = 100
                    scr_draw_text_with_box("Armor repaired")
                    global.player_money -= dur_price
                    global.trader_money_all += dur_price
                    ini_open(global.save_general)
                    ini_write_real("traders", "money", global.trader_money_all)
                    ini_close()
                    audio_play_sound(snd_ui_click_text_npc, 9, false)
                    ini_open(global.save_inventory)
                    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                    var _off = 2
                    if (number_of_items > 0)
                    {
                        for (var i = 1; i <= number_of_items; i++)
                        {
                            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                            var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                            var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                            if (temp_item_x >= (200 - _off) && temp_item_x <= 232 && temp_item_y >= (119 - _off) && temp_item_y <= 151)
                                ini_write_real("Inventory", ("durability" + string(i)), 100)
                        }
                    }
                    ini_close()
                }
                else
                    scr_draw_text_with_box("Not enough Roubles")
            }
            else
                scr_draw_text_with_box("No armor in the slot")
        }
    }
    return;
}

