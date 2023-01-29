if (is_trader == 1)
{
    var load_ = 0
    ini_open(global.save_general)
    if ini_section_exists(trader_name[trader_id])
        load_ = 1
    ini_close()
    if (trader_id == (6 << 0))
    {
        lista_trader()
        load_ = 0
    }
    ini_open(global.save_general)
    if (load_ == 1)
    {
        quanti_item = array_length_2d(trader_item, trader_id)
        quanti_item_effettivi = 0
        for (var i = 0; i < quanti_item; i++)
        {
            loot[i] = ini_read_real(trader_name[trader_id], ("item_" + string(i)), 0)
            lootx[i] = ini_read_real(trader_name[trader_id], ("x_" + string(i)), 0)
            looty[i] = ini_read_real(trader_name[trader_id], ("y_" + string(i)), 0)
            loot_qnt[i] = ini_read_real(trader_name[trader_id], ("qnt_" + string(i)), 0)
            loot_livello_min[i] = ini_read_real(trader_name[trader_id], ("livello_min" + string(i)), 0)
        }
    }
    ini_close()
    if (load_ == 0)
    {
        quanti_item = array_length_2d(trader_item, trader_id)
        quanti_item_effettivi = 0
        randomize()
        for (i = 0; i < quanti_item; i++)
            loot[i] = trader_item[trader_id][i]
        grid_w = 8
        grid_h = 11
        grid_item = ds_grid_create(grid_w, grid_h)
        ds_grid_clear(grid_item, 0)
        ini_open(global.save_general)
        for (i = 0; i < quanti_item; i++)
        {
            var id_item = loot[i]
            var placed = 0
            var necessario_w = (sprite_get_width(item_sprite_inv[id_item]) div 16)
            var necessario_h = (sprite_get_height(item_sprite_inv[id_item]) div 16)
            for (var yy = 0; yy < grid_h; yy++)
            {
                for (var xx = 0; xx < grid_w; xx++)
                {
                    if (ds_grid_get(grid_item, xx, yy) == 0)
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
                                    if (ds_grid_get(grid_item, (xx + ix), (yy + iy)) == 1)
                                        can_place = 0
                                }
                            }
                            if (can_place == 1)
                            {
                                for (ix = 0; ix < necessario_w; ix++)
                                {
                                    for (iy = 0; iy < necessario_h; iy++)
                                        ds_grid_set(grid_item, (xx + ix), (yy + iy), 1)
                                }
                                lootx[i] = (xx * 16)
                                looty[i] = (yy * 16)
                                loot_qnt[i] = trader_qnt[trader_id][i]
                                loot_livello_min[i] = trader_liv[trader_id][i]
                                placed = 1
                                var trader_name_ = trader_name[trader_id]
                                ini_write_real(trader_name_, ("item_" + string(i)), id_item)
                                ini_write_real(trader_name_, ("x_" + string(i)), lootx[i])
                                ini_write_real(trader_name_, ("y_" + string(i)), looty[i])
                                ini_write_real(trader_name_, ("qnt_" + string(i)), loot_qnt[i])
                                ini_write_real(trader_name_, ("livello_min" + string(i)), loot_livello_min[i])
                            }
                        }
                    }
                }
            }
        }
        ini_close()
        ds_grid_destroy(grid_item)
    }
}
sprite_index = speaker_sprite_idle[speaker_id]
depth = ((-y) - (sprite_get_height(sprite_index) / 2))
