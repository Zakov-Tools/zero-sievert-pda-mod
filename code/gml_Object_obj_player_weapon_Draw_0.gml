if (obj_player.state != gml_Script_scr_player_state_start)
{
    if (follow_id.draw_weapon == 1)
    {
        if (!surface_exists(surface_item))
            surface_item = surface_create(96, 32)
        if (follow_id.arma_moddable[follow_id.arma_now] == 0)
        {
            outline_start(2, 0)
            draw_self()
            outline_end()
        }
        else if surface_exists(surface_item)
        {
            var op = obj_player
            surface_set_target(surface_item)
            draw_clear_alpha(c_black, 0)
            draw_sprite(op.item_sprite_inv[op.arma_now], 0, 0, 0)
            var m = (0 << 0)
            if (op.mod_id[op.weapon_slot_now][m] != -1)
                draw_sprite(op.item_sprite_ingame[op.mod_id[op.weapon_slot_now][m]], 0, op.arma_mod_x[op.arma_now][m], op.arma_mod_y[op.arma_now][m])
            m = (1 << 0)
            if (op.mod_id[op.weapon_slot_now][m] != -1)
                draw_sprite(op.item_sprite_ingame[op.mod_id[op.weapon_slot_now][m]], 0, op.arma_mod_x[op.arma_now][m], op.arma_mod_y[op.arma_now][m])
            m = (3 << 0)
            if (op.mod_id[op.weapon_slot_now][m] != -1)
                draw_sprite(op.item_sprite_ingame[op.mod_id[op.weapon_slot_now][m]], 0, op.arma_mod_x[op.arma_now][m], op.arma_mod_y[op.arma_now][m])
            m = (2 << 0)
            if (op.mod_id[op.weapon_slot_now][m] != -1)
                draw_sprite(op.item_sprite_ingame[op.mod_id[op.weapon_slot_now][m]], 0, op.arma_mod_x[op.arma_now][m], op.arma_mod_y[op.arma_now][m])
            m = (4 << 0)
            if (op.mod_id[op.weapon_slot_now][m] != -1)
                draw_sprite(op.item_sprite_ingame[op.mod_id[op.weapon_slot_now][m]], 0, op.arma_mod_x[op.arma_now][m], op.arma_mod_y[op.arma_now][m])
            m = (6 << 0)
            if (op.mod_id[op.weapon_slot_now][m] != -1)
                draw_sprite(op.item_sprite_ingame[op.mod_id[op.weapon_slot_now][m]], 0, op.arma_mod_x[op.arma_now][m], op.arma_mod_y[op.arma_now][m])
            if (op.mod_id[op.weapon_slot_now][(3 << 0)] != -1)
            {
                m = (5 << 0)
                if (op.mod_id[op.weapon_slot_now][m] != -1)
                    draw_sprite(op.item_sprite_ingame[op.mod_id[op.weapon_slot_now][m]], 0, op.brake_x, op.brake_y)
            }
            else if (op.arma_mod_moddable[op.arma_now][(3 << 0)] == 0)
            {
                m = (5 << 0)
                if (op.mod_id[op.weapon_slot_now][m] != -1)
                {
                    op.brake_x = op.arma_mod_x[op.arma_now][m]
                    op.brake_y = op.arma_mod_y[op.arma_now][m]
                    draw_sprite(op.item_sprite_ingame[op.mod_id[op.weapon_slot_now][m]], 0, op.brake_x, op.brake_y)
                }
            }
            m = (2 << 0)
            if (op.mod_id[op.weapon_slot_now][m] != -1)
            {
                var h_id = op.mod_id[op.weapon_slot_now][m]
                if (op.mod_handguard_slot[h_id][0] == 1)
                {
                    var id_of_mod = op.mod_id[op.weapon_slot_now][(7 << 0)]
                    if (id_of_mod != -1)
                    {
                        var xx = (op.mod_handguard_x[h_id][0] + op.arma_mod_x[op.arma_now][(2 << 0)])
                        var yy = (op.mod_handguard_y[h_id][0] + op.arma_mod_y[op.arma_now][(2 << 0)])
                        draw_sprite(op.item_sprite_ingame[id_of_mod], 0, xx, yy)
                    }
                }
                if (op.mod_handguard_slot[h_id][1] == 1)
                {
                    id_of_mod = op.mod_id[op.weapon_slot_now][(8 << 0)]
                    if (id_of_mod != -1)
                    {
                        xx = (op.mod_handguard_x[h_id][1] + op.arma_mod_x[op.arma_now][(2 << 0)])
                        yy = (op.mod_handguard_y[h_id][1] + op.arma_mod_y[op.arma_now][(2 << 0)])
                        draw_sprite(op.item_sprite_ingame[id_of_mod], 0, xx, yy)
                    }
                }
                if (op.mod_handguard_slot[h_id][2] == 1)
                {
                    id_of_mod = op.mod_id[op.weapon_slot_now][(9 << 0)]
                    if (id_of_mod != -1)
                    {
                        xx = (op.mod_handguard_x[h_id][2] + op.arma_mod_x[op.arma_now][(2 << 0)])
                        yy = (op.mod_handguard_y[h_id][2] + op.arma_mod_y[op.arma_now][(2 << 0)])
                        draw_sprite(op.item_sprite_ingame[id_of_mod], 0, xx, yy)
                    }
                }
                if (op.mod_handguard_slot[h_id][3] == 1)
                {
                    id_of_mod = op.mod_id[op.weapon_slot_now][(10 << 0)]
                    if (id_of_mod != -1)
                    {
                        var mod_type_ = op.mod_type[op.mod_id[op.weapon_slot_now][(10 << 0)]]
                        var upside = 1
                        if (mod_type_ == (6 << 0) || mod_type_ == (10 << 0))
                            upside = -1
                        xx = (op.mod_handguard_x[h_id][3] + op.arma_mod_x[op.arma_now][(2 << 0)])
                        yy = (op.mod_handguard_y[h_id][3] + op.arma_mod_y[op.arma_now][(2 << 0)])
                        draw_sprite_ext(op.item_sprite_ingame[id_of_mod], 0, xx, yy, 1, upside, 0, c_white, 1)
                    }
                }
            }
            if (op.mod_id[op.weapon_slot_now][m] == -1)
            {
                if (op.arma_mod_moddable[op.arma_now][m] == 0)
                {
                    var j = (7 << 0)
                    id_of_mod = op.mod_id[op.weapon_slot_now][j]
                    if (op.arma_mod_moddable[op.arma_now][j] == 1)
                    {
                        if (id_of_mod != -1)
                        {
                            xx = op.arma_mod_x[op.arma_now][j]
                            yy = op.arma_mod_y[op.arma_now][j]
                            draw_sprite(op.item_sprite_ingame[id_of_mod], 0, xx, yy)
                        }
                    }
                    j = (8 << 0)
                    id_of_mod = op.mod_id[op.weapon_slot_now][j]
                    if (op.arma_mod_moddable[op.arma_now][j] == 1)
                    {
                        if (id_of_mod != -1)
                        {
                            xx = op.arma_mod_x[op.arma_now][j]
                            yy = op.arma_mod_y[op.arma_now][j]
                            draw_sprite(op.item_sprite_ingame[id_of_mod], 0, xx, yy)
                        }
                    }
                    j = (9 << 0)
                    id_of_mod = op.mod_id[op.weapon_slot_now][j]
                    if (op.arma_mod_moddable[op.arma_now][j] == 1)
                    {
                        if (id_of_mod != -1)
                        {
                            xx = op.arma_mod_x[op.arma_now][j]
                            yy = op.arma_mod_y[op.arma_now][j]
                            draw_sprite(op.item_sprite_ingame[id_of_mod], 0, xx, yy)
                        }
                    }
                    j = (10 << 0)
                    id_of_mod = op.mod_id[op.weapon_slot_now][j]
                    if (op.arma_mod_moddable[op.arma_now][j] == 1)
                    {
                        if (id_of_mod != -1)
                        {
                            xx = op.arma_mod_x[op.arma_now][j]
                            yy = op.arma_mod_y[op.arma_now][j]
                            mod_type_ = op.mod_type[op.mod_id[op.weapon_slot_now][j]]
                            upside = 1
                            if (mod_type_ == (6 << 0) || mod_type_ == (10 << 0))
                                upside = -1
                            draw_sprite_ext(op.item_sprite_ingame[id_of_mod], 0, xx, yy, 1, upside, 0, c_white, 1)
                        }
                    }
                }
            }
            surface_reset_target()
            outline_start_surface(2, 0, surface_item)
            var ox = sprite_get_xoffset(op.item_sprite_ingame[op.arma_now])
            var oy = sprite_get_yoffset(op.item_sprite_ingame[op.arma_now])
            if (x > mouse_x)
            {
                var rx = ((lengthdir_x(ox, image_angle) + lengthdir_y(oy, image_angle)) * 0.4)
                var ry = ((lengthdir_y(ox, image_angle) - lengthdir_x(oy, image_angle)) * 0.4)
            }
            else
            {
                rx = ((lengthdir_x((-ox), image_angle) - lengthdir_y((-oy), image_angle)) * 0.4)
                ry = ((lengthdir_y((-ox), image_angle) + lengthdir_x((-oy), image_angle)) * 0.4)
            }
            if (op.state == gml_Script_scr_player_weapon_look)
            {
                rx = ((lengthdir_x((-ox), image_angle) - lengthdir_y((-oy), image_angle)) * 0.4)
                ry = ((lengthdir_y((-ox), image_angle) + lengthdir_x((-oy), image_angle)) * 0.4)
            }
            draw_surface_ext(surface_item, (x + rx), (y + ry), image_xscale, image_yscale, image_angle, c_white, 1)
            outline_end()
            uvs = -4
        }
    }
}
