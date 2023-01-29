function scr_player_state_choose_map() //gml_Script_scr_player_state_choose_map
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var o = obj_controller
    if global.kb_pressed[(5 << 0)]
        state = gml_Script_scr_player_state_move
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_state_move
        obj_controller.can_pause = 0
    }
    if scr_mouse_inside((camx + o.b_go_x), (camy + o.b_go_y), o.b_go_w, o.b_go_h)
        o.b_go_hover = 1
    else
        o.b_go_hover = 0
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + 460), camy, 20, 19)
            state = gml_Script_scr_player_state_move
        if (o.b_go_hover == 1)
        {
            if (o.map_selected != -1)
            {
                if (global.player_money >= o.area_cost[o.map_selected])
                {
                    var _can_go = 1
                    if (o.map_selected == (3 << 0) || o.map_selected == (4 << 0) || o.map_selected == (6 << 0))
                    {
                        var already_done = global.quest_unique_done[(72 << 0)]
                        if (already_done == 0)
                        {
                            _can_go = 0
                            scr_draw_text_with_box("Unreachable: talk with the train conductor")
                        }
                    }
                    if (global.general_debug == 1)
                        _can_go = 1
                    if (_can_go == 1)
                    {
                        ini_open(global.save_inventory)
                        ini_write_real("Map", "Map id", o.map_selected)
                        ini_close()
                        scr_save_skill()
                        scr_save_exp()
                        scr_save_time()
                        scr_save_player_status()
                        global.tot_inv_value_now = 0
                        ini_open(global.save_inventory)
                        var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                        if (number_of_items > 0)
                        {
                            for (var i = 1; i <= number_of_items; i++)
                            {
                                var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                                var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                                var _value = ((item_value[temp_item_id] * temp_item_qnt) * 0.2)
                                global.tot_inv_value_now += _value
                                var _value_mods = 0
                                if (obj_controller.arma_moddable[temp_item_id] == 1)
                                {
                                    for (var j = 0; j < (10 << 0); j++)
                                    {
                                        var _id = ini_read_real("Inventory", ((("mod_" + string(j)) + "_") + string(i)), arma_mod_id[temp_item_id][j])
                                        if (_id != -1)
                                        {
                                            var _value_mod = (item_value[_id] * 0.2)
                                            _value_mods += _value_mod
                                        }
                                    }
                                }
                                global.tot_inv_value_now += _value_mods
                            }
                        }
                        ini_write_real("inv_value", "now", global.tot_inv_value_now)
                        ini_close()
                        ga_addDesignEvent("Key:Pressed:Up")
                        ini_open(global.save_inventory)
                        number_of_items = ini_read_real("Inventory", "Number of items", 0)
                        if (number_of_items > 0)
                        {
                            for (i = 1; i <= number_of_items; i++)
                            {
                                temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                                var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                                var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                                var toll = 2
                                if (temp_item_id != -1 && temp_item_id != (0 << 0) && temp_item_id != (2 << 0))
                                {
                                    if (temp_item_x >= (200 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (31 - toll) && temp_item_y <= (63 + toll))
                                    {
                                        var _name = scr_ga_get_name(temp_item_id)
                                        var _text = ("WeaponUsed:" + _name)
                                        ga_addDesignEvent(_text, 1)
                                    }
                                    if (temp_item_x >= (200 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (76 - toll) && temp_item_y <= (108 + toll))
                                    {
                                        _name = scr_ga_get_name(temp_item_id)
                                        _text = ("WeaponUsed:" + _name)
                                        ga_addDesignEvent(_text, 1)
                                    }
                                    if (temp_item_x >= (248 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (119 - toll) && temp_item_y <= (151 - toll))
                                    {
                                        _name = scr_ga_get_name(temp_item_id)
                                        _text = ("BackpackUsed:" + _name)
                                        ga_addDesignEvent(_text, 1)
                                    }
                                    if (temp_item_x >= (200 - toll) && temp_item_x <= (232 + toll) && temp_item_y >= (119 - toll) && temp_item_y <= (151 - toll))
                                    {
                                        _name = scr_ga_get_name(temp_item_id)
                                        _text = ("ArmorUsed:" + _name)
                                        ga_addDesignEvent(_text, 1)
                                    }
                                    if (temp_item_x >= (224 - toll) && temp_item_x <= (256 + toll) && temp_item_y >= (162 - toll) && temp_item_y <= (194 - toll))
                                    {
                                        _name = scr_ga_get_name(temp_item_id)
                                        _text = ("HeadsetUsed:" + _name)
                                        ga_addDesignEvent(_text, 1)
                                    }
                                }
                            }
                        }
                        ini_close()
                        scr_save_or_load(1)
                        scr_create_backup()
                        room_goto(room1)
                    }
                }
                else
                    scr_draw_text_with_box("Not enough roubles!")
            }
        }
        if scr_mouse_inside((camx + 32), (camy + 80), o.map_w, o.map_w)
            o.map_selected = (1 << 0)
        if scr_mouse_inside((camx + 144), (camy + 80), o.map_w, o.map_w)
            o.map_selected = (2 << 0)
        if scr_mouse_inside((camx + 256), (camy + 80), o.map_w, o.map_w)
            o.map_selected = (3 << 0)
        if scr_mouse_inside((camx + 368), (camy + 80), o.map_w, o.map_w)
            o.map_selected = (4 << 0)
        if scr_mouse_inside((camx + 368), (camy + 176), o.map_w, o.map_w)
            scr_draw_text_with_box("In development")
        if scr_mouse_inside((camx + 32), (camy + 176), o.map_w, o.map_w)
            o.map_selected = (6 << 0)
    }
    return;
}

