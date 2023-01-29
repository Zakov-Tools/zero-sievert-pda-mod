if (room == room1)
{
    if (y < obj_map_generator.map_height)
    {
        if (!instance_exists(obj_exit_screen))
        {
            if scr_chance(50)
            {
                var ss = choose(285, 286, 287, 288)
                audio_play_sound(ss, 3, false)
            }
        }
    }
}
alarm[2] = (irandom(720) + 360)
