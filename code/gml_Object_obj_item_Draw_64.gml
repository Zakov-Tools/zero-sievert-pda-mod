display_set_gui_size(480, 270)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
var scale = 1
if (room != r_menu)
{
    if instance_exists(obj_mouse)
    {
        if (obj_mouse.dragging == 1)
        {
            if (id != obj_mouse.item_id_dragged)
            {
                var prov_h_me = get_offset_rotation_heigth(0)
                var cc = c_white
                var id_drag = obj_mouse.item_id_dragged.my_id
                if (obj_controller.arma_moddable[my_id] == 1)
                {
                    for (var i = 0; i < array_length_1d(mod_id); i++)
                    {
                        var get_id_mod_installed = mod_id[i]
                        if (arma_mod_nec[my_id][i] == 1)
                        {
                            if (get_id_mod_installed == -1)
                                cc = c_red
                        }
                    }
                }
                if (item_categoria[id_drag] == (17 << 0))
                {
                    if (arma_moddable[my_id] == 1)
                    {
                        if (mod_weapon_all[id_drag] == 1)
                        {
                            if (arma_mod_moddable[my_id][(2 << 0)] == 0)
                            {
                                if (mod_type[id_drag] == (7 << 0))
                                {
                                    if (arma_mod_moddable[my_id][(7 << 0)] == 1)
                                        cc = 0x41E142
                                }
                                if (mod_type[id_drag] == (10 << 0) || mod_type[id_drag] == (6 << 0))
                                {
                                    if (arma_mod_moddable[my_id][(7 << 0)] == 1 || arma_mod_moddable[my_id][(8 << 0)] == 1 || arma_mod_moddable[my_id][(9 << 0)] == 1 || arma_mod_moddable[my_id][(10 << 0)] == 1)
                                        cc = 0x41E142
                                }
                            }
                            else
                                cc = 0x41E142
                            if (mod_type[id_drag] == (8 << 0))
                            {
                                if (arma_mod_moddable[my_id][(6 << 0)] == 1)
                                    cc = 0x41E142
                            }
                        }
                        else
                        {
                            for (i = 0; i < array_length_2d(mod_weapon_id, id_drag); i++)
                            {
                                if (mod_weapon_id[id_drag][i] == my_id)
                                    cc = 0x41E142
                            }
                        }
                    }
                }
                if (item_categoria[id_drag] == (1 << 0))
                {
                    if (item_categoria[my_id] == (0 << 0))
                    {
                        if (arma_caliber[my_id] == ammo_caliber[id_drag])
                            cc = 0x41E142
                    }
                }
                if (item_categoria[id_drag] == (0 << 0))
                {
                    if (item_categoria[my_id] == (1 << 0))
                    {
                        if (arma_caliber[id_drag] == ammo_caliber[my_id])
                            cc = 0x41E142
                    }
                }
                for (var xx = 0; xx < caselle_x; xx++)
                {
                    for (var yy = 0; yy < caselle_y; yy++)
                        draw_sprite_ext(s_16x16, 0, ((x - camx) + (xx * 16)), (((y - camy) + (yy * 16)) - prov_h_me), 1, 1, 0, cc, 0.15)
                }
            }
            else
            {
                scale = 1
                if (obj_player.trading == 0)
                {
                    if (item_categoria[my_id] == (6 << 0))
                        draw_sprite_ext(s_16x16, 0, 200, 119, 2, 2, 0, 0x41E142, 0.35)
                    if (item_categoria[my_id] == (5 << 0))
                        draw_sprite_ext(s_16x16, 0, 248, 119, 2, 2, 0, 0x41E142, 0.35)
                    if (item_categoria[my_id] == (0 << 0))
                    {
                        draw_sprite_ext(s_16x16, 0, 200, 31, 5, 2, 0, 0x41E142, 0.35)
                        draw_sprite_ext(s_16x16, 0, 200, 76, 5, 2, 0, 0x41E142, 0.35)
                    }
                    if (item_categoria[my_id] == (18 << 0))
                        draw_sprite_ext(s_16x16, 0, 224, 162, 2, 2, 0, 0x41E142, 0.35)
                    if (item_categoria[my_id] == (2 << 0) || item_categoria[my_id] == (9 << 0))
                    {
                        draw_sprite_ext(s_16x16, 0, 179, 223, 1, 1, 0, 0x41E142, 0.35)
                        draw_sprite_ext(s_16x16, 0, 200, 223, 1, 1, 0, 0x41E142, 0.35)
                        draw_sprite_ext(s_16x16, 0, 221, 223, 1, 1, 0, 0x41E142, 0.35)
                        draw_sprite_ext(s_16x16, 0, 242, 223, 1, 1, 0, 0x41E142, 0.35)
                        draw_sprite_ext(s_16x16, 0, 263, 223, 1, 1, 0, 0x41E142, 0.35)
                        draw_sprite_ext(s_16x16, 0, 284, 223, 1, 1, 0, 0x41E142, 0.35)
                    }
                }
            }
        }
        else
        {
            prov_h_me = get_offset_rotation_heigth(0)
            var _c = c_white
            if (obj_controller.arma_moddable[my_id] == 1)
            {
                for (i = 0; i < array_length_1d(mod_id); i++)
                {
                    get_id_mod_installed = mod_id[i]
                    if (arma_mod_nec[my_id][i] == 1)
                    {
                        if (get_id_mod_installed == -1)
                            _c = c_red
                    }
                }
            }
            for (xx = 0; xx < caselle_x; xx++)
            {
                for (yy = 0; yy < caselle_y; yy++)
                    draw_sprite_ext(s_16x16, 0, ((x - camx) + (xx * 16)), (((y - camy) + (yy * 16)) - prov_h_me), 1, 1, 0, _c, 0.15)
            }
        }
        image_angle = rotation
        var aa = 1
        if (obj_player.trading == 1)
        {
            if (position == (3 << 0))
            {
                if (global.livello_now < livello_min)
                {
                    aa = 0.5
                    for (xx = 0; xx < caselle_x; xx++)
                    {
                        for (yy = 0; yy < caselle_y; yy++)
                            draw_sprite_ext(s_16x16, 0, ((x - camx) + (xx * 16)), (((y - camy) + (yy * 16)) - prov_h_me), 1, 1, 0, c_red, 0.15)
                    }
                }
            }
        }
        if (visto == 1)
        {
            if (arma_moddable[my_id] == 0)
            {
                if (item_necessary == 1)
                {
                    prov_h_me = get_offset_rotation_heigth(0)
                    for (xx = 0; xx < caselle_x; xx++)
                    {
                        for (yy = 0; yy < caselle_y; yy++)
                            draw_sprite_ext(s_16x16, 0, ((x - camx) + (xx * 16)), (((y - camy) + (yy * 16)) - prov_h_me), 1, 1, 0, c_yellow, 0.2)
                    }
                }
                if ((y - camy) > 160)
                {
                    if (global.craft_selected != -1)
                    {
                        var n_item = array_length_2d(global.craft_req, global.craft_selected)
                        for (i = 0; i < n_item; i++)
                        {
                            var item_id_to_check = global.craft_req[global.craft_selected][i]
                            if (my_id == item_id_to_check)
                            {
                                var qnt_che_ho = ds_grid_get(global.grid_check_n_item_requiered, i, 0)
                                var _cc = c_white
                                if (qnt_che_ho >= global.craft_req_n[global.craft_selected][i])
                                    _cc = c_lime
                                else
                                    _cc = c_red
                                if (_cc != c_white)
                                {
                                    for (xx = 0; xx < caselle_x; xx++)
                                    {
                                        for (yy = 0; yy < caselle_y; yy++)
                                            draw_sprite_ext(s_16x16, 0, ((x - camx) + (xx * 16)), ((y - camy) + (yy * 16)), 1, 1, 0, _cc, 0.2)
                                    }
                                }
                            }
                        }
                    }
                }
                draw_sprite_ext(sprite_index, 0, (x - camx), ((y - camy) + offset_y), scale, scale, rotation, c_white, aa)
            }
            else if (room == r_hub)
            {
                if (obj_player.state == gml_Script_scr_player_state_mod)
                {
                    if surface_exists(surface_item)
                    {
                        var ss = 2
                        if (y > ((camy + 64) + 16))
                            ss = 1
                        draw_surface_ext(surface_item, (x - camx), (y - camy), ss, ss, rotation, c_white, aa)
                    }
                }
                else
                    draw_surface_ext(surface_item, (x - camx), (y - camy), scale, scale, rotation, c_white, aa)
            }
            else
                draw_surface_ext(surface_item, (x - camx), (y - camy), scale, scale, rotation, c_white, aa)
        }
        else if (global.svela_item != id)
        {
            for (xx = 0; xx < caselle_x; xx++)
            {
                for (yy = 0; yy < caselle_y; yy++)
                    draw_sprite(s_hud_item_visto, 0, ((x - camx) + (xx * 16)), ((y - camy) + (yy * 16)))
            }
        }
        else
        {
            var i_max = sprite_get_number(s_hud_item_svela)
            var ii = ((global.svela_item_now * i_max) / global.svela_item_max)
            xx = (((-camx) + x) + (((caselle_x - 1) / 2) * 16))
            yy = (((-camy) + y) + (((caselle_y - 1) / 2) * 16))
            draw_sprite(s_hud_item_svela, ii, xx, yy)
        }
        if (obj_player.state == gml_Script_scr_player_show_quest)
        {
            if (my_id == global.quest_item_scelto_id)
            {
                var c = c_yellow
                var o = 1
                var x1 = (((x - camx) - o) - 1)
                var x2 = ((((x - camx) + (caselle_x * 16)) + o) - 1)
                var y1 = (((y - camy) - o) - 1)
                var y2 = ((((y - camy) + (caselle_y * 16)) + o) - 1)
                draw_line_width_color(x1, y1, x2, y1, 1, c, c)
                draw_line_width_color(x2, y1, x2, y2, 1, c, c)
                draw_line_width_color(x1, y2, x2, y2, 1, c, c)
                draw_line_width_color(x1, y1, x1, y2, 1, c, c)
            }
        }
        if (obj_player.state == gml_Script_scr_player_state_inventory || obj_player.state == gml_Script_scr_player_show_quest)
        {
            if (qnt > 1 && visto == 1 && show_qnt == 1)
            {
                draw_set_font(font0)
                draw_set_halign(fa_right)
                draw_set_valign(fa_bottom)
                if (rotation == 0)
                {
                    var prov_x = 0
                    var prov_y = 0
                }
                if (rotation == 90)
                {
                    prov_x = 0
                    prov_y = (caselle_y * 16)
                }
                draw_set_color(c_black)
                draw_text(((x - camx) + (caselle_x * 16)), (((((y - camy) + (caselle_y * 16)) + 4) + 1) - prov_y), string(qnt))
                draw_set_color(c_white)
                draw_text(((x - camx) + (caselle_x * 16)), ((((y - camy) + (caselle_y * 16)) + 4) - prov_y), string(qnt))
            }
        }
        if (show_qnt == 1)
        {
            if (obj_player.state == gml_Script_scr_player_state_craft)
            {
                draw_set_font(font0)
                draw_set_halign(fa_right)
                draw_set_valign(fa_bottom)
                if ((y - camy) <= 160)
                {
                    if (is_craftable == 0)
                        draw_sprite_ext(sprite_index, 0, (x - camx), (y - camy), 1, 1, 0, c_black, 0.65)
                    draw_set_color(c_black)
                    draw_text(((x - camx) + (caselle_x * 16)), ((((y - camy) + (caselle_y * 16)) + 4) + 1), string(qnt))
                    draw_set_color(c_white)
                    draw_text(((x - camx) + (caselle_x * 16)), (((y - camy) + (caselle_y * 16)) + 4), string(qnt))
                }
                else if (global.craft_selected != -1)
                {
                    n_item = array_length_2d(global.craft_req, global.craft_selected)
                    for (i = 0; i < n_item; i++)
                    {
                        item_id_to_check = global.craft_req[global.craft_selected][i]
                        if (my_id == item_id_to_check)
                        {
                            qnt_che_ho = ds_grid_get(global.grid_check_n_item_requiered, i, 0)
                            var tt = ((string(qnt_che_ho) + "/") + string(global.craft_req_n[global.craft_selected][i]))
                            draw_set_color(c_black)
                            draw_text(((x - camx) + (caselle_x * 16)), ((((y - camy) + (caselle_y * 16)) + 4) + 1), tt)
                            _c = c_white
                            draw_set_color(c_white)
                            draw_text_color(((x - camx) + (caselle_x * 16)), (((y - camy) + (caselle_y * 16)) + 4), tt, _c, _c, _c, _c, 1)
                        }
                    }
                }
            }
        }
    }
}
if (room == r_menu)
{
    aa = 1
    if (arma_moddable[my_id] == 0)
        draw_sprite_ext(sprite_index, 0, (x - camx), (y - camy), scale, scale, rotation, c_white, aa)
    else
    {
        if (!surface_exists(surface_item))
            surface_item = surface_create(80, 32)
        surface_set_target(surface_item)
        draw_clear_alpha(c_black, 0)
        scr_draw_item_weapon_modded()
        surface_reset_target()
        draw_surface_ext(surface_item, (x - camx), (y - camy), scale, scale, rotation, c_white, aa)
        surface_free(surface_item)
    }
    if (qnt > 1 && show_qnt == 1)
    {
        draw_set_font(font0)
        draw_set_halign(fa_right)
        draw_set_valign(fa_bottom)
        draw_set_color(c_black)
        draw_text(((x - camx) + (caselle_x * 16)), ((((y - camy) + (caselle_y * 16)) + 4) + 1), string(qnt))
        draw_set_color(c_white)
        draw_text(((x - camx) + (caselle_x * 16)), (((y - camy) + (caselle_y * 16)) + 4), string(qnt))
    }
}
