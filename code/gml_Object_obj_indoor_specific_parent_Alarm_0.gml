var _obj = object_index
var my_id = id
var my_x = x
var my_y = y
var my_tele_x = 0
var my_tele_y = 0
if instance_exists(object_index)
{
    with (object_index)
    {
        if (id != my_id)
        {
            tele_x = (my_x + 8)
            tele_y = (my_y + 8)
            my_tele_x = (x + 8)
            my_tele_y = (y + 8)
        }
    }
}
tele_x = my_tele_x
tele_y = my_tele_y
