function scr_create_spark(argument0, argument1) //gml_Script_scr_create_spark
{
    var dis_ = argument0
    var dir_ = argument1
    var a = (9 << 0)
    var ob = obj_particles_controller
    var dis1 = 0
    var dir1 = 0
    var amount_ = choose(-1, 1)
    var dividendo = (irandom(4) + 5)
    for (var i = 0; i < dis_; i++)
    {
        var xo = (x + lengthdir_x(i, dir_))
        var yo = (y + lengthdir_y(i, dir_))
        dividendo = (irandom(7) + 3)
        if (frac((i / dividendo)) == 0)
            amount_ = (-amount_)
        dis1 += amount_
        dir1 = (dir_ + 90)
        var x1 = (xo + lengthdir_x(dis1, dir1))
        var y1 = (yo + lengthdir_y(dis1, dir1))
        part_emitter_region(ob.particles_system[a], ob.partciles_emitter[a], x1, x1, y1, y1, 0, 1)
        part_emitter_burst(ob.particles_system[a], ob.partciles_emitter[a], ob.particles_type[a], ob.particle_amount[a])
        if scr_chance(25)
            instance_create_depth(x1, y1, 0, obj_light_electric_spark)
    }
    return;
}

