function scr_controlla_di_avere_un_item_inventario(argument0) //gml_Script_scr_controlla_di_avere_un_item_inventario
{
    var have_item = 0
    var item_id_ = argument0
    ini_open(global.save_inventory)
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
            if (temp_item_id == item_id_)
                have_item = 1
        }
    }
    ini_close()
    return have_item;
}

