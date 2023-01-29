if (n_bullet > 1)
{
    if instance_exists(obj_player)
    {
        if (shooter_id == obj_player.id)
            damage *= 0.25
    }
}
