if (speaker_move[speaker_id] == 1)
{
    if scr_chance(2)
    {
        hspd = choose((-spd), 0, spd)
        vspd = choose((-spd), 0, spd)
        last_hspd = hspd
    }
    if scr_chance(2)
    {
        hspd = 0
        vspd = 0
    }
    if (global.speaker_nearest == id)
    {
        hspd = 0
        vspd = 0
    }
    targetx = (x + last_hspd)
    scr_collision_guy_hub()
}
depth = ((-y) - 6)
