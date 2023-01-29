function scr_destroy_base_decor() //gml_Script_scr_destroy_base_decor
{
    var xx = x
    var yy = y
    with (obj_decor_parent)
    {
        if (object_index != obj_solid)
        {
            if (point_distance(x, y, xx, yy) < 96)
            {
                if (x >= xx && x <= (xx + 48) && y >= yy && y <= (yy + 48))
                    instance_destroy()
            }
        }
    }
    surface_free(obj_object_shadow.surface_shadow)
    return;
}

