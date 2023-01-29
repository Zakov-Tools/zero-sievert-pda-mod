if instance_exists(obj_enemy_poltergeist)
{
    if (distance_to_object(obj_enemy_poltergeist) < 64)
        polt_id = instance_nearest(x, y, obj_enemy_poltergeist)
}
spd = 0
spd_idle = 0.1
spd_attack = 5
if (polt_id.weapon_number < polt_id.weapon_number_max)
{
    polt_id.weapon_number += 1
    my_number = polt_id.weapon_number
}
