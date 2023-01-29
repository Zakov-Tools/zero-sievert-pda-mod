function scr_anomaly_damage(argument0) //gml_Script_scr_anomaly_damage
{
    var _dam = argument0
    if (obj_player.state != gml_Script_scr_player_state_start)
    {
        if (obj_player.armor_now != (0 << 0))
        {
            var _armor_id = obj_player.armor_now
            var _res = obj_player.armor_anomaly[_armor_id]
            _dam = (_dam * ((100 - _res) / 100))
            var _dur = obj_player.durability_slot[(11 << 0)]
            var _dur_dam = 0.1
            var _new_dur = (_dur - _dur_dam)
            _new_dur = clamp(_new_dur, 0, 100)
            obj_player.durability_slot[(11 << 0)] = _new_dur
            with (obj_player)
            {
                ini_open(global.save_inventory)
                var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                var _off = 2
                if (number_of_items > 0)
                {
                    for (var i = 1; i <= number_of_items; i++)
                    {
                        var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                        if (item_categoria[temp_item_id] == (6 << 0))
                        {
                            var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                            var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                            if (temp_item_x >= (200 - _off) && temp_item_x <= 232 && temp_item_y >= (119 - _off) && temp_item_y <= 151)
                                ini_write_real("Inventory", ("durability" + string(i)), _new_dur)
                        }
                    }
                }
                ini_close()
            }
        }
        else
            _dam = damage
        obj_player.hp -= _dam
    }
    return;
}

