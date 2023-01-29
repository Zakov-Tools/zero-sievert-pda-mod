repeat (3 + irandom(2))
{
    var xx = (irandom_range(-8, 8) * 16)
    var yy = (irandom_range(-8, 8) * 16)
    instance_create_depth((x + xx), (y + yy), (-y), obj_enemy_plant)
}
