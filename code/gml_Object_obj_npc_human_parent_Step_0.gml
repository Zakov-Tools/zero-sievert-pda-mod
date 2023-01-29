event_inherited()
check_weapon_timer++
if (check_weapon_timer >= check_weapon_timer_max)
{
    check_weapon_timer = 0
    var esiste = 0
    var my_id = id
    if instance_exists(obj_npc_weapon)
    {
        with (obj_npc_weapon)
        {
            if (follow_id == my_id)
                esiste = 1
        }
    }
    if (esiste == 0)
        alarm[9] = 1
}
