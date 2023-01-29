function scr_indoor_specific(argument0) //gml_Script_scr_indoor_specific
{
    var _obj = argument0
    var my_id = id
    var my_x = x
    var my_y = y
    var my_tele_x = 0
    var my_tele_y = 0
    if instance_exists(_obj)
    {
        with (_obj)
        {
            if (id != my_id)
            {
                tele_x = my_x
                tele_y = my_y
                my_tele_x = x
                my_tele_y = y
            }
        }
    }
    tele_x = my_tele_x
    tele_y = my_tele_y
    return;
}

