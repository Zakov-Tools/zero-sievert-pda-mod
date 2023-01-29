function scr_save_position(argument0) //gml_Script_scr_save_position
{
    var attivare = argument0
    if (attivare == 1)
        instance_activate_all()
    else
    {
        var map_name = (obj_map_generator.area_name[obj_map_generator.area] + ".ini")
        ini_open(map_name)
        var i = 0
        with (obj_npc_parent)
        {
            i++
            ini_write_string("Enemy", ("ID_" + string(i)), object_get_name(object_index))
            ini_write_real("Enemy", ("x_" + string(i)), x)
            ini_write_real("Enemy", ("y_" + string(i)), y)
        }
        ini_write_real("general", "enemy amount", i)
        ini_close()
        ini_open("all_loot.ini")
        i = 0
        with (obj_chest_general)
        {
            temp_chest_x[i] = ini_read_real(("chest_" + string(id)), "chest_x", x)
            temp_chest_y[i] = ini_read_real(("chest_" + string(id)), "chest_y", y)
            temp_chest_n_item[i] = ini_read_real(("chest_" + string(id)), "quanti_item", 0)
            temp_chest_id[i] = tipo
            for (var k = 0; k < temp_chest_n_item[i]; k++)
            {
                temp_chest_item_id[i][k] = ini_read_real(("chest_" + string(id)), ("item_id_N_" + string(k)), (0 << 0))
                temp_chest_item_x[i][k] = ini_read_real(("chest_" + string(id)), ("item_x_N_" + string(k)), 0)
                temp_chest_item_y[i][k] = ini_read_real(("chest_" + string(id)), ("item_y_N_" + string(k)), 0)
                temp_chest_item_qnt[i][k] = ini_read_real(("chest_" + string(id)), ("item_quantità_N_" + string(k)), 1)
                temp_chest_item_rotation[i][k] = ini_read_real(("chest_" + string(id)), ("rotation_N_" + string(k)), 0)
                temp_chest_item_dur[i][k] = ini_read_real(("chest_" + string(id)), ("durability_N_" + string(k)), irandom_range(10, 25))
            }
            i++
        }
        var n_chest = i
        ini_close()
        ini_open(map_name)
        ini_write_real("general", "n_chest", n_chest)
        for (i = 0; i < n_chest; i++)
        {
            ini_write_real(("chest_" + string(i)), "ancora_da_creare", 1)
            ini_write_real(("chest_" + string(i)), "chest_x", temp_chest_x[i])
            ini_write_real(("chest_" + string(i)), "chest_y", temp_chest_y[i])
            ini_write_real(("chest_" + string(i)), "quanti_item", temp_chest_n_item[i])
            ini_write_real(("chest_" + string(i)), "chest_tipo", temp_chest_id[i])
            for (k = 0; k < temp_chest_n_item[i]; k++)
            {
                ini_write_real(("chest_" + string(i)), ("item_id_N_" + string(k)), temp_chest_item_id[i][k])
                ini_write_real(("chest_" + string(i)), ("item_x_N_" + string(k)), temp_chest_item_x[i][k])
                ini_write_real(("chest_" + string(i)), ("item_y_N_" + string(k)), temp_chest_item_y[i][k])
                ini_write_real(("chest_" + string(i)), ("item_quantità_N_" + string(k)), temp_chest_item_qnt[i][k])
                ini_write_real(("chest_" + string(i)), ("rotation_N_" + string(k)), temp_chest_item_rotation[i][k])
                ini_write_real(("chest_" + string(i)), ("durability_N_" + string(k)), temp_chest_item_dur[i][k])
            }
        }
        ini_close()
    }
    return;
}

