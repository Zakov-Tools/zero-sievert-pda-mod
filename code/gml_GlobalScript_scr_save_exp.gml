function scr_save_exp() //gml_Script_scr_save_exp
{
    ini_open(global.save_general)
    ini_write_real("Exp", "Amount", global.esperienza)
    ini_write_real("Exp", "Livello", global.livello_now)
    ini_close()
    return;
}

