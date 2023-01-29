function scr_aggiungi_item_nel_file_inventario(argument0, argument1) //gml_Script_scr_aggiungi_item_nel_file_inventario
{
    var item_id = argument0
    var qnt = argument1
    var grid_w = 8
    var grid_h = 11
    var ho_spazio_per_item = 1
    var placed = 0
    var grid_item_ = scr_riempi_inv_ini()
    ini_open(global.save_inventory)
    var necessario_w = (sprite_get_width(item_sprite_inv[item_id]) div 16)
    var necessario_h = (sprite_get_height(item_sprite_inv[item_id]) div 16)
    for (var yy = 0; yy < grid_h; yy++)
    {
        for (var xx = 0; xx < grid_w; xx++)
        {
            if (ds_grid_get(grid_item_, xx, yy) == 0)
            {
                if (placed == 0)
                {
                    var can_place = 1
                    if ((xx + necessario_w) > grid_w)
                        can_place = 0
                    if ((yy + necessario_h) > grid_h)
                        can_place = 0
                    for (var ix = 0; ix < necessario_w; ix++)
                    {
                        for (var iy = 0; iy < necessario_h; iy++)
                        {
                            if (ds_grid_get(grid_item_, (xx + ix), (yy + iy)) == 1)
                                can_place = 0
                        }
                    }
                    if (can_place == 1)
                    {
                        placed = 1
                        ho_spazio_per_item = 1
                        for (ix = 0; ix < necessario_w; ix++)
                        {
                            for (iy = 0; iy < necessario_h; iy++)
                                ds_grid_set(grid_item_, (xx + ix), (yy + iy), 1)
                        }
                        var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                        var p = (number_of_items + 1)
                        ini_write_real("Inventory", ("Item_id_" + string(p)), item_id)
                        ini_write_real("Inventory", ("Item_qnt_" + string(p)), qnt)
                        ini_write_real("Inventory", ("Item_x_" + string(p)), ((xx * 16) + 41))
                        ini_write_real("Inventory", ("Item_y_" + string(p)), ((yy * 16) + 63))
                        ini_write_real("Inventory", "Number of items", p)
                    }
                }
            }
        }
    }
    ds_grid_destroy(grid_item_)
    ini_close()
    return placed;
}

