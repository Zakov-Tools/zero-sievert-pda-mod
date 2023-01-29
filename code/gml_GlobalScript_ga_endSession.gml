function ga_endSession() //gml_Script_ga_endSession
{
    if (os_type == os_android)
        extension_stubfunc_real()
    else if (os_type == os_ios)
        extension_stubfunc_real()
    else if (os_type == os_windows)
        endSession_windows()
    else if (os_type == os_macosx)
        extension_stubfunc_real()
    else if (os_type == os_linux)
        extension_stubfunc_real()
    else if (os_type == os_uwp)
        extension_stubfunc_real()
    return;
}

