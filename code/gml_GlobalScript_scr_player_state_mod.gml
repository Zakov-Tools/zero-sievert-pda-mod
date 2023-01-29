function scr_player_state_mod() //gml_Script_scr_player_state_mod
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    obj_mouse.image_index = 4
    var change_page = 0
    var mouse_left = mouse_check_button_pressed(mb_left)
    var o = obj_controller
    o.button_mod_hover = -1
    var get_weapon_id = global.instance_id_modding.my_id
    var is_inv = global.instance_id_modding.file_inv
    for (var i = 0; i < array_length_1d(o.b_mod); i++)
    {
        var get_mod_pos = o.b_mod[i]
        if (arma_mod_moddable[get_weapon_id][get_mod_pos] == 1)
            o.b_mod_cliccabile[get_mod_pos] = 1
        else
            o.b_mod_cliccabile[get_mod_pos] = 0
    }
    if (global.instance_id_modding.mod_id[(3 << 0)] != -1)
        o.b_mod_cliccabile[(2 << 0)] = 1
    else if (o.arma_mod_moddable[get_weapon_id][(3 << 0)] == 0)
    {
        if (o.arma_mod_moddable[get_weapon_id][(2 << 0)] == 1)
            o.b_mod_cliccabile[(2 << 0)] = 1
    }
    else
        o.b_mod_cliccabile[(2 << 0)] = 0
    if (global.instance_id_modding.mod_id[(3 << 0)] != -1)
        o.b_mod_cliccabile[(5 << 0)] = 1
    else if (o.arma_mod_moddable[get_weapon_id][(3 << 0)] == 0)
        o.b_mod_cliccabile[(5 << 0)] = 1
    else
        o.b_mod_cliccabile[(5 << 0)] = 0
    if (global.instance_id_modding.mod_id[(2 << 0)] != -1)
    {
        var get_handguard_id = global.instance_id_modding.mod_id[(2 << 0)]
        if (mod_handguard_slot[get_handguard_id][0] == 1)
            o.b_mod_cliccabile[(7 << 0)] = 1
        if (mod_handguard_slot[get_handguard_id][1] == 1)
            o.b_mod_cliccabile[(8 << 0)] = 1
        if (mod_handguard_slot[get_handguard_id][2] == 1)
            o.b_mod_cliccabile[(9 << 0)] = 1
        if (mod_handguard_slot[get_handguard_id][3] == 1)
            o.b_mod_cliccabile[(10 << 0)] = 1
    }
    else if (arma_mod_moddable[global.instance_id_modding.my_id][(2 << 0)] == 0)
    {
        if (arma_mod_moddable[global.instance_id_modding.my_id][(7 << 0)] == 1)
            o.b_mod_cliccabile[(7 << 0)] = 1
        if (arma_mod_moddable[global.instance_id_modding.my_id][(8 << 0)] == 1)
            o.b_mod_cliccabile[(8 << 0)] = 1
        if (arma_mod_moddable[global.instance_id_modding.my_id][(9 << 0)] == 1)
            o.b_mod_cliccabile[(9 << 0)] = 1
        if (arma_mod_moddable[global.instance_id_modding.my_id][(10 << 0)] == 1)
            o.b_mod_cliccabile[(10 << 0)] = 1
    }
    else
    {
        o.b_mod_cliccabile[(7 << 0)] = 0
        o.b_mod_cliccabile[(8 << 0)] = 0
        o.b_mod_cliccabile[(9 << 0)] = 0
        o.b_mod_cliccabile[(10 << 0)] = 0
    }
    var n_butt = array_length_1d(obj_controller.b_mod)
    for (i = 0; i < n_butt; i++)
    {
        if scr_mouse_inside((camx + o.b_mod_x[i]), (camy + o.b_mod_y[i]), o.button_mod_width, o.button_mod_height)
        {
            if (o.b_mod_cliccabile[i] == 1)
                o.button_mod_hover = o.b_mod[i]
        }
    }
    o.button_mod_remove_hover = 0
    if scr_mouse_inside((camx + o.button_mod_remove_x), (camy + o.button_mod_remove_y), o.button_mod_remove_w, o.button_mod_remove_h)
        o.button_mod_remove_hover = 1
    if mouse_left
    {
        if (o.button_mod_hover != -1)
        {
            o.button_mod_selected = o.button_mod_hover
            change_page = 1
        }
    }
    if (o.button_mod_selected != -1)
    {
        if mouse_left
        {
            if (o.button_mod_remove_hover == 1)
            {
                var mod_pos_ = o.button_mod_selected
                var mod_id_installed = global.instance_id_modding.mod_id[o.button_mod_selected]
                if (mod_id_installed != -1)
                {
                    scr_remove_installed_mod(mod_id_installed, mod_pos_)
                    change_page = 1
                }
            }
        }
        if mouse_check_button_pressed(mb_left)
        {
            if scr_mouse_inside((camx + 144), (camy + 160), 96, 96)
            {
                var _mod_id = collision_point(mouse_x, mouse_y, obj_item, 0, 1)
                mod_pos_ = o.button_mod_selected
                mod_id_installed = global.instance_id_modding.mod_id[o.button_mod_selected]
                var can_add = 1
                var condizione_ = 1
                if instance_exists(_mod_id)
                {
                    if (mod_pos_ == (2 << 0))
                    {
                        var barrel_id_ = global.instance_id_modding.mod_id[(3 << 0)]
                        if (barrel_id_ != -1)
                        {
                            var get_barrel_length = mod_barrel_length[barrel_id_]
                            var get_handguard_length = mod_handguard_length[_mod_id.my_id]
                            if (get_handguard_length >= get_barrel_length)
                                condizione_ = 0
                        }
                    }
                    if (condizione_ == 0)
                        scr_draw_text_with_box("The handguard is too long for this barrel")
                    if (_mod_id != noone && condizione_ == 1)
                    {
                        if (mod_id_installed != -1)
                        {
                            can_add = scr_remove_installed_mod(mod_id_installed, mod_pos_)
                            change_page = 1
                        }
                        if (can_add == 1)
                        {
                            if (global.debug_modding == 0)
                            {
                                ini_open(global.save_inventory)
                                var item_tolto = 0
                                var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                                if (number_of_items > 0)
                                {
                                    for (i = 1; i <= number_of_items; i++)
                                    {
                                        if (item_tolto == 0)
                                        {
                                            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                                            var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                                            var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                                            var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                                            if (temp_item_id == _mod_id.my_id)
                                            {
                                                if (temp_item_qnt > 0)
                                                {
                                                    ini_write_real("Inventory", ("Item_qnt_" + string(i)), 0)
                                                    item_tolto = 1
                                                    change_page = 1
                                                    show_debug_message("mod messa e item tolto all'inv")
                                                    global.instance_id_modding.mod_id[mod_pos_] = _mod_id.my_id
                                                    global.instance_id_modding.alarm[2] = 1
                                                }
                                            }
                                        }
                                    }
                                }
                                ini_close()
                                if (item_tolto == 0)
                                {
                                    ini_open(global.save_player_chest)
                                    for (var j = 0; j < global.storage_slot_unlocked; j++)
                                    {
                                        var quanti_item = ini_read_real(("chest_" + string(j)), "quanti_item", 0)
                                        for (i = 0; i < quanti_item; i++)
                                        {
                                            if (item_tolto == 0)
                                            {
                                                temp_item_id = ini_read_real(("chest_" + string(j)), ("item_id_N_" + string(i)), 0)
                                                temp_item_qnt = ini_read_real(("chest_" + string(j)), ("item_quantità_N_" + string(i)), 0)
                                                if (temp_item_id == _mod_id.my_id)
                                                {
                                                    if (temp_item_qnt > 0)
                                                    {
                                                        ini_write_real(("chest_" + string(j)), ("item_quantità_N_" + string(i)), 0)
                                                        item_tolto = 1
                                                        change_page = 1
                                                        global.instance_id_modding.mod_id[mod_pos_] = _mod_id.my_id
                                                        global.instance_id_modding.alarm[2] = 1
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    ini_close()
                                }
                            }
                            else
                            {
                                global.instance_id_modding.mod_id[mod_pos_] = _mod_id.my_id
                                global.instance_id_modding.alarm[2] = 1
                            }
                            scr_save_weapon_modded()
                        }
                    }
                }
            }
        }
        if (change_page == 1)
        {
            with (obj_item)
            {
                if (y > ((camy + 64) + 16))
                    instance_destroy()
            }
            mod_pos_ = o.button_mod_selected
            mod_id_installed = global.instance_id_modding.mod_id[o.button_mod_selected]
            if (mod_id_installed != -1)
            {
                var temp_item = instance_create_layer((camx + 256), (camy + 160), "layer_draw_item", obj_item)
                temp_item.my_id = mod_id_installed
                temp_item.qnt = 1
                temp_item.my_x = 256
                temp_item.my_y = 160
                temp_item.sprite_index = global.instance_id_modding.item_sprite_inv[mod_id_installed]
                temp_item.rotation = 0
            }
            ds_list_clear(global.list_mod_avaible)
            ds_list_clear(global.list_mod_avaible_x)
            ds_list_clear(global.list_mod_avaible_y)
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
                    if (temp_item_qnt > 0)
                    {
                        if (item_categoria[temp_item_id] == (17 << 0))
                        {
                            var aggiungi = 0
                            for (var g = 0; g < array_length_2d(mod_position, temp_item_id); g++)
                            {
                                if (mod_position[temp_item_id][g] == mod_pos_)
                                    aggiungi = 1
                            }
                            var compatibile = 0
                            if (mod_weapon_all[temp_item_id] == 1)
                                compatibile = 1
                            else
                            {
                                for (g = 0; g < array_length_2d(mod_weapon_id, temp_item_id); g++)
                                {
                                    if (global.instance_id_modding.my_id == mod_weapon_id[temp_item_id][g])
                                        compatibile = 1
                                }
                            }
                            if (aggiungi == 1 && compatibile == 1)
                            {
                                if (temp_item_id != mod_id_installed)
                                {
                                    var already = 0
                                    for (var k = 0; k < ds_list_size(global.list_mod_avaible); k++)
                                    {
                                        if (ds_list_find_value(global.list_mod_avaible, k) == temp_item_id)
                                            already = 1
                                    }
                                    if (already == 0)
                                    {
                                        ds_list_add(global.list_mod_avaible, temp_item_id)
                                        ds_list_add(global.list_mod_avaible_x, temp_item_x)
                                        ds_list_add(global.list_mod_avaible_y, temp_item_y)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ini_close()
            ini_open(global.save_player_chest)
            for (j = 0; j < global.storage_slot_unlocked; j++)
            {
                number_of_items = ini_read_real(("chest_" + string(j)), "quanti_item", 0)
                if (number_of_items > 0)
                {
                    for (i = 0; i < number_of_items; i++)
                    {
                        temp_item_id = ini_read_real(("chest_" + string(j)), ("item_id_N_" + string(i)), (0 << 0))
                        temp_item_qnt = ini_read_real(("chest_" + string(j)), ("item_quantità_N_" + string(i)), 1)
                        temp_item_x = ini_read_real(("chest_" + string(j)), ("item_x_N_" + string(i)), 0)
                        temp_item_y = ini_read_real(("chest_" + string(j)), ("item_y_N_" + string(i)), 0)
                        if (temp_item_qnt > 0)
                        {
                            if (item_categoria[temp_item_id] == (17 << 0))
                            {
                                aggiungi = 0
                                for (g = 0; g < array_length_2d(mod_position, temp_item_id); g++)
                                {
                                    if (mod_position[temp_item_id][g] == mod_pos_)
                                        aggiungi = 1
                                }
                                compatibile = 0
                                if (mod_weapon_all[temp_item_id] == 1)
                                    compatibile = 1
                                else
                                {
                                    for (g = 0; g < array_length_2d(mod_weapon_id, temp_item_id); g++)
                                    {
                                        if (global.instance_id_modding.my_id == mod_weapon_id[temp_item_id][g])
                                            compatibile = 1
                                    }
                                }
                                if (aggiungi == 1 && compatibile == 1)
                                {
                                    if (temp_item_id != mod_id_installed)
                                    {
                                        already = 0
                                        for (k = 0; k < ds_list_size(global.list_mod_avaible); k++)
                                        {
                                            if (ds_list_find_value(global.list_mod_avaible, k) == temp_item_id)
                                                already = 1
                                        }
                                        if (already == 0)
                                        {
                                            ds_list_add(global.list_mod_avaible, temp_item_id)
                                            ds_list_add(global.list_mod_avaible_x, temp_item_x)
                                            ds_list_add(global.list_mod_avaible_y, temp_item_y)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ini_close()
            if (global.debug_modding == 1)
            {
                for (i = 0; i < array_length_1d(item_id); i++)
                {
                    if (item_categoria[i] == (17 << 0))
                    {
                        aggiungi = 0
                        for (g = 0; g < array_length_2d(mod_position, i); g++)
                        {
                            if (mod_position[i][g] == mod_pos_)
                                aggiungi = 1
                        }
                        compatibile = 0
                        if (mod_weapon_all[i] == 1)
                            compatibile = 1
                        else
                        {
                            for (g = 0; g < array_length_2d(mod_weapon_id, i); g++)
                            {
                                if (global.instance_id_modding.my_id == mod_weapon_id[i][g])
                                    compatibile = 1
                            }
                        }
                        if (aggiungi == 1 && compatibile == 1)
                        {
                            if (i != mod_id_installed)
                            {
                                already = 0
                                for (k = 0; k < ds_list_size(global.list_mod_avaible); k++)
                                {
                                    if (ds_list_find_value(global.list_mod_avaible, k) == item_id[i])
                                        already = 1
                                }
                                if (already == 0)
                                {
                                    ds_list_add(global.list_mod_avaible, item_id[i])
                                    ds_list_add(global.list_mod_avaible_x, 0)
                                    ds_list_add(global.list_mod_avaible_y, 0)
                                }
                            }
                        }
                    }
                }
            }
            var grid_w = 6
            var grid_h = 6
            var grid_item_ = ds_grid_create(grid_w, grid_h)
            ds_grid_clear(grid_item_, 0)
            for (i = 0; i < ds_list_size(global.list_mod_avaible); i++)
            {
                var id_item = ds_list_find_value(global.list_mod_avaible, i)
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
                                            ds_grid_set(grid_item_, (xx + ix), (yy + iy), 1)
                                    }
                                    var objx = ((camx + 144) + (xx * 16))
                                    var objy = ((camy + 160) + (yy * 16))
                                    var oggetto = instance_create_layer(objx, objy, "layer_draw_item", obj_item)
                                    oggetto.my_id = id_item
                                    oggetto.qnt = 1
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
    }
    if global.kb_pressed[(5 << 0)]
    {
        scr_save_weapon_modded()
        with (obj_item)
            instance_destroy()
        obj_controller.can_pause = 0
        state = gml_Script_scr_player_state_craft
        return;
    }
    if keyboard_check_pressed(vk_escape)
    {
        scr_save_weapon_modded()
        with (obj_item)
            instance_destroy()
        obj_controller.can_pause = 0
        state = gml_Script_scr_player_state_craft
        return;
    }
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside(((camx + 480) - 16), camy, 16, 16)
        {
            scr_save_weapon_modded()
            with (obj_item)
                instance_destroy()
            state = gml_Script_scr_player_state_craft
            return;
        }
    }
    return;
}

