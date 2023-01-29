function script303() //gml_Script_script303
{
    depth = ((-y) - (sprite_get_height(sprite_index) / 2))
    audio_emitter_position(emitter_shoot, x, y, 0)
    audio_emitter_position(emitter_walk, x, y, 0)
    audio_emitter_position(emitter_talk, x, y, 0)
    alert_player -= 1
    alert_player = clamp(alert_player, 0, alert_player_max)
    switch state
    {
        case (0 << 0):
            break
        case (1 << 0):
            target_for_image_scale = obj_player.x
            break
        case (19 << 0):
            target_for_image_scale = obj_player.x
            if (can_talk == 1)
            {
                if (global.az_done[(7 << 0)] == 0)
                {
                    global.az_done[(7 << 0)] = 1
                    can_talk = 0
                    scr_draw_npc_text(id, (102 << 0))
                }
            }
            target = scr_find_target_for_human()
            if (target != noone)
            {
                switch target_relation
                {
                    case (2 << 0):
                        hspd = 0
                        vspd = 0
                        state = (13 << 0)
                        break
                    case (0 << 0):
                        break
                    case (1 << 0):
                        break
                }

            }
            break
        case (21 << 0):
            target_for_image_scale = obj_player.x
            if instance_exists(obj_player)
            {
                if (point_distance(x, y, obj_player.x, obj_player.y) < 80)
                {
                    if (can_talk == 1)
                    {
                        can_talk = 0
                        var prima_volta_fatta = global.az_done[(0 << 0)]
                        if (prima_volta_fatta == 0)
                        {
                            scr_draw_npc_text(id, (70 << 0))
                            global.az_done[(0 << 0)] = 1
                        }
                        else
                            scr_draw_npc_text(id, (72 << 0))
                    }
                }
            }
            break
        case (3 << 0):
            if scr_chance(2)
                weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
            weapon_pointing_direction += weapon_pointing_amount
            weapon_pointing_direction = clamp(weapon_pointing_direction, 240, 300)
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            if (object_index == obj_guardia_ingresso_2)
            {
                if (can_talk == 1)
                {
                    if instance_exists(obj_player)
                    {
                        if (obj_player.y > (y + 4) && obj_player.y < (y + 18) && (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))))
                        {
                            var first_time_ = global.az_done[(2 << 0)]
                            if (first_time_ == 0)
                            {
                                scr_draw_npc_text(id, (87 << 0))
                                global.az_done[(2 << 0)] = 1
                                can_talk = 0
                            }
                            first_time_ = global.az_done[(3 << 0)]
                            if (first_time_ == 1)
                            {
                                var pp_ = (4 << 0)
                                var _first_time_ = global.az_done[pp_]
                                if (_first_time_ == 0)
                                {
                                    scr_draw_npc_text(id, (94 << 0))
                                    global.az_done[pp_] = 1
                                    can_talk = 0
                                }
                            }
                        }
                    }
                }
            }
            if (object_index == obj_guardia_ingresso_1)
            {
                if (can_talk == 1)
                {
                    if instance_exists(obj_player)
                    {
                        if (obj_player.y > (y + 4) && obj_player.y < (y + 18) && (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))))
                        {
                            var _active = scr_check_quest_in_corso((37 << 0))
                            if (_active == (1 << 0))
                            {
                                can_talk = 0
                                scr_draw_npc_text(id, (99 << 0))
                            }
                            _active = scr_check_quest_in_corso((37 << 0))
                            if ((_active == (2 << 0) || global.quest_unique_done[(37 << 0)] == 1) && global.az_done[(6 << 0)] == 0)
                            {
                                can_talk = 0
                                scr_draw_npc_text(id, (100 << 0))
                                global.az_done[(6 << 0)] = 1
                            }
                        }
                    }
                }
            }
            var point_player = 0
            if (object_index == obj_guardia_ingresso_1 || object_index == obj_guardia_ingresso_2)
            {
                if instance_exists(obj_npc_draw_text)
                {
                    with (obj_npc_draw_text)
                    {
                        if (global.t_npc_text_next_id[text_id] == 741 || global.t_npc_text_next_id[text_id] == 742)
                            point_player = 1
                    }
                }
            }
            if (point_player == 1)
            {
                weapon_pointing_direction = point_direction(x, y, obj_player.x, obj_player.y)
                target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            }
            break
        case (5 << 0):
            if scr_chance(2)
                weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
            weapon_pointing_direction += weapon_pointing_amount
            weapon_pointing_direction = clamp(weapon_pointing_direction, -100, 15)
            if (global.quest_unique_done[(91 << 0)] == 0)
            {
                if (point_distance(x, y, obj_player.x, obj_player.y) < 48)
                {
                    if (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false)))
                    {
                        weapon_pointing_direction = point_direction(x, y, obj_player.x, obj_player.y)
                        if (can_talk == 1)
                        {
                            can_talk = 0
                            scr_draw_npc_text(id, (62 << 0))
                        }
                    }
                }
            }
            if (!instance_exists(obj_solid_bunker_green_army))
            {
                npc_speaker_id[(19 << 0)] = (0 << 0)
                can_talk = 1
            }
            if (global.quest_unique_done[(91 << 0)] == 1)
            {
                if (point_distance(x, y, obj_player.x, obj_player.y) < 16)
                {
                    if (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false)))
                    {
                        if (can_talk == 1)
                        {
                            can_talk = 0
                            scr_draw_npc_text(id, (63 << 0))
                        }
                    }
                }
            }
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            break
        case (6 << 0):
            if scr_chance(2)
                weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
            weapon_pointing_direction += weapon_pointing_amount
            weapon_pointing_direction = clamp(weapon_pointing_direction, -100, 15)
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            break
        case (24 << 0):
            if scr_chance(2)
                weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
            weapon_pointing_direction += weapon_pointing_amount
            weapon_pointing_direction = clamp(weapon_pointing_direction, -100, 15)
            _active = scr_check_quest_in_corso((69 << 0))
            if (_active == (2 << 0))
            {
                if (point_distance(x, y, obj_player.x, obj_player.y) < 64)
                {
                    weapon_pointing_direction = point_direction(x, y, obj_player.x, obj_player.y)
                    if (can_talk == 1)
                    {
                        if (global.az_done[(9 << 0)] == 0)
                        {
                            scr_draw_npc_text(id, (108 << 0))
                            can_talk = 0
                            global.az_done[(9 << 0)] = 1
                        }
                    }
                }
            }
            if (global.quest_unique_done[(69 << 0)] == 0 || _active != (2 << 0))
            {
                if (point_distance(x, y, obj_player.x, obj_player.y) < 96)
                {
                    weapon_pointing_direction = point_direction(x, y, obj_player.x, obj_player.y)
                    if (point_distance(x, y, obj_player.x, obj_player.y) < 64)
                    {
                        if (can_talk == 1)
                        {
                            scr_draw_npc_text(id, (105 << 0))
                            can_talk = 0
                        }
                    }
                }
            }
            if (global.quest_unique_done[(70 << 0)] == 1)
            {
                if (point_distance(x, y, obj_player.x, obj_player.y) < 48)
                {
                    if (can_talk == 1)
                    {
                        scr_draw_npc_text(id, (107 << 0))
                        can_talk = 0
                    }
                }
            }
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            target = scr_find_target_for_human()
            if (target != noone)
            {
                switch target_relation
                {
                    case (2 << 0):
                        hspd = 0
                        vspd = 0
                        state = (13 << 0)
                        break
                    case (0 << 0):
                        break
                    case (1 << 0):
                        break
                }

            }
            break
        case (25 << 0):
            if (global.az_done[(8 << 0)] == 0)
            {
                if (point_distance(x, y, obj_player.x, obj_player.y) < 144)
                {
                    if (can_talk == 1)
                    {
                        can_talk = 0
                        global.az_done[(8 << 0)] = 1
                        scr_draw_npc_text(id, (111 << 0))
                    }
                }
            }
            break
        case (30 << 0):
            scr_npc_state_arms(obj_arms_smoke)
            break
        case (31 << 0):
            scr_npc_state_arms(obj_arms_eat)
            break
        case (32 << 0):
            scr_npc_state_arms(obj_arms_drink)
            break
        case (33 << 0):
            scr_npc_state_arms(obj_arms_guitar)
            break
        case (34 << 0):
            scr_enemy_path()
            if (point_distance(x, y, move_point_x, move_point_y) < 12)
            {
                path_end()
                if (!instance_exists(obj_arms_guitar))
                    scr_npc_arms((33 << 0), obj_arms_guitar)
                else
                    state = (9 << 0)
            }
            break
        case (4 << 0):
            scr_enemy_choose_idle_or_move()
            scr_collision()
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            if (x > xprevious)
            {
                target_for_image_scale = (x + 2)
                weapon_pointing_direction = 300
            }
            else if (x == xprevious)
            {
            }
            else if (x < xprevious)
            {
                target_for_image_scale = (x - 2)
                weapon_pointing_direction = 240
            }
            if scr_chance(0.03)
                scr_npc_arms((31 << 0), obj_arms_eat)
            if scr_chance(0.03)
                scr_npc_arms((30 << 0), obj_arms_smoke)
            if scr_chance(0.03)
                scr_npc_arms((32 << 0), obj_arms_drink)
            break
        case (29 << 0):
            scr_enemy_path()
            if (point_distance(x, y, move_point_x, move_point_y) < 4)
            {
                path_end()
                move_point_x = original_x
                move_point_y = original_y
                if scr_chance(50)
                {
                    state = (31 << 0)
                    var aa = instance_create_depth(x, y, 0, obj_arms_eat)
                    aa.linked_id = id
                    aa.image_xscale = image_xscale
                }
                else
                {
                    state = (32 << 0)
                    aa = instance_create_depth(x, y, 0, obj_arms_drink)
                    aa.linked_id = id
                    aa.image_xscale = image_xscale
                }
            }
            break
        case (28 << 0):
            scr_enemy_path()
            if (point_distance(x, y, move_point_x, move_point_y) < 4)
            {
                path_end()
                state = (4 << 0)
            }
            break
        case (9 << 0):
            scr_enemy_choose_idle_or_move()
            scr_collision()
            draw_weapon = 1
            if (room == r_hub)
            {
                target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                if (x > xprevious)
                {
                    target_for_image_scale = (x + 2)
                    weapon_pointing_direction = 300
                }
                else if (x == xprevious)
                {
                }
                else if (x < xprevious)
                {
                    target_for_image_scale = (x - 2)
                    weapon_pointing_direction = 240
                }
            }
            else
            {
                if scr_chance(2)
                    weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
                weapon_pointing_direction += weapon_pointing_amount
                if (object_index == obj_green_quest_swamp)
                {
                    if instance_exists(obj_faro)
                        weapon_pointing_direction = point_direction(x, y, obj_faro.x, (obj_faro.y - 150))
                }
                target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            }
            target = scr_find_target_for_human()
            if (target != noone)
            {
                switch target_relation
                {
                    case (2 << 0):
                        hspd = 0
                        vspd = 0
                        state = (13 << 0)
                        break
                    case (0 << 0):
                        hspd = 0
                        vspd = 0
                        state = (10 << 0)
                        break
                    case (1 << 0):
                        break
                }

            }
            if scr_chance(1)
            {
                if (faction == (1 << 0))
                {
                    if (!instance_exists(obj_arms_guitar))
                    {
                        if instance_exists(obj_barrel_acciaio_fire)
                        {
                            var nearest = instance_nearest(x, y, obj_barrel_acciaio_fire)
                            if (point_distance(x, y, nearest.x, nearest.y) < 160)
                            {
                                move_point_x = (nearest.x + irandom_range(-10, 10))
                                move_point_y = nearest.y
                                state = (34 << 0)
                            }
                        }
                    }
                }
            }
            break
        case (10 << 0):
            scr_collision()
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            target = scr_find_target_for_human()
            if (target != noone)
            {
                switch target_relation
                {
                    case (2 << 0):
                        hspd = 0
                        vspd = 0
                        state = (13 << 0)
                        break
                    case (0 << 0):
                        weapon_pointing_direction = point_direction(x, y, target.x, target.y)
                        var dis = point_distance(x, y, target.x, target.y)
                        if (point_distance(x, y, mouse_x, mouse_y) < 8 && dis < 96)
                        {
                            if (can_talk == 1)
                            {
                                can_talk = 0
                                scr_draw_npc_text(id, (25 << 0))
                            }
                        }
                        if collision_line(x, y, target.x, target.y, obj_solid, true, true)
                            state = (9 << 0)
                        break
                    case (1 << 0):
                        state = (9 << 0)
                        break
                }

            }
            else
                state = (9 << 0)
            break
        case (8 << 0):
            var _next_state = -1
            human_tick++
            if (human_tick >= human_tick_max)
            {
                human_tick = 0
                target = scr_find_target_for_human()
                if (target == noone)
                    _next_state = (0 << 0)
                if (target != noone)
                {
                    if instance_exists(target)
                    {
                    }
                    if (!instance_exists(target))
                        _next_state = (0 << 0)
                }
            }
            if (human_tick < human_tick_max)
                _next_state = human_state_now
            switch _next_state
            {
                case (0 << 0):
                    scr_enemy_choose_idle_or_move()
                    break
            }

            break
        case (11 << 0):
            target = scr_find_target_for_human()
            draw_weapon = 1
            if (target != noone)
            {
                if (target_relation == (2 << 0))
                {
                    weapon_pointing_direction = point_direction(x, y, target.x, target.y)
                    scr_enemy_alert_near_enemy()
                    if (!(collision_line(x, y, target.x, target.y, obj_solid, true, true)))
                        state = (13 << 0)
                    else
                    {
                        move_point_x = 0
                        move_point_y = 0
                        if (point_distance(x, y, target.x, target.y) < 200)
                        {
                            scr_enemy_search_shoot_position()
                            if (move_point_x != 0)
                                state = (15 << 0)
                            else
                            {
                                scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 64)
                                state = (16 << 0)
                            }
                        }
                        else if scr_chance(0.5)
                        {
                            scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 64)
                            state = (16 << 0)
                        }
                    }
                }
                if (target_relation == (0 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                }
                if (target_relation == (1 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (9 << 0)
                }
            }
            break
        case (14 << 0):
            if (object_index == obj_green_quest_swamp)
                state = (11 << 0)
            if (point_distance(x, y, move_point_x, move_point_y) < 4)
            {
                target = scr_find_target_for_human()
                if (target_relation == (2 << 0))
                {
                    if (ammo_now < (arma_magazine[arma_now] * 0.5))
                    {
                        var chance = ((100 - ((ammo_now * 100) / arma_magazine[arma_now])) * 2)
                        if scr_chance(chance)
                        {
                            state = (18 << 0)
                            reloading = 1
                            alarm[0] = (irandom(100) + 60)
                            scr_draw_npc_text(id, (5 << 0))
                        }
                    }
                    else if (target != noone)
                        state = (11 << 0)
                }
                if (target_relation == (0 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                }
                if (target_relation == (1 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (9 << 0)
                }
            }
            scr_enemy_path()
            break
        case (15 << 0):
            target = scr_find_target_for_human()
            if (target != noone)
            {
                if (target_relation == (2 << 0))
                {
                    weapon_pointing_direction = point_direction(x, y, target.x, target.y)
                    if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    {
                        if (!(collision_line(x, y, target.x, target.y, obj_solid, true, true)))
                            state = (13 << 0)
                        else
                            state = (11 << 0)
                    }
                }
                if (target_relation == (0 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                }
                if (target_relation == (1 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (9 << 0)
                }
            }
            scr_enemy_path()
            break
        case (13 << 0):
            draw_weapon = 1
            if (shoot_time == 0)
            {
                path_end()
                if scr_chance(75)
                    scr_enemy_choose_move_pos(x, y, 16)
                else
                {
                    move_point_x = x
                    move_point_y = y
                }
            }
            if (hp <= (npc_hp[npc_id] * 0.3))
            {
                if scr_chance(1)
                    scr_draw_npc_text(id, (2 << 0))
            }
            target = scr_find_target_for_human()
            if (target != noone)
            {
                if (target_relation == (2 << 0))
                {
                    last_seen_x = target.x
                    last_seen_y = target.y
                    if (!(collision_line(x, y, target.x, target.y, obj_solid, true, true)))
                    {
                        if (point_distance(x, y, target.x, target.y) < (npc_alert_visual_distance[npc_id] * 1.5))
                        {
                            scr_enemy_alert_near_enemy()
                            scr_enemy_shoot()
                            shoot_time++
                            if (shoot_time >= shoot_time_max)
                            {
                                shoot_time = 0
                                if scr_chance(50)
                                {
                                    if scr_chance(80)
                                    {
                                        scr_enemy_search_cover_position()
                                        state = (14 << 0)
                                        scr_draw_npc_text(id, (1 << 0))
                                    }
                                    else
                                    {
                                        scr_enemy_change_cover()
                                        state = (14 << 0)
                                    }
                                }
                                else
                                {
                                    state = (13 << 0)
                                    if scr_chance(10)
                                        scr_draw_npc_text(id, (0 << 0))
                                }
                                if (point_direction(x, y, mouse_x, mouse_y) < 16)
                                {
                                    scr_enemy_search_cover_position()
                                    state = (14 << 0)
                                    scr_draw_npc_text(id, (1 << 0))
                                }
                            }
                        }
                        else
                        {
                            scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 8)
                            state = (16 << 0)
                            scr_draw_npc_text(id, (7 << 0))
                        }
                    }
                    else
                    {
                        shoot_time = 0
                        riflessi = 0
                        if scr_chance(0.13)
                        {
                            scr_enemy_choose_move_pos(last_seen_x, last_seen_y, 8)
                            state = (16 << 0)
                            scr_draw_npc_text(id, (7 << 0))
                        }
                    }
                    if (ammo_now < (arma_magazine[arma_now] * 0.5))
                    {
                        chance = (100 - ((ammo_now * 100) / arma_magazine[arma_now]))
                        if scr_chance(chance)
                        {
                            scr_enemy_search_cover_position()
                            state = (14 << 0)
                            scr_draw_npc_text(id, (6 << 0))
                        }
                        if (npc_spd_alerted[npc_id] == 0)
                        {
                            if scr_chance(chance)
                            {
                                state = (18 << 0)
                                reloading = 1
                                alarm[0] = (irandom(100) + 60)
                                scr_draw_npc_text(id, (5 << 0))
                            }
                        }
                    }
                }
                if (target_relation == (0 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                }
                if (target_relation == (1 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (9 << 0)
                }
            }
            scr_enemy_path()
            break
        case (16 << 0):
            target = scr_find_target_for_human()
            draw_weapon = 1
            if (target != noone)
            {
                if (target_relation == (2 << 0))
                {
                    if ((!(collision_line(x, y, target.x, target.y, obj_solid, true, true))) && point_distance(x, y, target.x, target.y) < (npc_alert_visual_distance[npc_id] * 1.4))
                        state = (13 << 0)
                    if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    {
                        if collision_line(x, y, target.x, target.y, obj_solid, true, true)
                        {
                            path_end()
                            alarm[5] = reset_state_to_patrol_time
                            state = (17 << 0)
                            scr_draw_npc_text(id, (8 << 0))
                        }
                    }
                }
                if (target_relation == (0 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                }
                if (target_relation == (1 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (9 << 0)
                }
            }
            scr_enemy_path()
            break
        case (23 << 0):
            if (faction != (7 << 0))
            {
                target = scr_find_target_for_human()
                if (target != noone)
                {
                    if (target_relation == (2 << 0))
                    {
                        if ((!(collision_line(x, y, target.x, target.y, obj_solid, true, true))) && point_distance(x, y, target.x, target.y) < (npc_alert_visual_distance[npc_id] * 1.2))
                            state = (13 << 0)
                    }
                    if (target_relation == (0 << 0))
                    {
                        hspd = 0
                        vspd = 0
                        state = (10 << 0)
                    }
                    if (target_relation == (1 << 0))
                    {
                        hspd = 0
                        vspd = 0
                        state = (9 << 0)
                    }
                }
            }
            if (faction == (7 << 0))
            {
                if ((!(collision_line(x, y, target.x, target.y, obj_solid, true, true))) && point_distance(x, y, target.x, target.y) < 160)
                    state = (36 << 0)
            }
            move_point_x = target.x
            move_point_y = target.y
            scr_enemy_path()
            break
        case (17 << 0):
            target = scr_find_target_for_human()
            draw_weapon = 1
            if scr_chance(npc_prob_idle[npc_id])
            {
                hspd = 0
                vspd = 0
            }
            if scr_chance((npc_prob_move[npc_id] * 6))
            {
                var dir = irandom(360)
                hspd = lengthdir_x(npc_spd_not_alerted[npc_id], dir)
                vspd = lengthdir_y(npc_spd_not_alerted[npc_id], dir)
            }
            scr_collision()
            if (target != noone)
            {
                if scr_chance(2)
                    weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
                weapon_pointing_direction += weapon_pointing_amount
                target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
                if (target_relation == (2 << 0))
                {
                    if (!(collision_line(x, y, target.x, target.y, obj_solid, true, true)))
                    {
                        scr_draw_npc_text(id, (11 << 0))
                        state = (11 << 0)
                    }
                }
                if (target_relation == (0 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                }
                if (target_relation == (1 << 0))
                {
                    hspd = 0
                    vspd = 0
                    state = (9 << 0)
                }
            }
            break
        case (18 << 0):
            if (reloading == 0)
                state = (11 << 0)
            if (image_xscale == 1)
                weapon_pointing_direction = 0
            else
                weapon_pointing_direction = 180
            break
        case (20 << 0):
            break
        case (27 << 0):
            scr_enemy_choose_idle_or_move()
            scr_collision()
            if scr_chance(2)
                weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
            weapon_pointing_direction += weapon_pointing_amount
            target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
            target = scr_find_target_for_human()
            if (target != noone)
            {
                switch target_relation
                {
                    case (2 << 0):
                        hspd = 0
                        vspd = 0
                        state = (13 << 0)
                        break
                    case (0 << 0):
                        break
                    case (1 << 0):
                        break
                }

            }
            break
        case (26 << 0):
            scr_npc_state_arms(obj_arms_scientist_working)
            if scr_chance(0.2)
                scr_draw_npc_text(id, (60 << 0))
            break
        case (35 << 0):
            state_enemy_mutant_patrol()
            break
        case (36 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != noone)
            {
                if instance_exists(target)
                {
                    target_for_image_scale = target.x
                    if (move_point_x == 0)
                    {
                        var range_ = 64
                        move_point_x = (target.x + irandom_range((-range_), range_))
                        move_point_y = (target.y + irandom_range((-range_), range_))
                    }
                    last_seen_x = target.x
                    last_seen_y = target.y
                    range_ = 64
                    if scr_chance(npc_prob_move[npc_id])
                    {
                        move_point_x = (target.x + irandom_range((-range_), range_))
                        move_point_y = (target.y + irandom_range((-range_), range_))
                        path_timer = (path_timer_reset + 1)
                    }
                    if (point_distance(x, y, move_point_x, move_point_y) < 8)
                    {
                        move_point_x = (target.x + irandom_range(((-range_) * 2), (range_ * 2)))
                        move_point_y = (target.y + irandom_range(((-range_) * 2), (range_ * 2)))
                        path_timer = (path_timer_reset + 1)
                    }
                    if scr_chance(npc_prob_attack[npc_id])
                    {
                        move_point_x = target.x
                        move_point_y = target.y
                        path_timer = (path_timer_reset + 1)
                    }
                    if (object_index == obj_enemy_ghoul)
                    {
                        if (point_distance(x, y, target.x, target.y) < 80 && point_distance(x, y, target.x, target.y) > 40)
                        {
                            if (can_attack == 1)
                            {
                                if scr_chance(2)
                                    state = (56 << 0)
                            }
                        }
                    }
                    if (object_index == obj_enemy_big)
                    {
                        if scr_chance(0.2)
                            state = (57 << 0)
                        if (point_distance(x, y, target.x, target.y) > 32 && point_distance(x, y, target.x, target.y) < 80)
                        {
                            if (can_attack == 1)
                            {
                                if scr_chance(20)
                                {
                                    can_attack = 0
                                    alarm[8] = attack_recovery
                                    dir_attack = point_direction(x, y, target.x, target.y)
                                    state = (59 << 0)
                                    var sspd = 3
                                    hspd = lengthdir_x(sspd, dir_attack)
                                    vspd = lengthdir_y(sspd, dir_attack)
                                }
                            }
                        }
                    }
                    if (object_index == obj_enemy_blink)
                    {
                        if (point_distance(x, y, target.x, target.y) < 16)
                        {
                            if (can_attack == 1)
                            {
                                can_attack = 0
                                state = (55 << 0)
                                alarm[8] = attack_recovery
                                audio_play_sound_on(emitter_talk, snd_blink_attack1, false, 20)
                            }
                        }
                    }
                }
            }
            else
                scr_mutant_target_not_in_sight()
            scr_enemy_path()
            break
        case (42 << 0):
            scr_enemy_choose_idle_or_move()
            scr_collision()
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                state = (47 << 0)
            }
            if (target == noone)
            {
                tick++
                if (tick >= tick_max)
                {
                    tick = 0
                    var _x = x
                    var _y = y
                    _next_state = (42 << 0)
                    if scr_chance(8)
                        _next_state = (43 << 0)
                    if scr_chance(5)
                        _next_state = (46 << 0)
                    if scr_chance(0.5)
                        _next_state = (52 << 0)
                    var _move_x = 0
                    var _move_y = 0
                    if instance_exists(obj_chest_general)
                    {
                        with (obj_chest_general)
                        {
                            if (chest_is_drop[tipo] == 1)
                            {
                                if (point_distance(x, y, _x, _y) < 96)
                                {
                                    var _r = 10
                                    _move_x = (x + irandom_range((-_r), _r))
                                    _move_y = (y + irandom_range(((-_r) / 2), (_r / 2)))
                                }
                            }
                        }
                    }
                    if (_move_x != 0 && _move_y != 0)
                    {
                        var _eat_counter = 0
                        with (obj_enemy_wolf_brown)
                        {
                            if (state == (45 << 0) || state == (44 << 0))
                                _eat_counter++
                        }
                        if (_eat_counter < 2)
                        {
                            _next_state = (44 << 0)
                            move_point_x = _move_x
                            move_point_y = _move_y
                            path_timer = path_timer_reset
                        }
                    }
                    if (_next_state != (44 << 0))
                        var _ret = scr_wolf_decidi_attaccare()
                    if (_next_state == (52 << 0))
                    {
                        var _sound = choose(283, 284)
                        var sound_durata = audio_sound_length(_sound)
                        wolf_ululato_max = (sound_durata * 60)
                        wolf_ululato = 0
                        audio_play_sound_on(emitter_shoot, _sound, false, 20)
                    }
                    state = _next_state
                }
            }
            break
        case (43 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                state = (47 << 0)
            }
            if (target == noone)
            {
                var _end = scr_animation_end(178)
                if (_end == 1)
                    state = (42 << 0)
            }
            break
        case (44 << 0):
            target = scr_find_target_for_mutant(wolf_alert_raggio2)
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                state = (47 << 0)
            }
            if (target == noone)
            {
                if (point_distance(x, y, move_point_x, move_point_y) < 4)
                    state = (45 << 0)
            }
            scr_enemy_path()
            break
        case (45 << 0):
            target = scr_find_target_for_mutant(wolf_alert_raggio2)
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                state = (47 << 0)
            }
            if (target == noone)
            {
                _end = scr_animation_end(180)
                if (_end == 1)
                {
                    if scr_chance(12)
                        state = (42 << 0)
                }
            }
            scr_enemy_path()
            break
        case (46 << 0):
            target = scr_find_target_for_mutant(wolf_alert_raggio2)
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                state = (47 << 0)
                image_index = 0
            }
            if (target == noone)
            {
                _end = scr_animation_end(184)
                if (_end == 1)
                {
                    if scr_chance(20)
                        state = (42 << 0)
                }
            }
            break
        case (47 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            path_end()
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                _end = scr_animation_end(185)
                if (_end == 1)
                {
                    var _attack = scr_wolf_decidi_attaccare()
                    if (_attack == 1)
                        state = (48 << 0)
                }
            }
            if (target == noone)
            {
                _end = scr_animation_end(185)
                if (_end == 1)
                    state = (42 << 0)
            }
            break
        case (48 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != noone)
            {
                hspd = 0
                vspd = 0
                tick++
                if (tick >= tick_max)
                {
                    tick = 0
                    _next_state = (48 << 0)
                    var _movex = 0
                    var _movey = 0
                    var _id = id
                    var _counter_attack = 0
                    var _max_attack = 3
                    var _counter_ululato = 0
                    var _ululato_max = 2
                    var _target = target
                    with (obj_enemy_wolf_brown)
                    {
                        if (id != _id)
                        {
                            if (state == (49 << 0))
                            {
                                if (target == _target)
                                    _counter_attack++
                            }
                            if (state == (52 << 0))
                                _counter_ululato++
                        }
                    }
                    _id = id
                    _target = target
                    _x = x
                    _y = y
                    with (obj_enemy_wolf_brown)
                    {
                        if (_id != id)
                        {
                            if (target == noone)
                            {
                                if (point_distance(x, y, _x, _y) < 96)
                                {
                                    target = _target
                                    search_target_id = _target
                                }
                            }
                        }
                    }
                    if scr_chance(30)
                    {
                        var _dir = irandom(360)
                        var _dis = 32
                        _movex = (target.x + lengthdir_x(_dis, _dir))
                        _movey = (target.y + lengthdir_y(_dis, _dir))
                        path_timer = path_timer_reset
                    }
                    if scr_chance(5)
                        _next_state = (47 << 0)
                    _dis = point_distance(x, y, target.x, target.y)
                    if (_dis < 32)
                    {
                        if (can_attack == 1)
                        {
                            if (_counter_attack < _max_attack)
                            {
                                can_attack = 0
                                alarm[8] = 120
                                _next_state = (49 << 0)
                                dir_attack = point_direction(x, y, target.x, target.y)
                                sspd = 2.5
                                hspd = lengthdir_x(sspd, dir_attack)
                                vspd = lengthdir_y(sspd, dir_attack)
                            }
                        }
                    }
                    if (_counter_ululato < _ululato_max)
                    {
                        if (_counter_attack >= _max_attack)
                        {
                            if scr_chance(12)
                                _next_state = (52 << 0)
                        }
                        if scr_chance(2)
                            _next_state = (52 << 0)
                    }
                    _dis = point_distance(x, y, target.x, target.y)
                    if (_dis > 96)
                    {
                        _dir = irandom(360)
                        _dis = 32
                        _movex = (target.x + lengthdir_x(_dis, _dir))
                        _movey = (target.y + lengthdir_y(_dis, _dir))
                    }
                    if (_next_state == (52 << 0))
                    {
                        _sound = choose(283, 284)
                        sound_durata = audio_sound_length(_sound)
                        wolf_ululato_max = (sound_durata * 60)
                        wolf_ululato = 0
                        audio_play_sound_on(emitter_shoot, _sound, false, 20)
                    }
                    state = _next_state
                    move_point_x = _movex
                    move_point_y = _movey
                    _ret = scr_wolf_decidi_attaccare()
                }
                if (point_distance(x, y, move_point_x, move_point_y) < 3)
                {
                    _dis = 28
                    _dir = irandom(360)
                    _movex = (target.x + lengthdir_x(_dis, _dir))
                    _movey = (target.y + lengthdir_y(_dis, _dir))
                    move_point_x = _movex
                    move_point_y = _movey
                    path_timer = path_timer_reset
                    _ret = scr_wolf_decidi_attaccare()
                }
                if (move_point_x != 0 && move_point_y != 0)
                    scr_enemy_path()
                if (point_distance(x, y, target.x, target.y) > 220)
                    state = (42 << 0)
            }
            if (target == noone)
            {
                state = (42 << 0)
                if instance_exists(search_target_id)
                {
                    if (point_distance(x, y, search_target_id.x, search_target_id.y) > 220)
                        state = (42 << 0)
                    else
                        scr_mutant_target_not_in_sight()
                }
            }
            break
        case (49 << 0):
            path_end()
            _end = scr_animation_end(181)
            if (_end == 1)
            {
                state = (48 << 0)
                hspd = 0
                vspd = 0
            }
            if instance_exists(target)
            {
                if (image_index < 5)
                {
                    dir_attack = point_direction(x, y, target.x, target.y)
                    sspd = 3
                    hspd = lengthdir_x(sspd, dir_attack)
                    vspd = lengthdir_y(sspd, dir_attack)
                }
                if (image_index >= 5)
                    scr_collision()
            }
            else
                state = (42 << 0)
            break
        case (50 << 0):
            path_end()
            hspd = 0
            vspd = 0
            _end = scr_animation_end(182)
            if (_end == 1)
            {
                state = (48 << 0)
                hspd = 0
                vspd = 0
            }
            break
        case (51 << 0):
            if (point_distance(x, y, move_point_x, move_point_y) < 10)
                state = (42 << 0)
            scr_enemy_path()
            break
        case (52 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            path_end()
            if (image_index >= (image_number - 2))
                image_index = (image_number - 2)
            wolf_ululato++
            if (wolf_ululato >= wolf_ululato_max)
            {
                if (target != noone)
                {
                    hspd = 0
                    vspd = 0
                    state = (48 << 0)
                }
                if (target == noone)
                    state = (42 << 0)
            }
            break
        case (57 << 0):
            path_end()
            hspd = 0
            vspd = 0
            if (image_index >= 3)
            {
                sound_durata = (audio_sound_length(snd_big_ruggito_1) - 2.5)
                timer_ruggito_max = (sound_durata * 60)
                timer_ruggito = 0
                audio_play_sound_on(emitter_shoot, snd_big_ruggito_1, false, 20)
                state = (58 << 0)
            }
            break
        case (58 << 0):
            timer_ruggito++
            if (timer_ruggito >= timer_ruggito_max)
            {
                timer_ruggito = 0
                state = (36 << 0)
            }
            break
        case (59 << 0):
            path_end()
            if instance_exists(target)
            {
                if (image_index >= (sprite_get_number(sprite_index) - 1))
                {
                    state = (36 << 0)
                    path_timer = 999
                }
                if (image_index >= 4)
                {
                    hspd = 0
                    vsdp = 0
                }
                scr_collision()
            }
            break
        case (38 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != noone)
            {
                target_for_image_scale = target.x
                if (move_point_x == 0)
                {
                    range_ = 64
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                path_end()
                last_seen_x = target.x
                last_seen_y = target.y
                range_ = 64
                if scr_chance(npc_prob_attack[npc_id])
                {
                    move_point_x = target.x
                    move_point_y = target.y
                }
                if scr_chance(npc_prob_move[npc_id])
                {
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                if (point_distance(x, y, target.x, target.y) < 8)
                {
                    dir = point_direction(x, y, target.x, target.y)
                    var spazio_frenata = 64
                    start_frenata_x = (target.x + lengthdir_x(spazio_frenata, dir))
                    start_frenata_y = (target.y + lengthdir_y(spazio_frenata, dir))
                    state = (39 << 0)
                    frenata_dir = dir
                }
                mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
            }
            else
                scr_mutant_target_not_in_sight()
            break
        case (39 << 0):
            frenata_step++
            if (frenata_step >= frenata_step_max)
            {
                frenata_step = 0
                state = (35 << 0)
            }
            hspd = (lengthdir_x(npc_spd_alerted[npc_id], frenata_dir) - ((lengthdir_x(npc_spd_alerted[npc_id], frenata_dir) / frenata_step_max) * frenata_step))
            vspd = (lengthdir_y(npc_spd_alerted[npc_id], frenata_dir) - ((lengthdir_y(npc_spd_alerted[npc_id], frenata_dir) / frenata_step_max) * frenata_step))
            scr_collision()
            break
        case (55 << 0):
            hspd = 0
            vspd = 0
            path_end()
            if (image_index >= (sprite_get_number(sprite_index) - 1))
                state = (36 << 0)
            break
        case (53 << 0):
            hspd = 0
            vspd = 0
            path_end()
            if (image_index >= (sprite_get_number(sprite_index) - 1))
                state = (36 << 0)
            break
        case (54 << 0):
            path_end()
            if instance_exists(target)
            {
                if (image_index >= 6)
                {
                    state = (36 << 0)
                    range_ = 64
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                    path_timer = 999
                }
                scr_collision()
            }
            else
                state = (35 << 0)
            break
        case (56 << 0):
            path_end()
            hspd = 0
            vspd = 0
            if instance_exists(target)
            {
                if (image_index >= 8 && can_attack == 1)
                {
                    dir_attack = point_direction(x, y, target.x, target.y)
                    can_attack = 0
                    alarm[8] = attack_recovery
                    var bul = instance_create_depth(x, (y - 10), 0, obj_bullet_ghoul)
                    sspd = 3
                    bul.hspd = lengthdir_x(sspd, dir_attack)
                    bul.vspd = lengthdir_y(sspd, dir_attack)
                    bul.damage = 10
                    bul.shooter_faction = faction
                    bul.shooter_id = id
                    audio_play_sound_on(emitter_talk, snd_ghoul_attack, false, 5)
                }
                if (image_index >= 11)
                    state = (36 << 0)
            }
            break
        case (60 << 0):
            state_enemy_mutant_patrol()
            break
        case (61 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != noone)
            {
                target_for_image_scale = target.x
                if (move_point_x == 0)
                {
                    range_ = 64
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                path_end()
                range_ = 128
                if scr_chance(npc_prob_attack[npc_id])
                {
                    move_point_x = target.x
                    move_point_y = target.y
                }
                if scr_chance(npc_prob_move[npc_id])
                {
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                if scr_chance(prob_attac)
                {
                    var vel = bullet_spd
                    dir = point_direction(x, y, target.x, target.y)
                    var bull = instance_create_depth(x, y, (-y), obj_bullet_wraith_fire)
                    bull.hspd = lengthdir_x(vel, dir)
                    bull.vspd = lengthdir_y(vel, dir)
                    bull.damage = damage_bullet
                    bull.shooter_faction = faction
                    bull.shooter_id = id
                }
                if (abs((x - move_point_x)) < 8 && abs((y - move_point_y)) < 8)
                {
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
            }
            else
                scr_mutant_target_not_in_sight()
            break
        case (62 << 0):
            state_enemy_mutant_patrol()
            break
        case (63 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != noone)
            {
                target_for_image_scale = target.x
                if (move_point_x == 0)
                {
                    range_ = 64
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                path_end()
                last_seen_x = target.x
                last_seen_y = target.y
                range_ = 64
                if scr_chance(npc_prob_attack[npc_id])
                {
                    move_point_x = target.x
                    move_point_y = target.y
                }
                if scr_chance(npc_prob_move[npc_id])
                {
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                if (point_distance(x, y, target.x, target.y) < 96)
                {
                    if scr_chance(prob_attack1)
                    {
                        instance_create_depth(x, y, 0, obj_hud_get_hit)
                        var dis_ = point_distance(x, y, target.x, target.y)
                        var dir_ = point_direction(x, y, target.x, target.y)
                        var a = (9 << 0)
                        var ob = obj_particles_controller
                        var dis1 = 0
                        var dir1 = 0
                        var amount_ = choose(-1, 1)
                        var dividendo = (irandom(7) + 3)
                        for (var i = 0; i < dis_; i++)
                        {
                            var xo = (x + lengthdir_x(i, dir_))
                            var yo = (y + lengthdir_y(i, dir_))
                            dividendo = (irandom(7) + 3)
                            if (frac((i / dividendo)) == 0)
                                amount_ = (-amount_)
                            dis1 += amount_
                            dir1 = (dir_ + 90)
                            var x1 = (xo + lengthdir_x(dis1, dir1))
                            var y1 = (yo + lengthdir_y(dis1, dir1))
                            part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], x1, x1, y1, y1, 0, 1)
                            part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], ob.particle_amount[a])
                        }
                        instance_create_depth(x1, y1, 0, obj_light_electric_spark)
                        target.hp -= dmg_attack1
                    }
                }
                if (abs((x - move_point_x)) < 8 && abs((y - move_point_y)) < 8)
                {
                    move_point_x = (target.x + irandom_range((-range_), range_))
                    move_point_y = (target.y + irandom_range((-range_), range_))
                }
                mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
            }
            else
                scr_mutant_target_not_in_sight()
            break
        case (64 << 0):
            scr_enemy_choose_idle_or_move()
            scr_collision()
            if scr_chance(0.5)
            {
                state = (65 << 0)
                hspd = 0
                vspd = 0
            }
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != -4)
            {
                hspd = 0
                vspd = 0
                var range = 128
                move_point_x = (x + irandom_range(((-range) - (range / 2)), (range + (range / 2))))
                move_point_y = (y + irandom_range(((-range) - (range / 2)), (range + (range / 2))))
                state = (66 << 0)
            }
            break
        case (65 << 0):
            scr_collision()
            if (image_index >= (sprite_get_number(s_rabbit_idle2) - 2))
                state = (64 << 0)
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != -4)
            {
                hspd = 0
                vspd = 0
                range = 128
                move_point_x = (x + irandom_range(((-range) - (range / 2)), (range + (range / 2))))
                move_point_y = (y + irandom_range(((-range) - (range / 2)), (range + (range / 2))))
                state = (66 << 0)
            }
            break
        case (66 << 0):
            path_timer++
            if (path_timer >= path_timer_reset)
            {
                path_timer = 0
                path_to_target = path_add()
                mp_grid_path(global.grid_move, path_to_target, x, y, move_point_x, move_point_y, true)
                path_start(path_to_target, npc_spd_alerted[npc_id], path_action_stop, 0)
            }
            target_for_image_scale = move_point_x
            if (abs((x - move_point_x)) < 16 && abs((y - move_point_y)) < 16)
                state = (64 << 0)
            break
        case (67 << 0):
            scr_enemy_choose_idle_or_move()
            scr_collision()
            if scr_chance(0.5)
            {
                state = (68 << 0)
                hspd = 0
                vspd = 0
            }
            scr_enemy_crow_check_if_escape()
            break
        case (68 << 0):
            scr_collision()
            if (image_index >= (sprite_get_number(s_crow_idle2) - 2))
                state = (67 << 0)
            scr_enemy_crow_check_if_escape()
            break
        case (71 << 0):
            move_towards_point(move_point_x, move_point_y, 2.5)
            if (point_distance(x, y, move_point_x, move_point_y) < 16)
                instance_destroy()
            break
        case (72 << 0):
            if scr_chance(0.5)
            {
                state = (74 << 0)
                hspd = 0
                vspd = 0
            }
            scr_enemy_crow_check_if_escape()
            break
        case (74 << 0):
            speed = 0
            if scr_chance(1)
            {
                image_index = 0
                state = (72 << 0)
            }
            scr_enemy_crow_check_if_escape()
            break
        case (73 << 0):
            move_towards_point(move_point_x, move_point_y, 2)
            if (point_distance(x, y, move_point_x, move_point_y) < 128 && point_distance(x, y, move_point_x, move_point_y) > 64)
            {
                if scr_chance(10)
                {
                    var ss = choose(310, 311, 312, 313, 314)
                    if (!audio_is_playing(ss))
                        audio_play_sound(ss, 10, false)
                }
            }
            if (point_distance(x, y, move_point_x, move_point_y) < (irandom(3) + 1))
            {
                speed = 0
                range = 500
                dir = irandom_range(45, 135)
                move_point_x = (x + lengthdir_x(range, dir))
                move_point_y = (y + lengthdir_y(range, dir))
                if scr_chance(30)
                    state = (74 << 0)
                else
                    state = (72 << 0)
            }
            break
        case (75 << 0):
            target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
            if (target != noone)
            {
                timer++
                if (timer >= timer_max)
                {
                    timer = 0
                    if (spawn_amount < spawn_max)
                    {
                        repeat spawn_amount
                        {
                            var oo = instance_create_depth(x, (y + 8), 0, obj_enemy_ghoul)
                            oo.target = target
                            oo.search_target_id = target
                            spawn_amount++
                        }
                    }
                }
            }
            break
        default:

    }

    if (hp <= 0)
    {
        hp = -100
        var sound_ = -1
        switch object_index
        {
            case obj_enemy_wolf_brown:
                sound_ = 281
                break
            case 219:
                sound_ = 309
                break
            case 220:
                sound_ = 309
                break
            case 208:
                sound_ = 320
                break
            case 221:
                sound_ = 303
                break
            case 210:
                sound_ = 295
                break
        }

        if (sound_ != -1)
        {
            var emitter_death = instance_create_depth(x, y, 0, obj_emitter_death_sound)
            emitter_death.sound_ = sound_
        }
        if (object_index == obj_enemy_infestation || object_index == obj_enemy_infestation_motel)
        {
            var o = obj_particles_controller
            a = (2 << 0)
            part_particles_create(o.particles_system[a], x, y, o.particles_type[a], o.particle_amount[a])
        }
        if (object_index == obj_forest_trader)
            global.az_done[(1 << 0)] = 1
        if (object_index == obj_junk_trader)
            global.az_done[(11 << 0)] = 1
        instance_destroy()
    }
    if (state == (47 << 0) && state_before != (47 << 0))
        audio_play_sound_on(emitter_talk, snd_wolf_growl, false, 8)
    state_before = state
    if (room != r_hub && room != room_tutorial)
    {
        if collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true)
        {
            timer_visible++
            if (timer_visible >= timer_visible_max)
                image_alpha -= (a_gain / 2)
        }
        else
            image_alpha += a_gain
        image_alpha = clamp(image_alpha, 0, 1)
    }
    return;
}

