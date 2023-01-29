function ga_isRemoteConfigsReady() //gml_Script_ga_isRemoteConfigsReady
{
    if (os_type == os_android)
        return extension_stubfunc_real();
    else if (os_type == os_ios)
        return extension_stubfunc_real();
    else if (os_type == os_windows)
        return isRemoteConfigsReady_windows();
    else if (os_type == os_macosx)
        return extension_stubfunc_real();
    else if (os_type == os_linux)
        return extension_stubfunc_real();
    else if (os_type == os_uwp)
        return extension_stubfunc_real();
    return 0;
}

