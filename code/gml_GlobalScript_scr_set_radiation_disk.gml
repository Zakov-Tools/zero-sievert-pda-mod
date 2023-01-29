function scr_set_radiation_disk(argument0, argument1) //gml_Script_scr_set_radiation_disk
{
    var xx = (x div 16)
    var yy = (y div 16)
    radiation_at_center = argument0
    number_of_disk = argument1
    for (var i = 0; i < number_of_disk; i++)
        ds_grid_add_disk(obj_map_generator.grid_radiation, xx, yy, (12 div (number_of_disk - i)), (radiation_at_center / number_of_disk))
    return;
}

