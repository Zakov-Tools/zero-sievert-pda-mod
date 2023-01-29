if (start == 0)
    event_inherited()
if (start == 1)
{
    scale -= (flickering_amount * 1)
    scale = clamp(scale, 0, (scale_start + flickering_range))
}
