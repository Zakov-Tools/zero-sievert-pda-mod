function sort_instances_left_to_right(argument0) //gml_Script_sort_instances_left_to_right
{
    var sorted_instances = []
    for (var i = 0; i < array_length(argument0); i++)
    {
        var instance = argument0[i]
        var j = 0
        while (j < array_length(sorted_instances) && instance.x >= sorted_instances[j].x)
            j++
        array_insert(sorted_instances, j, instance)
    }
    return sorted_instances;
}

