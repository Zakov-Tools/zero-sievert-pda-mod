function ga_onStop() //gml_Script_ga_onStop
{
    if (os_type == os_windows)
        onStop_windows()
    else if (os_type == os_macosx)
        extension_stubfunc_real()
    else if (os_type == os_linux)
        extension_stubfunc_real()
    else if (os_type == os_uwp)
        extension_stubfunc_real()
    return;
}

