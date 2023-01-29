var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (room != r_menu)
{
    if instance_exists(obj_player)
    {
        if (obj_player.state == gml_Script_scr_player_state_inventory)
        {
            if scr_mouse_inside((camx + global.show_overlay_peso_x), (camy + global.show_overlay_peso_y), global.show_overlay_peso_w, global.show_overlay_peso_h)
            {
                if instance_exists(obj_item)
                {
                    var _list_id = ds_list_create()
                    var _list_x = ds_list_create()
                    var _list_y = ds_list_create()
                    var _list_peso = ds_list_create()
                    var _list_xx = ds_list_create()
                    var _list_yy = ds_list_create()
                    with (obj_item)
                    {
                        ds_list_add(_list_id, my_id)
                        ds_list_add(_list_x, x)
                        ds_list_add(_list_y, y)
                        var _stack = qnt
                        ds_list_add(_list_peso, (item_weight[my_id] * _stack))
                        ds_list_add(_list_xx, caselle_x)
                        ds_list_add(_list_yy, caselle_y)
                    }
                    for (var i = 0; i < ds_list_size(_list_id); i++)
                    {
                        var _peso = ds_list_find_value(_list_peso, i)
                        _peso = clamp(_peso, global.show_overlay_peso_min, global.show_overlay_peso_max)
                        var _div = (_peso / global.show_overlay_peso_max)
                        var _step = ((global.show_overlay_peso_max - global.show_overlay_peso_min) / global.show_overlay_col_number)
                        var _col = c_white
                        var _a = global.show_overlay_peso_min
                        if (_peso >= 0)
                            _col = merge_color(global.show_overlay_col[0], global.show_overlay_col[1], (_peso / (_a + _step)))
                        if (_peso >= (_a + _step))
                            _col = merge_color(global.show_overlay_col[1], global.show_overlay_col[2], ((_peso - _step) / (_a + (_step * 2))))
                        if (_peso >= (_a + (_step * 2)))
                            _col = merge_color(global.show_overlay_col[2], global.show_overlay_col[3], ((_peso - (_step * 2)) / (_a + (_step * 3))))
                        if (_peso >= (_a + (_step * 3)))
                            _col = merge_color(global.show_overlay_col[3], global.show_overlay_col[4], ((_peso - (_step * 3)) / (_a + (_step * 4))))
                        if (_peso >= (_a + (_step * 4)))
                            _col = global.show_overlay_col[4]
                        var _xx = ds_list_find_value(_list_xx, i)
                        var _yy = ds_list_find_value(_list_yy, i)
                        var _x = ds_list_find_value(_list_x, i)
                        var _y = ds_list_find_value(_list_y, i)
                        draw_sprite_ext(s_16x16, 0, (_x - camx), (_y - camy), _xx, _yy, 0, _col, 0.6)
                    }
                }
            }
            if (room == r_hub)
            {
                if scr_mouse_inside((camx + global.show_overlay_soldi_x), (camy + global.show_overlay_soldi_y), global.show_overlay_soldi_w, global.show_overlay_soldi_h)
                {
                    if instance_exists(obj_item)
                    {
                        _list_id = ds_list_create()
                        _list_x = ds_list_create()
                        _list_y = ds_list_create()
                        var _list_soldi = ds_list_create()
                        _list_xx = ds_list_create()
                        _list_yy = ds_list_create()
                        with (obj_item)
                        {
                            ds_list_add(_list_id, my_id)
                            ds_list_add(_list_x, x)
                            ds_list_add(_list_y, y)
                            _stack = qnt
                            ds_list_add(_list_soldi, (item_value[my_id] * _stack))
                            ds_list_add(_list_xx, caselle_x)
                            ds_list_add(_list_yy, caselle_y)
                        }
                        for (i = 0; i < ds_list_size(_list_id); i++)
                        {
                            var _soldi = ds_list_find_value(_list_soldi, i)
                            _soldi = clamp(_soldi, global.show_overlay_soldi_min, global.show_overlay_soldi_max)
                            _div = (_soldi / global.show_overlay_soldi_max)
                            _step = ((global.show_overlay_soldi_max - global.show_overlay_soldi_min) / global.show_overlay_col_number)
                            _a = global.show_overlay_soldi_min
                            _col = c_white
                            if (_soldi >= 0)
                                _col = merge_color(global.show_overlay_col[4], global.show_overlay_col[3], (_soldi / (_a + _step)))
                            if (_soldi >= (_a + _step))
                                _col = merge_color(global.show_overlay_col[3], global.show_overlay_col[2], ((_soldi - _step) / (_a + (_step * 2))))
                            if (_soldi >= (_a + (_step * 2)))
                                _col = merge_color(global.show_overlay_col[2], global.show_overlay_col[1], ((_soldi - (_step * 2)) / (_a + (_step * 3))))
                            if (_soldi >= (_a + (_step * 3)))
                                _col = merge_color(global.show_overlay_col[1], global.show_overlay_col[0], ((_soldi - (_step * 3)) / (_a + (_step * 4))))
                            if (_soldi >= (_a + (_step * 4)))
                                _col = global.show_overlay_col[0]
                            _xx = ds_list_find_value(_list_xx, i)
                            _yy = ds_list_find_value(_list_yy, i)
                            _x = ds_list_find_value(_list_x, i)
                            _y = ds_list_find_value(_list_y, i)
                            draw_sprite_ext(s_16x16, 0, (_x - camx), (_y - camy), _xx, _yy, 0, _col, 0.5)
                        }
                    }
                }
            }
        }
    }
}
var go = 0
if (room != r_menu)
{
    if ((obj_player.state == gml_Script_scr_player_state_inventory || obj_player.state == gml_Script_scr_player_state_craft || obj_player.state == gml_Script_scr_player_show_quest || obj_player.state == gml_Script_scr_player_state_mod || obj_player.state == gml_Script_scr_player_state_item_spawn) && (!keyboard_check_direct(vk_control)))
    {
        if (show_item_stat == 1 && obj_mouse.dragging == 0 && instance_position(mouse_x, mouse_y, obj_item))
        {
            if (instance_position(mouse_x, mouse_y, obj_item) == show_item_instance_id)
            {
                go = 1
                var item_id = show_item_instance_id.my_id
                var id_instance = show_item_instance_id
            }
        }
    }
}
if (room == r_menu)
{
    if instance_position(mouse_x, mouse_y, obj_item)
    {
        if (show_item_stat == 1)
        {
            item_id = show_item_instance_id.my_id
            id_instance = show_item_instance_id
        }
    }
}
if (go == 1)
{
    if ((!instance_exists(obj_inspect)) && instance_exists(id_instance))
    {
        camx = camera_get_view_x(view_camera[0])
        camy = camera_get_view_y(view_camera[0])
        var view_w = camera_get_view_width(view_camera[0])
        var view_h = camera_get_view_height(view_camera[0])
        var bb_w = 264
        var bb_h = 120
        var left_x = ((mouse_x + 10) - camx)
        var top_y = ((mouse_y - camy) + 16)
        var bb_h_necessary = 0
        if (id_instance.item_necessary == 1)
        {
            var _list = id_instance.list_item_necessary
            var _list_scopo = id_instance.list_item_necessary_scopo
            var _size = ds_list_size(_list)
            bb_h_necessary = ((_size * 12) + 6)
        }
        left_x = clamp(left_x, 5, ((view_w - bb_w) - 5))
        top_y = clamp(top_y, 5, (((view_h - bb_h) - bb_h_necessary) - 5))
        scr_draw_box(s_box_testo1, left_x, top_y, bb_w, bb_h, 0.95)
        draw_set_font(font0)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        if (id_instance.item_necessary == 1)
        {
            scr_draw_box(s_box_testo1, left_x, (top_y + bb_h), bb_w, bb_h_necessary, 0.95)
            for (i = 0; i < _size; i++)
            {
                var _scopo = ds_list_find_value(_list_scopo, i)
                var _pre_text = ""
                var _name = ""
                if (_scopo == 0)
                {
                    var _quest_id = ds_list_find_value(_list, i)
                    if (_quest_id != -1)
                        _name = global.quest_name[_quest_id]
                    _pre_text = ("Quest: " + _name)
                }
                if (_scopo == 1)
                {
                    var _craft_id = ds_list_find_value(_list, i)
                    if (_craft_id != -1)
                    {
                        var _item_ottenuto = global.craft_get[_craft_id]
                        _name = item_name[_item_ottenuto]
                    }
                    _pre_text = ("Craft: " + _name)
                }
                draw_text((left_x + 2), (((top_y + bb_h) + 3) + (i * 12)), _pre_text)
            }
        }
        draw_set_font(font0)
        draw_set_halign(fa_center)
        draw_set_valign(fa_top)
        draw_text_color((left_x + (bb_w / 2)), (top_y + 4), item_name[item_id], c_black, c_black, c_black, c_black, 1)
        draw_text_color((left_x + (bb_w / 2)), (top_y + 3), item_name[item_id], c_white, c_white, c_white, c_white, 1)
        var _qnt = id_instance.qnt
        draw_set_halign(fa_left)
        var _t_stack = ""
        if (_qnt > 1)
            _t_stack = (" / " + string((item_weight[item_id] * _qnt)))
        var _t = (("kg: " + string(item_weight[item_id])) + _t_stack)
        draw_text((left_x + 2), (top_y + 14), _t)
        if (room != r_menu)
        {
            if (obj_player.trading == 0)
            {
                if (room == r_hub)
                {
                    var soldi_ = item_value[item_id]
                    var soldi_2 = 0
                    if (item_categoria[item_id] == (0 << 0))
                        soldi_2 = scr_get_money_weapon(id_instance)
                    var soldi_tot = (((((soldi_ * id_instance.durability) / 100) + soldi_2) * 0.2) * global.sk_k[(21 << 0)])
                    soldi_tot = round(soldi_tot)
                    _t_stack = ""
                    if (_qnt > 1)
                        _t_stack = (" / " + string((soldi_tot * id_instance.qnt)))
                    _t = (("Sell for: " + string(soldi_tot)) + _t_stack)
                    draw_text((left_x + 2), (top_y + 24), _t)
                }
            }
            else if (id_instance.position == (3 << 0))
            {
                soldi_ = item_value[item_id]
                soldi_2 = 0
                if (item_categoria[item_id] == (0 << 0))
                    soldi_2 = scr_get_money_weapon(id_instance)
                soldi_tot = ((soldi_ + soldi_2) * id_instance.qnt)
                _t_stack = ""
                if (_qnt > 1)
                    _t_stack = (" / " + string(soldi_tot))
                _t = (("Buy for: " + string((soldi_ + soldi_2))) + _t_stack)
                draw_text((left_x + 2), (top_y + 24), _t)
            }
            else
            {
                soldi_ = item_value[item_id]
                soldi_2 = 0
                if (item_categoria[item_id] == (0 << 0))
                    soldi_2 = scr_get_money_weapon(id_instance)
                soldi_tot = (((((soldi_ * id_instance.durability) / 100) + soldi_2) * 0.2) * global.sk_k[(21 << 0)])
                soldi_tot = round(soldi_tot)
                _t_stack = ""
                if (_qnt > 1)
                    _t_stack = (" / " + string((soldi_tot * id_instance.qnt)))
                _t = (("Sell for: " + string(soldi_tot)) + _t_stack)
                draw_text((left_x + 2), (top_y + 24), _t)
            }
        }
        draw_text_ext((left_x + 2), (top_y + 36), item_description[item_id], 8, ((bb_w / 2) - 6))
        var offset_amount = 12
        var stat_startx = (left_x + (bb_w / 2))
        var stat_starty = (top_y + 22)
        var s_w = sprite_get_width(s_hud_inv_stat)
        var off2 = 2
        if (item_categoria[item_id] == (0 << 0))
        {
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
                if (id_instance.mod_id[k] != -1)
                {
                    var get_id_ = id_instance.mod_id[k]
                    somma_recoil += mod_recoil[get_id_]
                    somma_ergo += mod_ergo[get_id_]
                    somma_acc += mod_acc[get_id_]
                    somma_damage += mod_damage[get_id_]
                    somma_reload_speed += mod_reload_speed[get_id_]
                }
            }
            if (obj_controller.arma_moddable[item_id] == 1)
            {
                var new_recoil = ((arma_recoil[item_id] * (1 + (somma_recoil / 100))) * (2 - global.sk_k[(33 << 0)]))
                var new_ergo = ((arma_ergo[item_id] * (1 + (somma_ergo / 100))) * global.sk_k[(33 << 0)])
                var new_acc = ((arma_precisione[item_id] * (1 + (somma_acc / 100))) * (2 - global.sk_k[(33 << 0)]))
                var new_damage = ((arma_damage[item_id] * (1 + (somma_damage / 100))) * global.sk_k[(33 << 0)])
                var new_reload_speed = ((arma_reload_time[item_id] * (1 + (somma_reload_speed / 100))) * (2 - global.sk_k[(33 << 0)]))
            }
            else
            {
                new_recoil = arma_recoil[item_id]
                new_ergo = arma_ergo[item_id]
                new_acc = arma_precisione[item_id]
                new_damage = arma_damage[item_id]
                new_reload_speed = arma_reload_time[item_id]
            }
            var slot_offset = (offset_amount * 0)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "DURABILITY", 100, id_instance.durability, 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(floor(id_instance.durability)) + "%"))
            slot_offset = (offset_amount * 1)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "DAMAGE", 35, new_damage, 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), string(round(new_damage)))
            slot_offset = (offset_amount * 2)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "ACCURACY", 10, new_acc, 1)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), string(round((new_acc * 10))))
            slot_offset = (offset_amount * 3)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "RECOIL", 8, new_recoil, 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), string(round((new_recoil * 20))))
            slot_offset = (offset_amount * 4)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "ERGONOMICS", 1, new_ergo, 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), string(round((new_ergo * 100))))
            slot_offset = (offset_amount * 5)
            draw_text(stat_startx, (stat_starty + slot_offset), "FIRE RATE")
            if (arma_fire_mode[item_id] == (1 << 0))
                draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), (string(((60 / arma_rate_of_fire[item_id]) * 60)) + " rpm"))
            else if (arma_fire_mode[item_id] == (0 << 0))
                draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), (string(((60 / arma_rate_of_fire[item_id]) * 60)) + " rpm"))
            else if (arma_fire_mode[item_id] == (2 << 0))
                draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), "Bolt-Action")
            slot_offset = (offset_amount * 6)
            var stat_ = 0
            var _id_mag = id_instance.mod_id[(4 << 0)]
            if (_id_mag != -1)
                stat_ = mod_magazine_size[_id_mag]
            else
                stat_ = arma_magazine[item_id]
            draw_text(stat_startx, (stat_starty + slot_offset), "MAGAZINE")
            draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), string(stat_))
            slot_offset = (offset_amount * 7)
            draw_text(stat_startx, (stat_starty + slot_offset), "CALIBER")
            var _caliber_id = arma_caliber[item_id]
            draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), string(caliber_name[_caliber_id]))
        }
        if (item_categoria[item_id] == (6 << 0))
        {
            slot_offset = (offset_amount * 0)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "DURABILITY", 100, id_instance.durability, 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(floor(id_instance.durability)) + "%"))
            slot_offset = (offset_amount * 1)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "MELEE", 100, (armor_pierce[item_id] * 100), 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(round((armor_pierce[item_id] * 100))) + "%"))
            slot_offset = (offset_amount * 2)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "RADIATION", 250, armor_radiation[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), string(armor_radiation[item_id]))
            slot_offset = (offset_amount * 3)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "ANOMALY", 100, armor_anomaly[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(armor_anomaly[item_id]) + "%"))
            slot_offset = (offset_amount * 4)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "FRAGILITY", 75, armor_dur_damage[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), string(round(armor_dur_damage[item_id])))
            slot_offset = (offset_amount * 5)
            draw_text(stat_startx, (stat_starty + slot_offset), "CLASS")
            var _armor_class = armor_class[item_id]
            draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), string(_armor_class))
        }
        if (item_categoria[item_id] == (2 << 0))
        {
            var u = 0
            slot_offset = (offset_amount * u)
            draw_text(stat_startx, stat_starty, "DURATION")
            var t = ((med_duration[item_id] / 60) / global.sk_k[(29 << 0)])
            draw_text((stat_startx + off_n_v), stat_starty, (string(t) + " s"))
            u++
            slot_offset = (offset_amount * u)
            draw_text(stat_startx, (stat_starty + slot_offset), "MOVEMENT")
            var _value = med_can_move[item_id]
            if (_value == 1)
                _t = "YES"
            else
                _t = "NO"
            draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), _t)
            if (_value == 1)
            {
                u++
                var c = scr_choose_color_stat(med_speed_multiplier[item_id], 0)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "MOV. SPEED")
                draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), (string((med_speed_multiplier[item_id] * 100)) + " %"))
            }
            if (med_hp[item_id] != 0)
            {
                u++
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "HEALTH")
                draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), string(med_hp[item_id]))
            }
            if (med_bleed[item_id] != 0)
            {
                u++
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "BLEED")
                draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), string(med_bleed[item_id]))
            }
            if (med_wound[item_id] != 0)
            {
                u++
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "WOUND")
                draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), string(med_wound[item_id]))
            }
            if (med_radiation[item_id] != 0)
            {
                u++
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "RADIATION")
                draw_text((stat_startx + off_n_v), (stat_starty + slot_offset), string(med_radiation[item_id]))
            }
        }
        if (item_categoria[item_id] == (3 << 0))
        {
            var kk = 1
            if (id_instance.created_from_player == 1)
                kk = global.sk_k[(36 << 0)]
            var _off = 0
            if (consumable_energy[item_id] != 0)
            {
                slot_offset = (offset_amount * _off)
                c = scr_choose_color_stat(consumable_energy[item_id], 1)
                draw_text(stat_startx, stat_starty, "HUNGER")
                draw_text_color((stat_startx + off_n_v), stat_starty, string(ceil((consumable_energy[item_id] * kk))), c, c, c, c, 1)
                _off++
            }
            if (consumable_thirst[item_id] != 0)
            {
                slot_offset = (offset_amount * _off)
                c = scr_choose_color_stat(consumable_thirst[item_id], 1)
                draw_text(stat_startx, (stat_starty + slot_offset), "THIRST")
                draw_text_color((stat_startx + off_n_v), (stat_starty + slot_offset), string(ceil((consumable_thirst[item_id] * kk))), c, c, c, c, 1)
                _off++
            }
            if (consumable_fatigue[item_id] != 0)
            {
                slot_offset = (offset_amount * _off)
                c = scr_choose_color_stat(consumable_fatigue[item_id], 1)
                draw_text(stat_startx, (stat_starty + slot_offset), "FATIGUE")
                draw_text_color((stat_startx + off_n_v), (stat_starty + slot_offset), string(ceil((consumable_fatigue[item_id] * kk))), c, c, c, c, 1)
                _off++
            }
            if (consumable_radiation[item_id] != 0)
            {
                slot_offset = (offset_amount * _off)
                c = scr_choose_color_stat(consumable_radiation[item_id], 0)
                draw_text(stat_startx, (stat_starty + slot_offset), "RADIATION")
                draw_text_color((stat_startx + off_n_v), (stat_starty + slot_offset), string(consumable_radiation[item_id]), c, c, c, c, 1)
                _off++
            }
        }
        if (item_categoria[item_id] == (7 << 0))
        {
            slot_offset = (offset_amount * 0)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "MIN DUR.", 100, repair_condition_min[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(round(repair_condition_min[item_id])) + "%"))
            slot_offset = (offset_amount * 1)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "MAX DUR.", 100, repair_condition_max[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(round(repair_condition_max[item_id])) + "%"))
            slot_offset = (offset_amount * 2)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "COND. GAIN", 100, repair_condition_gain[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(round(repair_condition_gain[item_id])) + "%"))
            slot_offset = (offset_amount * 3)
            draw_text(stat_startx, (stat_starty + slot_offset), "CALIBER")
            var how_many_caliber = array_length_2d(repair_caliber, item_id)
            for (i = 0; i < how_many_caliber; i++)
            {
                _caliber_id = repair_caliber[item_id][i]
                draw_text((stat_startx + off_n_v), ((stat_starty + slot_offset) + (10 * i)), caliber_name[_caliber_id])
            }
        }
        if (item_categoria[item_id] == (8 << 0))
        {
            slot_offset = (offset_amount * 0)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "MIN DUR.", 100, repair_condition_min[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(round(repair_condition_min[item_id])) + "%"))
            slot_offset = (offset_amount * 1)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "MAX DUR.", 100, repair_condition_max[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(round(repair_condition_max[item_id])) + "%"))
            slot_offset = (offset_amount * 2)
            scr_scala_item_stat(stat_startx, (stat_starty + slot_offset), "COND. GAIN", 100, repair_condition_gain[item_id], 0)
            draw_text((((stat_startx + off_n_v) + s_w) + off2), (stat_starty + slot_offset), (string(round(repair_condition_gain[item_id])) + "%"))
        }
        if (item_categoria[item_id] == (9 << 0))
        {
            u = -1
            var off = (off_n_v + 15)
            if (inj_duration[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_duration[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "DURATION")
                draw_text((stat_startx + off), (stat_starty + slot_offset), (string((inj_duration[item_id] div 60)) + " s"))
            }
            if (inj_max_hp[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_max_hp[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "MAX HP")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(inj_max_hp[item_id]), c, c, c, c, 1)
            }
            if (inj_hp_regen[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_hp_regen[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "HP REGEN/s")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string((inj_hp_regen[item_id] * 60)), c, c, c, c, 1)
            }
            if (inj_bleed_rec[item_id] != 0)
            {
                u++
                c = 0x93D693
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "bleed rec/s")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), "Fast", c, c, c, c, 1)
            }
            if (inj_bleed_immune[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_bleed_immune[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "bleed immune")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), "yes", c, c, c, c, 1)
            }
            if (inj_stamina_max[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_stamina_max[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "max stamina")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(inj_stamina_max[item_id]), c, c, c, c, 1)
            }
            if (inj_stamina_regen[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_stamina_regen[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "stamina reg/s")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string((inj_stamina_regen[item_id] * 60)), c, c, c, c, 1)
            }
            if (inj_max_weigth[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_max_weigth[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "max weigth")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(inj_max_weigth[item_id]), c, c, c, c, 1)
            }
            if (inj_rad_regen[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_rad_regen[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "rad reg/s")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string((inj_rad_regen[item_id] * 60)), c, c, c, c, 1)
            }
            if (inj_rad_def[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_rad_def[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "rad defence")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(inj_rad_def[item_id]), c, c, c, c, 1)
            }
            if (inj_hunger[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_hunger[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "hunger")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(inj_hunger[item_id]), c, c, c, c, 1)
            }
            if (inj_hunger_regen[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_hunger_regen[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "hunger/s")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string((inj_hunger_regen[item_id] * 60)), c, c, c, c, 1)
            }
            if (inj_thirst[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_thirst[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "thirst")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(inj_thirst[item_id]), c, c, c, c, 1)
            }
            if (inj_thirst_regen[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(inj_thirst_regen[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "thirst/s")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string((inj_thirst_regen[item_id] * 60)), c, c, c, c, 1)
            }
        }
        if (item_categoria[item_id] == (5 << 0))
        {
            slot_offset = (offset_amount * 0)
            c = c_white
            draw_text(stat_startx, stat_starty, "WEIGHT")
            draw_text_color((stat_startx + off_n_v), stat_starty, (string(backpack_weight[item_id]) + " KG"), c, c, c, c, 1)
            slot_offset = (offset_amount * 1)
            c = scr_choose_color_stat(backpack_movement_speed[item_id], 1)
            draw_text(stat_startx, (stat_starty + slot_offset), "MOV. SPEED")
            draw_text_color((stat_startx + off_n_v), (stat_starty + slot_offset), (string(backpack_movement_speed[item_id]) + " %"), c, c, c, c, 1)
            slot_offset = (offset_amount * 2)
            c = scr_choose_color_stat(backpack_ergonomic[item_id], 1)
            draw_text(stat_startx, (stat_starty + slot_offset), "ERGONOMIC")
            draw_text_color((stat_startx + off_n_v), (stat_starty + slot_offset), (string(backpack_ergonomic[item_id]) + " %"), c, c, c, c, 1)
        }
        if (item_categoria[item_id] == (17 << 0))
        {
            u = -1
            off = (off_n_v + 15)
            if (mod_recoil[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(mod_recoil[item_id], 0)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "RECOIL")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(mod_recoil[item_id])), c, c, c, c, 1)
            }
            if (mod_ergo[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(mod_ergo[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "ERGONOMIC")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(mod_ergo[item_id])), c, c, c, c, 1)
            }
            if (mod_acc[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(mod_acc[item_id], 0)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "ACCURACY")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(mod_acc[item_id])), c, c, c, c, 1)
            }
            if (mod_damage[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(mod_damage[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "DAMAGE")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(mod_damage[item_id])), c, c, c, c, 1)
            }
            if (mod_reload_speed[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(mod_reload_speed[item_id], 0)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "RELOAD SPEED")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(mod_reload_speed[item_id])), c, c, c, c, 1)
            }
            if (mod_type[item_id] == (1 << 0))
            {
                u++
                slot_offset = (offset_amount * u)
                var _n_foregrip = "no"
                if (mod_handguard_slot[item_id][0] == 1)
                    _n_foregrip = "yes"
                draw_text(stat_startx, (stat_starty + slot_offset), "FOREGRIP")
                draw_text((stat_startx + off), (stat_starty + slot_offset), _n_foregrip)
                u++
                slot_offset = (offset_amount * u)
                var _n_attachment = 0
                if (mod_handguard_slot[item_id][1] == 1)
                    _n_attachment++
                if (mod_handguard_slot[item_id][2] == 1)
                    _n_attachment++
                if (mod_handguard_slot[item_id][3] == 1)
                    _n_attachment++
                draw_text(stat_startx, (stat_starty + slot_offset), "ATTACHMENTS")
                draw_text((stat_startx + off), (stat_starty + slot_offset), string(_n_attachment))
            }
            if (mod_type[item_id] == (4 << 0))
            {
                u++
                slot_offset = (offset_amount * u)
                var _capacity = mod_magazine_size[item_id]
                draw_text(stat_startx, (stat_starty + slot_offset), "CAPACITY")
                draw_text((stat_startx + off), (stat_starty + slot_offset), string(_capacity))
            }
            u++
            slot_offset = (offset_amount * u)
            draw_text(stat_startx, (stat_starty + slot_offset), "COMPATIBLE WITH:")
            u++
            slot_offset = (offset_amount * u)
            var _text = ""
            if (mod_weapon_all[item_id] == 1)
                _text = "all weapons"
            if (mod_weapon_all[item_id] == 0)
            {
                for (i = 0; i < array_length_2d(mod_weapon_id, item_id); i++)
                {
                    _name = item_name[mod_weapon_id[item_id][i]]
                    _text = ((_text + _name) + ", ")
                }
            }
            draw_text_ext(stat_startx, (stat_starty + slot_offset), _text, 12, 135)
        }
        if (item_categoria[item_id] == (1 << 0))
        {
            u = -1
            off = (off_n_v + 15)
            u++
            c = c_white
            slot_offset = (offset_amount * u)
            draw_text(stat_startx, (stat_starty + slot_offset), "PENETRATION")
            draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(ammo_pen[item_id])), c, c, c, c, 1)
            if (ammo_damage[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(ammo_damage[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "DAMAGE %")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(ammo_damage[item_id])), c, c, c, c, 1)
            }
            if (ammo_acc[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(ammo_acc[item_id], 1)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "ACCURACY %")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(ammo_acc[item_id])), c, c, c, c, 1)
            }
            if (ammo_recoil[item_id] != 0)
            {
                u++
                c = scr_choose_color_stat(ammo_recoil[item_id], 0)
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "RECOIL %")
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), string(abs(ammo_recoil[item_id])), c, c, c, c, 1)
            }
            if (ammo_dur[item_id] != 0)
            {
                u++
                c = c_white
                slot_offset = (offset_amount * u)
                draw_text(stat_startx, (stat_starty + slot_offset), "DUR. BURN")
                _t = abs(ammo_dur[item_id])
                var _t1 = string_format(_t, 1, 3)
                draw_text_color((stat_startx + off), (stat_starty + slot_offset), _t1, c, c, c, c, 1)
            }
        }
    }
}
