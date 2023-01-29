function ga_configureAvailableCustomDimensions02(argument0) //gml_Script_ga_configureAvailableCustomDimensions02
{
    if is_array(argument0)
    {
        if (os_type == os_android)
            extension_stubfunc_real(util_ga_arrayToJsonString(argument0))
        else if (os_type == os_ios)
            extension_stubfunc_string(util_ga_arrayToJsonString(argument0))
        else if (os_type == os_windows)
            configureAvailableCustomDimensions02_windows(util_ga_arrayToJsonString(argument0))
        else if (os_type == os_macosx)
            extension_stubfunc_real(util_ga_arrayToJsonString(argument0))
        else if (os_type == os_linux)
            extension_stubfunc_real(util_ga_arrayToJsonString(argument0))
        else if (os_type == os_uwp)
            extension_stubfunc_real(util_ga_arrayToJsonString(argument0))
    }
    else
        ga_trace("ga_configureAvailableCustomDimensions02() argument is not an array")
    return;
}

