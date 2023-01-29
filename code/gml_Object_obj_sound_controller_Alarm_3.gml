if (room == room1)
{
    if (y < obj_map_generator.map_height)
    {
        if (!instance_exists(obj_exit_screen))
        {
            if scr_chance(100)
            {
                var _sound = choose(235, 236, 237, 238, 239, 240, 241, 242, 243)
                audio_play_sound(_sound, 12, false)
            }
        }
    }
}
alarm[3] = (irandom(720) + 600)
if scr_chance(25)
    alarm[3] = 20
