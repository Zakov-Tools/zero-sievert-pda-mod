function scr_save_or_load(argument0) //gml_Script_scr_save_or_load
{
    var save = argument0
    if (save == 1)
    {
        var ini_da_cui_copiare = global.save_inventory
        var ini_in_cui_scrivere = global.save_hub
    }
    if (save == 0)
    {
        ini_da_cui_copiare = global.save_hub
        ini_in_cui_scrivere = global.save_inventory
    }
    temp_[300][10] = 0
    ini_open(ini_da_cui_copiare)
    if (ini_da_cui_copiare == global.save_inventory)
    {
        var x_ = ini_read_real("player", "x", obj_player.x)
        var y_ = ini_read_real("player", "y", obj_player.y)
        var hp_ = ini_read_real("player", "hp", obj_player.hp_max)
        var hp_max_ = ini_read_real("player", "hp_max", obj_player.hp_max_total)
        var energy_ = ini_read_real("player", "energy", obj_player.energy_max)
        var thirst_ = ini_read_real("player", "thirst", obj_player.thirst_max)
        var fatigue_ = ini_read_real("player", "fatigue", obj_player.fatigue_start)
        var radiation_ = ini_read_real("player", "radiation", obj_player.radiation_accumulata)
        var money_ = ini_read_real("stats", "money", 0)
        var wound_ = ini_read_real("player", "wound", 0)
        var class_ = ini_read_real("Class", "Class_id", 0)
        var new_game = ini_read_real("Main", "new game", 0)
    }
    else
    {
        x_ = ini_read_real("player", "x", 671)
        y_ = ini_read_real("player", "y", 1311)
        hp_ = ini_read_real("player", "hp", 100)
        hp_max_ = ini_read_real("player", "hp_max", 100)
        energy_ = ini_read_real("player", "energy", 90)
        thirst_ = ini_read_real("player", "thirst", 90)
        fatigue_ = ini_read_real("player", "fatigue", 100)
        radiation_ = ini_read_real("player", "radiation", 0)
        money_ = ini_read_real("stats", "money", 0)
        wound_ = ini_read_real("player", "wound", 0)
        class_ = ini_read_real("Class", "Class_id", 0)
        new_game = ini_read_real("Main", "new game", 0)
    }
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            temp_item_id[i] = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
            temp_item_qnt[i] = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
            temp_item_x[i] = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
            temp_item_y[i] = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
            temp_rotation[i] = ini_read_real("Inventory", ("rotation" + string(i)), 0)
            temp_durability[i] = ini_read_real("Inventory", ("durability" + string(i)), 100)
            temp_ammo[i] = ini_read_real("Inventory", ("item_ammo" + string(i)), 0)
            temp_ammo_id[i] = ini_read_real("Inventory", ("item_ammo_id" + string(i)), 0)
            temp_created_from_player[i] = ini_read_real("Inventory", ("created_from_player" + string(i)), 0)
            if (arma_moddable[temp_item_id[i]] == 1)
            {
                temp_[i][(0 << 0)] = ini_read_real("Inventory", ((("mod_" + string((0 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(0 << 0)])
                temp_[i][(1 << 0)] = ini_read_real("Inventory", ((("mod_" + string((1 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(1 << 0)])
                temp_[i][(3 << 0)] = ini_read_real("Inventory", ((("mod_" + string((3 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(3 << 0)])
                temp_[i][(2 << 0)] = ini_read_real("Inventory", ((("mod_" + string((2 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(2 << 0)])
                temp_[i][(5 << 0)] = ini_read_real("Inventory", ((("mod_" + string((5 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(5 << 0)])
                temp_[i][(6 << 0)] = ini_read_real("Inventory", ((("mod_" + string((6 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(6 << 0)])
                temp_[i][(4 << 0)] = ini_read_real("Inventory", ((("mod_" + string((4 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(4 << 0)])
                temp_[i][(7 << 0)] = ini_read_real("Inventory", ((("mod_" + string((7 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(7 << 0)])
                temp_[i][(8 << 0)] = ini_read_real("Inventory", ((("mod_" + string((8 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(8 << 0)])
                temp_[i][(9 << 0)] = ini_read_real("Inventory", ((("mod_" + string((9 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(9 << 0)])
                temp_[i][(10 << 0)] = ini_read_real("Inventory", ((("mod_" + string((10 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id[i]][(10 << 0)])
            }
        }
    }
    ini_close()
    ini_open(ini_in_cui_scrivere)
    ini_section_delete("Inventory")
    ini_write_real("player", "x", x_)
    ini_write_real("player", "y", y_)
    ini_write_real("player", "hp", hp_)
    ini_write_real("player", "hp_max", hp_max_)
    ini_write_real("player", "energy", energy_)
    ini_write_real("player", "thirst", thirst_)
    ini_write_real("player", "fatigue", fatigue_)
    ini_write_real("player", "radiation", radiation_)
    ini_write_real("player", "wound", wound_)
    ini_write_real("Class", "Class_id", class_)
    ini_write_real("Main", "new game", new_game)
    ini_write_real("Inventory", "Number of items", number_of_items)
    ini_write_real("stats", "money", money_)
    if (number_of_items > 0)
    {
        for (i = 1; i <= number_of_items; i++)
        {
            ini_write_real("Inventory", ("Item_id_" + string(i)), temp_item_id[i])
            ini_write_real("Inventory", ("Item_qnt_" + string(i)), temp_item_qnt[i])
            ini_write_real("Inventory", ("Item_x_" + string(i)), temp_item_x[i])
            ini_write_real("Inventory", ("Item_y_" + string(i)), temp_item_y[i])
            ini_write_real("Inventory", ("rotation" + string(i)), temp_rotation[i])
            ini_write_real("Inventory", ("durability" + string(i)), temp_durability[i])
            ini_write_real("Inventory", ("item_ammo" + string(i)), temp_ammo[i])
            ini_write_real("Inventory", ("item_ammo_id" + string(i)), temp_ammo_id[i])
            ini_write_real("Inventory", ("created_from_player" + string(i)), temp_created_from_player[i])
            if (arma_moddable[temp_item_id[i]] == 1)
            {
                ini_write_real("Inventory", ((("mod_" + string((0 << 0))) + "_") + string(i)), temp_[i][(0 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((1 << 0))) + "_") + string(i)), temp_[i][(1 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((3 << 0))) + "_") + string(i)), temp_[i][(3 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((2 << 0))) + "_") + string(i)), temp_[i][(2 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((5 << 0))) + "_") + string(i)), temp_[i][(5 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((6 << 0))) + "_") + string(i)), temp_[i][(6 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((4 << 0))) + "_") + string(i)), temp_[i][(4 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((7 << 0))) + "_") + string(i)), temp_[i][(7 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((8 << 0))) + "_") + string(i)), temp_[i][(8 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((9 << 0))) + "_") + string(i)), temp_[i][(9 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((10 << 0))) + "_") + string(i)), temp_[i][(10 << 0)])
            }
        }
    }
    ini_close()
    return;
}

