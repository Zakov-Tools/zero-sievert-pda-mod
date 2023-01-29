if (room == room1)
{
    if (global.state_emission_now == (0 << 0))
    {
        if (global.is_emission_now == 0)
        {
            var _map = obj_map_generator.area
            if scr_chance(emission_chance[_map])
            {
                alarm[0] = 2
                alarm[1] = 1
            }
        }
    }
}
