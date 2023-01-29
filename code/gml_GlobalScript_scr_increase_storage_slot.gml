function scr_increase_storage_slot(argument0) //gml_Script_scr_increase_storage_slot
{
    var _amount = argument0
    global.storage_slot_unlocked += _amount
    ini_open(global.save_player_chest)
    ini_write_real("Storage", "slot now", global.storage_slot_unlocked)
    ini_close()
    return;
}

