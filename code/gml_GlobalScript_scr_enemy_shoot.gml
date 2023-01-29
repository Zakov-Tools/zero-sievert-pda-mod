function scr_enemy_shoot() //gml_Script_scr_enemy_shoot
{
    riflessi++
    var target_distance = distance_to_object(target)
    weapon_pointing_direction = point_direction(x, y, target.x, target.y)
    if (reloading == 0)
    {
        if (ammo_now > 0)
        {
            if (shooting == 0)
            {
                if (riflessi >= riflessi_max)
                {
                    recoil_total = (arma_precisione[arma_now] * npc_aim_factor[npc_id])
                    var dam = arma_damage[arma_now]
                    var prec = (arma_precisione[arma_now] * npc_aim_factor[npc_id])
                    scr_shoot(weapon_pointing_direction, (0 << 0), dam, prec)
                    shooting = 1
                    ammo_now -= 1
                    recoil_shooting += recoil_arma
                    if (arma_fire_mode[arma_now] == (1 << 0))
                        alarm[1] = ((arma_rate_of_fire[arma_now] + irandom(25)) + 15)
                    else
                        alarm[1] = (arma_rate_of_fire[arma_now] * npc_prob_attack[npc_id])
                    if (ammo_now <= 0)
                        have_to_reload = 1
                    var _id = id
                    var shake_ = (((dam * ammo_number[ammo_id_now]) / 10) * 2)
                    var dir_ = weapon_pointing_direction
                    if instance_exists(obj_npc_weapon)
                    {
                        with (obj_npc_weapon)
                        {
                            if (follow_id == _id)
                            {
                                off_angle += shake_
                                off_amount += (shake_ / 2)
                                off_dir = (-dir_)
                            }
                        }
                    }
                }
            }
        }
    }
    return;
}

