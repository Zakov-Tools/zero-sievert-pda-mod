function scr_open_url(argument0) //gml_Script_scr_open_url
{
    var _url = argument0
    var _path = (game_save_id + "/shortcut.url")
    var _txt = file_text_open_write(_path)
    file_text_write_string(_txt, ("[{000214A0-0000-0000-C000-000000000046}]\r\n	Prop3=19,11\r\n	[InternetShortcut]\r\n	IDList=\r\n	URL=" + _url))
    file_text_close(_txt)
    gml_Script_execute_shell_simple(_path)
    return;
}

