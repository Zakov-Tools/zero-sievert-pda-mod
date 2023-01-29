function scr_inv_load() //gml_Script_scr_inv_load
{
    ini_open(global.save_inventory)
    ini_section_delete("Inventory")
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
            var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
            var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
            var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
            var temp_item_pos = ini_read_real("Inventory", ("Item_position" + string(i)), 0)
            var temp_rotation = ini_read_real("Inventory", ("rotation" + string(i)), 0)
            var temp_ammo = ini_read_real("Inventory", ("item_ammo" + string(i)), 0)
            var temp_dur = ini_read_real("Inventory", ("durability" + string(i)), 0)
            ds_list_add(global.l_inv_id, temp_item_id)
            ds_list_add(global.l_inv_x, temp_item_x)
            ds_list_add(global.l_inv_y, temp_item_y)
            ds_list_add(global.l_inv_position, temp_item_pos)
            ds_list_add(global.l_inv_qnt, temp_item_qnt)
            ds_list_add(global.l_inv_rotation, temp_rotation)
            ds_list_add(global.l_inv_ammo, temp_ammo)
            ds_list_add(global.l_inv_dur, temp_dur)
        }
    }
    ini_close()
    return;
}

