function scr_riempi_inv_ini() //gml_Script_scr_riempi_inv_ini
{
    var grid_w = 8
    var grid_h = 11
    var grid_item_ = ds_grid_create(grid_w, grid_h)
    ds_grid_clear(grid_item_, 0)
    ini_open(global.save_inventory)
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
            var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
            var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
            var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
            var temp_item_rot = ini_read_real("Inventory", ("rotation" + string(i)), 0)
            var item_gridx = (((temp_item_x - 41) + 1) div 16)
            var item_gridy = (((temp_item_y - 63) + 1) div 16)
            var necessario_w = (sprite_get_width(item_sprite_inv[temp_item_id]) div 16)
            var necessario_h = (sprite_get_height(item_sprite_inv[temp_item_id]) div 16)
            var prov_h = 0
            if (temp_item_rot == 90)
            {
                necessario_w = (sprite_get_height(item_sprite_inv[temp_item_id]) div 16)
                necessario_h = (sprite_get_width(item_sprite_inv[temp_item_id]) div 16)
                prov_h = (-necessario_h)
            }
            if (temp_item_qnt > 0)
            {
                for (var ix = 0; ix < necessario_w; ix++)
                {
                    for (var iy = 0; iy < necessario_h; iy++)
                        ds_grid_set(grid_item_, (item_gridx + ix), ((item_gridy + iy) + prov_h), 1)
                }
            }
        }
    }
    ini_close()
    return grid_item_;
}

