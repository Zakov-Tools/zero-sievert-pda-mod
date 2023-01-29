if (obj_player.hp > 0)
{
    if (obj_player.state != gml_Script_scr_player_state_start)
    {
        if (shooter_faction != other.faction)
        {
            var player_armor = obj_player.armor_now
            var danno = damage
            var _armor_id = obj_player.armor_now
            var _dur = obj_player.durability_slot[(11 << 0)]
            var _c = 20
            var _blocked = 0
            if (_armor_id != (0 << 0))
            {
                var _armor_class = obj_player.armor_class[_armor_id]
                var _armor_rel = obj_player.armor_dur_damage[_armor_id]
                if (penetration <= (_armor_class * 10))
                    var _chance = ((0.9 + ((penetration - (10 * _armor_class)) / _c)) - (log10((_dur / 100)) * 2))
                else
                    _chance = (0.9 + (((penetration - (10 * _armor_class)) / _c) - ((log10((_dur / 100)) * 2) * 0.15)))
                _chance = clamp(_chance, 0, 1)
                var _armor_rel_k = ((_armor_rel + 100) / 100)
                if scr_chance((_chance * 100))
                {
                    obj_player.durability_slot[(11 << 0)] -= (((danno * 0.28) * global.sk_k[(32 << 0)]) * _armor_rel_k)
                    danno = (danno * ((_chance / 2) + 0.5))
                }
                else
                {
                    obj_player.durability_slot[(11 << 0)] -= (((danno * 0.13) * global.sk_k[(32 << 0)]) * _armor_rel_k)
                    danno = 0
                    _blocked = 1
                }
            }
            obj_player.durability_slot[(11 << 0)] = clamp(obj_player.durability_slot[(11 << 0)], 0, 100)
            other.hp -= danno
            if (other.hp <= 0)
                global.who_killed_player_name = shooter_npc_name
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
                                ini_write_real("Inventory", ("durability" + string(i)), durability_slot[(11 << 0)])
                        }
                    }
                }
                ini_close()
            }
            if (_blocked == 0)
            {
                if (global.injector_factor[(3 << 0)] == 0)
                {
                    if scr_chance(((10 + (danno * 0.6)) * global.sk_k[(44 << 0)]))
                        other.bleed += 1
                }
                part_create_blood((image_angle - 45), (image_angle + 45), (damage div 3))
                part_create_blood((image_angle + 180), (image_angle + 180), 2)
            }
            if (obj_player.hit_shader == 0)
            {
            }
            obj_player.hit_shader = 1
            obj_player.alarm[3] = obj_player.hit_shader_time
            var camx = camera_get_view_x(view_camera[0])
            var camy = camera_get_view_y(view_camera[0])
            instance_create_depth(camx, camy, (-y), obj_hud_get_hit)
            instance_destroy()
        }
    }
}
