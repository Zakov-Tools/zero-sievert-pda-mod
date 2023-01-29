if (xprevious != x || yprevious != y)
{
    sprite_index = speaker_sprite_move[speaker_id]
    image_speed = ims
}
if (xprevious == x && yprevious == y)
{
    sprite_index = speaker_sprite_idle[speaker_id]
    image_speed = ims
}
if ((targetx - x) > 0)
    image_xscale = -1
else
    image_xscale = 1
