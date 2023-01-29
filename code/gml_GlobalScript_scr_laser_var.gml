function scr_laser_var(argument0) //gml_Script_scr_laser_var
{
    var mod_pos_ = argument0
    switch mod_pos_
    {
        case (7 << 0):
            var att_ = 0
            break
        case (8 << 0):
            att_ = 1
            break
        case (9 << 0):
            att_ = 2
            break
        case (10 << 0):
            att_ = 3
            break
    }

    var _found = 0
    if (mod_id[weapon_slot_now][mod_pos_] != -1)
    {
        var id_mod_ = mod_id[weapon_slot_now][mod_pos_]
        if (mod_type[id_mod_] == (6 << 0))
        {
            _found = 1
            if (mod_id[weapon_slot_now][(2 << 0)] != -1)
            {
                var get_handguard_id = mod_id[weapon_slot_now][(2 << 0)]
                var xx = (mod_handguard_x[get_handguard_id][att_] + arma_mod_x[arma_now][(2 << 0)])
                var yy = (mod_handguard_y[get_handguard_id][att_] + arma_mod_y[arma_now][(2 << 0)])
            }
            else if (arma_mod_moddable[arma_now][(2 << 0)] == 0)
            {
                xx = arma_mod_x[arma_now][mod_pos_]
                yy = arma_mod_y[arma_now][mod_pos_]
            }
            var ox = sprite_get_xoffset(item_sprite_ingame[arma_now])
            var oy = sprite_get_yoffset(item_sprite_ingame[arma_now])
            var diff_x = abs((xx - ox))
            var off3 = 0
            if (mod_pos_ == (10 << 0))
                off3 = -4
            var diff_y = ((yy - oy) + off3)
            if (x >= mouse_x)
            {
                var dir = (obj_player_weapon.image_angle + 180)
                var off_dir = 90
            }
            else
            {
                dir = obj_player_weapon.image_angle
                off_dir = -90
            }
            var nx = ((lengthdir_x(diff_x, dir) + lengthdir_x(diff_y, (dir + off_dir))) * 0.4)
            var ny = (((lengthdir_y(diff_x, dir) + lengthdir_y(diff_y, (dir + off_dir))) * 0.4) + 5)
            laser_x[weapon_slot_now][mod_pos_] = nx
            laser_y[weapon_slot_now][mod_pos_] = ny
            laser_have[weapon_slot_now][mod_pos_] = 1
            laser_col[weapon_slot_now][mod_pos_] = mod_laser_color[id_mod_]
        }
    }
    if (_found == 0)
    {
        laser_have[weapon_slot_now][mod_pos_] = 0
        laser_on[weapon_slot_now][mod_pos_] = 0
    }
    return;
}

