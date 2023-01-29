function scr_check_weight() //gml_Script_scr_check_weight
{
    if (state == gml_Script_scr_player_state_move)
    {
        global.max_weight = 0
        global.player_weight = 0
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
                var toll = 2
                var _aggiungere_peso = 1
                if (temp_item_x >= (200 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (31 - toll) && temp_item_y <= (63 + toll))
                    _aggiungere_peso = 0
                if (temp_item_x >= (200 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (76 - toll) && temp_item_y <= (108 + toll))
                    _aggiungere_peso = 0
                if (_aggiungere_peso == 1)
                    global.player_weight += (item_weight[temp_item_id] * temp_item_qnt)
            }
        }
        ini_close()
        global.max_weight = obj_player.base_weight
        if (global.backpack_equipped == 1)
            global.max_weight += backpack_weight[backpack_now]
        global.max_weight += (global.sk_k[(1 << 0)] + global.injector_factor[(6 << 0)])
        global.max_weight = clamp(global.max_weight, 1, 9999)
    }
    return;
}

