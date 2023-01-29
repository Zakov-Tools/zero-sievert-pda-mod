function scr_aggiorna_save_slot() //gml_Script_scr_aggiorna_save_slot
{
    global.save_inventory = (("save_" + string(global.slot_selected)) + ".ini")
    global.save_general = (("save_general_" + string(global.slot_selected)) + ".ini")
    global.save_player_chest = (("save_player_chest_" + string(global.slot_selected)) + ".ini")
    global.save_hub = (("save_hub_" + string(global.slot_selected)) + ".ini")
    return;
}

