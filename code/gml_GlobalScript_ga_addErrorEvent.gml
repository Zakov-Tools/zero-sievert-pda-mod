function ga_addErrorEvent() //gml_Script_ga_addErrorEvent
{
    if (os_type == os_android)
        extension_stubfunc_real(argument[0], argument[1])
    else if (os_type == os_ios)
        extension_stubfunc_real(argument[0], argument[1])
    else if (os_type == os_windows)
        addErrorEvent_windows(argument[0], argument[1])
    else if (os_type == os_macosx)
        extension_stubfunc_real(argument[0], argument[1])
    else if (os_type == os_linux)
        extension_stubfunc_real(argument[0], argument[1])
    else if (os_type == os_uwp)
        extension_stubfunc_real(argument[0], argument[1])
    return;
}

