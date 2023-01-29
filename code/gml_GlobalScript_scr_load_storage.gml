function scr_load_storage() //gml_Script_scr_load_storage
{
    ini_open(global.save_player_chest)
    var quanti_item = ini_read_real(("chest_" + string(global.storage_page_now)), "quanti_item", 0)
    for (var i = 0; i < quanti_item; i++)
    {
        var temp_item_qnt = ini_read_real(("chest_" + string(global.storage_page_now)), ("item_quantità_N_" + string(i)), 1)
        var temp_item_id = ini_read_real(("chest_" + string(global.storage_page_now)), ("item_id_N_" + string(i)), (0 << 0))
        var temp_item_x = ini_read_real(("chest_" + string(global.storage_page_now)), ("item_x_N_" + string(i)), 0)
        var temp_item_y = ini_read_real(("chest_" + string(global.storage_page_now)), ("item_y_N_" + string(i)), 0)
        var temp_rotation = ini_read_real(("chest_" + string(global.storage_page_now)), ("rotation_N_" + string(i)), 0)
        var temp_from_player = ini_read_real(("chest_" + string(global.storage_page_now)), ("created_from_player_N_" + string(i)), 0)
        var cam_x = camera_get_view_x(view_camera[0])
        var cam_y = camera_get_view_y(view_camera[0])
        if (obj_controller.arma_moddable[temp_item_id] == 1)
        {
            temp_[(0 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((0 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(0 << 0)])
            temp_[(1 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((1 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(1 << 0)])
            temp_[(3 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((3 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(3 << 0)])
            temp_[(2 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((2 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(2 << 0)])
            temp_[(5 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((5 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(5 << 0)])
            temp_[(6 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((6 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(6 << 0)])
            temp_[(4 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((4 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(4 << 0)])
            temp_[(7 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((7 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(7 << 0)])
            temp_[(8 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((8 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(8 << 0)])
            temp_[(9 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((9 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(9 << 0)])
            temp_[(10 << 0)] = ini_read_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((10 << 0))) + "_") + "_N_") + string(i)), arma_mod_id[temp_item_id][(10 << 0)])
        }
        var temp_item = instance_create_layer(((cam_x + 312) + temp_item_x), ((cam_y + 63) + temp_item_y), "layer_draw_item", obj_item)
        temp_item.my_id = temp_item_id
        temp_item.qnt = temp_item_qnt
        temp_item.my_x = temp_item_x
        temp_item.my_y = temp_item_y
        temp_item.sprite_index = item_sprite_inv[temp_item_id]
        temp_item.rotation = temp_rotation
        temp_item.created_from_player = temp_from_player
        temp_item.visto = 1
        if (obj_controller.arma_moddable[temp_item_id] == 1)
        {
            temp_item.mod_id[(0 << 0)] = temp_[(0 << 0)]
            temp_item.mod_id[(1 << 0)] = temp_[(1 << 0)]
            temp_item.mod_id[(3 << 0)] = temp_[(3 << 0)]
            temp_item.mod_id[(2 << 0)] = temp_[(2 << 0)]
            temp_item.mod_id[(5 << 0)] = temp_[(5 << 0)]
            temp_item.mod_id[(6 << 0)] = temp_[(6 << 0)]
            temp_item.mod_id[(4 << 0)] = temp_[(4 << 0)]
            temp_item.mod_id[(7 << 0)] = temp_[(7 << 0)]
            temp_item.mod_id[(8 << 0)] = temp_[(8 << 0)]
            temp_item.mod_id[(9 << 0)] = temp_[(9 << 0)]
            temp_item.mod_id[(10 << 0)] = temp_[(10 << 0)]
        }
        if (item_categoria[temp_item_id] == (0 << 0) && temp_item_id != (0 << 0) && temp_item_id != (2 << 0))
        {
            var quante_ammo = ini_read_real(("chest_" + string(global.storage_page_now)), ("item_ammo_N_" + string(i)), arma_magazine[temp_item_id])
            var _ammo_id = ini_read_real(("chest_" + string(global.storage_page_now)), ("item_ammo_id_N_" + string(i)), arma_ammo[temp_item_id])
            temp_item.ammo_adesso = quante_ammo
            temp_item.ammo_now_id = _ammo_id
            show_debug_message(("ammo loaded_" + string(quante_ammo)))
        }
        if (item_categoria[temp_item_id] == (0 << 0) || item_categoria[temp_item_id] == (6 << 0))
        {
            var dur = ini_read_real(("chest_" + string(global.storage_page_now)), ("durability_N_" + string(i)), 100)
            temp_item.durability = dur
        }
    }
    ini_close()
    return;
}

