function scr_change_map(argument0, argument1) //gml_Script_scr_change_map
{
    var which_map = argument0
    var which_room = argument1
    ini_open(global.save_inventory)
    ini_write_real("Map", "Map id", which_map)
    ini_write_real("Map", "From which map", from)
    ini_close()
    room_goto(which_room)
    return;
}

