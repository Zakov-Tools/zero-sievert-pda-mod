function scr_create_backup() //gml_Script_scr_create_backup
{
    var _pre = "backup_"
    if file_exists(global.save_inventory)
    {
        if file_exists((_pre + global.save_inventory))
            file_delete((_pre + global.save_inventory))
        file_copy(global.save_inventory, (_pre + global.save_inventory))
    }
    if file_exists(global.save_general)
    {
        if file_exists((_pre + global.save_general))
            file_delete((_pre + global.save_general))
        file_copy(global.save_general, (_pre + global.save_general))
    }
    if file_exists(global.save_player_chest)
    {
        if file_exists((_pre + global.save_player_chest))
            file_delete((_pre + global.save_player_chest))
        file_copy(global.save_player_chest, (_pre + global.save_player_chest))
    }
    return;
}

