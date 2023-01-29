if (point_distance(x, (y - 16), obj_player.x, obj_player.y) < 64)
    open = 1
else
    open = 0
if (open == 1)
{
    if (image_index < (image_number - 1))
        image_speed = 1
    else
    {
        image_index = (image_number - 1)
        image_speed = 0
    }
}
else if (image_index > 1)
    image_speed = -1
else
{
    image_index = 0
    image_speed = 0
}
