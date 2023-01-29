function ga_addDesignEvent() //gml_Script_ga_addDesignEvent
{
    if (argument_count == 1)
    {
        if (os_type == os_android)
            extension_stubfunc_real(argument[0])
        else if (os_type == os_ios)
            extension_stubfunc_real(argument[0])
        else if (os_type == os_windows)
            addDesignEvent_windows(argument[0])
        else if (os_type == os_macosx)
            extension_stubfunc_real(argument[0])
        else if (os_type == os_linux)
            extension_stubfunc_real(argument[0])
        else if (os_type == os_uwp)
            extension_stubfunc_real(argument[0])
    }
    else if (argument_count == 2)
    {
        if (os_type == os_android)
            extension_stubfunc_real(argument[0], argument[1])
        else if (os_type == os_ios)
            extension_stubfunc_real(argument[0], argument[1])
        else if (os_type == os_windows)
            addDesignEventWithValue_windows(argument[0], argument[1])
        else if (os_type == os_macosx)
            extension_stubfunc_real(argument[0], argument[1])
        else if (os_type == os_linux)
            extension_stubfunc_real(argument[0], argument[1])
        else if (os_type == os_uwp)
            extension_stubfunc_real(argument[0], argument[1])
    }
    return;
}

