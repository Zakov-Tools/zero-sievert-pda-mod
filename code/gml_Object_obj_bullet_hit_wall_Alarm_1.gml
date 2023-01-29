var _dir = impact_direction
repeat (6)
{
    var _dir1 = (irandom_range(-45, 45) + _dir)
    part_type_orientation(particles_type[a], _dir1, _dir1, 0, 0, 0)
    part_type_direction(particles_type[a], _dir1, _dir1, 0, 0)
    part_particles_create(particles_system[a], x, y, particles_type[a], 1)
}
