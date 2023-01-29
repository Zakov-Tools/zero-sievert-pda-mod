function ga_addBusinessEvent() //gml_Script_ga_addBusinessEvent
{
    if (argument_count == 5)
    {
        if (os_type == os_android)
            extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
        else if (os_type == os_ios)
            extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
        else if (os_type == os_windows)
            addBusinessEventJson_windows(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
        else if (os_type == os_macosx)
            extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
        else if (os_type == os_linux)
            extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
        else if (os_type == os_uwp)
            extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
    }
    else if (argument_count == 6 && os_type == os_ios)
    {
        if is_string(argument[5])
            extension_stubfunc_real(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5])
        else if (argument[5] == 1)
            extension_stubfunc_real(argument[0], argument[1], argument[2], argument[3], argument[4])
        else
            extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
    }
    else if (argument_count == 7 && os_type == os_android)
        extension_stubfunc_real(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], "google_play", argument[6])
    return;
}

