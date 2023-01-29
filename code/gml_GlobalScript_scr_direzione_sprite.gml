function scr_direzione_sprite() //gml_Script_scr_direzione_sprite
{
    if (xprevious != x || yprevious != y)
    {
        sprite_index = sprite_run
        image_speed = image_speed_move_current
    }
    if (xprevious == x && yprevious == y)
    {
        sprite_index = sprite_idle
        image_speed = image_speed_idle
    }
    return;
}

