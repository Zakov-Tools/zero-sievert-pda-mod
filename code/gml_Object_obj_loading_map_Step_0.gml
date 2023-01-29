if (obj_map_generator.state == (19 << 0))
{
    alpha_screen -= a_amount
    if (alpha_screen <= 0)
        instance_destroy()
}
if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
