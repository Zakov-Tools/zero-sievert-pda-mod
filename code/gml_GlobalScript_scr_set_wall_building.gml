function scr_set_wall_building(argument0, argument1, argument2, argument3) //gml_Script_scr_set_wall_building
{
    var xx = (argument0 * 16)
    var yy = (argument1 * 16)
    var wall_ss = argument2
    var cell_ = argument3
    var ww = instance_create_depth(xx, yy, -999, obj_wall_building)
    ww.wall_building = 1
    ww.wall_s = wall_ss
    ww.cell = cell_
    var _solid = instance_create_depth(xx, yy, -999, obj_solid)
    return;
}

