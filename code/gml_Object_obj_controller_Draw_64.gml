var _faction;
display_set_gui_size(480, 270)
draw_set_font(font0)
if instance_exists(obj_player)
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if (global.show_fps == 1)
        show_debug_overlay(1)
    else
        show_debug_overlay(0)
    if (obj_player.state == gml_Script_scr_player_state_move || obj_player.state == gml_Script_scr_player_state_medication || obj_player.state == gml_Script_scr_player_consumable_animation)
    {
        if (global.debug_hide_hud == 0)
        {
            var _bleed = obj_player.bleed
            var _alpha = 0
            if (_bleed >= 0)
                _alpha = 0.3
            if (_bleed >= 1)
                _alpha = 0.6
            if (_bleed >= 2)
                _alpha = 0.85
            if (_bleed >= 0.2)
                draw_sprite_ext(s_hud_bleed, 0, 0, 0, 1, 1, 0, c_white, _alpha)
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_move || obj_player.state == gml_Script_scr_player_state_inventory || obj_player.state == gml_Script_scr_player_state_medication || obj_player.state == gml_Script_scr_player_consumable_animation)
    {
        if (global.aiming == 0 && global.debug_hide_hud == 0)
        {
            var hp = obj_player.hp
            var hp_max = obj_player.hp_max_total
            var startx = 5
            var starty = 5
            var bar_w_max = 37
            var bar_w = ((bar_w_max / hp_max) * hp)
            var c1 = c_gray
            draw_rectangle_color((startx + 23), (starty + 2), (startx + 61), (starty + 13), c1, c1, c1, c1, 0)
            draw_rectangle_color((startx + 23), (starty + 18), (startx + 61), (starty + 22), c1, c1, c1, c1, 0)
            var _wound = obj_player.wound
            if (_wound >= 1)
            {
                c1 = c_dkgray
                var bar_wound_w = ((bar_w_max / hp_max) * _wound)
                draw_rectangle_color(((startx + 61) - bar_wound_w), (starty + 2), (startx + 61), (starty + 13), c1, c1, c1, c1, 0)
            }
            draw_sprite(s_hp_bar, 0, startx, starty)
            draw_sprite_part_ext(s_hp_bar, 1, 24, 2, 1, 12, (startx + 24), (starty + 2), ceil(bar_w), 1, c_white, 1)
            if (hp == hp_max)
                draw_sprite_part(s_hp_bar, 1, 61, 2, 1, 12, (startx + 61), (starty + 2))
            var stamina = obj_player.stamina
            var stamina_max = obj_player.stamina_max_total
            startx = 5
            starty = 5
            bar_w_max = 37
            bar_w = ((bar_w_max / stamina_max) * stamina)
            draw_sprite_part_ext(s_hp_bar, 1, 24, 18, 1, 5, (startx + 24), (starty + 18), ceil(bar_w), 1, c_white, 1)
            if (stamina == stamina_max)
                draw_sprite_part(s_hp_bar, 1, 61, 18, 1, 5, (startx + 61), (starty + 18))
            if (obj_player.bleed > 0)
            {
                var _xx = 70
                var _yy = 6
                draw_sprite(s_bleed_icon, 0, _xx, _yy)
                draw_set_font(font0)
                draw_set_halign(fa_center)
                draw_set_valign(fa_middle)
                draw_text((_xx + 8), (_yy + 8), string((ceil(obj_player.bleed) div 1)))
                if scr_mouse_inside((camx + _xx), (camy + _yy), 16, 16)
                {
                    var _t = (("Bleeding [" + string((obj_player.bleed div 1))) + "]")
                    var _w = (string_width(_t) + 4)
                    var _h = 12
                    draw_set_font(font_quest)
                    scr_draw_box(s_box_testo_pop_up, ((_xx - (_w / 2)) + 8), (_yy + 24), _w, _h, 1)
                    draw_text((_xx + 8), ((_yy + 24) + (_h / 2)), _t)
                }
            }
            draw_set_font(font_quest)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            if (global.aiming == 0)
            {
                for (var i = 0; i < ds_list_size(global.list_status_id); i++)
                {
                    var oo = ds_list_find_value(global.list_status_id, i)
                    draw_sprite_ext(global.status_sprite[oo], 0, ((global.status_x + (global.status_w * i)) + (global.status_off * i)), global.status_y, 1, 1, 0, global.status_color[global.status_state_now[oo]], 1)
                    var xx = ((global.status_x + (global.status_w * i)) + (global.status_off * i))
                    if scr_mouse_inside((xx + camx), (global.status_y + camy), 16, 16)
                    {
                        if (!mouse_check_button(mb_right))
                        {
                            var w_ = 80
                            var h_ = 12
                            var t_name = global.status_des[oo][global.status_state_now[oo]]
                            var t1 = ""
                            if (oo == (0 << 0))
                            {
                                t1 = (string((global.status_f1[(0 << 0)][global.status_state_now[oo]] * 100)) + "% stamina regeneration")
                                var t_amount = obj_player.fatigue
                            }
                            if (oo == (1 << 0))
                            {
                                t1 = (string(global.status_f1[(1 << 0)][global.status_state_now[oo]]) + "kg max weight")
                                t_amount = obj_player.energy
                            }
                            if (oo == (2 << 0))
                            {
                                t1 = (string(global.status_f1[(2 << 0)][global.status_state_now[oo]]) + "kg max weight")
                                t_amount = obj_player.thirst
                            }
                            if (oo == (3 << 0))
                            {
                                t1 = ""
                                t_amount = obj_player.radiation_accumulata
                            }
                            if (oo != (3 << 0))
                                t_amount = round(t_amount)
                            var t_value_max = ((string(t_amount) + "/") + string(global.status_value_max[oo]))
                            var t_ = ((t_name + " ") + t_value_max)
                            if (t1 != "")
                                h_ = 24
                            var off_h = 2
                            var off_w = 2
                            var t_w_s = string_width(t_)
                            var t_w_e = string_width(t1)
                            w_ = ((off_w * 2) + max(t_w_s, t_w_e))
                            draw_set_font(font_quest)
                            scr_draw_box(s_box_testo_pop_up, ((xx + 8) - (w_ / 2)), (global.status_y + 18), w_, h_, 1)
                            draw_text_ext((xx + 8), ((global.status_y + 17) + 1), t_, 10, w_)
                            draw_set_font(font0)
                            draw_text_ext((xx + 8), ((global.status_y + 29) + 1), t1, 10, w_)
                        }
                    }
                }
            }
            var attivo = 0
            for (i = 0; i < array_length_1d(global.injector_factor); i++)
            {
                if (global.injector_factor[i] != 0)
                    attivo = 1
            }
            if (attivo == 1)
            {
                var sx = 154
                draw_sprite(s_item_injector_vuoto, 0, sx, global.status_y)
                if scr_mouse_inside((camx + sx), (camy + global.status_y), 16, 16)
                {
                    var list_injector = ds_list_create()
                    for (i = 0; i < array_length_1d(global.injector_factor); i++)
                    {
                        if (global.injector_factor[i] != 0)
                            ds_list_add(list_injector, i)
                    }
                    var ww = 95
                    var tx = (sx - (ww / 2))
                    var ty = (global.status_y + 20)
                    var sep_h = 10
                    var off = 2
                    var hh = ((sep_h * ds_list_size(list_injector)) + (off * 2))
                    scr_draw_box(s_box_testo_pop_up, (tx - off), ty, ww, hh, 1)
                    draw_set_font(font0)
                    draw_set_halign(fa_left)
                    draw_set_valign(fa_top)
                    for (i = 0; i < ds_list_size(list_injector); i++)
                    {
                        var quale = ds_list_find_value(list_injector, i)
                        draw_set_halign(fa_left)
                        draw_text(tx, (ty + (i * sep_h)), global.injector_des[quale])
                        draw_set_halign(fa_center)
                        draw_text(((tx + ww) - 10), (ty + (i * sep_h)), string(global.injector_factor[quale]))
                    }
                }
            }
            var ammo_magazine = obj_player.ammo_slot_max[obj_player.weapon_slot_now]
            var ammo_now = obj_player.ammo_slot[obj_player.weapon_slot_now]
            var s_ammo = s_ammo_counter_small
            var sh = sprite_get_height(s_ammo)
            var sw = sprite_get_width(s_ammo)
            var offy = 0
            for (i = 0; i < ammo_magazine; i++)
            {
                var offx = 0
                if (i < ammo_now)
                    var sub = 0
                else
                    sub = 1
                draw_sprite(s_ammo, sub, (2 + offx), (268 - ((sh - 1) * offy)))
                if (global.ammo_counter_i_fired == 1 && i == ammo_now)
                {
                    global.ammo_counter_i_fired = 0
                    var ff = instance_create_depth(camx, camy, 0, obj_ammo_counter_fired)
                    ff.sprite_index = s_ammo_counter_fired_small
                    ff.dx = (2 + offx)
                    ff.dy = (268 - ((sh - 1) * offy))
                }
                offy++
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_inventory)
    {
        if (obj_player.trading == 0)
        {
            if (obj_player.looting_player_stash == 0)
                draw_sprite(s_hud_inv, 0, 0, 0)
            else
                draw_sprite(s_hud_inv_storage, 0, 0, 0)
        }
        else
        {
            draw_sprite(s_hud_inv_trading, 0, 0, 0)
            draw_set_font(font_quest)
            draw_set_halign(fa_center)
            draw_set_valign(fa_middle)
            var cc = c_white
            if scr_mouse_inside(((camx + 240) - 48), (camy + 36), 96, 16)
                cc = 0x91F2FF
            var deal_mine = scr_get_money_deal(1)
            var deal_trader = scr_get_money_deal(0)
            var deal = (deal_mine - deal_trader)
            draw_sprite(s_hud_deal, 0, 240, 44)
            draw_text_color(240, 44, ("DEAL  " + string(deal)), cc, cc, cc, cc, 1)
            draw_set_font(font0)
            for (i = 0; i < 12; i++)
            {
                var _number = string((i + 1))
                var _c = c_white
                if (global.page_trader == i)
                    _c = 0x91F2FF
                draw_sprite_ext(s_hud_trader_icon, global.page_trader_sub[i], global.page_trader_x[i], global.page_trader_y[i], 1, 1, 0, _c, 1)
            }
        }
        var n_x = 8
        var n_y = 11
        for (xx = 0; xx < n_x; xx++)
        {
            for (var yy = 0; yy < n_y; yy++)
                draw_sprite_ext(s_linee_box, 0, (41 + (xx * 16)), (63 + (yy * 16)), 1, 1, 0, c_white, 0.5)
        }
        n_x = 8
        n_y = 11
        for (xx = 0; xx < n_x; xx++)
        {
            for (yy = 0; yy < n_y; yy++)
                draw_sprite_ext(s_linee_box, 0, (312 + (xx * 16)), (63 + (yy * 16)), 1, 1, 0, c_white, 0.5)
        }
        if (obj_player.trading == 1)
        {
            n_x = 6
            n_y = 5
            for (xx = 0; xx < n_x; xx++)
            {
                for (yy = 0; yy < n_y; yy++)
                    draw_sprite_ext(s_linee_box, 0, (192 + (xx * 16)), (160 + (yy * 16)), 1, 1, 0, c_white, 0.5)
            }
            n_x = 6
            n_y = 5
            for (xx = 0; xx < n_x; xx++)
            {
                for (yy = 0; yy < n_y; yy++)
                    draw_sprite_ext(s_linee_box, 0, (192 + (xx * 16)), (64 + (yy * 16)), 1, 1, 0, c_white, 0.5)
            }
        }
        draw_set_font(font0)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        draw_set_color(c_black)
        draw_text(105, 48, "Inventory")
        draw_set_color(c_white)
        draw_text(105, 47, "Inventory")
        var _name = loot_name
        if (obj_player.trading == 1)
            loot_name = global.page_trader_text[global.page_trader]
        draw_set_color(c_black)
        draw_text(376, 48, loot_name)
        draw_set_color(c_white)
        draw_text(376, 47, loot_name)
        if (obj_player.trading == 1)
        {
            var start_repx = 312
            var start_repy = 243
            draw_set_font(font_quest)
            draw_set_color(c_white)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            draw_set_halign(fa_right)
        }
        if (obj_player.trading == 0)
        {
            draw_set_font(font0)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            var qs1 = scr_key_map(global.kb_now[(15 << 0)])
            var qs2 = scr_key_map(global.kb_now[(16 << 0)])
            var qs3 = scr_key_map(global.kb_now[(17 << 0)])
            var qs4 = scr_key_map(global.kb_now[(18 << 0)])
            var qs5 = scr_key_map(global.kb_now[(19 << 0)])
            var qs6 = scr_key_map(global.kb_now[(20 << 0)])
            var qs7 = scr_key_map(global.kb_now[(21 << 0)])
            var qs8 = scr_key_map(global.kb_now[(22 << 0)])
            var q_headset = scr_key_map(global.kb_now[(14 << 0)])
            draw_text(201, 31, (("[" + qs1) + "]"))
            draw_text(201, 76, (("[" + qs2) + "]"))
            draw_text(225, 162, (("[" + q_headset) + "]"))
            var offsetx = 8
            var offsety = -14
            draw_set_halign(fa_center)
            draw_text((179 + offsetx), (223 + offsety), (("[" + qs3) + "]"))
            draw_text((200 + offsetx), (223 + offsety), (("[" + qs4) + "]"))
            draw_text((221 + offsetx), (223 + offsety), (("[" + qs5) + "]"))
            draw_text((242 + offsetx), (223 + offsety), (("[" + qs6) + "]"))
            draw_text((263 + offsetx), (223 + offsety), (("[" + qs7) + "]"))
            draw_text((284 + offsetx), (223 + offsety), (("[" + qs8) + "]"))
        }
        draw_set_font(font0)
        draw_set_halign(fa_right)
        draw_set_valign(fa_top)
        draw_text(154, 243, string(round(global.player_money)))
        draw_sprite(s_roubles_8x8, 0, 155, 244)
        if (obj_player.trading == 1)
        {
            var _npc_id = global.speaker_nearest.npc_id
            var tra_id = npc_trader_id[_npc_id]
            var mmoney = global.speaker_nearest.money_trader
            draw_set_font(font0)
            draw_set_halign(fa_right)
            draw_set_valign(fa_top)
            draw_text(425, 243, string(round(mmoney)))
            draw_sprite(s_roubles_8x8, 0, 426, 244)
        }
        if (obj_player.looting_player_stash == 1)
        {
            var _x = sto_startx
            var _y = sto_starty
            _w = sto_w
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_middle)
            for (i = 0; i < sto_slot_max; i++)
            {
                _t = string((i + 1))
                _c = c_white
                if (i == global.storage_page_now)
                {
                    _c = 0x35E8FF
                    draw_sprite_ext(s_hud_inv_storage_color, 0, _x, (_y + (i * _w)), 1, 1, 0, _c, 0.25)
                }
                if (i > (global.storage_slot_unlocked - 1))
                {
                    _c = 0x4242CE
                    draw_sprite_ext(s_hud_inv_storage_color, 0, _x, (_y + (i * _w)), 1, 1, 0, _c, 0.25)
                }
                draw_text((_x + (_w / 2)), ((_y + (_w / 2)) + (i * _w)), _t)
            }
        }
        draw_set_font(font0)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        c1 = c_white
        if (global.player_weight >= global.max_weight)
            c1 = 0x00007B
        if (global.player_weight >= (global.max_weight + 5))
            c1 = 0x0000E7
        draw_text_color(49, 243, (((string(global.player_weight) + "/") + string(global.max_weight)) + " kg"), c1, c1, c1, c1, 1)
        if (obj_mouse.dragging == 1)
        {
            draw_sprite_ext(s_testo_box, 0, obj_mouse.check_positionx[obj_mouse.min_distance_id], obj_mouse.check_positiony[obj_mouse.min_distance_id], 1, 1, 0, c_red, 1)
            var dragged_w = obj_mouse.item_id_dragged.caselle_x
            var dragged_h = obj_mouse.item_id_dragged.caselle_y
            var coll = c_white
            with (obj_mouse.item_id_dragged)
            {
                var prov_h_me = get_offset_rotation_heigth(0)
                if place_meeting((camx + obj_mouse.check_positionx[obj_mouse.min_distance_id]), ((camy + obj_mouse.check_positiony[obj_mouse.min_distance_id]) + prov_h_me), obj_item)
                {
                    var iip = instance_place((camx + obj_mouse.check_positionx[obj_mouse.min_distance_id]), ((camy + obj_mouse.check_positiony[obj_mouse.min_distance_id]) + prov_h_me), obj_item)
                    var sopra_id = iip.my_id
                    if (my_id == sopra_id)
                    {
                        if (item_stack_max[my_id] > 1)
                            coll = c_green
                        else
                            coll = c_red
                    }
                    else
                        coll = c_red
                }
            }
            for (xx = 0; xx < dragged_w; xx++)
            {
                for (yy = 0; yy < dragged_h; yy++)
                {
                    var checkx = (obj_mouse.check_positionx[obj_mouse.min_distance_id] + (xx * 16))
                    var checky = (obj_mouse.check_positiony[obj_mouse.min_distance_id] + (yy * 16))
                    draw_sprite_ext(s_16x16, 0, checkx, checky, 1, 1, 0, coll, 0.5)
                }
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_craft)
    {
        draw_sprite(s_hud_craft_2, 0, 0, 0)
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        var n_butt = array_length_1d(obj_controller.b_craft)
        var o = obj_controller
        for (i = 0; i < n_butt; i++)
        {
            var hover = 0
            cc = c_white
            if (button_hover == b_craft[i])
                cc = 0x91F2FF
            if (global.craft_state == b_craft[i])
            {
                var rec_c = c_black
                cc = c_white
                draw_rectangle_color(b_craft_x[i], b_craft_y[i], (b_craft_x[i] + button_craft_width), (b_craft_y[i] + button_craft_height), rec_c, rec_c, rec_c, rec_c, 0)
            }
            draw_text_color((b_craft_x[i] + (button_craft_width / 2)), (b_craft_y[i] + (button_craft_height / 2)), b_text[i], cc, cc, cc, cc, 1)
        }
        draw_set_font(font_quest)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        draw_text(128, 244, "Required items")
        var cx = 368
        var cy = 208
        sw = sprite_get_width(s_hud_craft_get_button)
        sh = sprite_get_height(s_hud_craft_get_button)
        var mouse_inside = scr_mouse_inside((cx - (sw / 2)), (cy - (sh / 2)), sw, sh) == 1
        draw_sprite(s_hud_craft_get_button, mouse_inside, cx, cy)
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_text(cx, cy, "Craft")
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        if (global.craft_selected != -1)
        {
            var _skill_req = global.craft_req_skill_id[global.craft_selected]
            var _skill_lvl = global.craft_req_skill_lvl[global.craft_selected]
            var _skill_mod = global.craft_req_module_id[global.craft_selected]
            var _skill_mod_lvl = global.craft_req_module_lvl[global.craft_selected]
            var _t_skill = ""
            if (_skill_req != 0)
                _t_skill = (((global.sk_name[_skill_req] + " lvl ") + string(_skill_lvl)) + " ; ")
            var _t_module = ""
            if (_skill_mod != -1)
                _t_module = ((global.base_name[_skill_mod] + " lvl ") + string(_skill_mod_lvl))
            if (_t_skill != "" || _t_module != "")
            {
                draw_text(cx, (cy - 37), "Requirment:")
                draw_text(cx, (cy - 25), (_t_skill + _t_module))
            }
        }
        if (global.craft_selected != -1)
        {
            if (global.craft_state != (5 << 0) && global.craft_state != (4 << 0))
            {
                var _sub = 0
                if (global.craft_track[global.craft_selected] == 1)
                    _sub = 1
                draw_sprite(s_hud_track_items, _sub, 304, 229)
                draw_set_font(font_quest)
                draw_set_halign(fa_left)
                draw_set_valign(fa_top)
                draw_text(319, 229, "Track items")
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_mod)
    {
        draw_sprite(s_hud_mod, 0, 0, 0)
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        n_butt = array_length_1d(obj_controller.b_mod)
        o = obj_controller
        for (i = 0; i < n_butt; i++)
        {
            hover = 0
            cc = c_white
            var cc_red = 0x1E1E67
            if (b_mod_cliccabile[i] == 1)
            {
                if (button_mod_hover == b_mod[i])
                    cc = 0x91F2FF
            }
            else
                cc = cc_red
            if (o.button_mod_selected == i)
            {
                rec_c = c_black
                cc = c_white
                draw_rectangle_color(b_mod_x[i], b_mod_y[i], (b_mod_x[i] + button_mod_width), (b_mod_y[i] + button_mod_height), rec_c, rec_c, rec_c, rec_c, 0)
            }
            draw_text_color((b_mod_x[i] + (button_mod_width / 2)), (b_mod_y[i] + (button_mod_height / 2)), b_mod_text[i], cc, cc, cc, cc, 1)
        }
        draw_set_halign(fa_left)
        scr_draw_text_outlined(256, 148, "Installed", c_white, c_black, 1, 1)
        scr_draw_text_outlined(144, 148, "Available", c_white, c_black, 1, 1)
        if (button_mod_remove_hover == 1)
        {
            var x1 = button_mod_remove_x
            var y1 = button_mod_remove_y
            var x2 = (x1 + button_mod_remove_w)
            var y2 = (y1 + button_mod_remove_h)
            draw_rectangle_color(x1, y1, x2, y2, c_black, c_black, c_black, c_black, 0)
        }
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        xx = (button_mod_remove_x + (button_mod_remove_w / 2))
        yy = (button_mod_remove_y + (button_mod_remove_h / 2))
        scr_draw_text_outlined(xx, yy, "REMOVE", c_white, c_black, 1, 1)
        x1 = 340
        y1 = 82
        var offset_amount = 12
        var off2 = 2
        var off3 = -1
        var s_w = sprite_get_width(s_hud_inv_stat)
        if instance_exists(global.instance_id_modding)
        {
            var get_id_weapon = global.instance_id_modding.my_id
            temp_[(0 << 0)] = global.instance_id_modding.mod_id[(0 << 0)]
            temp_[(1 << 0)] = global.instance_id_modding.mod_id[(1 << 0)]
            temp_[(3 << 0)] = global.instance_id_modding.mod_id[(3 << 0)]
            temp_[(2 << 0)] = global.instance_id_modding.mod_id[(2 << 0)]
            temp_[(5 << 0)] = global.instance_id_modding.mod_id[(5 << 0)]
            temp_[(6 << 0)] = global.instance_id_modding.mod_id[(6 << 0)]
            temp_[(4 << 0)] = global.instance_id_modding.mod_id[(4 << 0)]
            temp_[(7 << 0)] = global.instance_id_modding.mod_id[(7 << 0)]
            temp_[(8 << 0)] = global.instance_id_modding.mod_id[(8 << 0)]
            temp_[(9 << 0)] = global.instance_id_modding.mod_id[(9 << 0)]
            temp_[(10 << 0)] = global.instance_id_modding.mod_id[(10 << 0)]
            var somma_recoil = 0
            var somma_ergo = 0
            var somma_acc = 0
            var somma_damage = 0
            var somma_reload_speed = 0
            for (i = 0; i < 11; i++)
            {
                var k = 0
                if (i == 0)
                    k = (0 << 0)
                if (i == 1)
                    k = (1 << 0)
                if (i == 2)
                    k = (2 << 0)
                if (i == 3)
                    k = (3 << 0)
                if (i == 4)
                    k = (4 << 0)
                if (i == 5)
                    k = (5 << 0)
                if (i == 6)
                    k = (6 << 0)
                if (i == 7)
                    k = (7 << 0)
                if (i == 8)
                    k = (8 << 0)
                if (i == 9)
                    k = (9 << 0)
                if (i == 10)
                    k = (10 << 0)
                if (global.instance_id_modding.mod_id[k] != -1)
                {
                    var get_id_ = global.instance_id_modding.mod_id[k]
                    somma_recoil += mod_recoil[get_id_]
                    somma_ergo += mod_ergo[get_id_]
                    somma_acc += mod_acc[get_id_]
                    somma_damage += mod_damage[get_id_]
                    somma_reload_speed += mod_reload_speed[get_id_]
                }
            }
            var new_recoil = (arma_recoil[get_id_weapon] * (1 + (somma_recoil / 100)))
            var new_ergo = (arma_ergo[get_id_weapon] * (1 + (somma_ergo / 100)))
            var new_acc = (arma_precisione[get_id_weapon] * (1 + (somma_acc / 100)))
            var new_damage = (arma_damage[get_id_weapon] * (1 + (somma_damage / 100)))
            var new_reload_speed = (arma_reload_time[get_id_weapon] * (1 + (somma_reload_speed / 100)))
            draw_set_font(font0)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            var slot_offset = (offset_amount * 0)
            var stat_ = new_damage
            scr_scala_item_stat(x1, ((y1 + slot_offset) + off3), "DAMAGE", 35, stat_, 0)
            draw_text((((x1 + off_n_v) + s_w) + off2), ((y1 + slot_offset) + off3), string(round(stat_)))
            slot_offset = (offset_amount * 1)
            stat_ = new_acc
            scr_scala_item_stat(x1, ((y1 + slot_offset) + off3), "ACCURACY", 10, stat_, 1)
            draw_text((((x1 + off_n_v) + s_w) + off2), ((y1 + slot_offset) + off3), string(round((stat_ * 10))))
            slot_offset = (offset_amount * 2)
            stat_ = new_recoil
            scr_scala_item_stat(x1, ((y1 + slot_offset) + off3), "RECOIL", 8, stat_, 0)
            draw_text((((x1 + off_n_v) + s_w) + off2), ((y1 + slot_offset) + off3), string(round((stat_ * 20))))
            slot_offset = (offset_amount * 3)
            stat_ = new_ergo
            scr_scala_item_stat(x1, ((y1 + slot_offset) + off3), "ERGONOMICS", 1, stat_, 0)
            draw_text((((x1 + off_n_v) + s_w) + off2), ((y1 + slot_offset) + off3), string(round((stat_ * 100))))
            slot_offset = (offset_amount * 4)
            stat_ = 0
            if (temp_[(4 << 0)] != -1)
                stat_ = mod_magazine_size[temp_[(4 << 0)]]
            draw_text(x1, (y1 + slot_offset), "MAGAZINE")
            draw_text((x1 + off_n_v), ((y1 + slot_offset) + off3), string(stat_))
        }
        if (button_mod_selected == (4 << 0))
        {
            x1 = 330
            y1 = 210
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            draw_set_font(font_quest)
            _t = "Unload the weapon before changing the magazine otherwise you will lose its current ammo"
            draw_text_ext(x1, y1, _t, 12, 140)
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_sleep)
    {
        if (!instance_exists(obj_sleep_fade))
        {
            draw_sprite(s_hud_sleep, 0, sleep_x, sleep_y)
            draw_set_font(font_quest)
            draw_set_halign(fa_center)
            draw_set_valign(fa_middle)
            scr_draw_text_outlined(240, 110, "How long do you want to sleep?", c_white, c_black, 1, 1)
            ww = sleep_b_w
            hh = sleep_b_h
            cc = c_white
            if (sleep_b_hover == 0)
                cc = 0x91F2FF
            scr_draw_text_outlined((sleep_b_sleep_x + (ww / 2)), (sleep_b_sleep_y + (hh / 2)), "Sleep", cc, c_black, 1, 1)
            cc = c_white
            if (sleep_b_hover == 1)
                cc = 0x91F2FF
            scr_draw_text_outlined((sleep_b_back_x + (ww / 2)), (sleep_b_back_y + (hh / 2)), "Back", cc, c_black, 1, 1)
            draw_sprite(s_hud_sleep_cursor, 0, sleep_h_x[sleep_hour], 134)
            draw_set_font(font0)
            var t_h = string(floor(sleep_h_hour[sleep_hour]))
            var t_m = string((frac(sleep_h_hour[sleep_hour]) * 60))
            var tt = ((t_h + ":") + t_m)
            _c = c_white
            var _fatigue = obj_player.fatigue
            var _diff = (obj_player.fatigue_start - _fatigue)
            var _hours_needed = (_diff / (60 * obj_player.restore_fatigue))
            if (sleep_h_hour[sleep_hour] >= _hours_needed)
                _c = 0x5B9B67
            scr_draw_text_outlined(240, 150, tt, _c, c_black, 2, 1)
            var _ora_now = obj_light_controller.hour
            var _min_now = obj_light_controller.minute
            var h = (floor(sleep_h_hour[sleep_hour]) * 60)
            var m = (frac(sleep_h_hour[sleep_hour]) * 60)
            var tot_m = (h + m)
            var _ora_next = _ora_now
            repeat tot_m
            {
                _min_now += 1
                if (_min_now >= 60)
                {
                    _min_now = 0
                    _ora_next += 1
                }
                if (_ora_next >= 24)
                    _ora_next = 0
            }
            var _tt = ((("Time: " + string(_ora_next)) + ":") + string(_min_now))
            scr_draw_text_outlined(240, 163, _tt, c_white, c_black, 1, 1)
        }
    }
    if (obj_player.state == gml_Script_scr_player_talk || obj_player.state == gml_Script_scr_player_ask || obj_player.state == gml_Script_scr_player_show_answer || obj_player.state == gml_Script_scr_player_quest_list || obj_player.state == gml_Script_scr_player_show_quest || obj_player.state == gml_Script_scr_player_talk_document || obj_player.state == gml_Script_scr_player_repair_equipment || obj_player.state == gml_Script_scr_player_heal_me || obj_player.state == gml_Script_scr_player_join_faction || obj_player.state == gml_Script_scr_player_show_answer_custom || obj_player.state == gml_Script_scr_player_refill)
    {
        var _sub_image_dialogo = 0
        if (obj_player.state == gml_Script_scr_player_show_quest)
            _sub_image_dialogo = 1
        if (obj_player.state == gml_Script_scr_player_ask)
            _sub_image_dialogo = 2
        draw_sprite(s_hud_dialogo, _sub_image_dialogo, 0, 0)
        obj_mouse.image_index = 4
        var speak_nearest = global.speaker_nearest
        var speaker_id_ = global.speaker_nearest.npc_speaker_id[speak_nearest.npc_id]
        draw_set_font(font_name_speaker)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        draw_text_transformed(240, 40, speak_nearest.npc_name[speak_nearest.npc_id], 1, 1, 0)
        draw_set_font(font_quest)
        var start_text_x = 24
        var start_text_y = 72
        var c_hover = 0x91F2FF
        var c_not_hover = c_white
        draw_set_halign(fa_left)
        if (obj_player.state == gml_Script_scr_player_talk)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            draw_text_ext(220, 72, speak_nearest.text_hello[speaker_id_], 12, 215)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            var quanti_text = array_length_2d(speak_nearest.text, speaker_id_)
            for (i = 0; i < quanti_text; i++)
            {
                if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + (i * 12)), 96, 12)
                    var c_text = c_hover
                else
                    c_text = c_not_hover
                draw_text_color(start_text_x, (start_text_y + (i * 12)), ("- " + speak_nearest.text[speaker_id_][i]), c_text, c_text, c_text, c_text, 1)
            }
        }
        if (obj_player.state == gml_Script_scr_player_ask)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            quanti_text = array_length_2d(speak_nearest.question, speaker_id_)
            for (i = 0; i < (quanti_text + 1); i++)
            {
                if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + (i * 12)), 96, 12)
                    c_text = c_hover
                else
                    c_text = c_not_hover
                if (i == 0)
                    draw_text_color(start_text_x, (start_text_y + (i * 12)), "- Back", c_text, c_text, c_text, c_text, 1)
                else
                    draw_text_color(start_text_x, (start_text_y + (i * 12)), ("- " + speak_nearest.question[speaker_id_][(i - 1)]), c_text, c_text, c_text, c_text, 1)
            }
        }
        if (obj_player.state == gml_Script_scr_player_talk_document)
        {
            if (global.ho_documenti == 0)
            {
                var ttext = "No, that's not true...\nIf you find any, bring them to me"
                draw_text_ext(102, 37, ttext, 12, 215)
            }
            else
            {
                ttext = "Great! Give them to me!\nThe more you bring the more gear our trader will sell to you"
                draw_text_ext(102, 37, ttext, 12, 215)
            }
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            if (global.ho_documenti == 1)
            {
                if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 12), 96, 12)
                    c_text = c_hover
                else
                    c_text = c_not_hover
                draw_text_color(start_text_x, (start_text_y + 12), "- Ok, take this", c_text, c_text, c_text, c_text, 1)
            }
        }
        if (obj_player.state == gml_Script_scr_player_show_answer)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            quanti_text = array_length_2d(speak_nearest.question, speaker_id_)
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            scr_barra_testo_draw(0, speak_nearest.answer[speaker_id_][global.which_question])
        }
        if (obj_player.state == gml_Script_scr_player_show_answer_custom)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            quanti_text = array_length_2d(speak_nearest.question, speaker_id_)
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            scr_barra_testo_draw(0, global.text_custom_question)
        }
        if (obj_player.state == gml_Script_scr_player_quest_list)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            if (speak_nearest.quest_array[0] != -1)
            {
                var quest_amount = array_length_1d(speak_nearest.quest_array)
                for (i = 0; i < quest_amount; i++)
                {
                    if (speak_nearest.quest_array[i] != (0 << 0))
                    {
                        if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + ((i + 1) * 12)), 96, 12)
                            c_text = c_hover
                        else
                            c_text = c_not_hover
                        var quest_name_ = global.quest_name[speak_nearest.quest_array[i]]
                        var status = " "
                        for (var j = 0; j < 30; j++)
                        {
                            var quest_id_ = global.save_quest_id[j]
                            if (quest_id_ != -1)
                            {
                                if (quest_id_ == speak_nearest.quest_array[i] && global.save_quest_giver[j] == speak_nearest.npc_id)
                                {
                                    if (global.save_quest_status[j] == global.quest_stage_completed[quest_id_])
                                        status = "[Completed]"
                                    else
                                        status = "[Active]"
                                }
                            }
                        }
                        if (is_string(quest_name_) && is_string(status))
                            draw_text_color(start_text_x, (start_text_y + ((i + 1) * 12)), ((("- " + quest_name_) + " ") + status), c_text, c_text, c_text, c_text, 1)
                    }
                }
            }
            else
            {
                draw_set_halign(fa_left)
                draw_set_valign(fa_top)
                draw_text(220, 72, "I have nothing for you")
            }
        }
        if (obj_player.state == gml_Script_scr_player_show_quest)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            for (xx = 0; xx < 10; xx++)
            {
                for (yy = 0; yy < 4; yy++)
                    draw_sprite_ext(s_linee_box, 0, (32 + (xx * 16)), (160 + (yy * 16)), 1, 1, 0, c_white, 0.5)
            }
            draw_set_font(font_quest)
            draw_set_halign(fa_center)
            var _c1 = c_white
            var _c2 = c_white
            if (talk_quest_obj_hover == 1 || global.talk_sub_state_show_quest == 1)
                _c1 = 0x91F2FF
            if (talk_quest_obj_hover == 2 || global.talk_sub_state_show_quest == 0)
                _c2 = 0x91F2FF
            draw_text_color((talk_quest_obj_x + (talk_quest_obj_w / 2)), talk_quest_obj_y, "OBJECTIVE", _c1, _c1, _c1, _c1, 1)
            draw_text_color((talk_quest_text_x + (talk_quest_text_w / 2)), talk_quest_text_y, "TEXT", _c2, _c2, _c2, _c2, 1)
            draw_set_halign(fa_left)
            if (global.talk_sub_state_show_quest == 0)
                scr_barra_testo_draw(0, global.quest_text[global.which_quest_is_shown][0])
            if (global.talk_sub_state_show_quest == 1)
            {
                var _total_text = ""
                quest_id_ = global.which_quest_is_shown
                for (i = 0; i < array_length_2d(global.quest_type, quest_id_); i++)
                {
                    var _custom_text = 0
                    var _pre_text = ("- " + global.quest_text_obj[quest_id_][i])
                    var _amount_max = (string(global.quest_amount_max[quest_id_][i]) + " ")
                    var _text_obj = ""
                    var _text_map = ""
                    if (global.quest_text_obj[quest_id_][i] == "")
                    {
                        if (global.quest_type[quest_id_][i] == (0 << 0))
                        {
                            _text_map = ""
                            var _text_obj_to_kill = ""
                            _pre_text = "Eliminate "
                            _custom_text = 1
                            var _map_id = global.quest_kill_map[quest_id_][i]
                            if (_map_id != -1)
                                _text_map = (("in the " + map_nome[_map_id]) + " ")
                            else
                                _text_map = "in any map"
                            if (global.quest_kill_faction[quest_id_][i] == -1)
                            {
                                var _array_npc = global.quest_kill_arr_obj[quest_id_][i]
                                _npc_id = _array_npc[0]
                                _text_obj_to_kill = (npc_name[_npc_id] + " ")
                            }
                            else
                            {
                                var _name_faction = global.quest_kill_faction[quest_id_][i]
                                _text_obj_to_kill = (_name_faction + " ")
                            }
                            _text_obj = (((_pre_text + _amount_max) + _text_obj_to_kill) + _text_map)
                        }
                        if (global.quest_type[quest_id_][i] == (6 << 0))
                        {
                            _text_map = ""
                            _text_obj_to_kill = ""
                            _pre_text = "Eliminate the target "
                            _custom_text = 1
                            _text_map = (("in the " + map_nome[global.quest_contract_map[quest_id_][i]]) + " ")
                            _text_obj = (_pre_text + _text_map)
                        }
                        if (global.quest_type[quest_id_][i] == (1 << 0))
                        {
                            _custom_text = 1
                            _pre_text = "Collect "
                            var _text_obj_to_collect = (item_name[global.quest_collect_item[quest_id_][i]] + " ")
                            _text_obj = ((_pre_text + _amount_max) + _text_obj_to_collect)
                        }
                        if (global.quest_type[quest_id_][i] == (1 << 0))
                        {
                            _custom_text = 1
                            _pre_text = "Collect "
                            _text_obj_to_collect = (item_name[global.quest_collect_item[quest_id_][i]] + " ")
                            _text_obj = ((_pre_text + _amount_max) + _text_obj_to_collect)
                        }
                        if (global.quest_type[quest_id_][i] == (18 << 0))
                        {
                            _custom_text = 1
                            _pre_text = "Survive "
                            if (global.quest_survive_map[quest_id_][i] != -1)
                                _text_map = (("in the " + map_nome[global.quest_survive_map[quest_id_][i]]) + " ")
                            else
                                _text_map = "in any map"
                            _text_obj = (((_pre_text + _amount_max) + "times ") + _text_map)
                        }
                        if (global.quest_type[quest_id_][i] == (8 << 0))
                        {
                            _custom_text = 1
                            _pre_text = "Survive "
                            if (global.quest_survive_map[quest_id_][i] != -1)
                                _text_map = (("in the " + map_nome[global.quest_survive_map[quest_id_][i]]) + " ")
                            else
                                _text_map = "in any map"
                            var _exp_min_amount = ((" with at least " + string(global.quest_survive_min_exp[quest_id_][i])) + " exp made")
                            _text_obj = ((((_pre_text + _amount_max) + "times ") + _text_map) + _exp_min_amount)
                        }
                        if (global.quest_type[quest_id_][i] == (9 << 0))
                        {
                            _custom_text = 1
                            _pre_text = "Survive "
                            if (global.quest_survive_map[quest_id_][i] != -1)
                                _text_map = (("in the " + map_nome[global.quest_survive_map[quest_id_][i]]) + " ")
                            else
                                _text_map = "in any map"
                            _exp_min_amount = ((" with at least " + string(global.quest_survive_min_roubles[quest_id_][i])) + " roubles made")
                            _text_obj = ((((_pre_text + _amount_max) + "times ") + _text_map) + _exp_min_amount)
                        }
                    }
                    tt = ""
                    if (_custom_text == 1)
                        tt = (("- " + _text_obj) + ". ")
                    else
                        tt = (("- " + global.quest_text_obj[quest_id_][i]) + ". ")
                    tt = (tt + "\n")
                    _total_text = (_total_text + tt)
                }
                draw_text_ext(talk_quest_text_x, 84, _total_text, 12, 200)
            }
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 12), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 12), "- Accept", c_text, c_text, c_text, c_text, 1)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 24), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 24), "- Gain reward", c_text, c_text, c_text, c_text, 1)
            var reward_amount = round((global.quest_reward[global.which_quest_is_shown] * global.sk_k[(25 << 0)]))
            draw_text(start_text_x, (start_text_y - 20), (("Reward: " + string(reward_amount)) + " Roubles"))
            var exp_amount = round((global.quest_exp[global.which_quest_is_shown] * global.sk_k[(25 << 0)]))
            var rep_amount = round(global.quest_rep[global.which_quest_is_shown])
            _t = ("Exp: " + string(exp_amount))
            draw_text(start_text_x, (start_text_y - 32), _t)
            draw_set_font(font_quest)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            draw_text(31, 146, "Choose an item as reward")
        }
        if (obj_player.state == gml_Script_scr_player_repair_equipment)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            var dur_price = 0
            var p_wep1 = obj_player.armor_now
            if (p_wep1 != (0 << 0))
            {
                var dur1 = obj_player.durability_slot[(11 << 0)]
                var wep_price = obj_player.armor_class[p_wep1]
                var _k = 380
                dur_price = round((((1 - (dur1 / 100)) * _k) * power(wep_price, 2.25)))
            }
            t_ = ("- Repair armor for " + string(dur_price))
            var t_len = string_width(t_)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 12), t_len, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 12), t_, c_text, c_text, c_text, c_text, 1)
        }
        draw_sprite(s_mouse, 4, (mouse_x - camx), (mouse_y - camy))
        if (obj_player.state == gml_Script_scr_player_heal_me)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            var p_hp = obj_player.hp
            var p_wound = obj_player.wound
            var p_hp_max = (obj_player.hp_max_total - p_wound)
            var money_hp = floor(((p_hp_max - p_hp) * global.heal_hp_k))
            t_ = (("- Heal health for " + string(money_hp)) + " Roubles")
            t_len = string_width(t_)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 12), t_len, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 12), t_, c_text, c_text, c_text, c_text, 1)
            p_hp = obj_player.hp
            p_hp_max = obj_player.hp_max
            p_wound = obj_player.wound
            var money_wound = floor((p_wound * global.heal_wound_k))
            t_ = (("- Heal wounds for " + string(money_wound)) + " Roubles")
            t_len = string_width(t_)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 24), t_len, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 24), t_, c_text, c_text, c_text, c_text, 1)
            p_hp = obj_player.hp
            p_hp_max = obj_player.hp_max
            var p_rad = obj_player.radiation_accumulata
            money_wound = floor((p_rad * global.heal_rad_k))
            t_ = (("- Heal radiation for " + string(money_wound)) + " Roubles")
            t_len = string_width(t_)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 36), t_len, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 36), t_, c_text, c_text, c_text, c_text, 1)
            draw_sprite(s_mouse, 4, (mouse_x - camx), (mouse_y - camy))
        }
        if (obj_player.state == gml_Script_scr_player_join_faction)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            var _faction_name = ""
            var _faction_id = 0
            var _faction_text_sure = ""
            if (npc_faction[speak_nearest.npc_id] == (2 << 0))
            {
                _faction_name = "Green Army"
                _faction_id = (2 << 0)
                _faction_text_sure = "\nCrimson Corporation will be set to 0 and you can no longer be neutral with them.\nYou can no longer be allied with Loners"
            }
            if (npc_faction[speak_nearest.npc_id] == (3 << 0))
            {
                _faction_name = "Crimson Corporation"
                _faction_id = (3 << 0)
                _faction_text_sure = "\nGreen Army will be set to 0 and you can no longer be neutral with them.\nYou can no longer be allied with Loners"
            }
            _t = ("- Join " + _faction_name)
            t_len = string_width(_t)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 12), t_len, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 12), _t, c_text, c_text, c_text, c_text, 1)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            var _t_sure = "Are you sure?\nBeing part of one faction will give you access to unique equipment but will change your relationship with the others.\nIt is a permanent choice so think carefully"
            draw_text_ext(240, 32, (_t_sure + _faction_text_sure), 12, 215)
        }
        if (obj_player.state == gml_Script_scr_player_refill)
        {
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            if scr_mouse_inside((camx + start_text_x), (camy + start_text_y), 96, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, start_text_y, "- Back", c_text, c_text, c_text, c_text, 1)
            var _hunger = obj_player.energy
            var _hunger_max = obj_player.energy_max
            var _money = floor(((_hunger_max - _hunger) * 30))
            t_ = (("- Refill hunger for " + string(_money)) + " Roubles")
            t_len = string_width(t_)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 12), t_len, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 12), t_, c_text, c_text, c_text, c_text, 1)
            var _thirst = obj_player.thirst
            var _thirst_max = obj_player.thirst_max
            _money = floor(((_thirst_max - _thirst) * 40))
            t_ = (("- Quench thirst for " + string(_money)) + " Roubles")
            t_len = string_width(t_)
            if scr_mouse_inside((camx + start_text_x), ((camy + start_text_y) + 24), t_len, 12)
                c_text = c_hover
            else
                c_text = c_not_hover
            draw_text_color(start_text_x, (start_text_y + 24), t_, c_text, c_text, c_text, c_text, 1)
            draw_sprite(s_mouse, 4, (mouse_x - camx), (mouse_y - camy))
        }
    }
    if (obj_player.state == gml_Script_scr_player_show_text_custom)
    {
        scr_draw_box(s_box_testo1, global.dialogue_type_text_box_startx, global.dialogue_type_text_box_starty, global.dialogue_type_text_box_w, global.dialogue_type_text_box_h, 1)
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        _w = (global.dialogue_type_text_box_w - 20)
        _y = (global.dialogue_type_text_box_starty + 10)
        draw_text_ext(240, _y, global.text_custom_question, 12, _w)
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        var a = global.text_custom_index
        for (i = 0; i < array_length_2d(global.dialogue_type_text_x, global.text_custom_index); i++)
        {
            var _bw = global.dialogue_type_text_w[a][i]
            var _bh = global.dialogue_type_text_h[a][i]
            var _sx = (global.dialogue_type_text_x[a][i] - (_bw / 2))
            var _sy = (global.dialogue_type_text_y[a][i] - (_bh / 2))
            var _c_rettangolo = c_black
            var _c_text = c_white
            if (global.dialogue_type_text_hover[a] == i)
            {
                _c_rettangolo = 9564927
                _c_text = 0
            }
            draw_rectangle_color(_sx, _sy, (_sx + _bw), (_sy + _bh), _c_rettangolo, _c_rettangolo, _c_rettangolo, _c_rettangolo, 0)
            draw_text_color(global.dialogue_type_text_x[a][i], global.dialogue_type_text_y[a][i], global.dialogue_type_text_text[a][i], _c_text, _c_text, _c_text, _c_text, 1)
        }
        draw_sprite(s_mouse, 4, (mouse_x - camx), (mouse_y - camy))
    }
    if (obj_player.state == gml_Script_scr_player_new_game)
    {
        var c = c_black
        draw_rectangle_color(0, 0, 480, 40, c, c, c, c, 0)
        hh = 100
        draw_rectangle_color(0, (270 - hh), 480, 270, c, c, c, c, 0)
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        draw_text(240, 25, "[SPACE] skip the introduction")
        if (tut_text_counter >= string_length(tut_text[tut_text_page]))
        {
            t_ = "[LMB] next page"
            if (tut_text_page >= (array_length_1d(tut_text) - 1))
                t_ = "[LMB] exit"
            draw_text(240, 255, t_)
        }
        if (tut_text_counter < string_length(tut_text[tut_text_page]))
            tut_text_counter += 0.75
        var sub_str = string_copy(tut_text[tut_text_page], 1, ceil(tut_text_counter))
        draw_set_halign(fa_left)
        draw_text_ext(60, 180, sub_str, 12, 360)
    }
    if (room == room1)
    {
        if (instance_exists(obj_player) && instance_exists(obj_map_generator))
        {
            if (obj_player.state == gml_Script_scr_player_state_move)
            {
                if (obj_player.y < obj_map_generator.map_height)
                {
                    var size_ = ds_list_size(global.list_minimap_marker_x)
                    if (size_ > 0)
                    {
                        for (i = 0; i < size_; i++)
                        {
                            xx = (ds_list_find_value(global.list_minimap_marker_x, i) * 16)
                            yy = (ds_list_find_value(global.list_minimap_marker_y, i) * 16)
                            var dir_ = point_direction(x, y, xx, yy)
                            x1 = x
                            y1 = y
                            off = 10
                            repeat (25)
                            {
                                x1 += lengthdir_x(15, dir_)
                                y1 += lengthdir_y(15, dir_)
                                x1 = clamp(x1, (camx + off), ((camx + 480) - off))
                                y1 = clamp(y1, (camy + off), ((camy + 270) - off))
                            }
                            draw_sprite_ext(s_minimap_marker, 0, (x1 - camx), (y1 - camy), 1, 1, (dir_ + 90), c_white, 1)
                        }
                    }
                }
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_map)
    {
        xx = 222.5
        yy = 126.5
        draw_sprite(s_hud_pda2, 0, 0, 0)
        if (pda_loading_map_now < pda_loading_map_max)
        {
            pda_loading_map_now++
            var image_max = (sprite_get_number(s_hud_loading_pda) - 1)
            var pda_index = round(((image_max * pda_loading_map_now) / pda_loading_map_max))
            draw_sprite(s_hud_loading_pda, pda_index, xx, yy)
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            draw_text_transformed(xx, (yy - 32), "ACQUIRING GPS SIGNAL", 3, 3, 0)
        }
        if (pda_loading_map_now >= pda_loading_map_max)
        {
            pda_loading_map_now++
            if (room == room1)
            {
                var start_x = 57
                var start_y = 37
                var space_w = 331
                var space_h = 179
                draw_sprite_ext(s_minimap_floor_wall, 0, start_x, start_y, space_w, space_h, 0, 0x1A1A1A, 1)
                var surf_x = (start_x + global.minimap_off_x)
                var surf_y = (start_y + global.minimap_off_y)
                var surf_space_w = (space_w - global.minimap_off_x)
                var surf_space_h = (space_h - global.minimap_off_y)
                var surf_start_x = 0
                var surf_start_y = 0
                if (surf_x < start_x)
                {
                    surf_start_x = abs(global.minimap_off_x)
                    surf_x = start_x
                    surf_space_w = space_w
                }
                if (surf_y < start_y)
                {
                    surf_start_y = abs(global.minimap_off_y)
                    surf_y = start_y
                    surf_space_h = space_h
                }
                if (!surface_exists(obj_minimap.surface_map_dinamica))
                {
                    var surf_w = (((room_width div 16) * 1) + 100)
                    var surf_h = (((room_height div 16) * 1) + 100)
                    obj_minimap.surface_map_dinamica = surface_create(surf_w, surf_h)
                    surface_set_target(obj_minimap.surface_map_dinamica)
                    draw_clear_alpha(c_white, 0)
                    if (ds_list_size(global.list_intresting_id) > 0)
                    {
                        for (i = 0; i < ds_list_size(global.list_intresting_id); i++)
                        {
                            var im_index = array_get(obj_controller.marker_index, ds_list_find_value(global.list_intresting_id, i))
                            cc = array_get(obj_controller.marker_color, ds_list_find_value(global.list_intresting_id, i))
                            draw_sprite_ext(s_marker_cerchio, im_index, ds_list_find_value(global.list_intresting_x, i), ds_list_find_value(global.list_intresting_y, i), 1, 1, 0, cc, 1)
                        }
                    }
                    var l_size = ds_list_size(global.list_obj_marker_x)
                    oo = obj_controller
                    for (i = 0; i < l_size; i++)
                    {
                        var q_pos = ds_list_find_value(global.list_obj_marker_quest_pos, i)
                        if (global.save_quest_status[q_pos] == 1)
                        {
                            var ox = ds_list_find_value(global.list_obj_marker_x, i)
                            var oy = ds_list_find_value(global.list_obj_marker_y, i)
                            _sub = ds_list_find_value(global.list_obj_marker_sub, i)
                            draw_sprite_ext(s_marker_cerchio, _sub, ox, oy, 1, 1, 0, c_yellow, 1)
                        }
                    }
                    l_size = ds_list_size(global.list_extraction_x)
                    for (i = 0; i < l_size; i++)
                        draw_sprite(s_minimap_circle_extraction, 0, ds_list_find_value(global.list_extraction_x, i), ds_list_find_value(global.list_extraction_y, i))
                    if (ds_list_size(global.list_minimap_marker_x) > 0)
                    {
                        for (i = 0; i < ds_list_size(global.list_minimap_marker_x); i++)
                        {
                            var mx = (ds_list_find_value(global.list_minimap_marker_x, i) * 1)
                            var my = (ds_list_find_value(global.list_minimap_marker_y, i) * 1)
                            draw_sprite_ext(s_minimap_marker, 0, mx, my, 1, 1, 0, c_white, 1)
                        }
                    }
                    if (global.general_debug == 1)
                    {
                        var _size = array_length_1d(global.list_n_id)
                        if (_size > 0)
                        {
                            for (i = 0; i < _size; i++)
                            {
                                _x = (global.list_n_x[i] div 16)
                                _y = (global.list_n_y[i] div 16)
                                var _col = c_white
                                if (global.list_n_follow_path[i] == 1)
                                    _col = c_yellow
                                if (global.list_n_hp[i] <= 0)
                                    _col = c_red
                                var _id = global.list_n_npc_id[i]
                                if (_id == (7 << 0))
                                    _col = 16776960
                                draw_sprite_ext(s_1pixel, 0, (_x - 1), (_y - 1), 1, 1, 0, _col, 1)
                            }
                        }
                    }
                    if (obj_player.y <= obj_map_generator.map_height)
                    {
                        var px = (obj_player.x div 16)
                        var py = (obj_player.y div 16)
                        draw_sprite_ext(s_minimap_player, 0, px, py, 1, 1, 0, c_white, 1)
                    }
                    surface_reset_target()
                }
                draw_surface_part(obj_minimap.surface_map, surf_start_x, surf_start_y, (surf_space_w - 1), (surf_space_h - 1), surf_x, surf_y)
                if surface_exists(obj_minimap.surface_cover)
                    draw_surface_part(obj_minimap.surface_cover, surf_start_x, surf_start_y, (surf_space_w - 1), (surf_space_h - 1), surf_x, surf_y)
                draw_surface_part(obj_minimap.surface_map_statica, surf_start_x, surf_start_y, (surf_space_w - 1), (surf_space_h - 1), surf_x, surf_y)
                draw_surface_part(obj_minimap.surface_map_dinamica, surf_start_x, surf_start_y, (surf_space_w - 1), (surf_space_h - 1), surf_x, surf_y)
                oo = obj_controller
                var circle_w = (sprite_get_width(s_minimap_circle) div 2)
                if (ds_list_size(global.list_obj_marker_x) > 0)
                {
                    for (i = 0; i < ds_list_size(global.list_obj_marker_x); i++)
                    {
                        q_pos = ds_list_find_value(global.list_obj_marker_quest_pos, i)
                        if (global.save_quest_status[q_pos] == 1)
                        {
                            surf_start_x = 0
                            surf_start_y = 0
                            if (surf_x < start_x)
                            {
                                surf_start_x = abs(global.minimap_off_x)
                                surf_x = start_x
                            }
                            if (surf_y < start_y)
                            {
                                surf_start_y = abs(global.minimap_off_y)
                                surf_y = start_y
                            }
                            mx = ((((mouse_x - camx) - global.minimap_off_x) + surf_start_x) - 57)
                            my = ((((mouse_y - camy) - global.minimap_off_y) + surf_start_y) - 37)
                            var qx = (ds_list_find_value(global.list_obj_marker_x, i) * 1)
                            var qy = (ds_list_find_value(global.list_obj_marker_y, i) * 1)
                            if scr_mouse_inside((57 + camx), (37 + camy), 331, 179)
                            {
                                if (point_distance(mx, my, qx, qy) < circle_w)
                                {
                                    var q_id = ds_list_find_value(global.list_obj_marker_quest_id, i)
                                    t_ = global.quest_name[q_id]
                                    if mouse_check_button_pressed(mb_left)
                                    {
                                        if instance_exists(obj_draw_quest_name_minimap)
                                        {
                                            with (obj_draw_quest_name_minimap)
                                                instance_destroy()
                                        }
                                        var dd = instance_create_depth(mouse_x, (mouse_y - 18), -9999, obj_draw_quest_name_minimap)
                                        dd.t = t_
                                    }
                                }
                            }
                        }
                    }
                }
                circle_w = ((sprite_get_width(s_minimap_circle_extraction) div 2) + 2)
                if (ds_list_size(global.list_extraction_x) > 0)
                {
                    for (i = 0; i < ds_list_size(global.list_extraction_x); i++)
                    {
                        surf_start_x = 0
                        surf_start_y = 0
                        if (surf_x < start_x)
                        {
                            surf_start_x = abs(global.minimap_off_x)
                            surf_x = start_x
                        }
                        if (surf_y < start_y)
                        {
                            surf_start_y = abs(global.minimap_off_y)
                            surf_y = start_y
                        }
                        mx = ((((mouse_x - camx) - global.minimap_off_x) + surf_start_x) - 57)
                        my = ((((mouse_y - camy) - global.minimap_off_y) + surf_start_y) - 37)
                        qx = (ds_list_find_value(global.list_extraction_x, i) * 1)
                        qy = (ds_list_find_value(global.list_extraction_y, i) * 1)
                        if scr_mouse_inside((57 + camx), (37 + camy), 331, 179)
                        {
                            if (point_distance(mx, my, qx, qy) < circle_w)
                            {
                                if mouse_check_button_pressed(mb_left)
                                {
                                    if instance_exists(obj_draw_quest_name_minimap)
                                    {
                                        with (obj_draw_quest_name_minimap)
                                            instance_destroy()
                                    }
                                    dd = instance_create_depth(mouse_x, (mouse_y - 18), -9999, obj_draw_quest_name_minimap)
                                    dd.t = "Extraction point"
                                }
                            }
                        }
                    }
                }
                if scr_mouse_inside((57 + camx), (37 + camy), 331, 179)
                {
                    circle_w = ((sprite_get_width(s_minimap_circle_extraction) div 2) + 2)
                    if (ds_list_size(global.list_intresting_id) > 0)
                    {
                        for (i = 0; i < ds_list_size(global.list_intresting_id); i++)
                        {
                            surf_start_x = 0
                            surf_start_y = 0
                            if (surf_x < start_x)
                            {
                                surf_start_x = abs(global.minimap_off_x)
                                surf_x = start_x
                            }
                            if (surf_y < start_y)
                            {
                                surf_start_y = abs(global.minimap_off_y)
                                surf_y = start_y
                            }
                            mx = ((((mouse_x - camx) - global.minimap_off_x) + surf_start_x) - 57)
                            my = ((((mouse_y - camy) - global.minimap_off_y) + surf_start_y) - 37)
                            qx = (ds_list_find_value(global.list_intresting_x, i) * 1)
                            qy = (ds_list_find_value(global.list_intresting_y, i) * 1)
                            if scr_mouse_inside((57 + camx), (37 + camy), 331, 179)
                            {
                                if (point_distance(mx, my, qx, qy) < circle_w)
                                {
                                    if mouse_check_button_pressed(mb_left)
                                    {
                                        if instance_exists(obj_draw_quest_name_minimap)
                                        {
                                            with (obj_draw_quest_name_minimap)
                                                instance_destroy()
                                        }
                                        dd = instance_create_depth(mouse_x, (mouse_y - 18), -9999, obj_draw_quest_name_minimap)
                                        dd.t = array_get(obj_controller.marker_text, ds_list_find_value(global.list_intresting_id, i))
                                    }
                                }
                            }
                        }
                    }
                }
                surface_free(obj_minimap.surface_map_dinamica)
            }
            if (room == r_hub)
            {
                draw_set_font(font0)
                draw_set_halign(fa_center)
                draw_set_valign(fa_top)
                draw_text_transformed(xx, (yy - 32), "NOT AVAILABLE NOW", 2, 2, 0)
            }
            scr_draw_geiger_counter()
        }
    }
    else
        pda_loading_map_now = 0
    if (obj_player.state == gml_Script_scr_player_state_pda)
    {
        draw_sprite(s_hud_pda2, 0, 0, 0)
        if (pda_loading_now < pda_loading_max)
        {
            pda_loading_now++
            image_max = (sprite_get_number(s_hud_loading_pda) - 1)
            xx = 222.5
            yy = 126.5
            pda_index = round(((image_max * pda_loading_now) / pda_loading_max))
            draw_sprite(s_hud_loading_pda, pda_index, xx, yy)
            draw_set_font(font_munro_24)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            draw_text(xx, (yy - 32), "LOADING")
        }
        if (pda_loading_now >= pda_loading_max)
        {
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            xx = 222.5
            yy = 126.5
            oo = obj_light_controller
            var b_h = ""
            var b_m = ""
            if (oo.hour < 10)
                b_h = "0"
            if (oo.minute < 10)
                b_m = "0"
            var h1 = (oo.hour div 10)
            var h2 = (oo.hour - (h1 * 10))
            var m1 = (oo.minute div 10)
            var m2 = (oo.minute - (m1 * 10))
            var ts = 3
            offy = -94
            draw_text_transformed((xx - 26), (yy + offy), string(h1), ts, ts, 0)
            draw_text_transformed((xx - 12), (yy + offy), string(h2), ts, ts, 0)
            draw_text_transformed(xx, (yy + offy), ":", ts, ts, 0)
            draw_text_transformed((xx + 12), (yy + offy), string(m1), ts, ts, 0)
            draw_text_transformed((xx + 26), (yy + offy), string(m2), ts, ts, 0)
            var day_text = ((((((oo.day_name[oo.day_now] + " , ") + string(oo.day)) + " / ") + string(oo.month)) + " / ") + string(oo.year))
            draw_text_transformed(xx, ((yy + offy) + 30), day_text, 1, 1, 0)
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            for (i = 0; i < array_length_1d(pda_icon_id); i++)
            {
                offy = 0
                off = 0
                var sc_ = 1
                if (icon_hover == pda_icon_id[i])
                {
                    offy = 0
                    sc_ = 1.25
                    off = ((icone_w - (icone_w * sc_)) / 2)
                }
                draw_sprite_ext(pda_icon_sprite[i], 0, (pda_icon_x[i] + off), ((pda_icon_y[i] + offy) + off), sc_, sc_, 0, c_white, 1)
            }
            off = 90
            var c_g = make_color_rgb(180, 180, 180)
            var c_hp = make_color_rgb(172, 50, 50)
            var hp_x = 147
            var hp_y = (37 + off)
            p_hp = ceil(obj_player.hp)
            p_hp_max = obj_player.hp_max_total
            h = (sprite_get_height(s_pda_hp_outline) - 2)
            var pp = round(((h * p_hp) / p_hp_max))
            draw_sprite_ext(s_pda_hp_bar, 0, hp_x, (hp_y + 1), 1, (-pp), 0, c_hp, 1)
            draw_set_font(font0)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            var t_y = (hp_y - h)
            var t_x = (hp_x + 12)
            draw_text_color(t_x, t_y, ((string(p_hp) + "/") + string(p_hp_max)), c_hp, c_hp, c_hp, c_hp, 1)
            var ferita = obj_player.wound
            if (ferita > 0)
            {
                var t = (string(floor((-ferita))) + " wounds")
                draw_text_color(t_x, (t_y + 10), t, c_hp, c_hp, c_hp, c_hp, 1)
                ww = floor(((ferita * h) / p_hp_max))
                draw_sprite_ext(s_pda_hp_bar, 0, hp_x, (t_y + 1), 1, ww, 0, c_g, 1)
            }
            draw_sprite_ext(s_pda_hp_outline, 0, hp_x, hp_y, 1, 1, 0, c_hp, 1)
            var c_sta = make_color_rgb(55, 148, 110)
            hp_x = 247
            hp_y = (37 + off)
            p_hp = ceil(obj_player.stamina)
            p_hp_max = obj_player.stamina_max_total
            h = (sprite_get_height(s_pda_hp_outline) - 2)
            pp = round(((h * p_hp) / p_hp_max))
            draw_sprite_ext(s_pda_hp_bar, 0, hp_x, (hp_y + 1), 1, (-pp), 0, c_sta, 1)
            t_y = (hp_y - h)
            t_x = (hp_x + 12)
            draw_text_color(t_x, t_y, ((string(floor(p_hp)) + "/") + string(p_hp_max)), c_sta, c_sta, c_sta, c_sta, 1)
            ferita = ceil(obj_player.fatigue)
            if (ferita < 0)
            {
                t = (string(ferita) + " Fatigue")
                draw_text_color(t_x, (t_y + 10), t, c_sta, c_sta, c_sta, c_sta, 1)
                ww = floor(((ferita * h) / p_hp_max))
                c_g = make_color_rgb(150, 150, 150)
                draw_sprite_ext(s_pda_hp_bar, 0, hp_x, (t_y + 1), 1, (-ww), 0, c_g, 1)
            }
            draw_sprite_ext(s_pda_hp_outline, 0, hp_x, hp_y, 1, 1, 0, c_sta, 1)
            scr_draw_geiger_counter()
        }
    }
    else
        pda_loading_now = 0
    if (obj_player.state == gml_Script_scr_player_state_quest)
    {
        xx = 222.5
        yy = 126.5
        draw_sprite(s_hud_pda2, 0, 0, 0)
        if (pda_loading_quest_now < pda_loading_quest_max)
        {
            pda_loading_quest_now++
            image_max = (sprite_get_number(s_hud_loading_pda) - 1)
            pda_index = round(((image_max * pda_loading_quest_now) / pda_loading_quest_max))
            draw_sprite(s_hud_loading_pda, pda_index, xx, yy)
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            draw_text_transformed(xx, (yy - 32), "LOADING DATA", 3, 3, 0)
        }
        if (pda_loading_quest_now >= pda_loading_quest_max)
        {
            scr_draw_geiger_counter()
            hh = -1
            var sep = 12
            quest_amount = ds_grid_height(grid_quest)
            var q_name_sx = 62
            var q_name_sy = 57
            var q_name_max = 100
            draw_set_font(font_quest)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            for (i = 0; i < 30; i++)
                _array_quest[i] = -1
            var mm = 0
            for (i = 0; i < 30; i++)
            {
                if (global.save_quest_id[i] != -1)
                {
                    _array_quest[mm] = i
                    mm++
                }
            }
            for (j = global.pda_quest_scroll_entry; j < (global.pda_quest_scroll_entry + 12); j++)
            {
                var _entry = _array_quest[j]
                if (_entry != -1)
                {
                    quest_id_ = global.save_quest_id[_entry]
                    if (quest_id_ != -1)
                    {
                        hh++
                        t_ = ("- " + global.quest_name[quest_id_])
                        var name_width = string_width(t_)
                        var substr = t_
                        if (name_width >= q_name_max)
                            substr = (string_copy(t_, 1, 21) + "...")
                        var col = c_white
                        if (global.save_quest_status[_entry] == 2)
                            col = 0x86FF86
                        if (pda_quest_hover == _entry)
                            col = 9564927
                        draw_text_color(q_name_sx, (q_name_sy + (hh * sep)), substr, col, col, col, col, 1)
                    }
                }
            }
            var _n_active_quest = 0
            for (i = 0; i < 30; i++)
            {
                if (global.save_quest_id[i] != -1)
                    _n_active_quest += 1
            }
            var _clamp_basso = (_n_active_quest - 12)
            _clamp_basso = clamp(_clamp_basso, 0, 30)
            var _alpha_down = 0.5
            var _alpha_up = 0.5
            if ((global.pda_quest_scroll_entry + 12) < _n_active_quest)
                _alpha_down = 1
            if (global.pda_quest_scroll_entry > 0)
                _alpha_up = 1
            draw_sprite_ext(s_hud_quest_scroll, 0, global.pda_quest_scroll_down_x, global.pda_quest_scroll_down_y, 1, 1, 0, c_white, _alpha_down)
            draw_sprite_ext(s_hud_quest_scroll, 1, global.pda_quest_scroll_up_x, global.pda_quest_scroll_up_y, 1, 1, 0, c_white, _alpha_up)
            var line_sx = 167
            draw_line_width_color(line_sx, q_name_sy, line_sx, ((q_name_sy + 179) - 24), 2, c_white, c_white)
            if (pda_quest_showed != -1)
            {
                quest_id_ = global.save_quest_id[pda_quest_showed]
                if (quest_id_ != -1)
                {
                    draw_set_font(font_quest)
                    draw_set_halign(fa_center)
                    var t_name_x = 273.5
                    draw_text(t_name_x, (q_name_sy - 16), global.quest_name[quest_id_])
                    draw_set_font(font_quest)
                    draw_set_halign(fa_center)
                    _c1 = c_white
                    _c2 = c_white
                    if (pda_quest_obj_hover == 1 || global.sub_state_show_quest == 0)
                        _c1 = 0x91F2FF
                    if (pda_quest_obj_hover == 2 || global.sub_state_show_quest == 1)
                        _c2 = 9564927
                    draw_text_color((pda_quest_obj_x + (pda_quest_obj_w / 2)), (pda_quest_obj_y + 2), "OBJECTIVE", _c1, _c1, _c1, _c1, 1)
                    draw_text_color((pda_quest_text_x + (pda_quest_text_w / 2)), (pda_quest_text_y + 2), "TEXT", _c2, _c2, _c2, _c2, 1)
                    draw_set_halign(fa_left)
                    if (global.sub_state_show_quest == 1)
                        scr_barra_testo_draw(1, global.quest_text[global.save_quest_id[pda_quest_showed]][0])
                    if (global.sub_state_show_quest == 0)
                    {
                        _total_text = ""
                        for (i = 0; i < array_length_2d(global.quest_type, quest_id_); i++)
                        {
                            _custom_text = 0
                            _pre_text = ("- " + global.quest_text_obj[quest_id_][i])
                            _amount_max = (string(global.quest_amount_max[quest_id_][i]) + " ")
                            _text_obj = ""
                            var _text_progress = ((string(global.save_quest_amount_now[pda_quest_showed][i]) + "/") + string(_amount_max))
                            _text_map = ""
                            if (global.quest_text_obj[quest_id_][i] == "")
                            {
                                if (global.quest_type[quest_id_][i] == (0 << 0))
                                {
                                    _text_map = ""
                                    _text_obj_to_kill = ""
                                    _pre_text = "Eliminate "
                                    _custom_text = 1
                                    _map_id = global.quest_kill_map[quest_id_][i]
                                    if (_map_id != -1)
                                        _text_map = (("in the " + map_nome[_map_id]) + " ")
                                    else
                                        _text_map = "in any map"
                                    if (global.quest_kill_faction[quest_id_][i] == -1)
                                    {
                                        _array_npc = global.quest_kill_arr_obj[quest_id_][i]
                                        _npc_id = _array_npc[0]
                                        _text_obj_to_kill = (npc_name[_npc_id] + " ")
                                    }
                                    else
                                    {
                                        _name_faction = global.quest_kill_faction[quest_id_][i]
                                        _text_obj_to_kill = (_name_faction + " ")
                                    }
                                    _text_obj = (((_pre_text + _amount_max) + _text_obj_to_kill) + _text_map)
                                }
                                if (global.quest_type[quest_id_][i] == (6 << 0))
                                {
                                    _text_map = ""
                                    _text_obj_to_kill = ""
                                    _pre_text = "Eliminate the target "
                                    _custom_text = 1
                                    _text_map = (("in the " + map_nome[global.quest_contract_map[quest_id_][i]]) + " ")
                                    _text_obj = (_pre_text + _text_map)
                                }
                                if (global.quest_type[quest_id_][i] == (1 << 0))
                                {
                                    _custom_text = 1
                                    _pre_text = "Collect "
                                    _text_obj_to_collect = (item_name[global.quest_collect_item[quest_id_][i]] + " ")
                                    _text_obj = ((_pre_text + _amount_max) + _text_obj_to_collect)
                                }
                                if (global.quest_type[quest_id_][i] == (1 << 0))
                                {
                                    _custom_text = 1
                                    _pre_text = "Collect "
                                    _text_obj_to_collect = (item_name[global.quest_collect_item[quest_id_][i]] + " ")
                                    _text_obj = ((_pre_text + _amount_max) + _text_obj_to_collect)
                                }
                                if (global.quest_type[quest_id_][i] == (18 << 0))
                                {
                                    _custom_text = 1
                                    _pre_text = "Survive "
                                    if (global.quest_survive_map[quest_id_][i] != -1)
                                        _text_map = (("in the " + map_nome[global.quest_survive_map[quest_id_][i]]) + " ")
                                    else
                                        _text_map = "in any map"
                                    _text_obj = (((_pre_text + _amount_max) + "times ") + _text_map)
                                }
                                if (global.quest_type[quest_id_][i] == (8 << 0))
                                {
                                    _custom_text = 1
                                    _pre_text = "Survive "
                                    if (global.quest_survive_map[quest_id_][i] != -1)
                                        _text_map = (("in the " + map_nome[global.quest_survive_map[quest_id_][i]]) + " ")
                                    else
                                        _text_map = "in any map"
                                    _exp_min_amount = ((" with at least " + string(global.quest_survive_min_exp[quest_id_][i])) + " exp made")
                                    _text_obj = ((((_pre_text + _amount_max) + "times ") + _text_map) + _exp_min_amount)
                                }
                                if (global.quest_type[quest_id_][i] == (9 << 0))
                                {
                                    _custom_text = 1
                                    _pre_text = "Survive "
                                    if (global.quest_survive_map[quest_id_][i] != -1)
                                        _text_map = (("in the " + map_nome[global.quest_survive_map[quest_id_][i]]) + " ")
                                    else
                                        _text_map = "in any map"
                                    _exp_min_amount = ((" with at least " + string(global.quest_survive_min_roubles[quest_id_][i])) + " roubles made")
                                    _text_obj = ((((_pre_text + _amount_max) + "times ") + _text_map) + _exp_min_amount)
                                }
                            }
                            tt = ""
                            if (_custom_text == 1)
                                tt = ((("- " + _text_obj) + ". ") + _text_progress)
                            else
                                tt = ((("- " + global.quest_text_obj[quest_id_][i]) + ". ") + _text_progress)
                            tt = (tt + "\n")
                            _total_text = (_total_text + tt)
                        }
                        draw_text_ext(pda_quest_obj_x, 71, _total_text, 12, 200)
                    }
                    offx = 5
                    var name_speaker = npc_name[global.save_quest_giver[pda_quest_showed]]
                    draw_text((167 + offx), (pda_quest_remove_y + 12), ("GIVER : " + name_speaker))
                }
            }
        }
    }
    else
        pda_loading_quest_now = 0
    if (obj_player.state == gml_Script_scr_player_state_stat)
    {
        draw_sprite(s_hud_pda2, 0, 0, 0)
        if (pda_loading_stat_now < pda_loading_stat_max)
        {
            pda_loading_stat_now++
            image_max = (sprite_get_number(s_hud_loading_pda) - 1)
            xx = 222.5
            yy = 126.5
            pda_index = round(((image_max * pda_loading_stat_now) / pda_loading_stat_max))
            draw_sprite(s_hud_loading_pda, pda_index, xx, yy)
            draw_set_font(font_munro_24)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            draw_text(xx, (yy - 32), "LOADING")
        }
        if (pda_loading_stat_now >= pda_loading_stat_max)
        {
            scr_draw_geiger_counter()
            t = "reputation"
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            c1 = c_white
            var c2 = 0
            xx = 222.5
            yy = 47
            var exp_da_livello = (global.esperienza - global.esperienza_livello[global.livello_now])
            var exp_da_livello_survived = ((global.esperienza + global.esperienza_survive) - global.esperienza_livello[global.livello_now])
            var exp_da_livello_succ = (global.esperienza_livello[(global.livello_now + 1)] - global.esperienza_livello[global.livello_now])
            sw = sprite_get_width(s_hud_exp_bar)
            sh = sprite_get_height(s_hud_exp_bar)
            x1 = (xx - (sw / 2))
            y1 = (yy + 10)
            var rect_esp_x = ((exp_da_livello * (sw - 6)) / exp_da_livello_succ)
            draw_rectangle_color((x1 + 3), (y1 + 2), (x1 + rect_esp_x), ((y1 + sh) - 4), c_white, c_white, c_white, c_white, 0)
            draw_sprite(s_hud_exp_bar, 0, x1, y1)
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            scr_draw_text_outlined(xx, (yy - 13), (global.esperienza_nome_livello[global.livello_now] + " Hunter"), c_white, c_black, 2, 1)
            draw_set_valign(fa_top)
            draw_set_halign(fa_left)
            scr_draw_text_outlined(x1, ((y1 + sh) + 1), ("current: " + string(floor(global.esperienza))), c_white, c_black, 1, 1)
            draw_set_halign(fa_right)
            scr_draw_text_outlined((x1 + sw), ((y1 + sh) + 1), ("next level: " + string(floor(global.esperienza_livello[(global.livello_now + 1)]))), c_white, c_black, 1, 1)
            var text_h = ((array_length_1d(global.stat_id) * 12) + 48)
            if (!surface_exists(surface_testo))
            {
                surface_testo = surface_create(testo_surface_w[2], text_h)
                surface_set_target(surface_testo)
                draw_clear_alpha(c_black, 0)
                draw_set_font(font0)
                draw_set_halign(fa_left)
                draw_set_valign(fa_top)
                for (i = 0; i < array_length_1d(global.stat_id); i++)
                    draw_text(0, (0 + (i * 12)), global.stat_name[i])
                draw_set_halign(fa_right)
                global.stat_amount[(8 << 0)] = ((((global.stat_amount[(9 << 0)] + global.stat_amount[(10 << 0)]) + global.stat_amount[(11 << 0)]) + global.stat_amount[(12 << 0)]) + global.stat_amount[(13 << 0)])
                global.stat_amount[(17 << 0)] = (((((((global.stat_amount[(19 << 0)] + global.stat_amount[(20 << 0)]) + global.stat_amount[(21 << 0)]) + global.stat_amount[(23 << 0)]) + global.stat_amount[(22 << 0)]) + global.stat_amount[(25 << 0)]) + global.stat_amount[(24 << 0)]) + global.stat_amount[(18 << 0)])
                global.stat_amount[(26 << 0)] = (((((((((((global.stat_amount[(27 << 0)] + global.stat_amount[(28 << 0)]) + global.stat_amount[(29 << 0)]) + global.stat_amount[(30 << 0)]) + global.stat_amount[(31 << 0)]) + global.stat_amount[(32 << 0)]) + global.stat_amount[(33 << 0)]) + global.stat_amount[(34 << 0)]) + global.stat_amount[(35 << 0)]) + global.stat_amount[(36 << 0)]) + global.stat_amount[(37 << 0)]) + global.stat_amount[(38 << 0)])
                for (i = 0; i < array_length_1d(global.stat_id); i++)
                    draw_text((testo_surface_w[2] - 2), (0 + (i * 12)), string(global.stat_amount[i]))
                surface_reset_target()
            }
            draw_surface_part(surface_testo, 0, testo_surface_y[2], testo_surface_w[2], testo_surface_h[2], testo_start_x[2], testo_start_y[2])
            surface_free(surface_testo)
            draw_sprite(testo_barra_sprite[2], 0, testo_barra_x[2], testo_barra_y[2])
            draw_sprite(testo_cursore_sprite[2], 0, testo_cursore_x[2], testo_cursore_y[2])
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_faction)
    {
        draw_sprite(s_hud_pda2, 0, 0, 0)
        scr_draw_geiger_counter()
        i = 0
        _faction[i] = (1 << 0)
        i++
        _faction[i] = (2 << 0)
        i++
        _faction[i] = (3 << 0)
        i++
        _faction[i] = (6 << 0)
        i++
        _faction[i] = (4 << 0)
        i++
        draw_set_font(font0)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        scr_draw_text_outlined(222.5, 45, "RELATIONS (IN DEVELOPMENT)", c_white, c_black, 2, 1)
        var _tx = 77
        var _ty = 87
        var _qx = 172
        _h = 20
        var _qw = sprite_get_width(s_hud_rep_bar)
        var _qh = sprite_get_height(s_hud_rep_bar)
        draw_set_font(font0)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        for (i = 0; i < array_length_1d(_faction); i++)
        {
            draw_sprite(s_hud_rep_bar, 0, _qx, (_ty + (_h * i)))
            _name = global.faction_name[_faction[i]]
            draw_text(_tx, (_ty + (_h * i)), _name)
            var _rep_value = ds_grid_get(global.grid_faction, (0 << 0), array_get(_faction, i))
            draw_text(((_qx + _qw) + 4), (_ty + (_h * i)), string(_rep_value))
            _x = ((_rep_value * (_qw - 2)) / 120)
            draw_sprite_part(s_hud_rep_bar, 1, 1, 0, _x, _qh, (_qx + 1), (_ty + (_h * i)))
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_skill_tree)
    {
        draw_sprite(s_hud_pda2, 0, 0, 0)
        if (pda_loading_skill_tree_now < pda_loading_skill_tree_max)
        {
            pda_loading_skill_tree_now++
            image_max = (sprite_get_number(s_hud_loading_pda) - 1)
            xx = 222.5
            yy = 126.5
            pda_index = round(((image_max * pda_loading_skill_tree_now) / pda_loading_skill_tree_max))
            draw_sprite(s_hud_loading_pda, pda_index, xx, yy)
            draw_set_font(font_munro_24)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            draw_text(xx, (yy - 32), "LOADING")
        }
        if (pda_loading_skill_tree_now >= pda_loading_skill_tree_max)
        {
            draw_sprite(s_skill_tree, 0, 0, 0)
            scr_draw_geiger_counter()
            sx = 221
            var sy = 48
            draw_set_font(font_quest)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            draw_text(sx, sy, ("SKILL POINTS: " + string(global.skill_points)))
            var n_skill = array_length_1d(global.skill_name)
            for (i = 1; i < n_skill; i++)
            {
                var id_ = global.skill_id[i]
                for (j = 0; j < array_length_2d(global.skill_required, id_); j++)
                {
                    var skill_prima = global.skill_required[id_][j]
                    if (skill_prima != (0 << 0))
                        draw_line_width_color((global.skill_x[id_] + 7), (global.skill_y[id_] + 7), (global.skill_x[skill_prima] + 7), (global.skill_y[skill_prima] + 7), 2, c_white, c_white)
                }
            }
            for (i = 1; i < n_skill; i++)
            {
                id_ = global.skill_id[i]
                if (global.skill_unlocked[id_] == 0)
                    draw_sprite(global.skill_sprite[id_], 0, global.skill_x[id_], global.skill_y[id_])
                else
                    draw_sprite_ext(global.skill_sprite[id_], 0, global.skill_x[id_], global.skill_y[id_], 1, 1, 0, c_yellow, 1)
            }
            if (global.skill_hover != -1)
            {
                draw_set_font(font_quest)
                var t_w1 = string_width(global.skill_name[global.skill_hover])
                draw_set_font(font0)
                var t_w2 = string_width(global.skill_des[global.skill_hover])
                var t_w = 0
                if (t_w1 > t_w2)
                    t_w = t_w1
                else
                    t_w = t_w2
                xx = ((mouse_x - camx) + 16)
                yy = ((mouse_y - camy) - 36)
                offx = 4
                offy = 4
                hh = 24
                if (((xx + t_w) + offx) > 470)
                    xx += (470 - ((xx + t_w) + offx))
                if (global.skill_unlocking_now < 10)
                {
                    if (global.skill_box_now < global.skill_box_max)
                    {
                        var bw = ((global.skill_box_now * (t_w + offx)) / global.skill_box_max)
                        var bh = ((global.skill_box_now * (hh + offy)) / global.skill_box_max)
                        scr_draw_box(s_box_skill1, ((xx + ((t_w + offy) / 2)) - (bw / 2)), ((yy + ((hh + offy) / 2)) - (bh / 2)), bw, bh, 1)
                    }
                    else
                    {
                        for (j = 0; j < array_length_2d(global.skill_required, global.skill_hover); j++)
                        {
                            skill_prima = global.skill_required[global.skill_hover][j]
                            if (skill_prima != (0 << 0))
                                draw_sprite_ext(s_skill_vuoto, 0, global.skill_x[skill_prima], global.skill_y[skill_prima], 1, 1, 0, c_red, 1)
                        }
                        scr_draw_box(s_box_skill1, xx, yy, (t_w + offx), (hh + offy), 1)
                        draw_set_font(font_quest)
                        draw_set_halign(fa_center)
                        draw_set_valign(fa_top)
                        draw_text(((xx + (t_w / 2)) + (offx / 2)), (yy + 2), global.skill_name[global.skill_hover])
                        draw_set_font(font0)
                        draw_text(((xx + (t_w / 2)) + (offx / 2)), (yy + 16), global.skill_des[global.skill_hover])
                    }
                }
                else
                {
                    bw = 240
                    bh = 140
                    sx = (222.5 - (bw / 2))
                    sy = (126.5 - (bh / 2))
                    scr_draw_box(s_box_testo_pop_up, sx, sy, bw, bh, 0.95)
                    draw_set_font(font0)
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_top)
                    draw_text_transformed((sx + (bw / 2)), (sy + 30), "unlocking skill", 2, 2, 0)
                    image_max = (sprite_get_number(s_hud_loading_pda) - 1)
                    var xb = ((global.skill_unlocking_now * image_max) / global.skill_unlocking_max)
                    draw_sprite(s_hud_loading_pda, xb, (sx + (bw / 2)), (sy + 54))
                }
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_skill2)
    {
        draw_sprite(s_hud_pda2, 0, 0, 0)
        if (pda_loading_skill_tree_now >= pda_loading_skill_tree_max)
        {
            scr_draw_geiger_counter()
            xx = global.sk_startx
            yy = global.sk_starty
            draw_set_font(font_quest)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            scr_draw_skill((0 << 0), xx, yy)
            scr_draw_skill((4 << 0), xx, (yy + (global.sk_button_h * 1)))
            scr_draw_skill((8 << 0), xx, (yy + (global.sk_button_h * 2)))
            scr_draw_skill((12 << 0), xx, (yy + (global.sk_button_h * 3)))
            scr_draw_skill((16 << 0), xx, (yy + (global.sk_button_h * 4)))
            scr_draw_skill((22 << 0), xx, (yy + (global.sk_button_h * 5)))
            scr_draw_skill((19 << 0), xx, (yy + (global.sk_button_h * 6)))
            if (global.sk_hover != -1)
                draw_sprite_ext(s_pda_skill_hover, 0, (xx - 3), (global.sk_y[global.sk_hover] - 1), 1, 1, 0, c_white, 1)
            draw_line_width_color((xx + 100), (yy - 5), (xx + 100), (((yy - 5) + 179) - 24), 2, c_white, c_white)
            var des_x = global.sk_des_x
            hh = global.sk_spec_h
            if (global.sk_selected != -1)
            {
                var draw_normal = 1
                if (global.sk_upgrading == 1)
                {
                    draw_normal = 0
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_top)
                    var ttt = "Hold left mouse button to specialize"
                    scr_draw_text_outlined((des_x + (global.sk_des_w / 2)), 202, ttt, c_white, c_black, 1, 1)
                    var quante_spec = array_length_2d(global.sk_upgrade, global.sk_selected)
                    draw_set_font(font0)
                    for (i = 0; i < quante_spec; i++)
                    {
                        draw_set_halign(fa_center)
                        draw_set_valign(fa_top)
                        var ss_id = global.sk_upgrade[global.sk_selected][i]
                        cc = 0x91F2FF
                        draw_text_color((des_x + (global.sk_des_w / 2)), (yy + (hh * i)), global.sk_name[ss_id], cc, cc, cc, cc, 1)
                        draw_set_halign(fa_center)
                        draw_set_valign(fa_middle)
                        draw_text_ext((des_x + (global.sk_des_w / 2)), (((yy + (hh * i)) + (hh / 2)) + 4), global.sk_des[ss_id], 10, global.sk_des_w)
                        if (global.sk_spec_hover == ss_id)
                            draw_sprite(s_pda_skill_spec_hover, 0, des_x, (yy + (hh * i)))
                        if (global.sk_unlocking_now > 7)
                        {
                            bw = 180
                            bh = 100
                            sx = (222.5 - (bw / 2))
                            sy = (126.5 - (bh / 2))
                            scr_draw_box(s_box_testo_pop_up, sx, sy, bw, bh, 0.95)
                            draw_set_font(font0)
                            draw_set_halign(fa_center)
                            draw_set_valign(fa_top)
                            draw_text_transformed((sx + (bw / 2)), (sy + 30), "Specializing", 2, 2, 0)
                            image_max = (sprite_get_number(s_hud_loading_pda) - 1)
                            xb = ((global.sk_unlocking_now * image_max) / global.sk_unlocking_max)
                            draw_sprite(s_hud_loading_pda, xb, (sx + (bw / 2)), (sy + 54))
                        }
                    }
                }
                if (draw_normal == 1)
                {
                    draw_set_font(font0)
                    draw_set_halign(fa_center)
                    draw_text_transformed((des_x + (global.sk_des_w / 2)), (yy - 10), global.sk_name[global.sk_selected], 2, 2, 0)
                    draw_set_font(font_quest)
                    draw_set_halign(fa_center)
                    draw_text_ext((des_x + (global.sk_des_w / 2)), (yy + 10), global.sk_des[global.sk_selected], 12, 190)
                    var des_h = string_height_ext(global.sk_des[global.sk_selected], 12, 190)
                    draw_text_ext((des_x + (global.sk_des_w / 2)), ((yy + 15) + des_h), global.sk_des_value[global.sk_selected], 12, 190)
                }
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_base)
    {
        draw_sprite(s_hud_pda2, 0, 0, 0)
        draw_sprite(s_pda_base_layout_2, 0, 0, 0)
        draw_sprite(s_pda_icon_info, 0, global.pda_icon_info_x, global.pda_icon_info_y)
        for (i = 0; i < array_length_1d(global.sl_id); i++)
        {
            cc = c_white
            var _slot_id = global.sl_id[i]
            if (global.sl_hover == _slot_id)
            {
                cc = 0x91F2FF
                draw_sprite_ext(s_pda_base_slot_selected, 0, global.sl_x[global.sl_hover], global.sl_y[global.sl_hover], 1, 1, 0, cc, 1)
            }
            if (global.sl_selected == _slot_id)
            {
                cc = 0x91F2FF
                draw_sprite_ext(s_pda_base_slot_selected, 1, global.sl_x[global.sl_selected], global.sl_y[global.sl_selected], 1, 1, 0, cc, 1)
            }
            if (global.sl_free[_slot_id] == 2)
            {
                var get_base_id = global.sl_base_id[_slot_id]
                draw_sprite_ext(global.base_sprite[get_base_id], 0, global.sl_x[_slot_id], global.sl_y[_slot_id], 1, 1, 0, cc, 1)
            }
        }
        if (global.sl_selected != -1)
        {
            if (global.sl_free[global.sl_selected] == 0)
            {
                var list_already_installed = ds_list_create()
                for (i = 0; i < array_length_1d(global.sl_id); i++)
                {
                    var bbase_id = global.sl_base_id[i]
                    if (bbase_id != -1)
                        ds_list_add(list_already_installed, bbase_id)
                }
                for (i = 0; i < array_length_1d(global.base_id); i++)
                {
                    var b_id = global.base_id[i]
                    cc = c_white
                    var aa = 1
                    if (global.base_hover == global.base_id[i])
                        cc = 0x91F2FF
                    if (global.base_selected == global.base_id[i])
                        cc = 0x91F2FF
                    var already_installed = 0
                    var ll = ds_list_size(list_already_installed)
                    if (ll > 0)
                    {
                        for (j = 0; j < ll; j++)
                        {
                            var confronto = ds_list_find_value(list_already_installed, j)
                            if (b_id == confronto)
                                already_installed = 1
                        }
                    }
                    if (already_installed == 1)
                    {
                        aa = 0.5
                        cc = c_white
                    }
                    draw_sprite_ext(global.base_sprite[b_id], 0, global.base_x[b_id], global.base_y[b_id], 1, 1, 0, cc, aa)
                }
                if (global.base_selected != -1)
                {
                    x1 = 300
                    y1 = 130
                    c = 0x91F2FF
                    draw_set_font(font0)
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_top)
                    draw_set_font(font_quest)
                    draw_set_valign(fa_middle)
                    c1 = c_white
                    if scr_mouse_inside(((camx + global.base_install_x) - (global.base_install_w / 2)), ((camy + global.base_install_y) - (global.base_install_h / 2)), global.base_install_w, global.base_install_h)
                        c1 = 0x91F2FF
                    draw_text_color(global.base_install_x, global.base_install_y, "HOLD HERE TO INSTALL", c1, c1, c1, c1, 1)
                    sw = sprite_get_width(s_hud_pda_show_base_selected)
                    ww = 0
                    global.base_slider++
                    if (mouse_x <= (camx + 210))
                        global.base_slider -= 2
                    global.base_slider = clamp(global.base_slider, 0, global.base_slider_time_max)
                    ww = ((sw * global.base_slider) / global.base_slider_time_max)
                    draw_sprite_ext(s_hud_pda_show_base_selected, 0, 210, 62, ((-ww) / sw), 1, 0, c_white, 1)
                    if (global.base_slider >= global.base_slider_time_max)
                    {
                        draw_set_font(font0)
                        draw_set_valign(fa_top)
                        draw_text_transformed_color(136, 66, global.base_name[global.base_selected], 2, 2, 0, c, c, c, c, 1)
                        draw_set_font(font_quest)
                        draw_text_ext(136, 88, global.base_des_general[global.base_selected], 12, 140)
                    }
                }
                if (global.base_installing_now > 7)
                {
                    bw = 240
                    bh = 120
                    sx = (222.5 - (bw / 2))
                    sy = (126.5 - (bh / 2))
                    scr_draw_box(s_box_testo_pop_up, sx, sy, bw, bh, 0.95)
                    draw_set_font(font0)
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_top)
                    t = ("Installing " + global.base_name[global.base_selected])
                    draw_text_transformed((sx + (bw / 2)), (sy + 30), t, 2, 2, 0)
                    image_max = (sprite_get_number(s_hud_loading_pda) - 1)
                    xb = ((global.base_installing_now * image_max) / global.base_installing_max)
                    draw_sprite(s_hud_loading_pda, xb, (sx + (bw / 2)), (sy + 54))
                }
            }
            if (global.sl_base_id[global.sl_selected] != -1)
            {
                var bb_id = global.sl_base_id[global.sl_selected]
                x1 = 300
                y1 = 62
                draw_set_font(font0)
                draw_set_halign(fa_center)
                draw_set_valign(fa_top)
                tt = ((global.base_name[bb_id] + " l ") + string(global.base_lvl[bb_id]))
                draw_text_transformed(x1, y1, tt, 2, 2, 0)
                draw_set_font(font_quest)
                draw_text_ext(x1, (y1 + 22), global.base_des_general[bb_id], 12, 170)
                draw_set_font(font_quest)
                draw_set_valign(fa_middle)
                c1 = c_white
                if scr_mouse_inside(((camx + global.base_install_x) - (global.base_install_w / 2)), ((camy + global.base_install_y) - (global.base_install_h / 2)), global.base_install_w, global.base_install_h)
                    c1 = 9564927
                draw_text_color(global.base_install_x, global.base_install_y, "HOLD HERE TO UNINSTALL", c1, c1, c1, c1, 1)
                if (global.base_installing_now > 7)
                {
                    bw = 240
                    bh = 120
                    sx = (222.5 - (bw / 2))
                    sy = (126.5 - (bh / 2))
                    scr_draw_box(s_box_testo_pop_up, sx, sy, bw, bh, 0.95)
                    draw_set_font(font0)
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_top)
                    t = ("Uninstalling " + global.base_name[global.sl_base_id[global.sl_selected]])
                    draw_text_transformed((sx + (bw / 2)), (sy + 30), t, 2, 2, 0)
                    image_max = (sprite_get_number(s_hud_loading_pda) - 1)
                    xb = ((global.base_installing_now * image_max) / global.base_installing_max)
                    draw_sprite(s_hud_loading_pda, xb, (sx + (bw / 2)), (sy + 54))
                }
            }
        }
        if (global.pda_info == 1)
        {
            draw_sprite(s_hud_pda_info_panel, 0, 0, 0)
            xx = 223
            yy = 50
            draw_set_font(font0)
            draw_set_halign(fa_center)
            draw_set_valign(fa_top)
            c = 0x91F2FF
            draw_text_transformed_color(xx, yy, "Modules", 2, 2, 0, c, c, c, c, 1)
            draw_set_font(font_quest)
            draw_text(xx, (yy + 21), "Click anywhere to go back")
            ww = 296
            draw_set_halign(fa_left)
            t = global.info_base
            draw_text_ext(75, (yy + 38), t, 12, 296)
        }
        scr_draw_geiger_counter()
    }
    if (obj_player.state == gml_Script_scr_player_state_choose_map)
    {
        camx = camera_get_view_x(view_camera[0])
        camy = camera_get_view_y(view_camera[0])
        draw_sprite(s_hud_choose_map2, 0, 0, 0)
        c1 = 3155749
        c2 = 15131105
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        if (map_selected != -1)
        {
            scr_draw_text_outlined(240, 14, map_nome[map_selected], c_white, c_black, 2, 2)
            draw_sprite(s_hud_map_selected, 0, map_x[map_selected], map_y[map_selected])
        }
        if (map_selected != -1)
            draw_text(240, 38, ("COST: " + string(area_cost[map_selected])))
        if (b_go_hover == 0)
        {
            draw_sprite(s_hud_start_map, 0, b_go_x, b_go_y)
            scr_draw_text_outlined((b_go_x + (b_go_w / 2)), (b_go_y + 3), "GO", c_white, c_black, 1, 1)
        }
        else
        {
            draw_sprite(s_hud_start_map, 1, b_go_x, b_go_y)
            scr_draw_text_outlined((b_go_x + (b_go_w / 2)), (b_go_y + 4), "GO", c_white, c_black, 1, 1)
        }
        if (global.player_weight >= global.max_weight)
        {
            draw_set_font(font0)
            draw_set_halign(fa_center)
            scr_draw_text_outlined(240, 2, "ATTENTION! You are over encumbered!", 0x0000AE, c_black, 1, 1)
        }
        draw_sprite(s_mouse, 4, (mouse_x - camx), (mouse_y - camy))
    }
    if (obj_player.state == gml_Script_scr_player_state_move)
    {
        if (global.change_ammo_now == 1)
        {
            var _tipi_ammo = ds_list_size(global.list_ammo_id)
            if (_tipi_ammo > 0)
            {
                draw_set_font(font0)
                draw_set_halign(fa_center)
                draw_set_valign(fa_middle)
                xx = (obj_player.x - camx)
                yy = ((obj_player.y - camy) - 16)
                for (i = 0; i < _tipi_ammo; i++)
                {
                    var subi = 0
                    cc = c_white
                    if (global.change_ammo_scelta == i)
                    {
                        subi = 1
                        cc = 0x91F2FF
                    }
                    var key_name = scr_key_map(global.kb_now[(23 << 0)])
                    var _ammo_name = array_get(item_name, ds_list_find_value(global.list_ammo_id, i))
                    var _ammo_qnt = ds_list_find_value(global.list_ammo_qnt, i)
                    _t = (((((("[" + key_name) + "] ") + _ammo_name) + " (") + string(_ammo_qnt)) + ")")
                    scr_draw_text_outlined(xx, ((yy - (8 * i)) + 5), _t, cc, c_black, 1, 1)
                    if (subi == 1)
                    {
                        if (_tipi_ammo > 1)
                        {
                            var _t_len = string_width(_t)
                            draw_sprite_ext(s_hud_selector, 0, ((xx - (_t_len / 2)) - 5), ((yy + 5) - (8 * i)), 1, 1, 0, cc, 1)
                        }
                    }
                }
            }
        }
    }
    var _offset_jam = 0
    if (obj_player.state == gml_Script_scr_player_state_move)
    {
        if (obj_player.jammed_slot[obj_player.weapon_slot_now] == 1)
        {
            if (obj_player.arma_now != (2 << 0) && obj_player.arma_now != (0 << 0))
            {
                draw_set_font(font0)
                draw_set_halign(fa_center)
                draw_set_valign(fa_top)
                xx = (obj_player.x - camx)
                yy = ((obj_player.y - camy) - 16)
                _offset_jam = 8
                key_name = scr_key_map(global.kb_now[(7 << 0)])
                scr_draw_text_outlined(xx, yy, "[LMB] Jam", 0x91F2FF, c_black, 1, 1)
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_move)
    {
        var _can_draw = 1
        if instance_exists(obj_npc_draw_text)
        {
            with (obj_npc_draw_text)
            {
                if (id_che_parla == obj_player.id)
                    _can_draw = 0
            }
        }
        if (global.change_ammo_now == 1)
            _can_draw = 0
        if (_can_draw == 1)
        {
            if (ds_list_size(global.list_interact) > 0)
            {
                draw_set_font(font0)
                draw_set_halign(fa_center)
                draw_set_valign(fa_middle)
                xx = (obj_player.x - camx)
                yy = (((obj_player.y - camy) - 16) - _offset_jam)
                for (i = 0; i < ds_list_size(global.list_interact); i++)
                {
                    subi = 0
                    cc = c_white
                    if (global.p_int_instance_id == i)
                    {
                        subi = 1
                        cc = 0x91F2FF
                    }
                    key_name = scr_key_map(global.kb_now[(6 << 0)])
                    tt = array_get(p_int_text, ds_list_find_value(global.list_interact, i))
                    if (ds_list_find_value(global.list_interact, i) == (5 << 0))
                    {
                        if (room == room1)
                        {
                            if (obj_player.y > obj_map_generator.map_height)
                                tt = "Exit"
                        }
                    }
                    if (ds_list_find_value(global.list_interact, i) == (1 << 0))
                    {
                        var _chest_id = ds_list_find_value(global.list_interact_id, i)
                        if instance_exists(_chest_id)
                        {
                            if (_chest_id.already_looted == 1)
                                cc = 7105644
                        }
                    }
                    scr_draw_text_outlined(xx, ((yy - (8 * i)) + 5), ((("[" + key_name) + "] ") + tt), cc, c_black, 1, 1)
                    if (subi == 1)
                    {
                        if (ds_list_size(global.list_interact) > 1)
                        {
                            _t_len = string_width(((("[" + key_name) + "] ") + tt))
                            draw_sprite_ext(s_hud_selector, 0, ((xx - (_t_len / 2)) - 5), ((yy + 5) - (8 * i)), 1, 1, 0, 0x91F2FF, 1)
                        }
                    }
                }
            }
        }
    }
    if (global.general_debug == 1)
    {
        var _show_debug = 1
        if (global.debug_hide_hud == 1)
            _show_debug = 0
        if instance_exists(obj_player)
        {
            if (room == room1 && obj_player.state == gml_Script_scr_player_state_start)
                _show_debug = 0
        }
        if (_show_debug == 1)
        {
            draw_set_font(font0)
            draw_set_halign(fa_right)
            draw_set_valign(fa_top)
            draw_text(400, 1, "DEBUG [F1]")
        }
        if (debug_menu == 1)
        {
            var box_x = 50
            var box_y = 50
            var box_w = 380
            var box_h = 170
            hh = 12
            scr_draw_box(s_box_testo2, box_x, box_y, box_w, box_h, 1)
            draw_set_font(font_quest)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            for (i = 0; i < array_length_1d(d_k); i++)
            {
                draw_text((box_x + 10), ((box_y + 3) + (i * hh)), d_k[i])
                draw_text((box_x + 90), ((box_y + 3) + (i * hh)), d_t[i])
            }
        }
        if keyboard_check_direct(vk_f2)
        {
            scr_draw_box(s_box_testo2, 25, 25, 430, 220, 1)
            draw_set_font(font0)
            draw_set_halign(fa_left)
            draw_set_valign(fa_top)
            for (i = 0; i < array_length_1d(global.sk_k); i++)
            {
                xx = 0
                hh = 0
                if (i >= 18 && i < 36)
                {
                    xx = 130
                    hh = 18
                }
                if (i >= 36 && i < 54)
                {
                    xx = 260
                    hh = 36
                }
                t = ((global.sk_na[i] + " ") + string(global.sk_k[i]))
                draw_text((30 + xx), (30 + (12 * (i - hh))), t)
            }
        }
        if keyboard_check_direct(vk_f3)
        {
            scr_draw_box(s_box_testo2, 25, 25, 430, 220, 1)
            draw_set_halign(fa_left)
            for (i = 0; i < array_length_1d(global.sk_id); i++)
            {
                var get_id = global.sk_id[i]
                draw_text(50, (50 + (10 * i)), ((string(global.sk_lvl[get_id]) + "  ") + global.sk_name[get_id]))
            }
        }
    }
    if (obj_player.state == gml_Script_scr_player_state_item_spawn)
    {
        draw_sprite(s_hud_item_spawn, 0, 0, 0)
        draw_set_font(font0)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        for (i = 0; i < 4; i++)
        {
            _c = c_white
            if (global.item_spawn_page == i)
                _c = 0x91F2FF
            draw_text_color(((global.item_spawn_subpage_x + (i * global.item_spawn_subpage_w)) + (global.item_spawn_subpage_w / 2)), (global.item_spawn_subpage_y + (global.item_spawn_subpage_w / 2)), string((i + 1)), _c, _c, _c, _c, 1)
        }
        for (i = 0; i < array_length_1d(global.item_spawn_name); i++)
        {
            _c = c_white
            if (global.item_spawn_cat == i)
                _c = 9564927
            draw_text_color(global.item_spawn_tx, (global.item_spawn_ty + (i * global.item_spawn_th)), global.item_spawn_name[i], _c, _c, _c, _c, 1)
        }
    }
    var collisione = 0
    with (obj_player)
    {
        if (state != gml_Script_scr_player_state_start)
        {
            if place_meeting(x, y, obj_solid)
                collisione = 1
        }
    }
    if (collisione == 1)
    {
        t_ = "You are stuck, hold CTRL and press WASD to move in that direction"
        draw_set_font(font_quest)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        scr_draw_text_outlined(240, 230, t_, c_white, c_black, 1, 1)
    }
    if (global.general_debug == 1)
    {
        if keyboard_check(vk_numpad1)
        {
            if (room == room1)
            {
                if instance_exists(obj_map_generator)
                {
                    o = obj_map_generator
                    _sx = 10
                    _sy = 50
                    draw_set_font(font0)
                    draw_set_halign(fa_left)
                    draw_set_valign(fa_top)
                    for (i = 0; i < (19 << 0); i++)
                    {
                        _t = string((o.tempo_generazione[i] / 1000))
                        _tt = ((_t + "   : ") + o.tempo_gen_name[i])
                        draw_text(_sx, (_sy + (i * 10)), string(_tt))
                    }
                }
            }
        }
    }
}
