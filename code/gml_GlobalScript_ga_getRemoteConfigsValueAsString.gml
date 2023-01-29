function ga_getRemoteConfigsValueAsString() //gml_Script_ga_getRemoteConfigsValueAsString
{
    if (argument_count == 1)
    {
        if (os_type == os_android)
            return extension_stubfunc_string(argument[0]);
        else if (os_type == os_ios)
            return extension_stubfunc_string(argument[0]);
        else if (os_type == os_windows)
            return getRemoteConfigsValueAsString_windows(argument[0]);
        else if (os_type == os_macosx)
            return extension_stubfunc_string(argument[0]);
        else if (os_type == os_linux)
            return extension_stubfunc_string(argument[0]);
        else if (os_type == os_uwp)
            return extension_stubfunc_string(argument[0]);
    }
    else if (argument_count == 2)
    {
        if (os_type == os_android)
            return extension_stubfunc_string(argument[0]);
        else if (os_type == os_ios)
            return extension_stubfunc_string(argument[0]);
        else if (os_type == os_windows)
            return getRemoteConfigsValueAsStringWithDefaultValue_windows(argument[0]);
        else if (os_type == os_macosx)
            return extension_stubfunc_string(argument[0]);
        else if (os_type == os_linux)
            return extension_stubfunc_string(argument[0]);
        else if (os_type == os_uwp)
            return extension_stubfunc_string(argument[0]);
    }
    return "";
}

