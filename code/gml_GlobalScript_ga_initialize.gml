function ga_initialize(argument0, argument1) //gml_Script_ga_initialize
{
    var GA_VERSION = "gamemaker 3.1.0"
    if (os_type == os_android)
    {
        extension_stubfunc_real(GA_VERSION)
        extension_stubfunc_real(argument0, argument1)
    }
    else if (os_type == os_ios)
    {
        extension_stubfunc_real(GA_VERSION)
        extension_stubfunc_real(argument0, argument1)
    }
    else if (os_type == os_windows)
    {
        configureSdkGameEngineVersion_windows(GA_VERSION)
        native_ga_initialize_windows(argument0, argument1)
    }
    else if (os_type == os_macosx)
    {
        extension_stubfunc_string(GA_VERSION)
        extension_stubfunc_real(argument0, argument1)
    }
    else if (os_type == os_linux)
    {
        extension_stubfunc_real(GA_VERSION)
        extension_stubfunc_real(argument0, argument1)
    }
    else if (os_type == os_uwp)
    {
        extension_stubfunc_real(GA_VERSION)
        extension_stubfunc_real(argument0, argument1)
    }
    return;
}

