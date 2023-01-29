function scr_save_player_status() //gml_Script_scr_save_player_status
{
    ini_open(global.save_inventory)
    ini_write_real("player", "hp_max", obj_player.hp_max)
    ini_write_real("player", "hp", obj_player.hp)
    ini_write_real("player", "stamina_max", obj_player.stamina_max)
    ini_write_real("player", "wound", obj_player.wound)
    ini_write_real("player", "fatigue", obj_player.fatigue)
    ini_write_real("player", "energy", obj_player.energy)
    ini_write_real("player", "thirst", obj_player.thirst)
    ini_write_real("player", "radiation", obj_player.radiation_accumulata)
    ini_write_real("stats", "money", global.player_money)
    if (room == r_hub)
    {
        ini_write_real("player", "x", obj_player.x)
        ini_write_real("player", "y", obj_player.y)
    }
    ini_close()
    return;
}

