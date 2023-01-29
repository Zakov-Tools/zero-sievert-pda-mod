if (light_start == 1)
{
    instance_create_depth((x + 8), (y - 16), 0, obj_light_faro_swamp)
    light_start = 0
    light_on = 1
}
