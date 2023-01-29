function scr_togli_un_item_inventario(argument0, argument1) //gml_Script_scr_togli_un_item_inventario
{
    var item_id_ = argument0
    var qnt_ = argument1
    var item_tolto = 0
    ini_open(global.save_inventory)
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
            if (temp_item_id == item_id_)
            {
                if (item_tolto == 0)
                {
                    var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                    temp_item_qnt -= qnt_
                    ini_write_real("Inventory", ("Item_qnt_" + string(i)), temp_item_qnt)
                    item_tolto = 1
                }
            }
        }
    }
    ini_close()
    return;
}

