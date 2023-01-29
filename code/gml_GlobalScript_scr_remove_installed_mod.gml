function scr_remove_installed_mod(argument0, argument1) //gml_Script_scr_remove_installed_mod
{
    var mod_id_installed = argument0
    var mod_pos_ = argument1
    var can_add = 1
    scr_elimina_da_inventory_item_qnt_0()
    if (mod_pos_ == (3 << 0))
    {
        if (global.instance_id_modding.mod_id[(5 << 0)] != -1)
        {
            can_add = 0
            scr_draw_text_with_box("You have to uninstall the muzzle flash")
        }
        if (global.instance_id_modding.mod_id[(2 << 0)] != -1)
        {
            can_add = 0
            scr_draw_text_with_box("You have to uninstall the handguard")
        }
    }
    if (mod_pos_ == (2 << 0))
    {
        var get_att_1 = global.instance_id_modding.mod_id[(7 << 0)]
        var get_att_2 = global.instance_id_modding.mod_id[(8 << 0)]
        var get_att_3 = global.instance_id_modding.mod_id[(9 << 0)]
        var get_att_4 = global.instance_id_modding.mod_id[(10 << 0)]
        if (get_att_1 != -1 || get_att_2 != -1 || get_att_3 != -1 || get_att_4 != -1)
        {
            can_add = 0
            scr_draw_text_with_box("You have to uninstall the attachments on the handguard")
        }
    }
    if (global.debug_modding == 1)
        can_add = 0
    if (can_add == 1)
    {
        var grid_w = 8
        var grid_h = 11
        var grid_item_ = scr_riempi_inv_ini()
        var ho_spazio_per_item = 0
        var placed = 0
        var necessario_w = (sprite_get_width(item_sprite_inv[mod_id_installed]) div 16)
        var necessario_h = (sprite_get_height(item_sprite_inv[mod_id_installed]) div 16)
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
                            ini_open(global.save_inventory)
                            var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                            var p = (number_of_items + 1)
                            ini_write_real("Inventory", ("Item_id_" + string(p)), mod_id_installed)
                            ini_write_real("Inventory", ("Item_qnt_" + string(p)), 1)
                            ini_write_real("Inventory", ("Item_x_" + string(p)), ((xx * 16) + 41))
                            ini_write_real("Inventory", ("Item_y_" + string(p)), ((yy * 16) + 63))
                            ini_write_real("Inventory", "Number of items", p)
                            show_debug_message("mod tolta e item aggiungo all'inv")
                            ini_close()
                            global.instance_id_modding.mod_id[mod_pos_] = -1
                            global.instance_id_modding.alarm[2] = 1
                            scr_save_weapon_modded()
                        }
                    }
                }
            }
        }
        ds_grid_destroy(grid_item_)
        if (ho_spazio_per_item == 0)
            scr_draw_text_with_box("You don't have enough inventory space")
        if (placed == 0)
        {
            scr_draw_text_with_box("Not enough inventory space!")
            can_add = 0
        }
    }
    if (global.debug_modding == 1)
    {
        can_add = 1
        global.instance_id_modding.mod_id[mod_pos_] = -1
        global.instance_id_modding.alarm[2] = 1
    }
    return can_add;
}

