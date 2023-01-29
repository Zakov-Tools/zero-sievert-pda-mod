event_inherited()
if (start_checking == 1)
{
    if instance_exists(id_linked)
    {
        x = id_linked.x
        y = id_linked.y
        light_direction = id_linked.weapon_pointing_direction
        if (id_linked.image_alpha > 0)
        {
            light_sprite = light_standard
            scale = lerp(0, scale_start, id_linked.image_alpha)
        }
        else
            light_sprite = 1931
    }
    else
        instance_destroy()
}
