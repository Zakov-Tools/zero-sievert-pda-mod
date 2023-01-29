function scr_check_qnt_item_necessari() //gml_Script_scr_check_qnt_item_necessari
{
    var n_items = array_length_2d(global.craft_req, global.craft_selected)
    global.grid_check_n_item_requiered = ds_grid_create(n_items, 1)
    ds_grid_clear(global.grid_check_n_item_requiered, 0)
    ini_open(global.save_inventory)
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
            var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
            for (var c = 0; c < n_items; c++)
            {
                var item_id_to_check = global.craft_req[global.craft_selected][c]
                if (temp_item_id == item_id_to_check)
                    ds_grid_set(global.grid_check_n_item_requiered, c, 0, (ds_grid_get(global.grid_check_n_item_requiered, c, 0) + temp_item_qnt))
            }
        }
    }
    ini_close()
    ini_open(global.save_player_chest)
    with (obj_chest_player)
    {
        for (var j = 0; j < global.storage_slot_unlocked; j++)
        {
            var quanti_item = ini_read_real(("chest_" + string(j)), "quanti_item", 0)
            for (i = 0; i < quanti_item; i++)
            {
                temp_item_id = ini_read_real(("chest_" + string(j)), ("item_id_N_" + string(i)), 0)
                temp_item_qnt = ini_read_real(("chest_" + string(j)), ("item_quantità_N_" + string(i)), 0)
                for (c = 0; c < n_items; c++)
                {
                    item_id_to_check = global.craft_req[global.craft_selected][c]
                    if (temp_item_id == item_id_to_check)
                        ds_grid_set(global.grid_check_n_item_requiered, c, 0, (ds_grid_get(global.grid_check_n_item_requiered, c, 0) + temp_item_qnt))
                }
            }
        }
    }
    ini_close()
    return;
}

