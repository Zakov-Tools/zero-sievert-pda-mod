event_inherited()
if (room != r_hub)
{
    var ll = instance_create_depth(x, y, 0, obj_light_enemy_torch)
    ll.id_linked = id
}
alarm[9] = 1
check_weapon_timer = 0
check_weapon_timer_max = 120
