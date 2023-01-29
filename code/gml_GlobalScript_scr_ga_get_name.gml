function scr_ga_get_name(argument0) //gml_Script_scr_ga_get_name
{
    var _item_id = argument0
    var _name = item_name[_item_id]
    var _new_name = string_replace_all(_name, " ", "_")
    return _new_name;
}

