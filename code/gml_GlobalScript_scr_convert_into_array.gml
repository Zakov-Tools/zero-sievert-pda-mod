var arr;
function scr_convert_into_array() //gml_Script_scr_convert_into_array
{
    var o = argument[0]
    for (var i = 1; i < argument_count; i += 1)
        arr[o][(i - 1)] = argument[i]
    return arr;
}

