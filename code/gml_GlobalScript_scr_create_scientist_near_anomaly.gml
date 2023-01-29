function scr_create_scientist_near_anomaly(argument0) //gml_Script_scr_create_scientist_near_anomaly
{
    var radius = ((argument0 * 16) + 32)
    var dir = irandom(360)
    var xx = (x + lengthdir_x(radius, dir))
    var yy = (y + lengthdir_y(radius, dir))
    var b = instance_create_depth(xx, yy, 0, obj_scientist)
    b.state = (27 << 0)
    b = instance_create_depth((xx + 10), (yy + 10), 0, obj_scientist)
    b.state = (27 << 0)
    b = instance_create_depth((xx - 10), (yy - 10), 0, obj_scientist_2)
    with (b)
        scr_npc_arms((26 << 0), obj_arms_scientist_working)
    return;
}

