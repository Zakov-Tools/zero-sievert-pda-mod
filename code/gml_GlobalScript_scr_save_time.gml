function scr_save_time() //gml_Script_scr_save_time
{
    ini_open(global.save_general)
    ini_write_real("Time", "Minutes", obj_light_controller.minute)
    ini_write_real("Time", "Hour", obj_light_controller.hour)
    ini_write_real("Time", "Day", obj_light_controller.day)
    ini_write_real("Time", "Month", obj_light_controller.month)
    ini_write_real("Time", "Year", obj_light_controller.year)
    ini_write_real("Time", "Day_now", obj_light_controller.day_now)
    ini_write_real("Real time played", "seconds", obj_light_controller.real_time_played)
    ini_close()
    return;
}

