function scr_shoot(argument0, argument1, argument2, argument3) //gml_Script_scr_shoot
{
    var shoot_dir = argument0
    var bullet_target = argument1
    var bullet_damage = argument2
    var precisione = argument3
    if (object_index == obj_player)
        var _ammo_id = ammo_id_now[weapon_slot_now]
    else
        _ammo_id = ammo_id_now
    if (ammo_id_now == 0)
    {
        _ammo_id = arma_ammo[arma_now]
        if (object_index == obj_player)
            ammo_id_now[weapon_slot_now] = _ammo_id
    }
    var _quanti_bullet = ammo_number[_ammo_id]
    var _pen = ammo_pen[_ammo_id]
    bullet_damage *= ((100 + ammo_damage[_ammo_id]) / 100)
    precisione *= ((100 - ammo_acc[_ammo_id]) / 100)
    weapon_pointing_direction = shoot_dir
    var arma_sound_ = arma_sound[arma_now]
    var _player_has_silencer = 0
    if (object_index == obj_player)
    {
        if (obj_player.arma_moddable[obj_player.arma_now] == 1)
        {
            if (obj_player.mod_id[obj_player.weapon_slot_now][(5 << 0)] != -1)
            {
                var get_brake_id = obj_player.mod_id[obj_player.weapon_slot_now][(5 << 0)]
                if (obj_player.mod_type[get_brake_id] == (9 << 0))
                {
                    arma_sound_ = mod_silencer_sound[get_brake_id]
                    _player_has_silencer = 1
                }
            }
        }
    }
    else
    {
        var _mod_id = mod_id[(5 << 0)]
        if (_mod_id != -1)
        {
            if (mod_type[_mod_id] == (9 << 0))
                arma_sound_ = mod_silencer_sound[_mod_id]
        }
    }
    var _pitch = random_range(0.95, 1.05)
    audio_play_sound_on(emitter_shoot, arma_sound_, false, 10, 1, 0, _pitch)
    var shell = instance_create_depth(x, y, (-y), obj_bullet_shell)
    shell.stop_y = ((y + 8) + random_range(-2, 2))
    shell.image_index = ammo_shell[arma_ammo[arma_now]]
    if (image_xscale == 1)
    {
        shell.image_angle = weapon_pointing_direction
        shell.direction = ((weapon_pointing_direction + 90) + random_range(20, 45))
    }
    else
    {
        shell.image_angle = weapon_pointing_direction
        shell.direction = ((weapon_pointing_direction - 90) + random_range(-45, -20))
    }
    if (object_index == obj_player)
        shell.audio_can = 1
    if (_quanti_bullet == 1)
    {
        var offset = random_range((-precisione), precisione)
        if (object_index == obj_player)
            offset = scr_gauss(0, (precisione / 2))
        var dir = (shoot_dir + offset)
        var sprite_weapon = item_sprite_ingame[arma_now]
        if (image_xscale == 1)
            var off_dir = 90
        else
            off_dir = -90
        var weapon_sprite_w = (sprite_get_width(sprite_weapon) * 0.4)
        var diffx = (weapon_sprite_w - (sprite_get_xoffset(sprite_weapon) * 0.4))
        var bullet_spawn_x = ((x + lengthdir_x(diffx, weapon_pointing_direction)) + lengthdir_x(2, (weapon_pointing_direction + off_dir)))
        var bullet_spawn_y = (((y + lengthdir_y(diffx, weapon_pointing_direction)) + lengthdir_y(2, (weapon_pointing_direction + off_dir))) + 5)
        laser_startx = bullet_spawn_x
        laser_starty = bullet_spawn_y
        var muzzle = instance_create_depth(bullet_spawn_x, bullet_spawn_y, ((-y) - 10), obj_muzzle_fire)
        muzzle.image_angle = weapon_pointing_direction
        var scope = 0
        if (object_index == obj_player)
        {
            if (global.aiming == 1)
            {
                if instance_position(mouse_x, mouse_y, obj_npc_parent)
                {
                    var enemy_scoped = instance_position(mouse_x, mouse_y, obj_npc_parent)
                    if (!(collision_line(x, y, enemy_scoped.x, enemy_scoped.y, obj_solid, true, true)))
                        scope = 1
                }
            }
        }
        if (scope == 0)
        {
            var bull = instance_create_depth(bullet_spawn_x, bullet_spawn_y, (-y), arma_obj_bullet[arma_now])
            bull.direction = dir
            bull.image_angle = dir
            bull.hspd = lengthdir_x(arma_bullet_speed[arma_now], dir)
            bull.vspd = lengthdir_y(arma_bullet_speed[arma_now], dir)
            bull.damage = bullet_damage
            bull.timer = (arma_damage[arma_now] / 5)
            bull.shooter_faction = faction
            bull.shooter_id = id
            bull.penetration = _pen
            if (object_index != obj_player)
                bull.shooter_npc_name = npc_name[npc_id]
        }
        else
        {
            enemy_scoped = instance_position(mouse_x, mouse_y, obj_npc_parent)
            bull = instance_create_depth(enemy_scoped.x, enemy_scoped.y, (-y), arma_obj_bullet[arma_now])
            bull.direction = dir
            bull.image_angle = dir
            bull.hspd = lengthdir_x(arma_bullet_speed[arma_now], dir)
            bull.vspd = lengthdir_y(arma_bullet_speed[arma_now], dir)
            bull.damage = (bullet_damage * global.sk_k[(19 << 0)])
            bull.timer = (arma_damage[arma_now] / 5)
            bull.shooter_faction = faction
            bull.shooter_id = id
            bull.penetration = _pen
            if (object_index != obj_player)
                bull.shooter_npc_name = npc_name[npc_id]
            if (global.aim_pointer_inside == 1)
            {
                bull.damage = ((bullet_damage * global.sk_k[(19 << 0)]) * 1.5)
                if instance_exists(obj_surface_aim)
                {
                    var _w = sprite_get_width(s_aim_rectangle)
                    var _off = irandom(6)
                    var _amount = _off
                    if scr_chance(50)
                        _amount = (_w - _off)
                    var _pointer_ani = instance_create_depth(((mouse_x - (_w / 2)) + obj_surface_aim.pointer_x), (mouse_y + obj_surface_aim.pointer_off), -9751, obj_aim_pointer_ani)
                    _pointer_ani.off_x = obj_surface_aim.pointer_x
                    obj_surface_aim.pointer_x = _amount
                }
            }
        }
    }
    else if (_quanti_bullet > 1)
    {
        sprite_weapon = item_sprite_ingame[arma_now]
        if (image_xscale == 1)
            off_dir = 90
        else
            off_dir = -90
        weapon_sprite_w = (sprite_get_width(sprite_weapon) * 0.4)
        diffx = (weapon_sprite_w - (sprite_get_xoffset(sprite_weapon) * 0.4))
        bullet_spawn_x = ((x + lengthdir_x(diffx, weapon_pointing_direction)) + lengthdir_x(2, (weapon_pointing_direction + off_dir)))
        bullet_spawn_y = (((y + lengthdir_y(diffx, weapon_pointing_direction)) + lengthdir_y(2, (weapon_pointing_direction + off_dir))) + 5)
        laser_startx = bullet_spawn_x
        laser_starty = bullet_spawn_y
        muzzle = instance_create_depth(bullet_spawn_x, bullet_spawn_y, ((-y) - 10), obj_muzzle_fire)
        muzzle.image_angle = weapon_pointing_direction
        for (var i = 1; i <= _quanti_bullet; i++)
        {
            offset = (((precisione * 2) / _quanti_bullet) * i)
            dir = ((shoot_dir - precisione) + offset)
            sprite_weapon = item_sprite_ingame[arma_now]
            if (image_xscale == 1)
                off_dir = 90
            else
                off_dir = -90
            laser_startx = bullet_spawn_x
            laser_starty = bullet_spawn_y
            bull = instance_create_depth(bullet_spawn_x, bullet_spawn_y, (-y), arma_obj_bullet[arma_now])
            bull.direction = dir
            bull.image_angle = dir
            bull.hspd = lengthdir_x(arma_bullet_speed[arma_now], dir)
            bull.vspd = lengthdir_y(arma_bullet_speed[arma_now], dir)
            bull.damage = (bullet_damage / _quanti_bullet)
            bull.timer = (arma_damage[arma_now] / 5)
            bull.shooter_faction = faction
            bull.shooter_id = id
            bull.penetration = _pen
            bull.n_bullet = _quanti_bullet
            if (object_index != obj_player)
                bull.shooter_npc_name = npc_name[npc_id]
        }
    }
    var lx = (bullet_spawn_x + lengthdir_x(5, weapon_pointing_direction))
    var ly = (bullet_spawn_y + lengthdir_y(5, weapon_pointing_direction))
    var l = instance_create_depth(lx, ly, (-y), obj_light)
    l.light_id = (1 << 0)
    if (image_alpha > 0.1)
    {
        var p = obj_particles_controller
        var _a = (42 << 0)
        _amount = round(clamp((bullet_damage / 5), 3, 8))
        repeat _amount
        {
            lx = (bullet_spawn_x + lengthdir_x(irandom_range(-5, 1), weapon_pointing_direction))
            ly = (bullet_spawn_y + lengthdir_y(irandom_range(-5, 1), weapon_pointing_direction))
            part_particles_create(p.particles_system[_a], lx, ly, p.particles_type[_a], 1)
        }
    }
    var d = 0
    var a = (29 << 0)
    var c = obj_particles_controller
    var angle = 30
    part_type_orientation(c.particles_type[a], (shoot_dir - angle), (shoot_dir + angle), 0, 0, 0)
    part_type_direction(c.particles_type[a], (shoot_dir - angle), (shoot_dir + angle), 0, 0)
    part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (bullet_spawn_x - d), (bullet_spawn_x + d), (bullet_spawn_y - d), (bullet_spawn_y + d), 1, 1)
    part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], 5)
    var _id = id
    var _faction = faction
    var _x = x
    var _y = y
    if instance_exists(obj_npc_parent)
    {
        with (obj_npc_parent)
        {
            if (_id != id)
            {
                if (_faction != faction)
                {
                    if (point_distance(x, y, _x, _y) < 300)
                    {
                        if instance_exists(target)
                        {
                            if (target == _id || target_relation != (2 << 0))
                            {
                                if (_player_has_silencer == 0)
                                {
                                    last_seen_delay_x = _x
                                    last_seen_delay_y = _y
                                    last_seen_delay = 1
                                    if collision_line(x, y, _x, _y, obj_solid, false, true)
                                        hear_target_shoot = 1
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return;
}

