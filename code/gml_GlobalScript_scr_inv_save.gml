function scr_inv_save() //gml_Script_scr_inv_save
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    ds_list_clear(global.l_inv_id)
    ds_list_clear(global.l_inv_qnt)
    ds_list_clear(global.l_inv_qnt)
    ds_list_clear(global.l_inv_x)
    ds_list_clear(global.l_inv_y)
    ds_list_clear(global.l_inv_position)
    ds_list_clear(global.l_inv_rotation)
    ds_list_clear(global.l_inv_dur)
    global.numero_di_item = 0
    with (obj_item)
    {
        if (position == (0 << 0) || position == (1 << 0) || position == (2 << 0) || position == (4 << 0) || position == (5 << 0) || position == (6 << 0) || position == (7 << 0) || position == (11 << 0) || position == (10 << 0))
        {
            my_x = (x - camx)
            my_y = (y - camy)
            ds_list_add(global.l_inv_id, my_id)
            ds_list_add(global.l_inv_x, my_x)
            ds_list_add(global.l_inv_y, my_y)
            ds_list_add(global.l_inv_position, position)
            ds_list_add(global.l_inv_qnt, qnt)
            ds_list_add(global.l_inv_rotation, rotation)
            ds_list_add(global.l_inv_ammo, ammo_adesso)
            ds_list_add(global.l_inv_dur, durability)
            global.numero_di_item += 1
        }
    }
    if (room != room_tutorial)
        ini_open(global.save_inventory)
    else
        ini_open("tutorial_save.ini")
    ini_section_delete("Inventory")
    var number_of_items = ds_list_size(global.l_inv_id)
    if (number_of_items > 0)
    {
        for (var i = 0; i < number_of_items; i++)
        {
            ini_write_real("Inventory", ("Item_id_" + string(i)), ds_list_find_value(global.l_inv_id, i))
            ini_write_real("Inventory", ("Item_qnt_" + string(i)), ds_list_find_value(global.l_inv_qnt, i))
            ini_write_real("Inventory", ("Item_x_" + string(i)), ds_list_find_value(global.l_inv_x, i))
            ini_write_real("Inventory", ("Item_y_" + string(i)), ds_list_find_value(global.l_inv_y, i))
            ini_write_real("Inventory", ("Item_position" + string(i)), ds_list_find_value(global.l_inv_position, i))
            ini_write_real("Inventory", ("rotation" + string(i)), ds_list_find_value(global.l_inv_rotation, i))
            ini_write_real("Inventory", ("item_ammo" + string(i)), ds_list_find_value(global.l_inv_ammo, i))
            ini_write_real("Inventory", ("durability" + string(i)), ds_list_find_value(global.l_inv_dur, i))
        }
    }
    ini_write_real("Inventory", "Number of items", number_of_items)
    ini_close()
    return;
}

