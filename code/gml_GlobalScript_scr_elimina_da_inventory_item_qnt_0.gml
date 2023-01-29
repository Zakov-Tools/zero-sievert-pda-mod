function scr_elimina_da_inventory_item_qnt_0() //gml_Script_scr_elimina_da_inventory_item_qnt_0
{
    ini_open(global.save_inventory)
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
            if (temp_item_qnt == 0)
            {
                ini_key_delete("Inventory", ("Item_id_" + string(i)))
                ini_key_delete("Inventory", ("Item_qnt_" + string(i)))
                ini_key_delete("Inventory", ("Item_x_" + string(i)))
                ini_key_delete("Inventory", ("Item_y_" + string(i)))
                ini_key_delete("Inventory", ("rotation" + string(i)))
                ini_key_delete("Inventory", ("created_from_player" + string(i)))
                ini_key_delete("Inventory", ("item_ammo" + string(i)))
                ini_key_delete("Inventory", ("durability" + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((0 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((1 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((3 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((2 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((5 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((6 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((4 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((7 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((8 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((9 << 0))) + "_") + string(i)))
                ini_key_delete("Inventory", ((("mod_" + string((10 << 0))) + "_") + string(i)))
            }
        }
    }
    ini_close()
    return;
}

