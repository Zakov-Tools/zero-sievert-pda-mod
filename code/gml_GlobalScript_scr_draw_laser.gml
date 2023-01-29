function scr_draw_laser(argument0) //gml_Script_scr_draw_laser
{
    var mod_pos_ = argument0
    if (laser_on[weapon_slot_now][mod_pos_] == 1)
    {
        if (x > mouse_x)
            var dir = (obj_player_weapon.image_angle + 180)
        else
            dir = obj_player_weapon.image_angle
        var cc = laser_col[weapon_slot_now][mod_pos_]
        var start_x = (x + laser_x[weapon_slot_now][mod_pos_])
        var start_y = (y + laser_y[weapon_slot_now][mod_pos_])
        var temp_x = start_x
        var temp_y = start_y
        var xp = start_x
        var yp = start_y
        var collision = position_meeting(temp_x, temp_y, obj_solid)
        while ((!collision) && distance_to_point(temp_x, temp_y) < 420)
        {
            xp = temp_x
            yp = temp_y
            temp_x += lengthdir_x(4, dir)
            temp_y += lengthdir_y(4, dir)
            var collision1 = position_meeting(temp_x, temp_y, obj_solid)
            var collision2 = position_meeting(temp_x, temp_y, obj_npc_parent)
            collision = (collision1 + collision2)
        }
        draw_line_width_color(start_x, start_y, temp_x, temp_y, 0.5, cc, cc)
    }
    return;
}

