function scr_save_weapon_modded() //gml_Script_scr_save_weapon_modded
{
    var _cerca = 1
    if (global.instance_id_modding_file_inv == -1)
    {
        ini_open(global.save_inventory)
        var number_of_items = ini_read_real("Inventory", "Number of items", 0)
        if (number_of_items > 0)
        {
            for (var i = 1; i <= number_of_items; i++)
            {
                if (_cerca == 1)
                {
                    var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                    var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                    var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                    var temp_item_dur = ini_read_real("Inventory", ("durability" + string(i)), 100)
                    if (temp_item_id == global.instance_id_modding.my_id)
                    {
                        if (global.instance_id_modding_file_x == temp_item_x && global.instance_id_modding_file_y == temp_item_y)
                        {
                            if (temp_item_dur == global.instance_id_modding.durability)
                            {
                                _cerca = 0
                                ini_write_real("Inventory", ((("mod_" + string((0 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(0 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((1 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(1 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((3 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(3 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((2 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(2 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((5 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(5 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((6 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(6 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((4 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(4 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((7 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(7 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((8 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(8 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((9 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(9 << 0)])
                                ini_write_real("Inventory", ((("mod_" + string((10 << 0))) + "_") + string(i)), global.instance_id_modding.mod_id[(10 << 0)])
                                var is_equipped = 0
                                var _off = 2
                                if (temp_item_x >= (200 - _off) && temp_item_x < ((temp_item_x + 200) + 80) && temp_item_y >= (31 - _off) && temp_item_y < ((temp_item_y + 31) + 32))
                                {
                                    is_equipped = 1
                                    var pos = (1 << 0)
                                }
                                if (temp_item_x >= (200 - _off) && temp_item_x < ((temp_item_x + 200) + 80) && temp_item_y >= (76 - _off) && temp_item_y < ((temp_item_y + 76) + 32))
                                {
                                    is_equipped = 1
                                    pos = (2 << 0)
                                }
                                if (is_equipped == 1)
                                {
                                    mod_id[pos][(0 << 0)] = global.instance_id_modding.mod_id[(0 << 0)]
                                    mod_id[pos][(1 << 0)] = global.instance_id_modding.mod_id[(1 << 0)]
                                    mod_id[pos][(3 << 0)] = global.instance_id_modding.mod_id[(3 << 0)]
                                    mod_id[pos][(2 << 0)] = global.instance_id_modding.mod_id[(2 << 0)]
                                    mod_id[pos][(4 << 0)] = global.instance_id_modding.mod_id[(4 << 0)]
                                    mod_id[pos][(5 << 0)] = global.instance_id_modding.mod_id[(5 << 0)]
                                    mod_id[pos][(6 << 0)] = global.instance_id_modding.mod_id[(6 << 0)]
                                    mod_id[pos][(7 << 0)] = global.instance_id_modding.mod_id[(7 << 0)]
                                    mod_id[pos][(8 << 0)] = global.instance_id_modding.mod_id[(8 << 0)]
                                    mod_id[pos][(9 << 0)] = global.instance_id_modding.mod_id[(9 << 0)]
                                    mod_id[pos][(10 << 0)] = global.instance_id_modding.mod_id[(10 << 0)]
                                    if (mod_id[pos][(4 << 0)] == -1)
                                    {
                                        if (temp_item_id != -1 && temp_item_id != (2 << 0))
                                        {
                                            if (arma_mod_nec[temp_item_id][(4 << 0)] == 1)
                                            {
                                                obj_player.ammo_slot_max[pos] = 0
                                                obj_player.ammo_slot[pos] = 0
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
        ini_close()
    }
    if (room == r_hub)
    {
        ini_open(global.save_player_chest)
        for (var k = 0; k < global.storage_slot_unlocked; k++)
        {
            if (k == global.instance_id_modding_file_inv)
            {
                var quanti_item = ini_read_real(("chest_" + string(k)), "quanti_item", 0)
                for (i = 0; i < quanti_item; i++)
                {
                    if (_cerca == 1)
                    {
                        temp_item_id = ini_read_real(("chest_" + string(k)), ("item_id_N_" + string(i)), 0)
                        temp_item_dur = ini_read_real(("chest_" + string(k)), ("durability_N_" + string(i)), 100)
                        temp_item_x = ini_read_real(("chest_" + string(k)), ("item_x_N_" + string(i)), 0)
                        temp_item_y = ini_read_real(("chest_" + string(k)), ("item_y_N_" + string(i)), 0)
                        if (temp_item_id == global.instance_id_modding.my_id)
                        {
                            if (global.instance_id_modding_file_x == temp_item_x && global.instance_id_modding_file_y == temp_item_y)
                            {
                                if (temp_item_dur == global.instance_id_modding.durability)
                                {
                                    _cerca = 0
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((0 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(0 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((1 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(1 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((3 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(3 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((2 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(2 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((5 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(5 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((6 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(6 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((4 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(4 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((7 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(7 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((8 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(8 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((9 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(9 << 0)])
                                    ini_write_real(("chest_" + string(k)), (((("mod_" + string((10 << 0))) + "_") + "_N_") + string(i)), global.instance_id_modding.mod_id[(10 << 0)])
                                }
                            }
                        }
                    }
                }
            }
        }
        ini_close()
    }
    return;
}

