event_inherited()
if instance_exists(obj_enemy_anomaly_fire)
{
    var near = instance_nearest(x, y, obj_enemy_anomaly_fire)
    if (point_distance(x, y, near.x, near.y) < 16)
    {
        x = near.x
        y = near.y
    }
    else
        instance_destroy()
}
else
    instance_destroy()
