if (other.can_be_damaged == 1)
{
    if (shooter_faction != other.faction || shooter_faction == (8 << 0))
    {
        if (shooter_id != other.id)
        {
            var get_index = obj_player.id
            if (shooter_id == get_index)
            {
                damage *= global.sk_k[(58 << 0)]
                if (other.target != 90)
                    damage *= global.sk_k[(12 << 0)]
            }
            var _npc_id = other.npc_id
            var _armor_id = other.npc_armor[_npc_id]
            var _dur = other.armor_dur
            var _c = 20
            var _blocked = 0
            if (_armor_id != (0 << 0))
            {
                var _armor_class = other.armor_class[_armor_id]
                var _armor_rel = other.armor_dur_damage[_armor_id]
                if (penetration <= (_armor_class * 10))
                    var _chance = ((0.9 + ((penetration - (10 * _armor_class)) / _c)) - (log10((_dur / 100)) * 2))
                else
                    _chance = (0.9 + (((penetration - (10 * _armor_class)) / _c) - ((log10((_dur / 100)) * 2) * 0.15)))
                _chance = clamp(_chance, 0, 1)
                var _armor_rel_k = ((_armor_rel + 100) / 100)
                if scr_chance((_chance * 100))
                {
                    other.armor_dur -= ((damage * 0.3) * _armor_rel_k)
                    damage *= ((_chance / 2) + 0.5)
                }
                else
                {
                    other.armor_dur -= ((damage * 0.15) * _armor_rel_k)
                    damage = 0
                    _blocked = 1
                }
            }
            other.armor_dur = clamp(other.armor_dur, 0, 100)
            other.hp -= damage
            other.shader_hit = 1
            other.alarm[2] = other.shader_hit_time
            if (shooter_id == get_index)
            {
                scr_level_up_skill((8 << 0), ((damage * global.rate_shooting) * global.sk_k[(57 << 0)]))
                var _my_faction = other.npc_faction[other.npc_id]
                if (_my_faction != (9 << 0))
                {
                    ds_grid_set(other.grid_faction_my, _my_faction, (0 << 0), 0)
                    ds_grid_set(other.grid_faction_my, (0 << 0), _my_faction, 0)
                    ds_grid_set(global.grid_faction, _my_faction, (0 << 0), 0)
                    ds_grid_set(global.grid_faction, (0 << 0), _my_faction, 0)
                }
                if (other.hp <= 0)
                {
                    if (other.bullet_checked == 0)
                    {
                        global.esperienza_kill += other.npc_esperienza[other.npc_id]
                        other.bullet_checked = 1
                        var o = 22
                        var quest_amount = 30
                        if (room == room1)
                        {
                            for (var i = 0; i < quest_amount; i++)
                            {
                                var quest_id_ = global.save_quest_id[i]
                                if (quest_id_ != -1)
                                {
                                    for (var j = 0; j < array_length_2d(global.quest_type, quest_id_); j++)
                                    {
                                        switch global.quest_type[quest_id_][j]
                                        {
                                            case (0 << 0):
                                                if (global.quest_kill_map[quest_id_][j] == -1 || global.quest_kill_map[quest_id_][j] == obj_map_generator.area)
                                                {
                                                    var _array_obj_to_kill = global.quest_kill_arr_obj[quest_id_][j]
                                                    var _obj_to_check = array_length_1d(_array_obj_to_kill)
                                                    for (var k = 0; k < _obj_to_check; k++)
                                                    {
                                                        if (other.npc_id == _array_obj_to_kill[k])
                                                        {
                                                            if (global.save_quest_amount_now[i][j] < global.quest_amount_max[quest_id_][j])
                                                                global.save_quest_amount_now[i][j] += 1
                                                        }
                                                    }
                                                }
                                                break
                                        }

                                    }
                                }
                            }
                        }
                        var _id = other.object_index
                        switch _id
                        {
                            case 201:
                                global.stat_amount[(9 << 0)] += 1
                                break
                            case 202:
                                global.stat_amount[(9 << 0)] += 1
                                break
                            case 203:
                                global.stat_amount[(9 << 0)] += 1
                                break
                            case 710:
                                global.stat_amount[(10 << 0)] += 1
                                break
                            case 716:
                                global.stat_amount[(11 << 0)] += 1
                                break
                            case 717:
                                global.stat_amount[(11 << 0)] += 1
                                break
                            case 720:
                                global.stat_amount[(12 << 0)] += 1
                                break
                            case 721:
                                global.stat_amount[(12 << 0)] += 1
                                break
                            case 723:
                                global.stat_amount[(13 << 0)] += 1
                                break
                            case 725:
                                global.stat_amount[(13 << 0)] += 1
                                break
                            case 726:
                                global.stat_amount[(13 << 0)] += 1
                                break
                            case 727:
                                global.stat_amount[(13 << 0)] += 1
                                break
                            case 204:
                                global.stat_amount[(14 << 0)] += 1
                                ga_addDesignEvent("UniqueNPC:Lazar", 1)
                                break
                            case 711:
                                global.stat_amount[(15 << 0)] += 1
                                ga_addDesignEvent("UniqueNPC:Arman", 1)
                                break
                            case 712:
                                global.stat_amount[(16 << 0)] += 1
                                ga_addDesignEvent("UniqueNPC:Kibba", 1)
                                break
                            case 207:
                                global.stat_amount[(19 << 0)] += 1
                                break
                            case 219:
                                global.stat_amount[(20 << 0)] += 1
                                break
                            case 220:
                                global.stat_amount[(20 << 0)] += 1
                                break
                            case 208:
                                global.stat_amount[(21 << 0)] += 1
                                break
                            case 209:
                                global.stat_amount[(23 << 0)] += 1
                                break
                            case 221:
                                global.stat_amount[(22 << 0)] += 1
                                break
                            case 213:
                                global.stat_amount[(25 << 0)] += 1
                                break
                            case 210:
                                global.stat_amount[(24 << 0)] += 1
                                break
                            case 215:
                                global.stat_amount[(18 << 0)] += 1
                                break
                        }

                    }
                }
            }
            var ss = shooter_id
            var _player_has_silencer = 0
            if instance_exists(obj_player)
            {
                if (ss == obj_player.id)
                {
                    if (obj_player.arma_moddable[obj_player.arma_now] == 1)
                    {
                        if (obj_player.mod_id[obj_player.weapon_slot_now][(5 << 0)] != -1)
                        {
                            var get_brake_id = obj_player.mod_id[obj_player.weapon_slot_now][(5 << 0)]
                            if (obj_player.mod_type[get_brake_id] == (9 << 0))
                                _player_has_silencer = 1
                        }
                    }
                }
            }
            if (other.hp <= 0)
                other.id_of_the_killer = shooter_id
            if (other.state != (0 << 0))
            {
                if instance_exists(ss)
                {
                    with (other)
                    {
                        if (ammo_magazine >= 0)
                        {
                            if (target == -4 || target_relation == (0 << 0) || target_relation == (1 << 0))
                            {
                                if (ss == obj_player.id && _player_has_silencer == 1)
                                {
                                    target = ss
                                    just_shot = 2
                                    target_relation = (2 << 0)
                                    ds_grid_set(grid_faction_my, faction, ss.faction, 0)
                                    ds_grid_set(grid_faction_my, ss.faction, faction, 0)
                                    if (shooted_first_time == 0)
                                        shooted_first_time = 1
                                    if (shooted_first_time == 2)
                                    {
                                        var _dir = (point_direction(x, y, ss.x, ss.y) + irandom_range(-30, 30))
                                        var _dis = (point_distance(x, y, ss.x, ss.y) div 2)
                                        last_seen_x = lengthdir_x(_dis, _dir)
                                        last_seen_y = lengthdir_y(_dis, _dir)
                                    }
                                }
                                else
                                {
                                    target = ss
                                    ds_grid_set(grid_faction_my, faction, ss.faction, 0)
                                    ds_grid_set(grid_faction_my, ss.faction, faction, 0)
                                    target_relation = (2 << 0)
                                    state = npc_state_alert[npc_id]
                                    last_shot_x = ss.x
                                    last_shot_y = ss.y
                                    last_known_x = ss.x
                                    last_known_y = ss.y
                                    just_shot = 1
                                    last_seen_x = ss.x
                                    last_seen_y = ss.y
                                    if (shooted_first_time == 0)
                                        shooted_first_time = 1
                                }
                            }
                            target_relation = ((2 << 0) && target == ss)
                            if (ss == obj_player.id && _player_has_silencer == 1)
                            {
                                just_shot = 2
                                var _my_id = id
                                var _faction = faction
                                var _x = x
                                var _y = y
                                with (obj_npc_parent)
                                {
                                    if (_my_id != id && faction == _faction)
                                    {
                                        if (point_distance(x, y, _x, _y) < 64)
                                            just_shot = 2
                                    }
                                }
                            }
                            else
                            {
                                just_shot = 1
                                last_seen_x = ss.x
                                last_seen_y = ss.y
                            }
                        }
                    }
                }
            }
            if (other.state != (0 << 0))
            {
                if instance_exists(ss)
                {
                    with (other)
                    {
                        if (faction == (7 << 0))
                        {
                            target = ss
                            target_relation = (2 << 0)
                            state = npc_state_alert[npc_id]
                        }
                    }
                }
            }
            if (other.red_blood == 1 && _blocked == 0)
            {
                part_create_blood((image_angle - 45), (image_angle + 45), (damage div 3))
                part_create_blood((image_angle + 180), (image_angle + 180), 2)
            }
            instance_destroy()
        }
    }
}
