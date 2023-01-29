function scr_load_trader_item() //gml_Script_scr_load_trader_item
{
    var trader_nearest = global.speaker_nearest
    var cam_x = camera_get_view_x(view_camera[0])
    var cam_y = camera_get_view_y(view_camera[0])
    for (var i = 0; i < trader_nearest.quanti_item; i++)
    {
        if (global.page_trader == trader_nearest.loot_page[i])
        {
            if (trader_nearest.loot_qnt[i] > 0)
            {
                var temp_item_id = trader_nearest.loot[i]
                var temp_item_x = trader_nearest.lootx[i]
                var temp_item_y = trader_nearest.looty[i]
                var temp_item_qnt = trader_nearest.loot_qnt[i]
                var _creato = 0
                if (temp_item_qnt > 0)
                {
                    var temp_item = instance_create_layer(((cam_x + 312) + temp_item_x), ((cam_y + 63) + temp_item_y), "layer_draw_item", obj_item)
                    temp_item.my_id = temp_item_id
                    temp_item.my_x = temp_item_x
                    temp_item.my_y = temp_item_y
                    temp_item.qnt = temp_item_qnt
                    temp_item.sprite_index = item_sprite_inv[temp_item_id]
                    temp_item.durability = 100
                    temp_item.livello_min = trader_nearest.loot_livello_min[i]
                    _creato = 1
                }
                if (_creato == 1)
                {
                    if (arma_moddable[temp_item_id] == 1)
                    {
                        temp_item.mod_id[(0 << 0)] = arma_mod_id[temp_item_id][(0 << 0)]
                        temp_item.mod_id[(1 << 0)] = arma_mod_id[temp_item_id][(1 << 0)]
                        temp_item.mod_id[(3 << 0)] = arma_mod_id[temp_item_id][(3 << 0)]
                        temp_item.mod_id[(2 << 0)] = arma_mod_id[temp_item_id][(2 << 0)]
                        temp_item.mod_id[(5 << 0)] = arma_mod_id[temp_item_id][(5 << 0)]
                        temp_item.mod_id[(6 << 0)] = arma_mod_id[temp_item_id][(6 << 0)]
                        temp_item.mod_id[(4 << 0)] = arma_mod_id[temp_item_id][(4 << 0)]
                        temp_item.mod_id[(7 << 0)] = arma_mod_id[temp_item_id][(7 << 0)]
                        temp_item.mod_id[(8 << 0)] = arma_mod_id[temp_item_id][(8 << 0)]
                        temp_item.mod_id[(9 << 0)] = arma_mod_id[temp_item_id][(9 << 0)]
                        temp_item.mod_id[(10 << 0)] = arma_mod_id[temp_item_id][(10 << 0)]
                    }
                }
            }
        }
    }
    scr_check_item_position()
    return;
}

