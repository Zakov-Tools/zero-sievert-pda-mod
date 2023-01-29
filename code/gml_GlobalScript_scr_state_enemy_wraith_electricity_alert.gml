function scr_state_enemy_wraith_electricity_alert() //gml_Script_scr_state_enemy_wraith_electricity_alert
{
    target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
    if (target != noone)
    {
        target_for_image_scale = target.x
        if (move_point_x == 0)
        {
            var range_ = 64
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
                scr_sound_at_position(snd_electric_spark, false, 96, 16)
            }
        }
        if (abs((x - move_point_x)) < 8 && abs((y - move_point_y)) < 8)
        {
            move_point_x = (target.x + irandom_range((-range_), range_))
            move_point_y = (target.y + irandom_range((-range_), range_))
        }
        mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
    }
    else if (search_target_id != noone)
    {
        if (enemy_seen == 1)
        {
            enemy_seen = 0
            range_ = 64
            move_point_x = (last_seen_x + irandom_range((-range_), range_))
            move_point_y = (last_seen_y + irandom_range((-range_), range_))
            alarm[5] = reset_state_to_patrol_time
        }
        if scr_chance(npc_prob_move[npc_id])
        {
            range_ = 64
            move_point_x = (search_target_id.x + irandom_range((-range_), range_))
            move_point_y = (search_target_id.y + irandom_range((-range_), range_))
        }
        mp_potential_step_object(move_point_x, move_point_y, npc_spd_alerted[npc_id], obj_solid)
        if (point_distance(x, y, search_target_id.x, search_target_id.y) > (npc_alert_visual_distance[npc_id] * 3))
        {
            search_target_id = -4
            state = npc_state_patrol[npc_id]
        }
    }
    return;
}

