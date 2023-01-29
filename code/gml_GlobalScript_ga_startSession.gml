function ga_startSession() //gml_Script_ga_startSession
{
    if (os_type == os_android)
        extension_stubfunc_real()
    else if (os_type == os_ios)
        extension_stubfunc_real()
    else if (os_type == os_windows)
        startSession_windows()
    else if (os_type == os_macosx)
        extension_stubfunc_real()
    else if (os_type == os_linux)
        extension_stubfunc_real()
    else if (os_type == os_uwp)
        extension_stubfunc_real()
    return;
}

