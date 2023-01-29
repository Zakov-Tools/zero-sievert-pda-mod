var o = obj_controller
var radius = o.place_radius[ano_id]
repeat o.place_amount[ano_id]
{
    var dir = irandom(360)
    var dis = irandom((radius * 16))
    var xx = lengthdir_x(dis, dir)
    var yy = lengthdir_y(dis, dir)
    instance_create_depth((x + xx), (y + yy), (-y), obj_anomaly_gas)
}
repeat o.place_crystal_amount[ano_id]
{
    xx = ((irandom_range((-radius), radius) * 16) / 2)
    yy = ((irandom_range((-radius), radius) * 16) / 2)
    instance_create_depth((x + xx), (y + yy), (-y), obj_chest_cristallo_verde)
}
if scr_chance(o.place_chance_spawn_scientist[ano_id])
    scr_create_scientist_near_anomaly((radius + 1))
