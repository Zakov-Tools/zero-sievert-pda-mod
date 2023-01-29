ini_open(global.save_inventory)
var number_of_items = ini_read_real("Inventory", "Number of items", 0)
if (number_of_items > 0)
{
    for (var i = 1; i <= number_of_items; i++)
    {
        var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
        var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
        var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
        var _toll = 2
        if (obj_controller.arma_moddable[temp_item_id] == 1)
        {
            if (temp_item_x >= (200 - _toll) && temp_item_x <= (280 + _toll) && temp_item_y >= (31 - _toll) && temp_item_y <= (63 + _toll))
            {
                temp_[(0 << 0)] = ini_read_real("Inventory", ((("mod_" + string((0 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(0 << 0)])
                temp_[(1 << 0)] = ini_read_real("Inventory", ((("mod_" + string((1 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(1 << 0)])
                temp_[(3 << 0)] = ini_read_real("Inventory", ((("mod_" + string((3 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(3 << 0)])
                temp_[(2 << 0)] = ini_read_real("Inventory", ((("mod_" + string((2 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(2 << 0)])
                temp_[(5 << 0)] = ini_read_real("Inventory", ((("mod_" + string((5 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(5 << 0)])
                temp_[(6 << 0)] = ini_read_real("Inventory", ((("mod_" + string((6 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(6 << 0)])
                temp_[(4 << 0)] = ini_read_real("Inventory", ((("mod_" + string((4 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(4 << 0)])
                temp_[(7 << 0)] = ini_read_real("Inventory", ((("mod_" + string((7 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(7 << 0)])
                temp_[(8 << 0)] = ini_read_real("Inventory", ((("mod_" + string((8 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(8 << 0)])
                temp_[(9 << 0)] = ini_read_real("Inventory", ((("mod_" + string((9 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(9 << 0)])
                temp_[(10 << 0)] = ini_read_real("Inventory", ((("mod_" + string((10 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(10 << 0)])
                mod_id[(1 << 0)][(0 << 0)] = temp_[(0 << 0)]
                mod_id[(1 << 0)][(1 << 0)] = temp_[(1 << 0)]
                mod_id[(1 << 0)][(3 << 0)] = temp_[(3 << 0)]
                mod_id[(1 << 0)][(2 << 0)] = temp_[(2 << 0)]
                mod_id[(1 << 0)][(5 << 0)] = temp_[(5 << 0)]
                mod_id[(1 << 0)][(6 << 0)] = temp_[(6 << 0)]
                mod_id[(1 << 0)][(4 << 0)] = temp_[(4 << 0)]
                mod_id[(1 << 0)][(7 << 0)] = temp_[(7 << 0)]
                mod_id[(1 << 0)][(8 << 0)] = temp_[(8 << 0)]
                mod_id[(1 << 0)][(9 << 0)] = temp_[(9 << 0)]
                mod_id[(1 << 0)][(10 << 0)] = temp_[(10 << 0)]
            }
            if (temp_item_x >= (200 - _toll) && temp_item_x <= (280 + _toll) && temp_item_y >= (76 - _toll) && temp_item_y <= (108 + _toll))
            {
                temp_[(0 << 0)] = ini_read_real("Inventory", ((("mod_" + string((0 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(0 << 0)])
                temp_[(1 << 0)] = ini_read_real("Inventory", ((("mod_" + string((1 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(1 << 0)])
                temp_[(3 << 0)] = ini_read_real("Inventory", ((("mod_" + string((3 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(3 << 0)])
                temp_[(2 << 0)] = ini_read_real("Inventory", ((("mod_" + string((2 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(2 << 0)])
                temp_[(5 << 0)] = ini_read_real("Inventory", ((("mod_" + string((5 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(5 << 0)])
                temp_[(6 << 0)] = ini_read_real("Inventory", ((("mod_" + string((6 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(6 << 0)])
                temp_[(4 << 0)] = ini_read_real("Inventory", ((("mod_" + string((4 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(4 << 0)])
                temp_[(7 << 0)] = ini_read_real("Inventory", ((("mod_" + string((7 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(7 << 0)])
                temp_[(8 << 0)] = ini_read_real("Inventory", ((("mod_" + string((8 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(8 << 0)])
                temp_[(9 << 0)] = ini_read_real("Inventory", ((("mod_" + string((9 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(9 << 0)])
                temp_[(10 << 0)] = ini_read_real("Inventory", ((("mod_" + string((10 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(10 << 0)])
                mod_id[(2 << 0)][(0 << 0)] = temp_[(0 << 0)]
                mod_id[(2 << 0)][(1 << 0)] = temp_[(1 << 0)]
                mod_id[(2 << 0)][(3 << 0)] = temp_[(3 << 0)]
                mod_id[(2 << 0)][(2 << 0)] = temp_[(2 << 0)]
                mod_id[(2 << 0)][(5 << 0)] = temp_[(5 << 0)]
                mod_id[(2 << 0)][(6 << 0)] = temp_[(6 << 0)]
                mod_id[(2 << 0)][(4 << 0)] = temp_[(4 << 0)]
                mod_id[(2 << 0)][(7 << 0)] = temp_[(7 << 0)]
                mod_id[(2 << 0)][(8 << 0)] = temp_[(8 << 0)]
                mod_id[(2 << 0)][(9 << 0)] = temp_[(9 << 0)]
                mod_id[(2 << 0)][(10 << 0)] = temp_[(10 << 0)]
            }
        }
    }
}
ini_close()
