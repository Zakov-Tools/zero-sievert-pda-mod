function get_offset_rotation_heigth(argument0) //gml_Script_get_offset_rotation_heigth
{
    if (argument0 == 1)
    {
        if (obj_mouse.item_id_dragged.rotation == 0)
            var prov_h = 0
        if (obj_mouse.item_id_dragged.rotation == 90)
            prov_h = (obj_mouse.item_id_dragged.caselle_y * 16)
    }
    if (argument0 == 0)
    {
        if (rotation == 0)
            prov_h = 0
        if (rotation == 90)
            prov_h = (caselle_y * 16)
    }
    return prov_h;
}

