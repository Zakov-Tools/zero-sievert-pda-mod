function scr_crea_lista_mod() //gml_Script_scr_crea_lista_mod
{
    var cam_x = camera_get_view_x(view_camera[0])
    var cam_y = camera_get_view_y(view_camera[0])
    ds_list_destroy(global.lista_mod_id)
    ds_list_destroy(global.lista_mod_dur)
    ds_list_destroy(global.lista_mod_stock)
    ds_list_destroy(global.lista_mod_grip)
    ds_list_destroy(global.lista_mod_barrel)
    ds_list_destroy(global.lista_mod_handguard)
    ds_list_destroy(global.lista_mod_brake)
    ds_list_destroy(global.lista_mod_scope)
    ds_list_destroy(global.lista_mod_magazine)
    ds_list_destroy(global.lista_mod_att_1)
    ds_list_destroy(global.lista_mod_att_2)
    ds_list_destroy(global.lista_mod_att_3)
    ds_list_destroy(global.lista_mod_att_4)
    ds_list_destroy(global.lista_mod_file_x)
    ds_list_destroy(global.lista_mod_file_y)
    ds_list_destroy(global.lista_mod_file_inv)
    global.lista_mod_id = ds_list_create()
    global.lista_mod_dur = ds_list_create()
    global.lista_mod_stock = ds_list_create()
    global.lista_mod_grip = ds_list_create()
    global.lista_mod_barrel = ds_list_create()
    global.lista_mod_handguard = ds_list_create()
    global.lista_mod_brake = ds_list_create()
    global.lista_mod_scope = ds_list_create()
    global.lista_mod_magazine = ds_list_create()
    global.lista_mod_att_1 = ds_list_create()
    global.lista_mod_att_2 = ds_list_create()
    global.lista_mod_att_3 = ds_list_create()
    global.lista_mod_att_4 = ds_list_create()
    global.lista_mod_file_x = ds_list_create()
    global.lista_mod_file_y = ds_list_create()
    global.lista_mod_file_inv = ds_list_create()
    ini_open(global.save_inventory)
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
            var temp_item_dur = ini_read_real("Inventory", ("durability" + string(i)), 0)
            var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
            var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
            var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
            var cat = item_categoria[temp_item_id]
            if (temp_item_qnt > 0)
            {
                if (cat == (0 << 0))
                {
                    if (obj_controller.arma_moddable[temp_item_id] == 1)
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
                        ds_list_add(global.lista_mod_id, temp_item_id)
                        ds_list_add(global.lista_mod_dur, temp_item_dur)
                        ds_list_add(global.lista_mod_stock, temp_[(0 << 0)])
                        ds_list_add(global.lista_mod_grip, temp_[(1 << 0)])
                        ds_list_add(global.lista_mod_barrel, temp_[(3 << 0)])
                        ds_list_add(global.lista_mod_handguard, temp_[(2 << 0)])
                        ds_list_add(global.lista_mod_brake, temp_[(5 << 0)])
                        ds_list_add(global.lista_mod_scope, temp_[(6 << 0)])
                        ds_list_add(global.lista_mod_magazine, temp_[(4 << 0)])
                        ds_list_add(global.lista_mod_att_1, temp_[(7 << 0)])
                        ds_list_add(global.lista_mod_att_2, temp_[(8 << 0)])
                        ds_list_add(global.lista_mod_att_3, temp_[(9 << 0)])
                        ds_list_add(global.lista_mod_att_4, temp_[(10 << 0)])
                        ds_list_add(global.lista_mod_file_x, temp_item_x)
                        ds_list_add(global.lista_mod_file_y, temp_item_y)
                        ds_list_add(global.lista_mod_file_inv, -1)
                    }
                }
            }
        }
    }
    ini_close()
    if (room == r_hub)
    {
        ini_open(global.save_player_chest)
        for (var k = 0; k < global.storage_slot_unlocked; k++)
        {
            var quanti_item = ini_read_real(("chest_" + string(k)), "quanti_item", 0)
            for (i = 0; i < quanti_item; i++)
            {
                temp_item_id = ini_read_real(("chest_" + string(k)), ("item_id_N_" + string(i)), 0)
                temp_item_qnt = ini_read_real(("chest_" + string(k)), ("item_quantità_N_" + string(i)), 0)
                temp_item_dur = ini_read_real(("chest_" + string(k)), ("durability_N_" + string(i)), 100)
                temp_item_x = ini_read_real(("chest_" + string(k)), ("item_x_N_" + string(i)), 0)
                temp_item_y = ini_read_real(("chest_" + string(k)), ("item_y_N_" + string(i)), 0)
                cat = item_categoria[temp_item_id]
                if (temp_item_qnt > 0)
                {
                    if (cat == (0 << 0))
                    {
                        if (obj_controller.arma_moddable[temp_item_id] == 1)
                        {
                            temp_[(0 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((0 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(0 << 0)])
                            temp_[(1 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((1 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(1 << 0)])
                            temp_[(3 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((3 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(3 << 0)])
                            temp_[(2 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((2 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(2 << 0)])
                            temp_[(5 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((5 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(5 << 0)])
                            temp_[(6 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((6 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(6 << 0)])
                            temp_[(4 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((4 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(4 << 0)])
                            temp_[(7 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((7 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(7 << 0)])
                            temp_[(8 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((8 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(8 << 0)])
                            temp_[(9 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((9 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(9 << 0)])
                            temp_[(10 << 0)] = ini_read_real(("chest_" + string(k)), (((("mod_" + string((10 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(10 << 0)])
                            ds_list_add(global.lista_mod_id, temp_item_id)
                            ds_list_add(global.lista_mod_dur, temp_item_dur)
                            ds_list_add(global.lista_mod_stock, temp_[(0 << 0)])
                            ds_list_add(global.lista_mod_grip, temp_[(1 << 0)])
                            ds_list_add(global.lista_mod_barrel, temp_[(3 << 0)])
                            ds_list_add(global.lista_mod_handguard, temp_[(2 << 0)])
                            ds_list_add(global.lista_mod_brake, temp_[(5 << 0)])
                            ds_list_add(global.lista_mod_scope, temp_[(6 << 0)])
                            ds_list_add(global.lista_mod_magazine, temp_[(4 << 0)])
                            ds_list_add(global.lista_mod_att_1, temp_[(7 << 0)])
                            ds_list_add(global.lista_mod_att_2, temp_[(8 << 0)])
                            ds_list_add(global.lista_mod_att_3, temp_[(9 << 0)])
                            ds_list_add(global.lista_mod_att_4, temp_[(10 << 0)])
                            ds_list_add(global.lista_mod_file_x, temp_item_x)
                            ds_list_add(global.lista_mod_file_y, temp_item_y)
                            ds_list_add(global.lista_mod_file_inv, k)
                        }
                    }
                }
            }
        }
        ini_close()
    }
    return;
}

