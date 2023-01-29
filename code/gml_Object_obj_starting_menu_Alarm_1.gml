ini_open("settings.ini")
global.fullscreen = ini_read_real("settings", "fullscreen", 1)
ini_close()
window_set_fullscreen(true)
