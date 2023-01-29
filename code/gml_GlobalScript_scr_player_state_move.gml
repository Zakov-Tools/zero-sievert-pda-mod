var _a_ammo_id;
function scr_player_state_move() //gml_Script_scr_player_state_move
{
    dkey = global.kb_hold[(2 << 0)]
    wkey = global.kb_hold[(0 << 0)]
    skey = global.kb_hold[(1 << 0)]
    akey = global.kb_hold[(3 << 0)]
    shift_key = global.kb_hold[(4 << 0)]
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var action = 0
    scr_player_movement(1, 1, 1)
    if global.kb_pressed[(15 << 0)]
    {
        if (weapon_slot_now != (1 << 0))
        {
            reloading = 0
            alarm[0] = 1
            action = 1
            switching_weapon = 1
            next_weapon_slot = (1 << 0)
            switching_fase = 0
        }
    }
    if global.kb_pressed[(16 << 0)]
    {
        if (weapon_slot_now != (2 << 0))
        {
            reloading = 0
            alarm[0] = 1
            switching_weapon = 1
            action = 1
            next_weapon_slot = (2 << 0)
            switching_fase = 0
        }
    }
    if (fire_mode_slot[weapon_slot_now] == (0 << 0))
    {
        if mouse_check_button(mb_left)
        {
            if (shooting == 0)
            {
                shoot_input = 1
                shoot_input_delay = 0
            }
        }
    }
    if (fire_mode_slot[weapon_slot_now] == (1 << 0))
    {
        if mouse_check_button_pressed(mb_left)
        {
            shoot_input = 1
            shoot_input_delay = 0
        }
    }
    if (fire_mode_slot[weapon_slot_now] == (2 << 0))
    {
        if mouse_check_button_pressed(mb_left)
        {
            shoot_input = 1
            shoot_input_delay = 0
        }
    }
    if (shoot_input == 1)
    {
        shoot_input_delay++
        if (shoot_input_delay >= shoot_input_delay_max)
            shoot_input = 0
    }
    if (abs(hspd) > 0 || abs(vspd) > 0)
    {
        if (shift_key == 1)
            shoot_input = 0
    }
    if (switching_weapon == 1)
    {
        shoot_input = 0
        action = 1
        var _slot_next = next_weapon_slot
        var _ergo_now = now_ergo
        if (switching_fase == 0)
        {
            if (weapon_slot[_slot_next] != (2 << 0))
                _ergo_now = arma_ergo[weapon_slot[_slot_next]]
        }
        if instance_exists(obj_player_weapon)
        {
            with (obj_player_weapon)
            {
                obj_player.switching_weapon_max_now = (obj_player.switching_weapon_max * (1 - _ergo_now))
                if (obj_player.switching_fase == 0)
                {
                    obj_player.switching_weapon_now += 1
                    off_angle_switching += (90 / obj_player.switching_weapon_max_now)
                    if (obj_player.switching_weapon_now >= obj_player.switching_weapon_max_now)
                    {
                        obj_player.weapon_slot_now = _slot_next
                        obj_player.arma_now = obj_player.weapon_slot[obj_player.weapon_slot_now]
                        obj_player.switching_fase = 1
                        obj_player.switching_weapon_now = 0
                    }
                }
                else
                {
                    obj_player.switching_weapon_now += 1
                    off_angle_switching -= (90 / obj_player.switching_weapon_max_now)
                    if (obj_player.switching_weapon_now >= obj_player.switching_weapon_max_now)
                    {
                        obj_player.switching_weapon_now = 0
                        obj_player.switching_weapon = 0
                        obj_player.recoil_from_shooting = 0
                        off_angle_switching = 0
                    }
                }
            }
        }
    }
    if (shoot_stop_ani == 1)
    {
        shoot_input = 0
        if mouse_check_button_released(mb_left)
            shoot_stop_ani = 0
    }
    var ergo_backpack = 0
    if (backpack_now != (0 << 0))
        ergo_backpack = backpack_ergonomic[backpack_now]
    var ergo_weapon = 0
    if (arma_now != (2 << 0))
        ergo_weapon = now_ergo
    total_ergo = (ergo_weapon * (1 + (ergo_backpack / 100)))
    if (akey || wkey || dkey || skey)
        recoil_from_movement += ((1 - total_ergo) * 0.5)
    var _sono_sopra_col_mouse = 0
    if ((!akey) && (!skey) && (!dkey) && (!wkey))
    {
        recoil_from_movement -= (total_ergo / 1.7)
        if (arma_now != (2 << 0) && (!shift_key))
        {
            var _quanti_bullet = ammo_number[ammo_id_now[weapon_slot_now]]
            if instance_exists(obj_npc_parent)
            {
                with (obj_mouse)
                {
                    if (distance_to_object(obj_npc_parent) < 7)
                    {
                        if (linea_libera_gun_mouse == 1)
                        {
                            obj_player.recoil_from_movement -= (obj_player.total_ergo * 1.5)
                            if (_quanti_bullet == 1)
                                obj_player.now_precision *= 0.75
                            _sono_sopra_col_mouse = 1
                        }
                    }
                }
            }
        }
    }
    var _recoil_max = 1
    if (_sono_sopra_col_mouse == 1)
        _recoil_max = 0.6
    recoil_from_movement = clamp(recoil_from_movement, 0, 6)
    recoil_from_shooting -= (0.17 * (1 + (recoil_from_shooting / (now_recoil * 2))))
    recoil_from_shooting = clamp(recoil_from_shooting, 0, (now_recoil * 1.5))
    recoil_total = (recoil_from_shooting + recoil_from_movement)
    recoil_total = clamp(recoil_total, 0, 10)
    if (arma_now != (2 << 0) && arma_now != (0 << 0))
        total_precision = (((0.1 * ((now_precision * (2 - (durability_slot[weapon_slot_now] / 100))) + recoil_total)) * global.skill_var[(9 << 0)]) * _recoil_max)
    else
    {
        total_precision = 0
        recoil_from_shooting = 0
    }
    var _ho_tutte_le_mod_necessarie = 1
    var _wep_id = arma_now
    if (arma_moddable[_wep_id] == 1)
    {
        for (var i = 0; i < array_length_2d(mod_id, weapon_slot_now); i++)
        {
            var _id = mod_id[weapon_slot_now][i]
            if (arma_mod_nec[_wep_id][i] == 1)
            {
                if (_id == -1)
                    _ho_tutte_le_mod_necessarie = 0
            }
        }
    }
    if (shoot_input == 1)
    {
        if (_ho_tutte_le_mod_necessarie == 0)
        {
            shoot_input = 0
            if (!instance_exists(obj_draw_something))
                scr_draw_text_with_box("Essential parts of the weapon are missing")
        }
    }
    if (room != r_hub)
    {
        if (arma_now != (2 << 0))
        {
            if (reloading == 0)
            {
                if (shooting == 0)
                {
                    if (shoot_input == 1)
                    {
                        if (ammo_slot[weapon_slot_now] > 0 || global.general_debug == 1)
                        {
                            var dur = durability_slot[weapon_slot_now]
                            if (dur < 70)
                            {
                                var k_jam = (((-dur) / 10) + 10)
                                if scr_chance(k_jam)
                                    jammed_slot[weapon_slot_now] = 1
                            }
                            if (jammed_slot[weapon_slot_now] == 0)
                            {
                                shoot_input = 0
                                shoot_input_delay = 0
                                dur = durability_slot[weapon_slot_now]
                                var k_dam = (0.75 + ((0.25 * dur) / 100))
                                var dir = point_direction(x, y, mouse_x, mouse_y)
                                var dam = (now_damage * k_dam)
                                var prec = total_precision
                                scr_shoot(dir, (1 << 0), dam, prec)
                                ammo_slot[weapon_slot_now] -= 1
                                ammo_slot[weapon_slot_now] = clamp(ammo_slot[weapon_slot_now], 0, 100)
                                global.ammo_counter_i_fired = 1
                                alarm[1] = arma_rate_of_fire[arma_now]
                                shooting = 1
                                var _recoil_k = 1
                                if (_sono_sopra_col_mouse == 1)
                                    _recoil_k = 0.6
                                recoil_from_shooting += (0.4 * (((now_recoil * (2 - (durability_slot[weapon_slot_now] / 100))) * global.sk_k[(16 << 0)]) + _recoil_k))
                                var rec_dir = (weapon_pointing_direction + choose(-90, 90))
                                var _dis_max = 240
                                var _dis = point_distance(x, y, mouse_x, mouse_y)
                                var _k = 1
                                if (global.aiming == 1)
                                    _k = 1.5
                                var recx = (((lengthdir_x(recoil_from_shooting, rec_dir) * 6) * _k) * (_dis / _dis_max))
                                var recy = (((lengthdir_y(recoil_from_shooting, rec_dir) * 6) * _k) * (_dis / _dis_max))
                                var _x = display_mouse_get_x()
                                var _y = display_mouse_get_y()
                                display_mouse_set((_x + recx), (_y + recy))
                                var shake_ = (((dam * ammo_number[ammo_id_now[weapon_slot_now]]) / 10) * 2)
                                shake_ = clamp(shake_, 0, 5)
                                dir = point_direction(x, y, mouse_x, mouse_y)
                                scr_camera_shake((shake_ / 4), (-dir))
                                obj_player_weapon.off_angle += shake_
                                obj_player_weapon.off_amount += (shake_ / 2)
                                obj_player_weapon.off_dir = (-dir)
                                durability_slot[weapon_slot_now] -= (ammo_dur[ammo_id_now[weapon_slot_now]] * global.sk_k[(32 << 0)])
                                if (arma_fire_mode[arma_now] == (2 << 0))
                                    alarm[10] = 15
                                ini_open(global.save_inventory)
                                var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                                if (number_of_items > 0)
                                {
                                    var _off = 2
                                    for (i = 1; i <= number_of_items; i++)
                                    {
                                        var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                                        if (item_categoria[temp_item_id] == (0 << 0))
                                        {
                                            var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                                            var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                                            if (temp_item_x >= (200 - _off) && temp_item_x <= 280 && temp_item_y >= (31 - _off) && temp_item_y <= 63)
                                                ini_write_real("Inventory", ("durability" + string(i)), durability_slot[(1 << 0)])
                                            if (temp_item_x >= (200 - _off) && temp_item_x <= 280 && temp_item_y >= (76 - _off) && temp_item_y <= 108)
                                                ini_write_real("Inventory", ("durability" + string(i)), durability_slot[(2 << 0)])
                                        }
                                    }
                                }
                                ini_close()
                            }
                        }
                        else if mouse_check_button_pressed(mb_left)
                        {
                            if (!audio_is_playing(snd_no_ammo))
                                audio_play_sound(snd_no_ammo, 2, false)
                        }
                    }
                }
            }
        }
    }
    else if mouse_check_button_pressed(mb_left)
        scr_draw_text_with_box("This is a safe zone!")
    ds_list_clear(global.list_interact)
    ds_list_clear(global.list_interact_id)
    ds_list_clear(global.list_interact_task_pos)
    if (action == 0)
    {
        if global.kb_pressed[(17 << 0)]
        {
            action = 1
            scr_use_quick_slot(179, 223)
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(18 << 0)]
        {
            action = 1
            scr_use_quick_slot(200, 223)
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(19 << 0)]
        {
            action = 1
            scr_use_quick_slot(221, 223)
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(20 << 0)]
        {
            action = 1
            scr_use_quick_slot(242, 223)
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(21 << 0)]
        {
            action = 1
            scr_use_quick_slot(263, 223)
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(22 << 0)]
        {
            action = 1
            scr_use_quick_slot(284, 223)
        }
    }
    if mouse_check_button_pressed(mb_left)
    {
        if (weapon_slot[weapon_slot_now] != (2 << 0))
        {
            var jam = 0
            if (jammed_slot[weapon_slot_now] == 1)
                jam = 1
            if (jam == 1)
            {
                if scr_chance(30)
                {
                    audio_play_sound(snd_jam_free, 10, false)
                    jammed_slot[weapon_slot_now] = 0
                }
                else
                    audio_play_sound(snd_jam, 10, false)
            }
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(7 << 0)]
        {
            action = 1
            if (weapon_slot[weapon_slot_now] != (2 << 0))
            {
                var _ho_ammo = 0
                ini_open(global.save_inventory)
                number_of_items = ini_read_real("Inventory", "Number of items", 0)
                if (number_of_items > 0)
                {
                    for (i = 1; i <= number_of_items; i++)
                    {
                        temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                        var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                        if (item_categoria[temp_item_id] == (1 << 0))
                        {
                            if (ammo_caliber[temp_item_id] == arma_caliber[arma_now])
                            {
                                if (ammo_id_now[weapon_slot_now] == temp_item_id)
                                    _ho_ammo = 1
                            }
                        }
                    }
                }
                if (_ho_ammo == 1)
                {
                    if (!audio_is_playing(snd_jam))
                    {
                        if (ammo_slot[weapon_slot_now] < ammo_slot_max[weapon_slot_now])
                        {
                            if (reloading == 0)
                            {
                                var sound_time = (audio_sound_length(arma_sound_mag_out[arma_now]) * 60)
                                alarm[0] = (sound_time * global.sk_k[(17 << 0)])
                                reloading = 1
                                state_reload = (0 << 0)
                                if (ammo_slot[weapon_slot_now] == 0 && arma_reload_type[arma_now] == (2 << 0))
                                    reload_cocking = 1
                                audio_play_sound(arma_sound_mag_out[arma_now], 10, false)
                            }
                        }
                    }
                }
                else
                    scr_draw_text_with_box((("No ammo" + item_name[ammo_id_now[weapon_slot_now]]) + " found"))
            }
        }
        if mouse_check_button_pressed(mb_left)
        {
            if (reloading == 1 && state_reload != (2 << 0) && stop_reload == 0)
            {
                if (arma_reload_type[arma_now] == (0 << 0) || arma_reload_type[arma_now] == (1 << 0))
                {
                    stop_reload = 1
                    state_reload = (2 << 0)
                }
            }
        }
    }
    if (reloading == 0 && instance_exists(obj_camera))
    {
        if (point_distance(x, y, obj_camera.x, obj_camera.y) < 200)
        {
            if (action == 0)
            {
                if global.kb_pressed[(5 << 0)]
                {
                    action = 1
                    scr_open_inventory()
                    state = gml_Script_scr_player_state_inventory
                    camera_set_view_size(view_camera[0], 480, 270)
                    audio_play_sound(snd_inventory_open, 2, false)
                }
            }
            if instance_exists(obj_chest_general)
            {
                var lt = loot_dis
                with (obj_chest_general)
                {
                    if (object_index != obj_chest_player)
                    {
                        if (point_distance(obj_player.x, obj_player.y, x, y) < lt)
                        {
                            ds_list_add(global.list_interact, (1 << 0))
                            ds_list_add(global.list_interact_id, id)
                            ds_list_add(global.list_interact_task_pos, 0)
                        }
                    }
                }
            }
            if (looting == 0)
            {
                if instance_exists(obj_npc_parent)
                {
                    lt = loot_dis
                    var _faction = faction
                    with (obj_npc_parent)
                    {
                        if (point_distance(x, y, obj_player.x, obj_player.y) < lt)
                        {
                            if (npc_speaker_id[npc_id] != (0 << 0))
                            {
                                if (ds_grid_get(global.grid_faction, _faction, faction) > global.faction_min)
                                {
                                    ds_list_add(global.list_interact, (3 << 0))
                                    ds_list_add(global.list_interact_id, id)
                                    ds_list_add(global.list_interact_task_pos, 0)
                                }
                            }
                        }
                    }
                }
            }
            if (looting == 0)
            {
                if instance_exists(obj_chest_player)
                {
                    lt = loot_dis
                    with (obj_chest_player)
                    {
                        if (point_distance(x, y, obj_player.x, obj_player.y) < lt)
                        {
                            var chest_ = id
                            ds_list_add(global.list_interact, (2 << 0))
                            ds_list_add(global.list_interact_id, chest_)
                            ds_list_add(global.list_interact_task_pos, 0)
                        }
                    }
                }
            }
        }
    }
    if (global.change_ammo_now == 1)
    {
        if keyboard_check_pressed(vk_anykey)
        {
            if (!(global.kb_pressed[(23 << 0)]))
                global.change_ammo_now = 0
        }
    }
    if (global.change_ammo_now == 1)
    {
        if mouse_wheel_up()
            global.change_ammo_scelta++
        if mouse_wheel_down()
            global.change_ammo_scelta--
        global.change_ammo_scelta = clamp(global.change_ammo_scelta, 0, (ds_list_size(global.list_ammo_id) - 1))
        if global.kb_pressed[(23 << 0)]
        {
            var _ammo_id_scelto = ds_list_find_value(global.list_ammo_id, global.change_ammo_scelta)
            if (_ammo_id_scelto != ammo_id_now[weapon_slot_now])
            {
                var _ammo_now_id = ammo_id_now[weapon_slot_now]
                var _ammo_now_qnt = ammo_slot[weapon_slot_now]
                var _aggiunto = scr_aggiungi_item_nel_file_inventario(_ammo_now_id, _ammo_now_qnt)
                if (_aggiunto == 1)
                {
                    ammo_slot[weapon_slot_now] = 0
                    ammo_id_now[weapon_slot_now] = _ammo_id_scelto
                    global.change_ammo_now = 0
                    sound_time = (audio_sound_length(arma_sound_mag_out[arma_now]) * 60)
                    alarm[0] = (sound_time * global.sk_k[(17 << 0)])
                    reloading = 1
                    state_reload = (0 << 0)
                    if (ammo_slot[weapon_slot_now] == 0 && arma_reload_type[arma_now] == (2 << 0))
                        reload_cocking = 1
                    audio_play_sound(arma_sound_mag_out[arma_now], 10, false)
                    ini_open(global.save_inventory)
                    number_of_items = ini_read_real("Inventory", "Number of items", 0)
                    if (number_of_items > 0)
                    {
                        _off = 2
                        for (i = 1; i <= number_of_items; i++)
                        {
                            temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                            if (item_categoria[temp_item_id] == (0 << 0))
                            {
                                temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                                temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                                if (temp_item_x >= (200 - _off) && temp_item_x <= 280 && temp_item_y >= (31 - _off) && temp_item_y <= 63)
                                    ini_write_real("Inventory", ("item_ammo_id" + string(i)), ammo_id_now[(1 << 0)])
                                if (temp_item_x >= (200 - _off) && temp_item_x <= 280 && temp_item_y >= (76 - _off) && temp_item_y <= 108)
                                    ini_write_real("Inventory", ("item_ammo_id" + string(i)), ammo_id_now[(2 << 0)])
                            }
                        }
                    }
                    ini_close()
                }
            }
        }
    }
    if (global.kb_pressed[(23 << 0)] && global.change_ammo_now == 0 && arma_now != (2 << 0) && reloading == 0)
    {
        global.change_ammo_now = 1
        var _t_ammo = item_name[ammo_id_now[weapon_slot_now]]
        var _t = ("Currently using: " + _t_ammo)
        scr_draw_text_with_box(_t)
        ds_list_clear(global.list_ammo_id)
        ds_list_clear(global.list_ammo_qnt)
        var _caliber_now = arma_caliber[arma_now]
        var j = 0
        for (i = 0; i < array_length_1d(item_id); i++)
        {
            if (item_categoria[i] == (1 << 0))
            {
                if (ammo_caliber[i] == _caliber_now)
                {
                    _a_ammo_id[j] = item_id[i]
                    _a_ammo_qnt[j] = 0
                    j++
                }
            }
        }
        var _quanti_tipi = array_length_1d(_a_ammo_id)
        ini_open(global.save_inventory)
        number_of_items = ini_read_real("Inventory", "Number of items", 0)
        if (number_of_items > 0)
        {
            for (i = 1; i <= number_of_items; i++)
            {
                temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                if (item_categoria[temp_item_id] == (1 << 0))
                {
                    if (ammo_caliber[temp_item_id] == _caliber_now)
                    {
                        for (j = 0; j < _quanti_tipi; j++)
                        {
                            if (temp_item_id == _a_ammo_id[j])
                                _a_ammo_qnt[j] += temp_item_qnt
                        }
                    }
                }
            }
        }
        ini_close()
        for (j = 0; j < _quanti_tipi; j++)
        {
            if (_a_ammo_qnt[j] > 0)
            {
                ds_list_add(global.list_ammo_id, _a_ammo_id[j])
                ds_list_add(global.list_ammo_qnt, _a_ammo_qnt[j])
            }
        }
    }
    if (ds_list_size(global.list_ammo_id) < 1 || shoot_input == 1 || hspd != 0 || vspd != 0)
        global.change_ammo_now = 0
    if (arma_now != -1)
    {
        var sprite_weapon = item_sprite_ingame[arma_now]
        if (image_xscale == 1)
            var off_dir = 90
        else
            off_dir = -90
        var weapon_sprite_w = (sprite_get_width(sprite_weapon) * 0.4)
        var diffx = (weapon_sprite_w - (sprite_get_xoffset(sprite_weapon) * 0.4))
        var bullet_spawn_x = ((x + lengthdir_x(diffx, weapon_pointing_direction)) + lengthdir_x(2, (weapon_pointing_direction + off_dir)))
        var bullet_spawn_y = (((y + lengthdir_y(diffx, weapon_pointing_direction)) + lengthdir_y(2, (weapon_pointing_direction + off_dir))) + 5)
        laser_startx = bullet_spawn_x
        laser_starty = bullet_spawn_y
    }
    if (obj_controller.arma_moddable[obj_player.arma_now] == 1)
    {
        if (mod_id[weapon_slot_now][(3 << 0)] != -1)
        {
            var bx = arma_mod_x[arma_now][(3 << 0)]
            var by = arma_mod_y[arma_now][(3 << 0)]
            var bl = mod_barrel_length[mod_id[weapon_slot_now][(3 << 0)]]
            brake_x = ((bx + bl) - 1)
            brake_y = by
        }
    }
    if (room == r_hub)
    {
        if (action == 0)
        {
            if global.kb_pressed[(6 << 0)]
            {
                if (state == gml_Script_scr_player_state_move)
                {
                    if (distance_to_object(obj_craft) < 10)
                    {
                        action = 1
                        state = gml_Script_scr_player_state_craft
                        search_item_upgrade = 1
                    }
                }
            }
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(13 << 0)]
        {
            _t_ammo = item_name[ammo_id_now[weapon_slot_now]]
            if (arma_fire_mode[arma_now] == (0 << 0))
            {
                if (fire_mode_slot[weapon_slot_now] == (0 << 0))
                {
                    fire_mode_slot[weapon_slot_now] = (1 << 0)
                    _t = (("Fire mode: semi-automatic (" + _t_ammo) + ")")
                    scr_draw_text_with_box(_t)
                }
                else
                {
                    _t = (("Fire mode: automatic (" + _t_ammo) + ")")
                    fire_mode_slot[weapon_slot_now] = (0 << 0)
                    scr_draw_text_with_box(_t)
                }
            }
            else
                scr_draw_text_with_box(_t_ammo)
        }
    }
    if (action == 0)
    {
        if instance_exists(obj_chest_grigoriy_ring)
        {
            if (point_distance(x, y, obj_chest_grigoriy_ring.x, obj_chest_grigoriy_ring.y) < 16)
            {
                ds_list_add(global.list_interact, (21 << 0))
                ds_list_add(global.list_interact_id, obj_chest_grigoriy_ring.id)
                ds_list_add(global.list_interact_task_pos, 0)
            }
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(11 << 0)]
        {
            action = 1
            audio_play_sound(snd_ui_pda_open, 10, false)
            audio_play_sound(snd_ui_pda_open_finish, 10, false)
            scr_draw_surface_cover()
            state = gml_Script_scr_player_map
        }
    }
    if place_meeting(x, y, obj_solid)
    {
        var amount = 5
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("W")))
            y -= amount
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("S")))
            y += amount
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("D")))
            x += amount
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("A")))
            x -= amount
    }
    if (action == 0)
    {
        if global.kb_pressed[(10 << 0)]
        {
            action = 1
            state = gml_Script_scr_player_state_pda
            audio_play_sound(snd_ui_pda_open, 10, false)
            audio_play_sound(snd_ui_pda_open_finish, 10, false)
        }
    }
    if (room == r_hub)
    {
        if (action == 0)
        {
            if place_meeting(x, y, obj_go_to_map)
            {
                state = gml_Script_scr_player_state_choose_map
                search_item_upgrade = 1
            }
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(12 << 0)]
        {
            action = 1
            var _dir = point_direction(x, y, mouse_x, mouse_y)
            var bolt = instance_create_depth(x, y, (-y), obj_bolt)
            bolt.dir = _dir
            bolt.spd = 3
        }
    }
    if (room == r_hub)
    {
        if instance_exists(obj_letto_castello)
        {
            var near = instance_nearest(x, y, obj_letto_castello)
            if (distance_to_object(obj_letto_castello) < 16)
            {
                ds_list_add(global.list_interact, (4 << 0))
                ds_list_add(global.list_interact_id, near)
                ds_list_add(global.list_interact_task_pos, 0)
            }
        }
        if instance_exists(obj_letto)
        {
            near = instance_nearest(x, y, obj_letto)
            if (distance_to_object(obj_letto) < 16)
            {
                ds_list_add(global.list_interact, (4 << 0))
                ds_list_add(global.list_interact_id, near)
                ds_list_add(global.list_interact_task_pos, 0)
            }
        }
        if instance_exists(obj_letto_2)
        {
            near = instance_nearest(x, y, obj_letto_2)
            if (distance_to_object(obj_letto_2) < 16)
            {
                ds_list_add(global.list_interact, (4 << 0))
                ds_list_add(global.list_interact_id, near)
                ds_list_add(global.list_interact_task_pos, 0)
            }
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(24 << 0)]
        {
            action = 1
            obj_camera.follow = (5 << 0)
            obj_camera.wl_state = (0 << 0)
            obj_player_weapon.pl_weap_state = (0 << 0)
            obj_player_weapon.wl_angle_max = irandom_range(-30, 80)
            obj_player_weapon.wl_off_x_max = irandom_range(-3, 4)
            obj_player_weapon.wl_off_y_max = irandom_range(-3, 4)
            state = gml_Script_scr_player_weapon_look
        }
    }
    if (action == 0)
    {
        if global.kb_pressed[(14 << 0)]
        {
            if (headset_now != (0 << 0))
            {
                if (headset_type[headset_now] == (0 << 0))
                {
                    if (!instance_exists(obj_light_torch))
                    {
                        var _lamp = instance_create_depth(x, y, 0, obj_light_torch)
                        _lamp.light_id = headset_light_id[headset_now]
                        audio_play_sound(snd_laser_on, 10, false)
                    }
                    else
                    {
                        with (obj_light_torch)
                        {
                            audio_play_sound(snd_laser_on, 10, false)
                            instance_destroy()
                        }
                    }
                }
                if (headset_type[headset_now] == (1 << 0))
                {
                    if (global.night_vision == 0)
                    {
                        audio_play_sound(snd_night_vision_on, 10, false)
                        global.night_vision = 1
                    }
                    else
                        global.night_vision = 0
                }
            }
        }
    }
    if (arma_now == (2 << 0))
        torch_on_general = 0
    if (arma_moddable[arma_now] == 1)
    {
        torch_on[weapon_slot_now][(7 << 0)] = 0
        torch_on[weapon_slot_now][(8 << 0)] = 0
        torch_on[weapon_slot_now][(9 << 0)] = 0
        torch_on[weapon_slot_now][(10 << 0)] = 0
    }
    if (arma_moddable[arma_now] == 1)
    {
        scr_torch_var((7 << 0))
        scr_torch_var((8 << 0))
        scr_torch_var((9 << 0))
        scr_torch_var((10 << 0))
    }
    if (action == 0)
    {
        if global.kb_pressed[(8 << 0)]
        {
            if (arma_now != (2 << 0))
            {
                if (torch_on_general == 0)
                {
                    torch_on_general = 1
                    audio_play_sound(snd_laser_on, 10, false)
                }
                else
                {
                    torch_on_general = 0
                    audio_play_sound(snd_laser_on, 10, false)
                }
            }
        }
    }
    if (torch_have[weapon_slot_now][(7 << 0)] == 1)
        torch_on[weapon_slot_now][(7 << 0)] = torch_on_general
    if (torch_have[weapon_slot_now][(8 << 0)] == 1)
        torch_on[weapon_slot_now][(8 << 0)] = torch_on_general
    if (torch_have[weapon_slot_now][(9 << 0)] == 1)
        torch_on[weapon_slot_now][(9 << 0)] = torch_on_general
    if (torch_have[weapon_slot_now][(10 << 0)] == 1)
        torch_on[weapon_slot_now][(10 << 0)] = torch_on_general
    if (arma_now == (2 << 0))
        laser_on_general = 0
    if (arma_moddable[arma_now] == 1)
    {
        laser_on[weapon_slot_now][(7 << 0)] = 0
        laser_on[weapon_slot_now][(8 << 0)] = 0
        laser_on[weapon_slot_now][(9 << 0)] = 0
        laser_on[weapon_slot_now][(10 << 0)] = 0
    }
    if (arma_moddable[arma_now] == 1)
    {
        scr_laser_var((7 << 0))
        scr_laser_var((8 << 0))
        scr_laser_var((9 << 0))
        scr_laser_var((10 << 0))
    }
    if (action == 0)
    {
        if global.kb_pressed[(9 << 0)]
        {
            if (arma_now != (2 << 0))
            {
                if (laser_on_general == 0)
                {
                    laser_on_general = 1
                    audio_play_sound(snd_laser_on, 10, false)
                }
                else
                {
                    laser_on_general = 0
                    audio_play_sound(snd_laser_on, 10, false)
                }
            }
        }
    }
    if (laser_have[weapon_slot_now][(7 << 0)] == 1)
        laser_on[weapon_slot_now][(7 << 0)] = laser_on_general
    if (laser_have[weapon_slot_now][(8 << 0)] == 1)
        laser_on[weapon_slot_now][(8 << 0)] = laser_on_general
    if (laser_have[weapon_slot_now][(9 << 0)] == 1)
        laser_on[weapon_slot_now][(9 << 0)] = laser_on_general
    if (laser_have[weapon_slot_now][(10 << 0)] == 1)
        laser_on[weapon_slot_now][(10 << 0)] = laser_on_general
    if instance_exists(obj_door_parent)
    {
        if (distance_to_object(obj_door_parent) < 16)
        {
            var door_near = instance_nearest(x, y, obj_door_parent)
            if (door_near.open == 0)
            {
                ds_list_add(global.list_interact, (8 << 0))
                ds_list_add(global.list_interact_id, door_near)
                ds_list_add(global.list_interact_task_pos, 0)
            }
        }
    }
    if place_meeting(x, y, obj_indoor)
    {
        var indoor_id = instance_nearest(x, y, obj_indoor)
        ds_list_add(global.list_interact, (5 << 0))
        ds_list_add(global.list_interact_id, indoor_id)
        ds_list_add(global.list_interact_task_pos, 0)
    }
    if place_meeting(x, y, obj_indoor_specific_parent)
    {
        indoor_id = instance_nearest(x, y, obj_indoor_specific_parent)
        ds_list_add(global.list_interact, (5 << 0))
        ds_list_add(global.list_interact_id, indoor_id)
        ds_list_add(global.list_interact_task_pos, 0)
    }
    var o = obj_controller
    for (i = 0; i < 30; i++)
    {
        var _quest_id = global.save_quest_id[i]
        if (_quest_id != -1)
        {
            for (j = 0; j < array_length_2d(global.quest_type, _quest_id); j++)
            {
                if (global.quest_type[_quest_id][j] == (10 << 0))
                {
                    var _object = global.quest_interact_object[_quest_id][j]
                    _dis = global.quest_interact_dis[_quest_id][j]
                    if (global.save_quest_amount_now[i][j] == 0)
                    {
                        if instance_exists(_object)
                        {
                            if (point_distance(x, y, _object.x, _object.y) < _dis)
                            {
                                ds_list_add(global.list_interact, (10 << 0))
                                ds_list_add(global.list_interact_id, i)
                                ds_list_add(global.list_interact_task_pos, j)
                            }
                        }
                    }
                }
            }
        }
    }
    var marked_id = o.marked_object_id
    if (marked_id != noone)
    {
        for (i = 0; i < 30; i++)
        {
            _quest_id = global.save_quest_id[i]
            if (_quest_id != -1)
            {
                for (j = 0; j < array_length_2d(global.quest_type, _quest_id); j++)
                {
                    if (global.quest_type[_quest_id][j] == (7 << 0))
                    {
                        _object = global.quest_place_marker_object[_quest_id][j]
                        _dis = 16
                        if instance_exists(obj_map_generator)
                        {
                            if (obj_map_generator.area == global.quest_place_marker_map[_quest_id][j])
                            {
                                if (global.save_quest_amount_now[i][j] == 0)
                                {
                                    if instance_exists(_object)
                                    {
                                        if instance_exists(marked_id)
                                        {
                                            if (distance_to_object(_object) < _dis)
                                            {
                                                ds_list_add(global.list_interact, (14 << 0))
                                                ds_list_add(global.list_interact_id, i)
                                                ds_list_add(global.list_interact_task_pos, j)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (quest_posso_piazzare_analyzer == 1)
    {
        ds_list_add(global.list_interact, (15 << 0))
        ds_list_add(global.list_interact_id, marked_id)
        ds_list_add(global.list_interact_task_pos, 0)
    }
    if instance_exists(obj_quest_activate_gps)
    {
        var i_have_the_quest = scr_check_specific_q_type((170 << 0), (13 << 0))
        if (i_have_the_quest == 1)
        {
            if (point_distance(x, y, obj_quest_activate_gps.x, obj_quest_activate_gps.y) < 16)
            {
                ds_list_add(global.list_interact, (16 << 0))
                ds_list_add(global.list_interact_id, 0)
                ds_list_add(global.list_interact_task_pos, 0)
            }
        }
    }
    if instance_exists(obj_quest_activate_sewer)
    {
        if (point_distance(x, y, obj_quest_activate_sewer.x, obj_quest_activate_sewer.y) < 16)
        {
            i_have_the_quest = scr_check_specific_q_type((171 << 0), (14 << 0))
            if (i_have_the_quest == 1)
            {
                ds_list_add(global.list_interact, (17 << 0))
                ds_list_add(global.list_interact_id, 0)
                ds_list_add(global.list_interact_task_pos, 0)
            }
        }
    }
    if (room == r_hub)
    {
        i_have_the_quest = scr_check_specific_q_type((69 << 0), (19 << 0))
        if (point_distance(x, y, obj_quest_crimson_place_camera.x, obj_quest_crimson_place_camera.y) < 8)
        {
            if (i_have_the_quest == 1)
            {
                ds_list_add(global.list_interact, (19 << 0))
                ds_list_add(global.list_interact_id, 0)
                ds_list_add(global.list_interact_task_pos, 0)
            }
        }
    }
    if instance_exists(obj_faro)
    {
        if (point_distance(x, y, (obj_faro.x + 48), obj_faro.y) < 16)
        {
            i_have_the_quest = scr_check_specific_q_type((47 << 0), (20 << 0))
            if (i_have_the_quest == 1)
            {
                if (obj_faro.light_on == 0)
                {
                    ds_list_add(global.list_interact, (20 << 0))
                    ds_list_add(global.list_interact_id, 0)
                    ds_list_add(global.list_interact_task_pos, 0)
                }
            }
        }
    }
    if instance_exists(obj_cristallo_viola)
    {
        if (global.quest_unique_done[(94 << 0)] == 0)
        {
            _x = obj_cristallo_viola.x
            _y = obj_cristallo_viola.y
            if (point_distance(x, y, _x, _y) < global.cristallo_viola_start_dis)
            {
                action = 1
                audio_play_sound(snd_cristallo_viola, 10, false)
                scr_draw_npc_text(id, (51 << 0))
                state = gml_Script_scr_player_cristallo_viola
                obj_camera.follow = (4 << 0)
                hspd = 0
                vsdp = 0
            }
        }
    }
    if instance_exists(obj_quest_approach_parent)
    {
        var _nearest_id = instance_nearest(x, y, obj_quest_approach_parent)
        if (_nearest_id != noone)
        {
            var _obj_index = _nearest_id.object_index
            i_have_the_quest = 0
            var quest_pos_ = -1
            for (i = 0; i < 30; i++)
            {
                _quest_id = global.save_quest_id[i]
                if (_quest_id != (0 << 0) && _quest_id != -1)
                {
                    for (j = 0; j < array_length_2d(global.quest_type, _quest_id); j++)
                    {
                        if (global.quest_type[_quest_id][j] == (16 << 0))
                        {
                            if (global.save_quest_amount_now[i][j] < global.quest_amount_max[_quest_id][j])
                            {
                                if (global.quest_approach_obj[_quest_id][j] == _obj_index)
                                {
                                    if (point_distance(x, y, _nearest_id.x, _nearest_id.y) < global.quest_approach_dis[_quest_id][j])
                                    {
                                        if (global.quest_approach_map[_quest_id][j] == obj_map_generator.area)
                                        {
                                            i_have_the_quest = 1
                                            quest_pos_ = i
                                            if (i_have_the_quest == 1)
                                            {
                                                ds_list_add(global.list_interact, (9 << 0))
                                                ds_list_add(global.list_interact_id, quest_pos_)
                                                ds_list_add(global.list_interact_task_pos, 0)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (room == r_hub)
    {
        if place_meeting(x, y, obj_base_parent)
        {
            var closer = instance_place(x, y, obj_base_parent)
            var base_slot_ = closer.slot
            var closer_id = closer.id_base
            if (closer.lvl_now > 0)
            {
                if (closer.preso == 0 && (closer_id == (8 << 0) || closer_id == (10 << 0) || closer_id == (11 << 0) || closer_id == (9 << 0)))
                {
                    ds_list_add(global.list_interact, (11 << 0))
                    ds_list_add(global.list_interact_id, closer)
                    ds_list_add(global.list_interact_task_pos, 0)
                }
            }
        }
    }
    if (room == r_hub)
    {
        if (distance_to_object(obj_table_workbench_hub) < 8)
        {
            ds_list_add(global.list_interact, (7 << 0))
            ds_list_add(global.list_interact_id, 322)
            ds_list_add(global.list_interact_task_pos, 0)
        }
    }
    if (global.status_state_now[(3 << 0)] == (3 << 0))
    {
        o = 22
        i_have_the_quest = 0
        var _quest_pos = -1
        for (i = 0; i < 30; i++)
        {
            _quest_id = global.save_quest_id[i]
            if (_quest_id != -1)
            {
                if (_quest_id == (65 << 0))
                {
                    if (global.save_quest_amount_now[i][0] < global.quest_amount_max[_quest_id][0])
                    {
                        i_have_the_quest = 1
                        _quest_pos = i
                    }
                }
            }
        }
        if (i_have_the_quest == 1 && _quest_pos != -1)
        {
            global.save_quest_amount_now[_quest_pos][0] = 1
            obj_controller.alarm[1] = 1
        }
    }
    if (room == r_hub)
    {
        if (global.luci_natale_built == 1)
        {
            if instance_exists(obj_terminal_natale_luci)
            {
                if (distance_to_object(obj_terminal_natale_luci) < 5)
                {
                    ds_list_add(global.list_interact, (22 << 0))
                    ds_list_add(global.list_interact_id, -4)
                    ds_list_add(global.list_interact_task_pos, 0)
                    if (global.luci_natale_on == 1)
                    {
                        ds_list_add(global.list_interact, (25 << 0))
                        ds_list_add(global.list_interact_id, -4)
                        ds_list_add(global.list_interact_task_pos, 0)
                        ds_list_add(global.list_interact, (23 << 0))
                        ds_list_add(global.list_interact_id, -4)
                        ds_list_add(global.list_interact_task_pos, 0)
                        ds_list_add(global.list_interact, (24 << 0))
                        ds_list_add(global.list_interact_id, -4)
                        ds_list_add(global.list_interact_task_pos, 0)
                        ds_list_add(global.list_interact, (26 << 0))
                        ds_list_add(global.list_interact_id, -4)
                        ds_list_add(global.list_interact_task_pos, 0)
                    }
                }
            }
        }
    }
    if (ds_list_size(global.list_interact) > 0)
    {
        if mouse_wheel_up()
            global.p_int_instance_id++
        if mouse_wheel_down()
            global.p_int_instance_id--
        global.p_int_instance_id = clamp(global.p_int_instance_id, 0, (ds_list_size(global.list_interact) - 1))
        if (action == 0)
        {
            if global.kb_pressed[(6 << 0)]
            {
                switch ds_list_find_value(global.list_interact, global.p_int_instance_id)
                {
                    case (1 << 0):
                        var chest_nearest = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        state = gml_Script_scr_player_state_inventory
                        looting = 1
                        obj_controller.loot_name = chest_nearest.chest_name[chest_nearest.tipo]
                        var _sound = global.chest_sound_open[chest_nearest.chest_sound_type[chest_nearest.tipo]]
                        audio_play_sound(_sound, 10, false)
                        if (chest_nearest.already_looted == 0)
                        {
                            chest_nearest.already_looted = 1
                            global.esperienza_loot += global.esperienza_da_looting
                            _id = chest_nearest.object_index
                            switch _id
                            {
                                case 135:
                                    global.stat_amount[(27 << 0)] += 1
                                    break
                                case 136:
                                    global.stat_amount[(29 << 0)] += 1
                                    break
                                case 137:
                                    global.stat_amount[(31 << 0)] += 1
                                    break
                                case 138:
                                    global.stat_amount[(37 << 0)] += 1
                                    break
                                case 139:
                                    global.stat_amount[(32 << 0)] += 1
                                    break
                                case 140:
                                    global.stat_amount[(33 << 0)] += 1
                                    break
                                case 141:
                                    global.stat_amount[(34 << 0)] += 1
                                    break
                                case 143:
                                    global.stat_amount[(28 << 0)] += 1
                                    break
                                case 144:
                                    global.stat_amount[(30 << 0)] += 1
                                    break
                                case 149:
                                    global.stat_amount[(36 << 0)] += 1
                                    break
                                case 150:
                                    global.stat_amount[(35 << 0)] += 1
                                    break
                                case 151:
                                    global.stat_amount[(35 << 0)] += 1
                                    break
                                case 159:
                                    global.stat_amount[(38 << 0)] += 1
                                    break
                                case 157:
                                    global.stat_amount[(38 << 0)] += 1
                                    break
                                case 158:
                                    global.stat_amount[(38 << 0)] += 1
                                    break
                                case 142:
                                    global.stat_amount[(39 << 0)] += 1
                                    break
                            }

                        }
                        scr_open_inventory()
                        ini_open("all_loot.ini")
                        for (i = 0; i < chest_nearest.quanti_item_effettivi; i++)
                        {
                            temp_item_qnt = ini_read_real(("chest_" + string(chest_nearest.id)), ("item_quantità_N_" + string(i)), 1)
                            temp_item_id = ini_read_real(("chest_" + string(chest_nearest.id)), ("item_id_N_" + string(i)), (0 << 0))
                            temp_item_x = ini_read_real(("chest_" + string(chest_nearest.id)), ("item_x_N_" + string(i)), 0)
                            temp_item_y = ini_read_real(("chest_" + string(chest_nearest.id)), ("item_y_N_" + string(i)), 0)
                            var temp_rotation = ini_read_real(("chest_" + string(chest_nearest.id)), ("rotation_N_" + string(i)), 0)
                            var temp_visto = ini_read_real(("chest_" + string(chest_nearest.id)), ("visto?_N_" + string(i)), 0)
                            var temp_from_player = ini_read_real(("chest_" + string(chest_nearest.id)), ("created_from_player_N_" + string(i)), 0)
                            if (obj_controller.arma_moddable[temp_item_id] == 1)
                            {
                                temp_[(0 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((0 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(0 << 0)])
                                temp_[(1 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((1 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(1 << 0)])
                                temp_[(3 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((3 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(3 << 0)])
                                temp_[(2 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((2 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(2 << 0)])
                                temp_[(5 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((5 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(5 << 0)])
                                temp_[(6 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((6 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(6 << 0)])
                                temp_[(4 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((4 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(4 << 0)])
                                temp_[(7 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((7 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(7 << 0)])
                                temp_[(8 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((8 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(8 << 0)])
                                temp_[(9 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((9 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(9 << 0)])
                                temp_[(10 << 0)] = ini_read_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((10 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(10 << 0)])
                            }
                            var cam_x = camera_get_view_x(view_camera[0])
                            var cam_y = camera_get_view_y(view_camera[0])
                            var temp_item = instance_create_layer(((cam_x + 312) + temp_item_x), ((cam_y + 63) + temp_item_y), "layer_draw_item", obj_item)
                            temp_item.my_id = temp_item_id
                            temp_item.qnt = temp_item_qnt
                            temp_item.my_x = temp_item_x
                            temp_item.my_y = temp_item_y
                            temp_item.sprite_index = item_sprite_inv[temp_item_id]
                            temp_item.rotation = temp_rotation
                            temp_item.visto = temp_visto
                            temp_item.created_from_player = temp_from_player
                            if (obj_controller.arma_moddable[temp_item_id] == 1)
                            {
                                temp_item.mod_id[(0 << 0)] = temp_[(0 << 0)]
                                temp_item.mod_id[(1 << 0)] = temp_[(1 << 0)]
                                temp_item.mod_id[(3 << 0)] = temp_[(3 << 0)]
                                temp_item.mod_id[(2 << 0)] = temp_[(2 << 0)]
                                temp_item.mod_id[(5 << 0)] = temp_[(5 << 0)]
                                temp_item.mod_id[(6 << 0)] = temp_[(6 << 0)]
                                temp_item.mod_id[(4 << 0)] = temp_[(4 << 0)]
                                temp_item.mod_id[(7 << 0)] = temp_[(7 << 0)]
                                temp_item.mod_id[(8 << 0)] = temp_[(8 << 0)]
                                temp_item.mod_id[(9 << 0)] = temp_[(9 << 0)]
                                temp_item.mod_id[(10 << 0)] = temp_[(10 << 0)]
                            }
                            if (item_categoria[temp_item_id] == (0 << 0) && temp_item_id != (0 << 0) && temp_item_id != (2 << 0))
                            {
                                var quante_ammo = ini_read_real(("chest_" + string(chest_nearest.id)), ("item_ammo_N_" + string(i)), 0)
                                var _ammo_id = ini_read_real(("chest_" + string(chest_nearest.id)), ("item_ammo_id_N_" + string(i)), arma_ammo[temp_item_id])
                                temp_item.ammo_adesso = quante_ammo
                                temp_item.ammo_now_id = _ammo_id
                            }
                            if (item_categoria[temp_item_id] == (0 << 0) || item_categoria[temp_item_id] == (6 << 0))
                            {
                                dur = ini_read_real(("chest_" + string(chest_nearest.id)), ("durability_N_" + string(i)), 100)
                                temp_item.durability = dur
                            }
                        }
                        ini_close()
                        break
                    case (2 << 0):
                        chest_nearest = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        state = gml_Script_scr_player_state_inventory
                        looting_player_stash = 1
                        obj_controller.loot_name = ("stash " + string((global.storage_page_now + 1)))
                        scr_open_inventory()
                        scr_load_storage()
                        break
                    case (3 << 0):
                        var _special = 0
                        var _get_instance_id = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        var _get_object_index = _get_instance_id.object_index
                        if (_get_object_index == 734)
                        {
                            _special = 1
                            scr_draw_npc_text(obj_sacriel, (113 << 0))
                        }
                        if (_special == 0)
                        {
                            state = gml_Script_scr_player_talk
                            global.speaker_nearest = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        }
                        break
                    case (4 << 0):
                        state = gml_Script_scr_player_state_sleep
                        break
                    case (5 << 0):
                        indoor_id = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        var _offy = 0
                        if (y > obj_map_generator.area_height[obj_map_generator.area])
                            _offy = -4
                        x = indoor_id.tele_x
                        y = (indoor_id.tele_y + _offy)
                        can_run_after_exit_building = 0
                        obj_controller.can_pause = 1
                        obj_controller.alarm[4] = 2
                        if instance_exists(obj_fog_setup)
                            obj_fog_setup.alarm[0] = 3
                        if instance_exists(obj_camera)
                            obj_camera.alarm[1] = 1
                        break
                    case (6 << 0):
                        break
                    case (10 << 0):
                        _quest_pos = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        _quest_id = global.save_quest_id[_quest_pos]
                        var _task_pos = ds_list_find_value(global.list_interact_task_pos, global.p_int_instance_id)
                        if (_quest_id != -1)
                        {
                            if (global.quest_type[_quest_id][_task_pos] == (10 << 0))
                            {
                                var _item_id = global.quest_interact_item_id[_quest_id][_task_pos]
                                var _i_have_item = 1
                                if (_item_id != -1)
                                {
                                    _i_have_item = 0
                                    _i_have_item = scr_controlla_di_avere_un_item_inventario(_item_id)
                                }
                                if (_i_have_item == 1)
                                {
                                    var _text_item = global.quest_interact_text_if_item[_quest_id][_task_pos]
                                    if (_text_item != -1)
                                        scr_draw_npc_text(id, _text_item)
                                    if (_item_id != -1)
                                        scr_togli_un_item_inventario(_item_id, 1)
                                    global.save_quest_amount_now[_quest_pos][_task_pos] = 1
                                    obj_controller.alarm[1] = 1
                                    if (_quest_id == (37 << 0))
                                    {
                                        obj_quest_destroy_ghoul_lair_esplosione.alarm[1] = 3600
                                        global.show_explosion_ghoul_lair = 1
                                    }
                                }
                                if (_i_have_item == 0)
                                {
                                    var _text_no_item = global.quest_interact_text_if_no_item[_quest_id][_task_pos]
                                    if (_text_no_item != -1)
                                        scr_draw_npc_text(id, _text_no_item)
                                }
                            }
                        }
                        break
                    case (9 << 0):
                        quest_pos_ = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        _task_pos = ds_list_find_value(global.list_interact_task_pos, global.p_int_instance_id)
                        _quest_id = global.save_quest_id[quest_pos_]
                        global.save_quest_amount_now[quest_pos_][_task_pos] = 1
                        obj_controller.alarm[1] = 1
                        if (_quest_id == (89 << 0))
                            scr_draw_npc_text(obj_player, (37 << 0))
                        if (_quest_id == (25 << 0))
                            scr_draw_npc_text(obj_player, (39 << 0))
                        if (_quest_id == (30 << 0))
                            scr_draw_npc_text(obj_player, (42 << 0))
                        if (_quest_id == (36 << 0))
                            scr_draw_npc_text(obj_player, (44 << 0))
                        if (_quest_id == (43 << 0))
                            scr_draw_npc_text(obj_player, (47 << 0))
                        if (_quest_id == (7 << 0))
                            scr_draw_npc_text(obj_player, (49 << 0))
                        break
                    case (7 << 0):
                        with (obj_controller)
                            lista_craft()
                        state = gml_Script_scr_player_state_craft
                        search_item_upgrade = 1
                        break
                    case (8 << 0):
                        door_near = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        var d_id = door_near.id_door
                        var have_key = scr_controlla_di_avere_un_item_inventario(global.door_key_id[d_id])
                        if (have_key == 0)
                            scr_draw_npc_text(id, (27 << 0))
                        var togli_chiave = 0
                        if (key_single_use[global.door_key_id[d_id]] == 1)
                            togli_chiave = 1
                        if (d_id == (7 << 0))
                        {
                            if instance_exists(obj_junk_trader)
                            {
                                audio_play_sound(snd_electric_spark, 15, false)
                                obj_player.hp = -3
                            }
                        }
                        if (have_key == 1)
                        {
                            with (door_near)
                            {
                                if place_meeting(x, y, obj_solid)
                                {
                                    var solid_my_poosition = instance_place(x, y, obj_solid)
                                    with (solid_my_poosition)
                                    {
                                        var xx = x
                                        var yy = y
                                        instance_destroy()
                                    }
                                    if (togli_chiave == 1)
                                    {
                                        scr_togli_un_item_inventario(global.door_key_id[d_id], 1)
                                        scr_elimina_da_inventory_item_qnt_0()
                                    }
                                    sprite_index = global.door_sprite_open[d_id]
                                    visible = true
                                    x = xx
                                    y = yy
                                    depth = (-yy)
                                    open = 1
                                }
                            }
                        }
                        break
                    case (11 << 0):
                        closer = instance_place(x, y, obj_base_parent)
                        base_slot_ = closer.slot
                        closer_id = closer.id_base
                        var c_id = obj_node_target_is_enemy
                        if (closer_id == (8 << 0))
                            c_id = obj_chest_material
                        if (closer_id == (10 << 0))
                            c_id = obj_chest_garden
                        if (closer_id == (11 << 0))
                            c_id = obj_chest_ammo
                        if (closer_id == (9 << 0))
                            c_id = obj_chest_scav
                        if (c_id != obj_node_target_is_enemy)
                        {
                            instance_create_depth(x, y, 0, c_id)
                            closer.preso = 1
                            ini_open(global.save_general)
                            ini_write_real("Module preso", ("slot_" + string(base_slot_)), 1)
                            ini_close()
                        }
                        break
                    case (13 << 0):
                        var i_have_the_kit = scr_controlla_di_avere_un_item_inventario((300 << 0))
                        if (i_have_the_kit == 1)
                        {
                            scr_complete_specific_q_type((62 << 0), (11 << 0))
                            scr_togli_un_item_inventario((300 << 0), 1)
                            scr_draw_text_with_box("Quest completed!")
                        }
                        else
                            scr_draw_npc_text(id, (20 << 0))
                        break
                    case (14 << 0):
                        var i_have_the_marker = scr_controlla_di_avere_un_item_inventario((323 << 0))
                        if (i_have_the_marker == 1)
                        {
                            _quest_pos = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                            _quest_id = global.save_quest_id[_quest_pos]
                            _task_pos = ds_list_find_value(global.list_interact_task_pos, global.p_int_instance_id)
                            global.save_quest_amount_now[_quest_pos][_task_pos] = 1
                            obj_controller.alarm[1] = 1
                            scr_togli_un_item_inventario((323 << 0), 1)
                        }
                        else
                            scr_draw_npc_text(id, (19 << 0))
                        break
                    case (15 << 0):
                        var i_have_the_analyzer = scr_controlla_di_avere_un_item_inventario((324 << 0))
                        if (i_have_the_analyzer == 1)
                        {
                            global.save_quest_amount_now[i][0] = 1
                            obj_controller.alarm[1] = 1
                            scr_togli_un_item_inventario((324 << 0), 1)
                            scr_draw_text_with_box("Quest completed!")
                        }
                        else
                            scr_draw_npc_text(id, (23 << 0))
                        break
                    case (16 << 0):
                        quest_pos_ = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        var i_have_repair_kit = scr_controlla_di_avere_un_item_inventario((300 << 0))
                        if (i_have_repair_kit == 1)
                        {
                            scr_complete_specific_q_type((170 << 0), (13 << 0))
                            scr_togli_un_item_inventario((300 << 0), 1)
                            scr_draw_text_with_box("Quest completed!")
                        }
                        else
                            scr_draw_npc_text(id, (20 << 0))
                        break
                    case (17 << 0):
                        quest_pos_ = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                        scr_complete_specific_q_type((171 << 0), (14 << 0))
                        obj_controller.alarm[1] = 1
                        scr_draw_text_with_box("Quest completed!")
                        break
                    case (18 << 0):
                        break
                    case (19 << 0):
                        i_have_the_marker = scr_controlla_di_avere_un_item_inventario((367 << 0))
                        if (i_have_the_marker == 1)
                        {
                            scr_complete_specific_q_type((19 << 0), (19 << 0))
                            scr_togli_un_item_inventario((367 << 0), 1)
                            scr_draw_text_with_box("Quest completed!")
                        }
                        else
                            scr_draw_npc_text(id, (30 << 0))
                        break
                    case (20 << 0):
                        if (obj_faro.light_on == 0)
                        {
                            obj_faro.light_start = 1
                            obj_spawner_ghoul_quest_swamp.alarm[0] = 480
                            obj_faro.alarm[3] = 90
                            with (obj_green_quest_swamp_leader)
                                scr_draw_npc_text(id, (64 << 0))
                        }
                        break
                    case (21 << 0):
                        scr_draw_npc_text(id, (34 << 0))
                        break
                    case (22 << 0):
                        if (global.luci_natale_on == 1)
                        {
                            global.luci_natale_on = 0
                            scr_draw_text_with_box("Lights OFF")
                        }
                        else
                        {
                            global.luci_natale_on = 1
                            scr_draw_text_with_box("Lights ON")
                        }
                        with (obj_light_natale_parent)
                            scale = scale_start
                        break
                    case (23 << 0):
                        with (obj_light_natale_1)
                        {
                            colore_now += 1
                            var _max = array_length_1d(colore_luce)
                            if (colore_now >= (_max - 1))
                                colore_now = 0
                            var _colore_now = colore_now
                            ini_open(global.save_general)
                            ini_write_real("Christman", "lights color 1", colore_now)
                            ini_close()
                        }
                        scr_draw_text_with_box(("Lights 1 - color " + string(_colore_now)))
                        break
                    case (24 << 0):
                        with (obj_light_natale_2)
                        {
                            colore_now += 1
                            _max = array_length_1d(colore_luce)
                            if (colore_now >= (_max - 1))
                                colore_now = 0
                            _colore_now = colore_now
                            ini_open(global.save_general)
                            ini_write_real("Christman", "lights color 2", colore_now)
                            ini_close()
                        }
                        scr_draw_text_with_box(("Lights 2 - color " + string(_colore_now)))
                        break
                    case (25 << 0):
                        global.luci_natale_mode += 1
                        if (global.luci_natale_mode > (2 << 0))
                            global.luci_natale_mode = (0 << 0)
                        if (global.luci_natale_mode == (2 << 0))
                        {
                            with (obj_light_natale_1)
                                scale = 0
                            with (obj_light_natale_1)
                                scale = scale_start
                        }
                        ini_open(global.save_general)
                        ini_write_real("Christman", "lights mode", global.luci_natale_mode)
                        ini_close()
                        with (obj_light_natale_parent)
                            luci_natale_timer_alternato = 0
                        scr_draw_text_with_box(("Lights mode - " + string(global.luci_natale_mode)))
                        break
                    case (26 << 0):
                        global.luci_natale_timer += 1
                        if (global.luci_natale_timer > 4)
                            global.luci_natale_timer = 0
                        with (obj_light_natale_parent)
                            luci_natale_timer_alternato = 0
                        ini_open(global.save_general)
                        ini_write_real("Christman", "lights timer", global.luci_natale_timer)
                        ini_close()
                        scr_draw_text_with_box(("Lights timer - " + string(global.luci_natale_timer)))
                        break
                }

            }
        }
    }
    global.aiming = 0
    obj_mouse.visible = true
    if (weapon_slot[(1 << 0)] == (2 << 0))
        mod_id[(1 << 0)][(6 << 0)] = -1
    if (weapon_slot[(2 << 0)] == (2 << 0))
        mod_id[(2 << 0)][(6 << 0)] = -1
    if (state != gml_Script_scr_player_state_inventory)
    {
        if (mod_id[weapon_slot_now][(6 << 0)] != -1)
        {
            var get_scope_id = mod_id[weapon_slot_now][(6 << 0)]
            if (mod_scope_optic[get_scope_id] == 1)
            {
                global.aiming = mouse_check_button(mb_right)
                if (global.aiming == 1)
                    obj_mouse.visible = false
                else
                    obj_mouse.visible = true
            }
        }
    }
    return;
}

