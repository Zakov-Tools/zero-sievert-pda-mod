function scr_draw_torch(argument0) //gml_Script_scr_draw_torch
{
    var mod_pos_ = argument0
    if (torch_on[weapon_slot_now][mod_pos_] == 1)
    {
        if (x > mouse_x)
            var dir = (obj_player_weapon.image_angle + 180)
        else
            dir = obj_player_weapon.image_angle
        var _x = (x + torch_x[weapon_slot_now][mod_pos_])
        var _y = (y + torch_y[weapon_slot_now][mod_pos_])
    }
    return;
}

