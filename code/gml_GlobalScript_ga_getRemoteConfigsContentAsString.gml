function ga_getRemoteConfigsContentAsString() //gml_Script_ga_getRemoteConfigsContentAsString
{
    if (os_type == os_android)
        return extension_stubfunc_string();
    else if (os_type == os_ios)
        return extension_stubfunc_string();
    else if (os_type == os_windows)
        return getRemoteConfigsContentAsString_windows();
    else if (os_type == os_macosx)
        return extension_stubfunc_string();
    else if (os_type == os_linux)
        return extension_stubfunc_string();
    else if (os_type == os_uwp)
        return extension_stubfunc_string();
    return "";
}

