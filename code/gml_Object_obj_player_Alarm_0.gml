if (reloading == 1)
{
    switch state_reload
    {
        case (0 << 0):
            alarm[0] = (arma_reload_time[arma_now] * global.sk_k[(17 << 0)])
            state_reload = (1 << 0)
            break
        case (1 << 0):
            switch arma_reload_type[arma_now]
            {
                case (1 << 0):
                    var sound_shell_in = snd_sniper_shell_in
                    break
                case (0 << 0):
                    sound_shell_in = snd_shotgun_shell_in
                    break
                case (2 << 0):
                    sound_shell_in = snd_estrarre_caricatore
                    break
            }

            var sound_time = (audio_sound_length(sound_shell_in) * room_speed)
            alarm[0] = ((sound_time + now_reload_time) * global.sk_k[(17 << 0)])
            var ci_sono_ammo_per_reload_shell = 0
            var already_ricaricato_colpo_singolo = 0
            ini_open(global.save_inventory)
            var number_of_items = ini_read_real("Inventory", "Number of items", 0)
            if (number_of_items > 0)
            {
                for (var i = 1; i <= number_of_items; i++)
                {
                    var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                    var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                    if (((arma_reload_type[arma_now] == (0 << 0) || arma_reload_type[arma_now] == (1 << 0)) && already_ricaricato_colpo_singolo == 0) || arma_reload_type[arma_now] == (2 << 0))
                    {
                        if (item_categoria[temp_item_id] == (1 << 0))
                        {
                            var _caliber_weapon = arma_caliber[arma_now]
                            var _caliber_ammo = ammo_caliber[temp_item_id]
                            if (ammo_id_now[weapon_slot_now] == temp_item_id)
                            {
                                ci_sono_ammo_per_reload_shell = 1
                                var ammo_now = ammo_slot[weapon_slot_now]
                                var ammo_magazine = ammo_slot_max[weapon_slot_now]
                                var diff = (ammo_magazine - ammo_now)
                                if (arma_reload_type[arma_now] == (0 << 0) || arma_reload_type[arma_now] == (1 << 0))
                                {
                                    if (diff == 0)
                                        state_reload = (2 << 0)
                                    else if (diff > 0)
                                    {
                                        diff = 1
                                        state_reload = (1 << 0)
                                        audio_play_sound(sound_shell_in, 10, false)
                                    }
                                }
                                if (arma_reload_type[arma_now] == (2 << 0))
                                {
                                    state_reload = (2 << 0)
                                    audio_play_sound(sound_shell_in, 10, false)
                                }
                                if (diff > 0)
                                {
                                    already_ricaricato_colpo_singolo = 1
                                    if (diff < temp_item_qnt)
                                    {
                                        ammo_slot[weapon_slot_now] += diff
                                        ini_write_real("Inventory", ("Item_qnt_" + string(i)), (temp_item_qnt - diff))
                                    }
                                    if (diff >= temp_item_qnt)
                                    {
                                        ammo_slot[weapon_slot_now] += temp_item_qnt
                                        ini_write_real("Inventory", ("Item_qnt_" + string(i)), 0)
                                        ini_write_real("Inventory", ("Item_id_" + string(i)), (0 << 0))
                                    }
                                    for (var j = 1; j <= number_of_items; j++)
                                    {
                                        temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(j)), 0)
                                        temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(j)), 0)
                                        var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(j)), 0)
                                        var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(j)), 0)
                                        if (item_categoria[temp_item_id] == (0 << 0))
                                        {
                                            if (weapon_slot_now == (1 << 0))
                                            {
                                                var sprite_weapon = item_sprite_inv[temp_item_id]
                                                var s_w = sprite_get_width(sprite_weapon)
                                                var s_h = sprite_get_height(sprite_weapon)
                                                if (temp_item_x == (240 - (s_w / 2)) && temp_item_y == (47 - (s_h / 2)))
                                                    ini_write_real("Inventory", ("item_ammo" + string(j)), ammo_slot[weapon_slot_now])
                                            }
                                            if (weapon_slot_now == (2 << 0))
                                            {
                                                sprite_weapon = item_sprite_inv[temp_item_id]
                                                s_w = sprite_get_width(sprite_weapon)
                                                s_h = sprite_get_height(sprite_weapon)
                                                if (temp_item_x == (240 - (s_w / 2)) && temp_item_y == (92 - (s_h / 2)))
                                                    ini_write_real("Inventory", ("item_ammo" + string(j)), ammo_slot[weapon_slot_now])
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (ci_sono_ammo_per_reload_shell == 0)
                state_reload = (2 << 0)
            ini_close()
            break
        case (2 << 0):
            audio_play_sound(arma_sound_mag_in[arma_now], 10, false)
            sound_time = (audio_sound_length(arma_sound_mag_in[arma_now]) * room_speed)
            alarm[0] = (sound_time * global.sk_k[(17 << 0)])
            state_reload = (3 << 0)
            jammed_slot[weapon_slot_now] = 0
            break
        case (3 << 0):
            if (reload_cocking == 1)
            {
                audio_play_sound(arma_sound_cocking[arma_now], 10, false)
                sound_time = (audio_sound_length(arma_sound_cocking[arma_now]) * room_speed)
                alarm[0] = sound_time
                state_reload = (4 << 0)
            }
            else
            {
                alarm[0] = 1
                state_reload = (4 << 0)
            }
            jammed_slot[weapon_slot_now] = 0
            break
        case (4 << 0):
            reloading = 0
            stop_reload = 0
            ini_open(global.save_inventory)
            number_of_items = ini_read_real("Inventory", "Number of items", 0)
            if (number_of_items > 0)
            {
                for (i = 1; i <= number_of_items; i++)
                {
                    temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                    temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                    temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                    temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                    var toll = 2
                    if (temp_item_x >= (200 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (31 - toll) && temp_item_y <= (63 + toll))
                        ini_write_real("Inventory", ("item_ammo" + string(i)), ammo_slot[(1 << 0)])
                    if (temp_item_x >= (200 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (76 - toll) && temp_item_y <= (108 + toll))
                        ini_write_real("Inventory", ("item_ammo" + string(i)), ammo_slot[(2 << 0)])
                }
            }
            ini_close()
            break
    }

}
