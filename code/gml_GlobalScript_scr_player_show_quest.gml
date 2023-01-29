function scr_player_show_quest() //gml_Script_scr_player_show_quest
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.npc_speaker_id[speak_nearest.npc_id]
    var nearest_npc_id_ = speak_nearest.npc_id
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_quest_list
        global.quest_item_scelto_id = -1
        with (obj_item)
            instance_destroy()
        scr_barra_testo_reset_offset()
        audio_play_sound(snd_ui_click_text_npc, 9, false)
        obj_controller.can_pause = 0
    }
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + 24), (camy + 72), 96, 12)
        {
            state = gml_Script_scr_player_quest_list
            global.quest_item_scelto_id = -1
            with (obj_item)
                instance_destroy()
            scr_barra_testo_reset_offset()
            audio_play_sound(snd_ui_click_text_npc, 9, false)
        }
        var oo = obj_controller
        oo.talk_quest_obj_hover = 0
        if scr_mouse_inside((camx + oo.talk_quest_obj_x), (camy + oo.talk_quest_obj_y), oo.talk_quest_obj_w, 12)
        {
            oo.talk_quest_obj_hover = 1
            if mouse_check_button_pressed(mb_left)
                global.talk_sub_state_show_quest = 1
        }
        if scr_mouse_inside((camx + oo.talk_quest_text_x), (camy + oo.talk_quest_text_y), oo.talk_quest_text_w, 12)
        {
            oo.talk_quest_obj_hover = 2
            if mouse_check_button_pressed(mb_left)
                global.talk_sub_state_show_quest = 0
        }
        if mouse_check_button_pressed(mb_left)
        {
            if instance_position(mouse_x, mouse_y, obj_item)
            {
                var item_ = instance_position(mouse_x, mouse_y, obj_item)
                global.quest_item_scelto_id = item_.my_id
                global.quest_item_scelto_qnt = item_.qnt
            }
        }
        if scr_mouse_inside((camx + 24), ((camy + 72) + 12), 96, 12)
        {
            var o = obj_controller
            var grid_quest = o.grid_quest
            audio_play_sound(snd_ui_click_text_npc, 9, false)
            var already_have_the_quest = 0
            for (var j = 0; j < 30; j += 1)
            {
                if (global.save_quest_id[j] == global.which_quest_is_shown && global.save_quest_giver[j] == nearest_npc_id_)
                    already_have_the_quest = 1
            }
            if (already_have_the_quest == 0)
            {
                var _can_add = 1
                if (global.quest_is_unique[global.which_quest_is_shown] == 1)
                {
                    if (global.livello_now < global.quest_liv_min[global.which_quest_is_shown])
                        _can_add = 0
                }
                if (_can_add == 0)
                {
                    var _level_required = string(global.quest_liv_min[global.which_quest_is_shown])
                    scr_draw_text_with_box(("Your reputation must be level " + _level_required))
                }
                if (_can_add == 1)
                {
                    var limite_max_raggiunto = 1
                    for (var k = 0; k < 30; k += 1)
                    {
                        if (global.save_quest_id[k] == -1)
                            limite_max_raggiunto = 0
                    }
                    if (limite_max_raggiunto == 1)
                        scr_draw_text_with_box("You have reached the max task limit!")
                    if (limite_max_raggiunto == 0)
                    {
                        var quest_accepted = 0
                        for (var i = 0; i < 30; i += 1)
                        {
                            if (quest_accepted == 0)
                            {
                                if (global.save_quest_id[i] == -1)
                                {
                                    global.save_quest_reward[i] = speak_nearest.quest_premio[global.quest_index_del_npc]
                                    global.save_quest_giver[i] = speak_nearest.npc_id
                                    global.save_quest_id[i] = global.which_quest_is_shown
                                    quest_accepted = 1
                                    scr_draw_text_with_box("Task Accepted!")
                                    if (room == r_hub)
                                        obj_controller.alarm[1] = 1
                                    global.save_quest_status[i] = 1
                                    for (var m = 0; m < array_length_2d(global.quest_type, global.which_quest_is_shown); m++)
                                    {
                                        global.save_quest_amount_now[i][m] = 0
                                        show_debug_message(string(m))
                                    }
                                    obj_player.state = gml_Script_scr_player_quest_list
                                    if instance_exists(obj_item)
                                    {
                                        with (obj_item)
                                            instance_destroy()
                                    }
                                }
                            }
                        }
                    }
                    if (room == r_hub)
                        scr_save_quest()
                }
            }
            else
                scr_draw_text_with_box("You already have this quest!")
        }
        if scr_mouse_inside((camx + 24), ((camy + 72) + 24), 96, 12)
        {
            o = obj_controller
            grid_quest = o.grid_quest
            audio_play_sound(snd_ui_click_text_npc, 9, false)
            for (i = 0; i < 30; i++)
            {
                if (global.save_quest_id[i] == global.which_quest_is_shown)
                {
                    var have_completed = 0
                    if (global.save_quest_status[i] == global.quest_stage_completed[global.which_quest_is_shown] && global.save_quest_giver[i] == nearest_npc_id_)
                        have_completed = 1
                    if (global.general_debug == 1)
                        have_completed = 1
                    if (have_completed == 1)
                    {
                        if (global.quest_item_scelto_id == -1)
                        {
                            if (!instance_exists(obj_item))
                                global.quest_item_scelto_id = (1 << 0)
                        }
                        if (global.quest_item_scelto_id != -1)
                        {
                            var ho_spazio_per_item = 1
                            var grid_w = 8
                            var grid_h = 11
                            var grid_item_ = scr_riempi_inv_ini()
                            var quanti_reward = 1
                            for (k = 0; k < quanti_reward; k++)
                            {
                                var id_item = global.quest_item_scelto_id
                                var placed = 0
                                var necessario_w = (sprite_get_width(item_sprite_inv[id_item]) div 16)
                                var necessario_h = (sprite_get_height(item_sprite_inv[id_item]) div 16)
                                for (var yy = 0; yy < grid_h; yy++)
                                {
                                    for (var xx = 0; xx < grid_w; xx++)
                                    {
                                        if (ds_grid_get(grid_item_, xx, yy) == 0)
                                        {
                                            if (placed == 0)
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
                                                    placed = 1
                                                    ho_spazio_per_item = 1
                                                    for (ix = 0; ix < necessario_w; ix++)
                                                    {
                                                        for (iy = 0; iy < necessario_h; iy++)
                                                            ds_grid_set(grid_item_, (xx + ix), (yy + iy), 1)
                                                    }
                                                    a_x[k] = ((xx * 16) + 41)
                                                    a_y[k] = ((yy * 16) + 63)
                                                    a_id[k] = id_item
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            ds_grid_destroy(grid_item_)
                            if (placed == 0)
                                ho_spazio_per_item = 0
                            if (ho_spazio_per_item == 1)
                            {
                                if instance_exists(obj_draw_something)
                                {
                                    with (obj_draw_something)
                                        instance_destroy()
                                }
                                var a = instance_create_depth(obj_player.x, obj_player.y, (-y), obj_draw_something)
                                var rep_reward = round((global.quest_exp[global.which_quest_is_shown] * global.sk_k[(25 << 0)]))
                                var money_reward = round((global.quest_reward[global.which_quest_is_shown] * global.sk_k[(25 << 0)]))
                                var rep_quest = global.quest_rep[global.which_quest_is_shown]
                                a.t = (((string(money_reward) + " Roubles / ") + string(rep_reward)) + " Experience")
                                global.player_money += money_reward
                                global.esperienza += rep_reward
                                global.stat_amount[(5 << 0)] += money_reward
                                for (m = 0; m < array_length_2d(global.quest_type, global.which_quest_is_shown); m++)
                                {
                                    switch global.quest_type[global.which_quest_is_shown][m]
                                    {
                                        case (1 << 0):
                                            scr_togli_un_item_tot(global.quest_collect_item[global.which_quest_is_shown][m], global.quest_amount_max[global.which_quest_is_shown][m])
                                            break
                                        case (4 << 0):
                                            scr_togli_un_item_tot(global.quest_collect_item[global.which_quest_is_shown][m], global.quest_amount_max[global.which_quest_is_shown][m])
                                            break
                                        case (5 << 0):
                                            scr_togli_un_item_tot(global.quest_collect_item[global.which_quest_is_shown][m], global.quest_amount_max[global.which_quest_is_shown][m])
                                            break
                                    }

                                }
                                global.save_quest_id[i] = -1
                                global.save_quest_status[i] = 0
                                global.save_quest_reward[i] = -1
                                global.save_quest_giver[i] = 0
                                global.save_quest_notifica[i] = 0
                                for (var u = 0; u < 7; u++)
                                {
                                    global.save_quest_amount_now[i][u] = 0
                                    global.save_sub_quest_notifica[i][u] = 0
                                }
                                var spe = global.speaker_nearest
                                for (u = 0; u < spe.quest_max; u++)
                                {
                                    if (global.which_quest_is_shown == spe.quest_array[u])
                                        spe.quest_array[u] = (0 << 0)
                                }
                                if (global.quest_is_unique[global.which_quest_is_shown] == 1)
                                {
                                    global.quest_unique_done[global.which_quest_is_shown] = 1
                                    if (room == r_hub)
                                    {
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (2 << 0), (3 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (3 << 0), (4 << 0))
                                        scr_metti_quest_successiva(obj_leader_faction1.npc_id, obj_leader_faction1.id, (3 << 0), (28 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (4 << 0), (5 << 0), (7 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (5 << 0), (6 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (7 << 0), (11 << 0), (8 << 0), (9 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (9 << 0), (10 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (11 << 0), (12 << 0), (15 << 0), (14 << 0), (13 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (14 << 0), (16 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (15 << 0), (17 << 0), (19 << 0), (18 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (19 << 0), (89 << 0), (24 << 0), (20 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (20 << 0), (21 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (89 << 0), (90 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (24 << 0), (25 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (25 << 0), (26 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (26 << 0), (27 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (28 << 0), (30 << 0), (29 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (30 << 0), (31 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (31 << 0), (32 << 0), (36 << 0), (34 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (32 << 0), (33 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (34 << 0), (35 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (36 << 0), (37 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (37 << 0), (38 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (38 << 0), (40 << 0), (39 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (39 << 0), (41 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (41 << 0), (43 << 0), (42 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (43 << 0), (44 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (44 << 0), (45 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (45 << 0), (46 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (46 << 0), (47 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (47 << 0), (94 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (50 << 0), (51 << 0), (55 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (51 << 0), (53 << 0), (54 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (55 << 0), (56 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (53 << 0), (57 << 0), (59 << 0), (52 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (57 << 0), (58 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (59 << 0), (60 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (60 << 0), (61 << 0), (62 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (62 << 0), (63 << 0), (66 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (63 << 0), (65 << 0), (64 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (66 << 0), (67 << 0))
                                        scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (67 << 0), (68 << 0))
                                    }
                                    scr_metti_quest_successiva(nearest_npc_id_, speak_nearest, (69 << 0), (70 << 0))
                                    if (global.which_quest_is_shown == (71 << 0))
                                        scr_draw_npc_text(obj_forest_trader, (74 << 0))
                                }
                                for (var p = 0; p < 1; p++)
                                {
                                    var qnt = global.quest_item_scelto_qnt
                                    ini_open(global.save_inventory)
                                    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                                    var t = (number_of_items + 1)
                                    ini_write_real("Inventory", ("Item_id_" + string(t)), a_id[p])
                                    ini_write_real("Inventory", ("Item_qnt_" + string(t)), qnt)
                                    ini_write_real("Inventory", ("Item_x_" + string(t)), a_x[p])
                                    ini_write_real("Inventory", ("Item_y_" + string(t)), a_y[p])
                                    ini_write_real("Inventory", ("durability" + string(t)), 100)
                                    ini_write_real("Inventory", ("rotation" + string(t)), 0)
                                    ini_write_real("Inventory", "Number of items", t)
                                    show_debug_message("ini aggiornato")
                                    ini_close()
                                }
                                if (room == r_hub)
                                {
                                    scr_save_quest()
                                    scr_save_unique_quest()
                                    scr_save_rep()
                                }
                                if (global.which_quest_is_shown == (71 << 0))
                                    obj_player.state = gml_Script_scr_player_state_move
                                else
                                    obj_player.state = gml_Script_scr_player_talk
                                with (obj_item)
                                    instance_destroy()
                                global.quest_item_scelto_id = -1
                            }
                            else
                                scr_draw_text_with_box("Not enough inventory space!")
                        }
                        else
                            scr_draw_text_with_box("You have to choose an item!")
                    }
                    else
                        scr_draw_text_with_box("You have not completed this task yet!")
                }
            }
        }
    }
    scr_barra_testo_step(0, global.quest_text[global.which_quest_is_shown][0])
    return;
}

