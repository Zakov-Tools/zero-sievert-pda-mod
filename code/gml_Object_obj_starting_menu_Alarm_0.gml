ini_open("settings.ini")
var first_time = ini_read_real("first_time", "first_time", 0)
if (first_time == 0)
{
    var mw = display_get_width()
    var mh = display_get_height()
    window_set_size(mw, mh)
    ini_write_real("first_time", "first_time", 1)
}
ini_close()
