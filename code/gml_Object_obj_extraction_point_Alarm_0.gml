var _off = (obj_map_generator.offset_solid_dai_margini * 16)
if (y < obj_map_generator.map_height)
{
    x = clamp(x, _off, (room_width - _off))
    y = clamp(y, _off, (obj_map_generator.map_height - _off))
}
