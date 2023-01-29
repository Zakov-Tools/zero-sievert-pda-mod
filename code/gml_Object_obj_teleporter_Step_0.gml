if instance_exists(obj_player)
{
    if (can_exit == 1)
    {
        if (point_distance(x, y, obj_player.x, obj_player.y) < 64)
        {
            timer += 1
            if (timer >= timer_exit)
                room_goto(r_hub)
        }
        else
            timer = 0
    }
}
