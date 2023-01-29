function ga_setEnabledInfoLog() //gml_Script_ga_setEnabledInfoLog
{
    if (os_type == os_android)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_ios)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_windows)
        setEnabledInfoLog_windows(argument[0])
    else if (os_type == os_macosx)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_linux)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_uwp)
        extension_stubfunc_real(argument[0])
    return;
}

