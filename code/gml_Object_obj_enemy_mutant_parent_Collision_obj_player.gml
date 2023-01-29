if (obj_player.hp > 0)
{
    if (obj_player.state != gml_Script_scr_player_state_start)
    {
        if (damage_on_hit == 1)
        {
            if (npc_damage_melee[npc_id] > 0)
            {
                if (other.hit == 0)
                {
                    other.hit = 1
                    other.hit_shader = 1
                    other.alarm[2] = other.hit_time
                    other.alarm[3] = other.hit_shader_time
                    other.collision_mutant = other.k_collision_mutant
                    other.alarm[6] = other.alarm_collision_mutant
                    var player_amror = obj_player.armor_now
                    var danno = ((npc_damage_melee[npc_id] * (1 - armor_pierce[player_amror])) * global.skill_var[(5 << 0)])
                    other.hp -= danno
                    if (other.hp <= 0)
                        global.who_killed_player_name = npc_name[npc_id]
                    scr_chance(danno)
                    other.wound += floor((danno * 0.3))
                    scr_chance((danno * 2))
                    other.bleed += 1
                    other.durability_slot[(11 << 0)] -= ((npc_damage_melee[npc_id] * (obj_player.armor_dur_damage[player_amror] / 100)) * global.sk_k[(32 << 0)])
                    with (obj_player)
                    {
                        ini_open(global.save_inventory)
                        var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                        if (number_of_items > 0)
                        {
                            for (var i = 1; i <= number_of_items; i++)
                            {
                                var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                                if (item_categoria[temp_item_id] == (6 << 0))
                                {
                                    var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                                    var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                                    if (temp_item_x >= 200 && temp_item_x <= 232 && temp_item_y >= 119 && temp_item_y <= 151)
                                        ini_write_real("Inventory", ("durability" + string(i)), durability_slot[(11 << 0)])
                                }
                            }
                        }
                        ini_close()
                    }
                    var camx = camera_get_view_x(view_camera[0])
                    var camy = camera_get_view_y(view_camera[0])
                    instance_create_depth(camx, camy, (-y), obj_hud_get_hit)
                    scr_enemy_sound_attack()
                }
            }
        }
    }
}
