function scr_player_state_craft() //gml_Script_scr_player_state_craft
{
    var viewx = camera_get_view_x(0)
    var viewy = camera_get_view_y(0)
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if global.kb_pressed[(5 << 0)]
    {
        with (obj_item)
            instance_destroy()
        obj_controller.can_pause = 0
        state = gml_Script_scr_player_state_move
    }
    if keyboard_check_pressed(vk_escape)
    {
        with (obj_item)
            instance_destroy()
        obj_controller.can_pause = 0
        state = gml_Script_scr_player_state_move
    }
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside(((viewx + 480) - 16), viewy, 16, 16)
        {
            with (obj_item)
                instance_destroy()
            state = gml_Script_scr_player_state_move
        }
    }
    obj_mouse.image_index = 4
    var change_page = 0
    var mouse_left = mouse_check_button_pressed(mb_left)
    var o = obj_controller
    o.button_hover = -1
    var n_butt = array_length_1d(obj_controller.b_craft)
    for (var i = 0; i < n_butt; i++)
    {
        if scr_mouse_inside((viewx + o.b_craft_x[i]), (viewy + o.b_craft_y[i]), o.button_craft_width, o.button_craft_height)
            o.button_hover = o.b_craft[i]
    }
    if keyboard_check_pressed(vk_up)
    {
        global.craft_state--
        change_page = 1
    }
    if keyboard_check_pressed(vk_down)
    {
        global.craft_state++
        change_page = 1
    }
    if mouse_left
    {
        if (o.button_hover != -1)
        {
            global.craft_state = o.button_hover
            global.craft_selected = -1
            change_page = 1
            audio_play_sound(snd_mouse_press, 10, false)
            if (global.craft_state == (4 << 0))
            {
                if (global.sk_k[(65 << 0)] == 1)
                {
                    scr_crea_lista_repair()
                    lista_craft()
                }
            }
            if (global.craft_state == (5 << 0))
            {
                scr_crea_lista_mod()
                lista_craft()
            }
        }
    }
    if (o.change_page_next_step == 1)
    {
        o.change_page_next_step = 0
        with (obj_item)
            instance_destroy()
        ds_grid_clear(global.grid_craft_i, -1)
        var grid_w = 21
        var grid_h = 9
        var grid_item_ = ds_grid_create(grid_w, grid_h)
        ds_grid_clear(grid_item_, 0)
        for (i = 0; i < 50; i++)
        {
            var n_array_corrispondente = ds_grid_get(global.craft_grid, i, global.craft_state)
            if (n_array_corrispondente != -1)
            {
                var id_item = global.craft_get[n_array_corrispondente]
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
                                    for (ix = 0; ix < necessario_w; ix++)
                                    {
                                        for (iy = 0; iy < necessario_h; iy++)
                                        {
                                            ds_grid_set(grid_item_, (xx + ix), (yy + iy), 1)
                                            ds_grid_set(global.grid_craft_i, (xx + ix), (yy + iy), n_array_corrispondente)
                                        }
                                    }
                                    var objx = ((viewx + 128) + (xx * 16))
                                    var objy = ((viewy + 16) + (yy * 16))
                                    var oggetto = instance_create_layer(objx, objy, "layer_draw_item", obj_item)
                                    oggetto.my_id = id_item
                                    oggetto.qnt = global.craft_get_n[n_array_corrispondente]
                                    oggetto.my_x = (xx * 16)
                                    oggetto.my_y = (yy * 16)
                                    oggetto.sprite_index = item_sprite_inv[id_item]
                                    var _array_return = scr_check_craft_possibile(n_array_corrispondente)
                                    var _have_skill = 0
                                    var _have_module = 0
                                    _have_skill = _array_return[0]
                                    _have_module = _array_return[1]
                                    if (_have_skill == 0 || _have_module == 0)
                                        oggetto.is_craftable = 0
                                    if (global.craft_state == (5 << 0))
                                    {
                                        if (obj_controller.arma_moddable[id_item] == 1)
                                        {
                                            oggetto.mod_id[(0 << 0)] = ds_list_find_value(global.lista_mod_stock, i)
                                            oggetto.mod_id[(1 << 0)] = ds_list_find_value(global.lista_mod_grip, i)
                                            oggetto.mod_id[(3 << 0)] = ds_list_find_value(global.lista_mod_barrel, i)
                                            oggetto.mod_id[(2 << 0)] = ds_list_find_value(global.lista_mod_handguard, i)
                                            oggetto.mod_id[(5 << 0)] = ds_list_find_value(global.lista_mod_brake, i)
                                            oggetto.mod_id[(6 << 0)] = ds_list_find_value(global.lista_mod_scope, i)
                                            oggetto.mod_id[(4 << 0)] = ds_list_find_value(global.lista_mod_magazine, i)
                                            oggetto.mod_id[(7 << 0)] = ds_list_find_value(global.lista_mod_att_1, i)
                                            oggetto.mod_id[(8 << 0)] = ds_list_find_value(global.lista_mod_att_2, i)
                                            oggetto.mod_id[(9 << 0)] = ds_list_find_value(global.lista_mod_att_3, i)
                                            oggetto.mod_id[(10 << 0)] = ds_list_find_value(global.lista_mod_att_4, i)
                                            oggetto.file_x = ds_list_find_value(global.lista_mod_file_x, i)
                                            oggetto.file_y = ds_list_find_value(global.lista_mod_file_y, i)
                                            oggetto.file_inv = ds_list_find_value(global.lista_mod_file_inv, i)
                                            oggetto.durability = ds_list_find_value(global.lista_mod_dur, i)
                                        }
                                    }
                                    if (global.craft_state == (4 << 0))
                                    {
                                        oggetto.durability = ds_list_find_value(global.lista_repair_dur, i)
                                        oggetto.file_x = ds_list_find_value(global.lista_mod_file_x, i)
                                        oggetto.file_y = ds_list_find_value(global.lista_mod_file_y, i)
                                        oggetto.file_inv = ds_list_find_value(global.lista_mod_file_inv, i)
                                        if (obj_controller.arma_moddable[id_item] == 1)
                                        {
                                            oggetto.mod_id[(0 << 0)] = ds_list_find_value(global.lista_mod_stock, i)
                                            oggetto.mod_id[(1 << 0)] = ds_list_find_value(global.lista_mod_grip, i)
                                            oggetto.mod_id[(3 << 0)] = ds_list_find_value(global.lista_mod_barrel, i)
                                            oggetto.mod_id[(2 << 0)] = ds_list_find_value(global.lista_mod_handguard, i)
                                            oggetto.mod_id[(5 << 0)] = ds_list_find_value(global.lista_mod_brake, i)
                                            oggetto.mod_id[(6 << 0)] = ds_list_find_value(global.lista_mod_scope, i)
                                            oggetto.mod_id[(4 << 0)] = ds_list_find_value(global.lista_mod_magazine, i)
                                            oggetto.mod_id[(7 << 0)] = ds_list_find_value(global.lista_mod_att_1, i)
                                            oggetto.mod_id[(8 << 0)] = ds_list_find_value(global.lista_mod_att_2, i)
                                            oggetto.mod_id[(9 << 0)] = ds_list_find_value(global.lista_mod_att_3, i)
                                            oggetto.mod_id[(10 << 0)] = ds_list_find_value(global.lista_mod_att_4, i)
                                        }
                                    }
                                    placed = 1
                                }
                            }
                        }
                    }
                }
            }
        }
        ds_grid_destroy(grid_item_)
    }
    if mouse_left
    {
        if scr_mouse_inside((viewx + 128), (viewy + 16), 336, 144)
        {
            audio_play_sound(snd_mouse_press, 10, false)
            var gx = (((mouse_x - 128) - viewx) div 16)
            var gy = (((mouse_y - 16) - viewy) div 16)
            var i_selected = ds_grid_get(global.grid_craft_i, gx, gy)
            if (i_selected != -1)
            {
                global.craft_selected = i_selected
                with (obj_item)
                {
                    if (y > ((viewy + 16) + 144))
                        instance_destroy()
                }
                grid_w = 10
                grid_h = 4
                grid_item_ = ds_grid_create(grid_w, grid_h)
                ds_grid_clear(grid_item_, 0)
                var n_item_requiered = array_length_2d(global.craft_req, i_selected)
                for (i = 0; i < n_item_requiered; i++)
                {
                    id_item = global.craft_req[i_selected][i]
                    placed = 0
                    necessario_w = (sprite_get_width(item_sprite_inv[id_item]) div 16)
                    necessario_h = (sprite_get_height(item_sprite_inv[id_item]) div 16)
                    for (yy = 0; yy < grid_h; yy++)
                    {
                        for (xx = 0; xx < grid_w; xx++)
                        {
                            if (ds_grid_get(grid_item_, xx, yy) == 0)
                            {
                                if (placed == 0)
                                {
                                    can_place = 1
                                    if ((xx + necessario_w) > grid_w)
                                        can_place = 0
                                    if ((yy + necessario_h) > grid_h)
                                        can_place = 0
                                    for (ix = 0; ix < necessario_w; ix++)
                                    {
                                        for (iy = 0; iy < necessario_h; iy++)
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
                                            {
                                                ds_grid_set(grid_item_, (xx + ix), (yy + iy), 1)
                                                ds_grid_set(grid_item_, ((xx + ix) + 1), (yy + iy), 1)
                                            }
                                        }
                                        objx = ((viewx + 128) + (xx * 16))
                                        objy = ((viewy + 176) + (yy * 16))
                                        oggetto = instance_create_layer(objx, objy, "layer_draw_item", obj_item)
                                        oggetto.my_id = id_item
                                        oggetto.qnt = global.craft_req_n[i_selected][i]
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
                ds_grid_destroy(grid_item_)
                scr_check_qnt_item_necessari()
            }
        }
    }
    if (global.craft_state != (5 << 0) && global.craft_selected != -1)
    {
        if mouse_left
        {
            var cx = (viewx + 368)
            var cy = (viewy + 208)
            var sw = sprite_get_width(s_hud_craft_get_button)
            var sh = sprite_get_height(s_hud_craft_get_button)
            if (global.craft_state != (5 << 0) && global.craft_state != (4 << 0))
            {
                if scr_mouse_inside((camx + 304), (camy + 229), 12, 12)
                {
                    if (global.craft_track[global.craft_selected] == 0)
                        global.craft_track[global.craft_selected] = 1
                    else
                        global.craft_track[global.craft_selected] = 0
                    scr_save_tracked_craft()
                }
            }
            if scr_mouse_inside((cx - (sw / 2)), (cy - (sh / 2)), sw, sh)
            {
                _have_skill = 0
                _have_module = 0
                var _req_skill_id = global.craft_req_skill_id[global.craft_selected]
                var _req_skill_lvl = global.craft_req_skill_lvl[global.craft_selected]
                var _req_module_id = global.craft_req_module_id[global.craft_selected]
                var _req_module_lvl = global.craft_req_module_lvl[global.craft_selected]
                _array_return = scr_check_craft_possibile(global.craft_selected)
                _have_skill = _array_return[0]
                _have_module = _array_return[1]
                if (global.general_debug == 1)
                {
                    _have_module = 1
                    _have_skill = 1
                }
                if (_have_skill == 1 && _have_module == 1)
                {
                    var n_item_to_check = array_length_2d(global.craft_req, global.craft_selected)
                    grid_w = 8
                    grid_h = 11
                    grid_item_ = scr_riempi_inv_ini()
                    ini_open(global.save_inventory)
                    var ho_spazio_per_item = 1
                    var temp_item_id = global.craft_get[global.craft_selected]
                    placed = 0
                    necessario_w = (sprite_get_width(item_sprite_inv[temp_item_id]) div 16)
                    necessario_h = (sprite_get_height(item_sprite_inv[temp_item_id]) div 16)
                    for (yy = 0; yy < grid_h; yy++)
                    {
                        for (xx = 0; xx < grid_w; xx++)
                        {
                            if (ds_grid_get(grid_item_, xx, yy) == 0)
                            {
                                if (placed == 0)
                                {
                                    can_place = 1
                                    if ((xx + necessario_w) > grid_w)
                                        can_place = 0
                                    if ((yy + necessario_h) > grid_h)
                                        can_place = 0
                                    for (ix = 0; ix < necessario_w; ix++)
                                    {
                                        for (iy = 0; iy < necessario_h; iy++)
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
                                        var item_crafted_x = ((xx * 16) + 41)
                                        var item_crafted_y = ((yy * 16) + 63)
                                        var item_crafted_id = global.craft_get[global.craft_selected]
                                        var item_crafted_qnt = global.craft_get_n[global.craft_selected]
                                        show_debug_message("var salvate")
                                    }
                                }
                            }
                        }
                    }
                    ds_grid_destroy(grid_item_)
                    ini_close()
                    if (placed == 0)
                        ho_spazio_per_item = 0
                    var ho_la_qnt_necessaria = 1
                    for (i = 0; i < n_item_to_check; i++)
                    {
                        if (ds_grid_get(global.grid_check_n_item_requiered, i, 0) < global.craft_req_n[global.craft_selected][i])
                            ho_la_qnt_necessaria = 0
                    }
                    if (global.general_debug == 1)
                        ho_la_qnt_necessaria = 1
                    if (ho_la_qnt_necessaria == 1 && (ho_spazio_per_item == 1 || global.craft_state == (4 << 0)))
                    {
                        audio_play_sound(snd_crafting, 10, false)
                        if (global.craft_type[global.craft_selected] == (8 << 0))
                        {
                            if (global.craft_get[global.craft_selected] == (663 << 0))
                                ga_addDesignEvent("Craft:Lights_kit", 1)
                            if (global.craft_get[global.craft_selected] == (662 << 0))
                                ga_addDesignEvent("Craft:Santa_weapon", 1)
                            if (global.craft_get[global.craft_selected] == (540 << 0))
                                ga_addDesignEvent("Craft:Santa_armor", 1)
                        }
                        for (var j = 0; j < n_item_to_check; j++)
                            arr_craft_qnt_rimanete[j] = global.craft_req_n[global.craft_selected][j]
                        ini_open(global.save_player_chest)
                        with (obj_chest_player)
                        {
                            for (j = 0; j < global.storage_slot_unlocked; j++)
                            {
                                var quanti_item = ini_read_real(("chest_" + string(j)), "quanti_item", 0)
                                for (i = 0; i < quanti_item; i++)
                                {
                                    temp_item_id = ini_read_real(("chest_" + string(j)), ("item_id_N_" + string(i)), 0)
                                    var temp_item_qnt = ini_read_real(("chest_" + string(j)), ("item_quantità_N_" + string(i)), 0)
                                    for (var c = 0; c < n_item_to_check; c++)
                                    {
                                        var item_id_to_check = global.craft_req[global.craft_selected][c]
                                        if (temp_item_id == item_id_to_check)
                                        {
                                            var qnt_necessaria = arr_craft_qnt_rimanete[c]
                                            repeat qnt_necessaria
                                            {
                                                if (temp_item_qnt > 0)
                                                {
                                                    temp_item_qnt -= 1
                                                    arr_craft_qnt_rimanete[c] -= 1
                                                }
                                            }
                                            ini_write_real(("chest_" + string(j)), ("item_quantità_N_" + string(i)), temp_item_qnt)
                                        }
                                    }
                                }
                            }
                            ini_close()
                            ini_open(global.save_inventory)
                            var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                            if (number_of_items > 0)
                            {
                                for (i = 1; i <= number_of_items; i++)
                                {
                                    temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                                    temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                                    for (c = 0; c < n_item_to_check; c++)
                                    {
                                        item_id_to_check = global.craft_req[global.craft_selected][c]
                                        if (temp_item_id == item_id_to_check)
                                        {
                                            qnt_necessaria = arr_craft_qnt_rimanete[c]
                                            repeat qnt_necessaria
                                            {
                                                if (temp_item_qnt > 0)
                                                {
                                                    temp_item_qnt -= 1
                                                    arr_craft_qnt_rimanete[c] -= 1
                                                }
                                            }
                                            ini_write_real("Inventory", ("Item_qnt_" + string(i)), temp_item_qnt)
                                        }
                                    }
                                }
                            }
                        }
                        ini_close()
                        scr_check_qnt_item_necessari()
                        if (global.craft_state != (4 << 0))
                        {
                            ini_open(global.save_inventory)
                            number_of_items = ini_read_real("Inventory", "Number of items", 0)
                            var p = (number_of_items + 1)
                            ini_write_real("Inventory", ("Item_id_" + string(p)), item_crafted_id)
                            ini_write_real("Inventory", ("Item_qnt_" + string(p)), item_crafted_qnt)
                            ini_write_real("Inventory", ("Item_x_" + string(p)), item_crafted_x)
                            ini_write_real("Inventory", ("Item_y_" + string(p)), item_crafted_y)
                            ini_write_real("Inventory", ("durability" + string(p)), 100)
                            ini_write_real("Inventory", ("created_from_player" + string(p)), 1)
                            ini_write_real("Inventory", "Number of items", p)
                            show_debug_message("ini aggiornato")
                            ini_close()
                        }
                        else
                        {
                            var _reset_grid = 0
                            ho_spazio_per_item = 1
                            ini_open(global.save_inventory)
                            var _cerca = 1
                            number_of_items = ini_read_real("Inventory", "Number of items", 0)
                            if (number_of_items > 0)
                            {
                                for (i = 1; i <= number_of_items; i++)
                                {
                                    if (_cerca == 1)
                                    {
                                        temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                                        var dur = ini_read_real("Inventory", ("durability" + string(i)), 100)
                                        if (temp_item_id == global.craft_get[global.craft_selected] && global.craft_get_dur[global.craft_selected] == dur)
                                        {
                                            _cerca = 0
                                            ini_write_real("Inventory", ("durability" + string(i)), 100)
                                            var _get_dur = ini_read_real("Inventory", ("durability" + string(i)), 100)
                                            scr_draw_text_with_box(("Item repaired successfully " + string(_get_dur)))
                                            _reset_grid = 1
                                            global.craft_selected = -1
                                        }
                                    }
                                }
                            }
                            ini_close()
                            if (room == r_hub)
                            {
                                ini_open(global.save_player_chest)
                                for (var k = 0; k < global.storage_slot_unlocked; k++)
                                {
                                    quanti_item = ini_read_real(("chest_" + string(k)), "quanti_item", 0)
                                    for (i = 0; i < quanti_item; i++)
                                    {
                                        if (_cerca == 1)
                                        {
                                            temp_item_id = ini_read_real(("chest_" + string(k)), ("item_id_N_" + string(i)), 0)
                                            dur = ini_read_real(("chest_" + string(k)), ("durability_N_" + string(i)), 0)
                                            if (temp_item_id == global.craft_get[global.craft_selected] && global.craft_get_dur[global.craft_selected] == dur)
                                            {
                                                _cerca = 0
                                                ini_write_real(("chest_" + string(k)), ("durability_N_" + string(i)), 100)
                                                _get_dur = ini_read_real(("chest_" + string(k)), ("durability_N_" + string(i)), 0)
                                                scr_draw_text_with_box(("Item repaired successfully " + string(_get_dur)))
                                                _reset_grid = 1
                                                global.craft_selected = -1
                                            }
                                        }
                                    }
                                }
                                ini_close()
                            }
                            if (_reset_grid == 1)
                            {
                                change_page = 1
                                scr_crea_lista_repair()
                                lista_craft()
                            }
                        }
                    }
                    if (ho_spazio_per_item == 1 && ho_la_qnt_necessaria == 0)
                        scr_draw_text_with_box("You don't have enough items")
                    if (ho_spazio_per_item == 0 && ho_la_qnt_necessaria == 1)
                        scr_draw_text_with_box("You don't have enough space")
                    if (ho_spazio_per_item == 0 && ho_la_qnt_necessaria == 0)
                        scr_draw_text_with_box("You don't have enough space and items")
                }
                else
                {
                    var _t_skill = ""
                    if (_req_skill_id != 0)
                        _t_skill = (((global.sk_name[_req_skill_id] + " lvl ") + string(_req_skill_lvl)) + " ; ")
                    var _t_module = ""
                    if (_req_module_id != -1)
                        _t_module = ((global.base_name[_req_module_id] + " lvl ") + string(_req_module_lvl))
                    scr_draw_text_with_box((("Requirement: " + _t_skill) + _t_module))
                }
            }
        }
    }
    if mouse_left
    {
        if (global.craft_state == (5 << 0))
        {
            var id_item_ = instance_position(mouse_x, mouse_y, obj_item)
            if (id_item_ != noone)
            {
                var t = item_name[id_item_.my_id]
                show_debug_message(t)
                var temp_id_weapon = id_item_.my_id
                temp_[(0 << 0)] = id_item_.mod_id[(0 << 0)]
                temp_[(1 << 0)] = id_item_.mod_id[(1 << 0)]
                temp_[(3 << 0)] = id_item_.mod_id[(3 << 0)]
                temp_[(2 << 0)] = id_item_.mod_id[(2 << 0)]
                temp_[(5 << 0)] = id_item_.mod_id[(5 << 0)]
                temp_[(6 << 0)] = id_item_.mod_id[(6 << 0)]
                temp_[(4 << 0)] = id_item_.mod_id[(4 << 0)]
                temp_[(7 << 0)] = id_item_.mod_id[(7 << 0)]
                temp_[(8 << 0)] = id_item_.mod_id[(8 << 0)]
                temp_[(9 << 0)] = id_item_.mod_id[(9 << 0)]
                temp_[(10 << 0)] = id_item_.mod_id[(10 << 0)]
                var temp_x = id_item_.file_x
                var temp_y = id_item_.file_y
                var temp_inv = id_item_.file_inv
                var temp_dur = id_item_.durability
                with (obj_item)
                    instance_destroy()
                var temp_item = instance_create_layer((camx + 160), (camy + 64), "layer_draw_item", obj_item)
                temp_item.my_id = temp_id_weapon
                temp_item.my_x = 160
                temp_item.my_y = 64
                temp_item.rotation = 0
                temp_item.qnt = 1
                temp_item.durability = temp_dur
                temp_item.sprite_index = item_sprite_inv[temp_id_weapon]
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
                global.instance_id_modding = temp_item
                global.instance_id_modding_file_x = temp_x
                global.instance_id_modding_file_y = temp_y
                global.instance_id_modding_file_inv = temp_inv
                state = gml_Script_scr_player_state_mod
                o.button_mod_selected = -1
            }
        }
    }
    if (change_page == 1)
    {
        o.change_page_next_step = 1
        lista_craft()
    }
    return;
}

