alarm[0] = (10 + irandom(7))
if (amount > 0)
{
    var ss = instance_create_depth((x + irandom_range(-24, 32)), y, 0, obj_enemy_ghoul)
    ss.alarm[6] = 2
    amount -= 1
    if (amount <= 2)
        alarm[1] = 500
}
