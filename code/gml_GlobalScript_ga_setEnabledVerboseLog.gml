function ga_setEnabledVerboseLog() //gml_Script_ga_setEnabledVerboseLog
{
    if (os_type == os_android)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_ios)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_windows)
        setEnabledVerboseLog_windows(argument[0])
    else if (os_type == os_macosx)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_linux)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_uwp)
        extension_stubfunc_real(argument[0])
    return;
}

