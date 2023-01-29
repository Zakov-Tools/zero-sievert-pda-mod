if instance_exists(obj_controller)
{
    if instance_exists(follow_id)
    {
        sprite_index = follow_id.item_sprite_ingame[follow_id.arma_now]
        image_yscale = 0.4
        if (obj_controller.arma_moddable[follow_id.arma_now] == 1)
        {
            if (mod_id[(3 << 0)] != -1)
            {
                var bx = arma_mod_x[follow_id.arma_now][(3 << 0)]
                var by = arma_mod_y[follow_id.arma_now][(3 << 0)]
                var bl = mod_barrel_length[mod_id[(3 << 0)]]
                brake_x = ((bx + bl) - 1)
                brake_y = by
            }
        }
        off_k = (4 / follow_id.arma_rate_of_fire[follow_id.arma_now])
        off_k = clamp(off_k, 0.5, 10)
        off_angle -= off_k
        off_angle = clamp(off_angle, 0, 5)
        if (follow_id.target_for_image_scale < x)
        {
            var rot = (follow_id.weapon_pointing_direction + 180)
            image_xscale = -0.4
            image_angle = (rot - off_angle)
            depth = (follow_id.depth + 3)
        }
        else
        {
            rot = follow_id.weapon_pointing_direction
            image_xscale = 0.4
            image_angle = (rot + off_angle)
            depth = (follow_id.depth - 3)
        }
        off_k = (2 / follow_id.arma_rate_of_fire[follow_id.arma_now])
        off_k = clamp(off_k, 0.25, 10)
        off_amount -= off_k
        off_amount = clamp(off_amount, 0, 3)
        x = (follow_id.x - lengthdir_x(off_amount, off_dir))
        y = ((follow_id.y + 5) + lengthdir_y(off_amount, off_dir))
    }
    else
        instance_destroy()
}
