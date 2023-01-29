depth = ((-y) + 64)
repeat (2 + irandom(2))
{
    var xx = (x + irandom_range(-16, 16))
    var yy = (y + irandom_range(-16, 16))
    instance_create_depth(xx, yy, (-y), obj_enemy_spider)
}
