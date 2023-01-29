function scr_save_storage() //gml_Script_scr_save_storage
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    ini_open(global.save_player_chest)
    if instance_exists(obj_chest_player)
    {
        var chest_nearest = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
        chest_nearest.quanti_item_effettivi = 0
        ini_section_delete(("chest_" + string(global.storage_page_now)))
        with (obj_item)
        {
            var my_tempx = ((x - camx) - 312)
            var my_tempy = ((y - camy) - 63)
            if (position == (3 << 0))
            {
                ini_write_real(("chest_" + string(global.storage_page_now)), ("item_id_N_" + string(chest_nearest.quanti_item_effettivi)), my_id)
                ini_write_real(("chest_" + string(global.storage_page_now)), ("item_quantità_N_" + string(chest_nearest.quanti_item_effettivi)), qnt)
                ini_write_real(("chest_" + string(global.storage_page_now)), ("item_x_N_" + string(chest_nearest.quanti_item_effettivi)), my_tempx)
                ini_write_real(("chest_" + string(global.storage_page_now)), ("item_y_N_" + string(chest_nearest.quanti_item_effettivi)), my_tempy)
                ini_write_real(("chest_" + string(global.storage_page_now)), ("rotation_N_" + string(chest_nearest.quanti_item_effettivi)), rotation)
                ini_write_real(("chest_" + string(global.storage_page_now)), ("item_ammo_N_" + string(chest_nearest.quanti_item_effettivi)), ammo_adesso)
                ini_write_real(("chest_" + string(global.storage_page_now)), ("item_ammo_id_N_" + string(chest_nearest.quanti_item_effettivi)), ammo_now_id)
                ini_write_real(("chest_" + string(global.storage_page_now)), ("durability_N_" + string(chest_nearest.quanti_item_effettivi)), durability)
                ini_write_real(("chest_" + string(global.storage_page_now)), ("created_from_player_N_" + string(chest_nearest.quanti_item_effettivi)), created_from_player)
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((0 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(0 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((1 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(1 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((3 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(3 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((2 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(2 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((5 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(5 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((6 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(6 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((4 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(4 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((7 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(7 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((8 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(8 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((9 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(9 << 0)])
                ini_write_real(("chest_" + string(global.storage_page_now)), (((("mod_" + string((10 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(10 << 0)])
                chest_nearest.quanti_item_effettivi += 1
            }
        }
        ini_write_real(("chest_" + string(global.storage_page_now)), "quanti_item", chest_nearest.quanti_item_effettivi)
    }
    ini_close()
    return;
}

