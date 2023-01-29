need_to_check = 0
decor_id = (44 << 0)
raggio = 192
quanti_zombie = 6
repeat quanti_zombie
{
    var xx = (x + random_range(((-raggio) / 2), (raggio / 2)))
    var yy = (y + random_range(((-raggio) / 2), (raggio / 2)))
    instance_create_depth(xx, yy, (-y), obj_enemy_zombie)
}
scr_set_radiation_disk(88, 3)
