if (can_draw == 1)
{
    if instance_exists(follow_id)
    {
        if (follow_id.draw_weapon == 1)
        {
            if (!surface_exists(surface_item))
                surface_item = surface_create(96, 32)
            image_alpha = follow_id.image_alpha
            if (follow_id.arma_moddable[follow_id.arma_now] == 0)
            {
                outline_start(2, 0)
                draw_self()
                outline_end()
            }
            else if surface_exists(surface_item)
            {
                my_id = follow_id.arma_now
                var op = follow_id
                surface_set_target(surface_item)
                draw_clear_alpha(c_black, 0)
                var scale = 1
                var aa = 1
                draw_sprite_ext(item_sprite_inv[follow_id.arma_now], 0, 0, 0, scale, scale, 0, c_white, aa)
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
                surface_reset_target()
                outline_start_surface(2, 0, surface_item)
                var ox = sprite_get_xoffset(op.item_sprite_ingame[op.arma_now])
                var oy = sprite_get_yoffset(op.item_sprite_ingame[op.arma_now])
                if (x > follow_id.target_for_image_scale)
                {
                    var rx = ((lengthdir_x(ox, image_angle) + lengthdir_y(oy, image_angle)) * 0.4)
                    var ry = ((lengthdir_y(ox, image_angle) - lengthdir_x(oy, image_angle)) * 0.4)
                }
                else
                {
                    rx = ((lengthdir_x((-ox), image_angle) - lengthdir_y((-oy), image_angle)) * 0.4)
                    ry = ((lengthdir_y((-ox), image_angle) + lengthdir_x((-oy), image_angle)) * 0.4)
                }
                draw_surface_ext(surface_item, (x + rx), (y + ry), image_xscale, image_yscale, image_angle, c_white, image_alpha)
                outline_end()
                uvs = -4
            }
        }
    }
}
