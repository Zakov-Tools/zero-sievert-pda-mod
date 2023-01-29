function scr_togli_un_item_tot(argument0, argument1) //gml_Script_scr_togli_un_item_tot
{
    var item_id_ = argument0
    var qnt_ = argument1
    var qnt_tolta = 0
    var item_tolto = 0
    ini_open(global.save_inventory)
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            if (item_tolto == 0)
            {
                var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                if (temp_item_id == item_id_)
                {
                    repeat temp_item_qnt
                    {
                        if (qnt_tolta < qnt_)
                        {
                            temp_item_qnt -= 1
                            ini_write_real("Inventory", ("Item_qnt_" + string(i)), temp_item_qnt)
                            qnt_tolta++
                            if (qnt_tolta >= qnt_)
                                item_tolto = 1
                        }
                    }
                }
            }
        }
    }
    ini_close()
    ini_open(global.save_player_chest)
    for (var j = 0; j < global.storage_slot_unlocked; j++)
    {
        if (item_tolto == 0)
        {
            var quanti_item = ini_read_real(("chest_" + string(j)), "quanti_item", 0)
            for (i = 0; i < quanti_item; i++)
            {
                if (item_tolto == 0)
                {
                    temp_item_id = ini_read_real(("chest_" + string(j)), ("item_id_N_" + string(i)), 0)
                    temp_item_qnt = ini_read_real(("chest_" + string(j)), ("item_quantità_N_" + string(i)), 0)
                    if (temp_item_id == item_id_)
                    {
                        repeat temp_item_qnt
                        {
                            if (qnt_tolta < qnt_)
                            {
                                temp_item_qnt -= 1
                                ini_write_real(("chest_" + string(j)), ("item_quantità_N_" + string(i)), temp_item_qnt)
                                qnt_tolta++
                                if (qnt_tolta >= qnt_)
                                    item_tolto = 1
                            }
                        }
                    }
                }
            }
        }
    }
    ini_close()
    return;
}

