if (flickering_amount > 0)
{
    scale += (flickering_amount * choose(-1, 1))
    scale = clamp(scale, (scale_start - flickering_range), (scale_start + flickering_range))
}
