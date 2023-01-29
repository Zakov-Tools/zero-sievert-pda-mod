function scr_bullet_near() //gml_Script_scr_bullet_near
{
    var _bullet_near = 0
    if instance_exists(obj_bullet_parent)
    {
        var _near_bullet_id = instance_nearest(x, y, obj_bullet_parent)
        if (point_distance(x, y, _near_bullet_id.x, _near_bullet_id.y) < 32)
        {
            _bullet_near = 1
            if (_near_bullet_id.shooter_faction != faction)
            {
                if instance_exists(target)
                {
                    if (target_relation != (2 << 0))
                    {
                        target = _near_bullet_id.shooter_id
                        if instance_exists(_near_bullet_id.shooter_id)
                        {
                            last_seen_x = target.x
                            last_seen_y = target.y
                        }
                    }
                }
                if (!instance_exists(target))
                {
                    if instance_exists(_near_bullet_id.shooter_id)
                    {
                        target = _near_bullet_id.shooter_id
                        last_seen_x = _near_bullet_id.shooter_id.x
                        last_seen_y = _near_bullet_id.shooter_id.y
                    }
                }
            }
        }
    }
    return;
}

