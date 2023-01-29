function ga_onResume() //gml_Script_ga_onResume
{
    if (os_type == os_windows)
        onResume_windows()
    else if (os_type == os_macosx)
        extension_stubfunc_real()
    else if (os_type == os_linux)
        extension_stubfunc_real()
    else if (os_type == os_uwp)
        extension_stubfunc_string()
    return;
}

