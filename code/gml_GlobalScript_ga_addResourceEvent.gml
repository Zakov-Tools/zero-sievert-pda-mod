function ga_addResourceEvent() //gml_Script_ga_addResourceEvent
{
    if (os_type == os_android)
        extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
    else if (os_type == os_ios)
        extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
    else if (os_type == os_windows)
        addResourceEventJson_windows(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
    else if (os_type == os_macosx)
        extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
    else if (os_type == os_linux)
        extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
    else if (os_type == os_uwp)
        extension_stubfunc_real(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])))
    return;
}

