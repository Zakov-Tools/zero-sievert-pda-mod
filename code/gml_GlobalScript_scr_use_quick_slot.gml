function scr_use_quick_slot(argument0, argument1) //gml_Script_scr_use_quick_slot
{
    if (reloading == 0)
    {
        ini_open(global.save_inventory)
        var number_of_items = ini_read_real("Inventory", "Number of items", 0)
        if (number_of_items > 0)
        {
            for (var i = 1; i <= number_of_items; i++)
            {
                var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                var _toll = 1
                if (temp_item_x >= (argument0 - _toll) && temp_item_x <= (argument0 + _toll) && temp_item_y >= (argument1 - _toll) && temp_item_y <= (argument1 + _toll))
                {
                    if (temp_item_qnt > 0)
                    {
                        if (item_categoria[temp_item_id] == (2 << 0))
                        {
                            var ani = instance_create_depth(obj_player.x, obj_player.y, ((-y) - 2), obj_arms_player_parent)
                            ani.sprite_index = med_animation[temp_item_id]
                            ani.image_index = 0
                            ani.alarm[2] = (med_duration[temp_item_id] / global.sk_k[(29 << 0)])
                            ani.item_id = temp_item_id
                            ini_write_real("Inventory", ("Item_qnt_" + string(i)), (temp_item_qnt - 1))
                        }
                        if (item_categoria[temp_item_id] == (9 << 0))
                        {
                            global.injector_factor[(0 << 0)] += inj_max_hp[temp_item_id]
                            global.injector_factor[(1 << 0)] += inj_hp_regen[temp_item_id]
                            global.injector_factor[(2 << 0)] += inj_bleed_rec[temp_item_id]
                            global.injector_factor[(3 << 0)] += inj_bleed_immune[temp_item_id]
                            global.injector_factor[(4 << 0)] += inj_stamina_max[temp_item_id]
                            global.injector_factor[(5 << 0)] += inj_stamina_regen[temp_item_id]
                            global.injector_factor[(6 << 0)] += inj_max_weigth[temp_item_id]
                            global.injector_factor[(7 << 0)] += inj_rad_regen[temp_item_id]
                            global.injector_factor[(8 << 0)] += inj_rad_def[temp_item_id]
                            global.injector_factor[(9 << 0)] += inj_hunger[temp_item_id]
                            global.injector_factor[(10 << 0)] += inj_hunger_regen[temp_item_id]
                            global.injector_factor[(11 << 0)] += inj_thirst[temp_item_id]
                            global.injector_factor[(12 << 0)] += inj_thirst_regen[temp_item_id]
                            var a = temp_item_id
                            with (obj_player)
                            {
                                hp_max += inj_max_hp[a]
                                bleed_immune += inj_bleed_immune[a]
                                stamina_max += inj_stamina_max[a]
                                radiation_defence += inj_rad_def[a]
                                energy += inj_hunger[a]
                                thirst += inj_thirst[a]
                            }
                            var in = instance_create_depth(obj_player.x, obj_player.y, 0, obj_injector_timer)
                            in.injector_id = temp_item_id
                            in.injector_timer = inj_duration[temp_item_id]
                            ini_write_real("Inventory", ("Item_qnt_" + string(i)), (temp_item_qnt - 1))
                        }
                    }
                }
            }
        }
        ini_close()
    }
    return;
}

