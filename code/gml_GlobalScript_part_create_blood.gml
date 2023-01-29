function part_create_blood(argument0, argument1, argument2) //gml_Script_part_create_blood
{
    var a = (0 << 0)
    var _amount = argument2
    repeat _amount
    {
        var _blood = instance_create_depth(x, y, (-y), obj_blood)
        _blood.spd = random_range(1, 4)
        _blood.min_dir = argument0
        _blood.max_dir = argument1
        _blood.image_index = irandom(sprite_get_number(s_blood))
    }
    a = (1 << 0)
    part_particles_create(obj_particles_controller.particles_system[a], x, y, obj_particles_controller.particles_type[a], 1)
    return;
}

