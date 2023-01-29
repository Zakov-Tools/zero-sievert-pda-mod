function scr_save_restok_timer() //gml_Script_scr_save_restok_timer
{
    ini_open(global.save_general)
    ini_write_real("Trader restok", "trader_restok_timer", global.trader_restok_timer)
    ini_close()
    return;
}

