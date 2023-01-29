function scr_collision_guy_hub() //gml_Script_scr_collision_guy_hub
{
    if place_meeting((x + ceil(hspd)), y, obj_solid)
    {
        while (!(place_meeting((x + sign(hspd)), y, obj_solid)))
            x += sign(hspd)
        hspd = 0
    }
    x += hspd
    if place_meeting(x, (y + ceil(vspd)), obj_solid)
    {
        while (!(place_meeting(x, (y + sign(vspd)), obj_solid)))
            y += sign(vspd)
        vspd = 0
    }
    y += vspd
    return;
}

