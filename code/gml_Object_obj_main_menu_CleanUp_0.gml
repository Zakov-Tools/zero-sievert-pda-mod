audio_stop_sound(snd_main_menu_2)
ini_open("settings.ini")
ini_write_real("Save slot selected", "Slot", global.slot_selected)
ini_close()
