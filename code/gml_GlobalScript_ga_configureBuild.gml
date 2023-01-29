function ga_configureBuild() //gml_Script_ga_configureBuild
{
    if (os_type == os_android)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_ios)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_windows)
        configureBuild_windows(argument[0])
    else if (os_type == os_macosx)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_linux)
        extension_stubfunc_real(argument[0])
    else if (os_type == os_uwp)
        extension_stubfunc_real(argument[0])
    return;
}

