function scr_draw_item_weapon_modded() //gml_Script_scr_draw_item_weapon_modded
{
    if (can_draw == 1)
    {
        var scale = 1
        var aa = 1
        draw_sprite_ext(sprite_index, 0, 0, 0, scale, scale, 0, c_white, aa)
        var m = (0 << 0)
        if (mod_id[m] != -1)
            draw_sprite_ext(item_sprite_ingame[mod_id[m]], 0, arma_mod_x[my_id][m], arma_mod_y[my_id][m], scale, scale, 0, c_white, aa)
        m = (1 << 0)
        if (mod_id[m] != -1)
            draw_sprite_ext(item_sprite_ingame[mod_id[m]], 0, arma_mod_x[my_id][m], arma_mod_y[my_id][m], scale, scale, 0, c_white, aa)
        m = (3 << 0)
        if (mod_id[m] != -1)
            draw_sprite_ext(item_sprite_ingame[mod_id[m]], 0, arma_mod_x[my_id][m], arma_mod_y[my_id][m], scale, scale, 0, c_white, aa)
        m = (2 << 0)
        if (mod_id[m] != -1)
            draw_sprite_ext(item_sprite_ingame[mod_id[m]], 0, arma_mod_x[my_id][m], arma_mod_y[my_id][m], scale, scale, 0, c_white, aa)
        m = (4 << 0)
        if (mod_id[m] != -1)
            draw_sprite_ext(item_sprite_ingame[mod_id[m]], 0, arma_mod_x[my_id][m], arma_mod_y[my_id][m], scale, scale, 0, c_white, aa)
        m = (6 << 0)
        if (mod_id[m] != -1)
            draw_sprite_ext(item_sprite_ingame[mod_id[m]], 0, arma_mod_x[my_id][m], arma_mod_y[my_id][m], scale, scale, 0, c_white, aa)
        if (mod_id[(3 << 0)] != -1)
        {
            m = (5 << 0)
            if (mod_id[m] != -1)
                draw_sprite_ext(item_sprite_ingame[mod_id[m]], 0, brake_x, brake_y, scale, scale, 0, c_white, aa)
        }
        else if (arma_mod_moddable[my_id][(3 << 0)] == 0)
        {
            m = (5 << 0)
            if (mod_id[m] != -1)
            {
                brake_x = arma_mod_x[my_id][m]
                brake_y = arma_mod_y[my_id][m]
                draw_sprite_ext(item_sprite_ingame[mod_id[m]], 0, brake_x, brake_y, scale, scale, 0, c_white, aa)
            }
        }
        m = (2 << 0)
        if (mod_id[m] != -1)
        {
            var h_id = mod_id[m]
            if (mod_handguard_slot[h_id][0] == 1)
            {
                if (mod_id[(7 << 0)] != -1)
                {
                    var xx = (mod_handguard_x[h_id][0] + arma_mod_x[my_id][(2 << 0)])
                    var yy = (mod_handguard_y[h_id][0] + arma_mod_y[my_id][(2 << 0)])
                    draw_sprite_ext(item_sprite_ingame[mod_id[(7 << 0)]], 0, xx, yy, scale, scale, 0, c_white, aa)
                }
            }
            if (mod_handguard_slot[h_id][1] == 1)
            {
                if (mod_id[(8 << 0)] != -1)
                {
                    xx = (mod_handguard_x[h_id][1] + arma_mod_x[my_id][(2 << 0)])
                    yy = (mod_handguard_y[h_id][1] + arma_mod_y[my_id][(2 << 0)])
                    draw_sprite_ext(item_sprite_ingame[mod_id[(8 << 0)]], 0, xx, yy, scale, scale, 0, c_white, aa)
                }
            }
            if (mod_handguard_slot[h_id][2] == 1)
            {
                if (mod_id[(9 << 0)] != -1)
                {
                    xx = (mod_handguard_x[h_id][2] + arma_mod_x[my_id][(2 << 0)])
                    yy = (mod_handguard_y[h_id][2] + arma_mod_y[my_id][(2 << 0)])
                    draw_sprite_ext(item_sprite_ingame[mod_id[(9 << 0)]], 0, xx, yy, scale, scale, 0, c_white, aa)
                }
            }
            if (mod_handguard_slot[h_id][3] == 1)
            {
                if (mod_id[(10 << 0)] != -1)
                {
                    var mod_type_ = mod_type[mod_id[(10 << 0)]]
                    var upside = 1
                    if (mod_type_ == (6 << 0) || mod_type_ == (10 << 0))
                        upside = -1
                    xx = (mod_handguard_x[h_id][3] + arma_mod_x[my_id][(2 << 0)])
                    yy = (mod_handguard_y[h_id][3] + arma_mod_y[my_id][(2 << 0)])
                    draw_sprite_ext(item_sprite_ingame[mod_id[(10 << 0)]], 0, xx, yy, scale, upside, 0, c_white, aa)
                }
            }
        }
        if (mod_id[m] == -1)
        {
            if (arma_mod_moddable[my_id][m] == 0)
            {
                var j = (7 << 0)
                if (arma_mod_moddable[my_id][j] == 1)
                {
                    if (mod_id[j] != -1)
                    {
                        xx = arma_mod_x[my_id][j]
                        yy = arma_mod_y[my_id][j]
                        draw_sprite_ext(item_sprite_ingame[mod_id[j]], 0, xx, yy, scale, scale, 0, c_white, aa)
                    }
                }
                j = (8 << 0)
                if (arma_mod_moddable[my_id][j] == 1)
                {
                    if (mod_id[j] != -1)
                    {
                        xx = arma_mod_x[my_id][j]
                        yy = arma_mod_y[my_id][j]
                        draw_sprite_ext(item_sprite_ingame[mod_id[j]], 0, xx, yy, scale, scale, 0, c_white, aa)
                    }
                }
                j = (9 << 0)
                if (arma_mod_moddable[my_id][j] == 1)
                {
                    if (mod_id[j] != -1)
                    {
                        xx = arma_mod_x[my_id][j]
                        yy = arma_mod_y[my_id][j]
                        draw_sprite_ext(item_sprite_ingame[mod_id[j]], 0, xx, yy, scale, scale, 0, c_white, aa)
                    }
                }
                j = (10 << 0)
                if (arma_mod_moddable[my_id][j] == 1)
                {
                    if (mod_id[j] != -1)
                    {
                        xx = arma_mod_x[my_id][j]
                        yy = arma_mod_y[my_id][j]
                        mod_type_ = mod_type[mod_id[j]]
                        upside = 1
                        if (mod_type_ == (6 << 0) || mod_type_ == (10 << 0))
                            upside = -1
                        draw_sprite_ext(item_sprite_ingame[mod_id[j]], 0, xx, yy, scale, upside, 0, c_white, aa)
                    }
                }
            }
        }
    }
    return;
}

