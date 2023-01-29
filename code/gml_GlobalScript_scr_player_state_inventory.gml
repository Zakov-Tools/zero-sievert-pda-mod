function scr_player_state_inventory() //gml_Script_scr_player_state_inventory
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if (obj_player.trading == 1)
    {
        if scr_mouse_inside(((camx + 240) - 48), (camy + 36), 96, 16)
        {
            if mouse_check_button_pressed(mb_left)
            {
                var can_buy = 0
                var deal_mine = scr_get_money_deal(1)
                var deal_trader = scr_get_money_deal(0)
                var money_trader_ = global.speaker_nearest.money_trader
                var deal = (deal_mine - deal_trader)
                if (deal_mine != 0 || deal_trader != 0)
                {
                    if (sign(deal) >= 0)
                    {
                        if (deal <= money_trader_)
                        {
                            can_buy = 1
                            audio_play_sound(snd_deal, 2, false)
                        }
                        else
                            scr_draw_text_with_box("Trader does not have enough roubles")
                    }
                    if (sign(deal) < 0)
                    {
                        if ((-deal) <= global.player_money)
                        {
                            can_buy = 1
                            audio_play_sound(snd_deal, 2, false)
                        }
                        else
                            scr_draw_text_with_box("You do not have enough Roubles!")
                    }
                }
                var kk = 0
                var _array_id = ds_list_create()
                with (obj_item)
                {
                    if (position == (13 << 0))
                        ds_list_add(_array_id, my_id)
                }
                if (ds_list_size(_array_id) > 0)
                {
                    var _space = scr_check_if_item_fit(_array_id)
                    if (_space == 0)
                    {
                        can_buy = 0
                        scr_draw_text_with_box("You don't have enough space")
                    }
                }
                if (can_buy == 1)
                {
                    global.player_money += deal
                    scr_level_up_skill((12 << 0), (deal_mine * global.rate_charisma))
                    global.stat_amount[(5 << 0)] += deal_mine
                    ini_open(global.save_general)
                    if (room == r_hub)
                    {
                        global.trader_money_all += (-deal)
                        global.speaker_nearest.money_trader = global.trader_money_all
                        ini_write_real("traders", "money", global.trader_money_all)
                    }
                    else
                    {
                        global.speaker_nearest.money_trader += (-deal)
                        var name_ = (global.speaker_nearest.npc_name[global.speaker_nearest.npc_id] + "_trader")
                        ini_write_real(name_, "money", global.speaker_nearest.money_trader)
                    }
                    ini_close()
                    with (obj_item)
                    {
                        if (position == (14 << 0))
                        {
                            instance_destroy()
                            scr_sistema_equip()
                        }
                        if (position == (13 << 0))
                            scr_move_item_quickly(id, (13 << 0), (0 << 0))
                    }
                }
            }
        }
    }
    var _exit = 0
    if global.kb_pressed[(5 << 0)]
        _exit = 1
    if keyboard_check_pressed(vk_escape)
        _exit = 1
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside(((camx + 480) - 16), camy, 17, 17)
            _exit = 1
    }
    if keyboard_check_pressed(vk_escape)
    {
        _exit = 1
        obj_controller.can_pause = 0
    }
    if instance_exists(obj_arms_player_parent)
        _exit = 1
    if global.kb_pressed[(6 << 0)]
    {
        if (looting == 1 && trading == 0)
            _exit = 1
        if (looting_player_stash == 1)
            _exit = 1
    }
    if (obj_player.trading == 1)
    {
        if (_exit == 1)
        {
            kk = 0
            _array_id = ds_list_create()
            with (obj_item)
            {
                if (position == (14 << 0))
                    ds_list_add(_array_id, my_id)
            }
            if (ds_list_size(_array_id) > 0)
            {
                _space = scr_check_if_item_fit(_array_id)
                if (_space == 0)
                {
                    _exit = 0
                    scr_draw_text_with_box("Not enough space in the inventory")
                }
            }
        }
        if (_exit == 0)
        {
            var _change_page = 0
            if mouse_check_button_pressed(mb_left)
            {
                for (var i = 0; i < 12; i++)
                {
                    if scr_mouse_inside((camx + global.page_trader_x[i]), (camy + global.page_trader_y[i]), global.page_trader_w, global.page_trader_w)
                    {
                        if (global.page_trader != i)
                        {
                            _change_page = 1
                            global.page_trader = i
                            with (obj_item)
                            {
                                if (x > (camx + 304))
                                    instance_destroy()
                            }
                            scr_load_trader_item()
                        }
                    }
                }
            }
        }
    }
    if (looting_player_stash == 1)
    {
        var o = obj_controller
        var _page_clicked = global.storage_page_now
        if (mouse_check_button_pressed(mb_left) && (!instance_exists(obj_inspect)))
        {
            var _x = o.sto_startx
            var _y = o.sto_starty
            var _w = o.sto_w
            for (i = 0; i < o.sto_slot_max; i++)
            {
                if scr_mouse_inside((camx + _x), ((camy + _y) + (i * _w)), _w, _w)
                    _page_clicked = i
            }
            var _can_change = 1
            if (_page_clicked > (global.storage_slot_unlocked - 1))
            {
                _can_change = 0
                scr_draw_text_with_box("You have not yet unlocked this slot")
            }
            if (_can_change == 1)
            {
                if (global.storage_page_now != _page_clicked)
                {
                    scr_save_storage()
                    global.storage_page_now = _page_clicked
                    o.loot_name = ("stash " + string((global.storage_page_now + 1)))
                    with (obj_item)
                    {
                        if (position == (3 << 0))
                            instance_destroy()
                    }
                    scr_load_storage()
                }
            }
        }
    }
    if (_exit == 1)
    {
        audio_play_sound(snd_inventory_open, 2, false)
        global.svela_item_now = 0
        camera_set_view_size(view_camera[0], 480, 270)
        with (obj_mouse)
        {
            if (dragging == 1)
            {
                item_id_dragged.x = prev_x
                item_id_dragged.y = prev_y
                item_id_dragged.rotation = prev_rotation
                item_id_dragged = -4
                dragging = 0
            }
        }
        if instance_exists(obj_inspect)
        {
            with (obj_inspect)
                instance_destroy()
        }
        global.numero_di_item = 0
        if (trading == 1)
        {
            with (obj_item)
            {
                if (position == (14 << 0))
                    scr_move_item_quickly(id, (14 << 0), (0 << 0))
                if (position == (13 << 0))
                    scr_move_item_quickly(id, (13 << 0), (3 << 0))
            }
        }
        with (obj_item)
        {
            if (obj_player.trading == 1)
            {
                if (x < camx)
                {
                    position = prev_position
                    x += 320
                }
            }
        }
        scr_check_item_position()
        global.numero_di_item = 0
        if (room != room_tutorial)
            ini_open(global.save_inventory)
        else
            ini_open("tutorial_save.ini")
        ini_section_delete("Inventory")
        with (obj_item)
        {
            if (position == (0 << 0) || position == (1 << 0) || position == (2 << 0) || position == (4 << 0) || position == (5 << 0) || position == (6 << 0) || position == (7 << 0) || position == (8 << 0) || position == (9 << 0) || position == (11 << 0) || position == (12 << 0) || position == (10 << 0))
            {
                global.numero_di_item += 1
                my_x = (x - camx)
                my_y = (y - camy)
                ini_write_real("Inventory", ("Item_id_" + string(global.numero_di_item)), my_id)
                ini_write_real("Inventory", ("Item_qnt_" + string(global.numero_di_item)), qnt)
                ini_write_real("Inventory", ("Item_x_" + string(global.numero_di_item)), my_x)
                ini_write_real("Inventory", ("Item_y_" + string(global.numero_di_item)), my_y)
                ini_write_real("Inventory", ("rotation" + string(global.numero_di_item)), rotation)
                ini_write_string("Inventory", ("Name_" + string(global.numero_di_item)), item_name[my_id])
                ini_write_real("Inventory", ("item_ammo" + string(global.numero_di_item)), ammo_adesso)
                ini_write_real("Inventory", ("item_ammo_id" + string(global.numero_di_item)), ammo_now_id)
                ini_write_real("Inventory", ("created_from_player" + string(global.numero_di_item)), created_from_player)
                ini_write_real("Inventory", ("durability" + string(global.numero_di_item)), durability)
                ini_write_real("Inventory", ((("mod_" + string((0 << 0))) + "_") + string(global.numero_di_item)), mod_id[(0 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((1 << 0))) + "_") + string(global.numero_di_item)), mod_id[(1 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((3 << 0))) + "_") + string(global.numero_di_item)), mod_id[(3 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((2 << 0))) + "_") + string(global.numero_di_item)), mod_id[(2 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((5 << 0))) + "_") + string(global.numero_di_item)), mod_id[(5 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((6 << 0))) + "_") + string(global.numero_di_item)), mod_id[(6 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((4 << 0))) + "_") + string(global.numero_di_item)), mod_id[(4 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((7 << 0))) + "_") + string(global.numero_di_item)), mod_id[(7 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((8 << 0))) + "_") + string(global.numero_di_item)), mod_id[(8 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((9 << 0))) + "_") + string(global.numero_di_item)), mod_id[(9 << 0)])
                ini_write_real("Inventory", ((("mod_" + string((10 << 0))) + "_") + string(global.numero_di_item)), mod_id[(10 << 0)])
            }
        }
        ini_write_real("Inventory", "Number of items", global.numero_di_item)
        ini_close()
        global.am_i_discarding = 0
        if (looting == 0 && trading == 0 && looting_player_stash == 0)
        {
            with (obj_item)
            {
                if (position == (3 << 0))
                    global.am_i_discarding = 1
            }
        }
        if (looting == 1 || trading == 1 || looting_player_stash == 1)
            global.am_i_discarding = 0
        if (global.am_i_discarding == 1)
        {
            var chest = instance_create_depth(x, y, (-y), obj_chest_general)
            chest.tipo = (0 << 0)
            chest.quanti_item_effettivi = 0
            ini_open("all_loot.ini")
            with (obj_item)
            {
                var my_tempx = ((x - camx) - 312)
                var my_tempy = ((y - camy) - 63)
                if (position == (3 << 0))
                {
                    ini_write_real(("chest_" + string(chest.id)), ("item_id_N_" + string(chest.quanti_item_effettivi)), my_id)
                    ini_write_real(("chest_" + string(chest.id)), ("item_quantità_N_" + string(chest.quanti_item_effettivi)), qnt)
                    ini_write_real(("chest_" + string(chest.id)), ("item_x_N_" + string(chest.quanti_item_effettivi)), my_tempx)
                    ini_write_real(("chest_" + string(chest.id)), ("item_y_N_" + string(chest.quanti_item_effettivi)), my_tempy)
                    ini_write_real(("chest_" + string(chest.id)), ("rotation_N_" + string(chest.quanti_item_effettivi)), rotation)
                    ini_write_real(("chest_" + string(chest.id)), ("visto?_N_" + string(chest.quanti_item_effettivi)), 1)
                    ini_write_real(("chest_" + string(chest.id)), ("created_from_player_N_" + string(chest.quanti_item_effettivi)), created_from_player)
                    if (item_categoria[my_id] == (0 << 0))
                        ini_write_real(("chest_" + string(chest.id)), ("item_ammo_N_" + string(chest.quanti_item_effettivi)), ammo_adesso)
                    else
                        ini_write_real(("chest_" + string(chest.id)), ("item_ammo_N_" + string(chest.quanti_item_effettivi)), 0)
                    ini_write_real(("chest_" + string(chest.id)), ("item_ammo_id_N_" + string(chest.quanti_item_effettivi)), ammo_now_id)
                    if (item_categoria[my_id] == (6 << 0) || item_categoria[my_id] == (0 << 0))
                        ini_write_real(("chest_" + string(chest.id)), ("durability_N_" + string(chest.quanti_item_effettivi)), durability)
                    else
                        ini_write_real(("chest_" + string(chest.id)), ("durability_N_" + string(chest.quanti_item_effettivi)), 0)
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((0 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(0 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((1 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(1 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((3 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(3 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((2 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(2 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((5 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(5 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((6 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(6 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((4 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(4 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((7 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(7 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((8 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(8 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((9 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(9 << 0)])
                    ini_write_real(("chest_" + string(chest.id)), (((("mod_" + string((10 << 0))) + "_") + "_N_") + string(chest.quanti_item_effettivi)), mod_id[(10 << 0)])
                    chest.quanti_item_effettivi += 1
                }
            }
            ini_close()
        }
        ini_open("all_loot.ini")
        if (looting == 1 && trading == 0)
        {
            looting = 0
            if instance_exists(obj_chest_general)
            {
                var chest_nearest = ds_list_find_value(global.list_interact_id, global.p_int_instance_id)
                chest_nearest.quanti_item_effettivi = 0
                var _sound = global.chest_sound_close[chest_nearest.chest_sound_type[chest_nearest.tipo]]
                audio_play_sound(_sound, 10, false)
                ini_section_delete(("chest_" + string(chest_nearest.id)))
                with (obj_item)
                {
                    my_tempx = ((x - camx) - 312)
                    my_tempy = ((y - camy) - 63)
                    if (position == (3 << 0))
                    {
                        ini_write_real(("chest_" + string(chest_nearest.id)), ("item_id_N_" + string(chest_nearest.quanti_item_effettivi)), my_id)
                        ini_write_real(("chest_" + string(chest_nearest.id)), ("item_quantità_N_" + string(chest_nearest.quanti_item_effettivi)), qnt)
                        ini_write_real(("chest_" + string(chest_nearest.id)), ("item_x_N_" + string(chest_nearest.quanti_item_effettivi)), my_tempx)
                        ini_write_real(("chest_" + string(chest_nearest.id)), ("item_y_N_" + string(chest_nearest.quanti_item_effettivi)), my_tempy)
                        ini_write_real(("chest_" + string(chest_nearest.id)), ("rotation_N_" + string(chest_nearest.quanti_item_effettivi)), rotation)
                        ini_write_real(("chest_" + string(chest_nearest.id)), ("created_from_player_N_" + string(chest_nearest.quanti_item_effettivi)), created_from_player)
                        if (item_categoria[my_id] == (0 << 0))
                            ini_write_real(("chest_" + string(chest_nearest.id)), ("item_ammo_N_" + string(chest_nearest.quanti_item_effettivi)), ammo_adesso)
                        else
                            ini_write_real(("chest_" + string(chest_nearest.id)), ("item_ammo_N_" + string(chest_nearest.quanti_item_effettivi)), 0)
                        ini_write_real(("chest_" + string(chest_nearest.id)), ("item_ammo_id_N_" + string(chest_nearest.quanti_item_effettivi)), ammo_now_id)
                        if (item_categoria[my_id] == (6 << 0) || item_categoria[my_id] == (0 << 0))
                            ini_write_real(("chest_" + string(chest_nearest.id)), ("durability_N_" + string(chest_nearest.quanti_item_effettivi)), durability)
                        else
                            ini_write_real(("chest_" + string(chest_nearest.id)), ("durability_N_" + string(chest_nearest.quanti_item_effettivi)), 0)
                        if (visto == 0)
                            ini_write_real(("chest_" + string(chest_nearest.id)), ("visto?_N_" + string(chest_nearest.quanti_item_effettivi)), 0)
                        else
                            ini_write_real(("chest_" + string(chest_nearest.id)), ("visto?_N_" + string(chest_nearest.quanti_item_effettivi)), 1)
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((0 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(0 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((1 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(1 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((3 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(3 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((2 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(2 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((5 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(5 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((6 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(6 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((4 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(4 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((7 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(7 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((8 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(8 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((9 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(9 << 0)])
                        ini_write_real(("chest_" + string(chest_nearest.id)), (((("mod_" + string((10 << 0))) + "_") + "_N_") + string(chest_nearest.quanti_item_effettivi)), mod_id[(10 << 0)])
                        chest_nearest.quanti_item_effettivi += 1
                        ini_write_real(("chest_" + string(chest_nearest.id)), "quanti_item", chest_nearest.quanti_item_effettivi)
                    }
                }
                if (chest_nearest.quanti_item_effettivi == 0 && (chest_nearest.tipo == (0 << 0) || chest_nearest.tipo == (95 << 0) || chest_nearest.tipo == (94 << 0) || chest_nearest.tipo == (93 << 0) || chest_nearest.tipo == (96 << 0)))
                {
                    with (chest_nearest)
                        instance_destroy()
                }
            }
        }
        ini_close()
        if (looting_player_stash == 1)
        {
            looting_player_stash = 0
            scr_save_storage()
        }
        if (trading == 1)
            trading = 0
        if (looting == 1)
            looting = 0
        with (obj_item)
            prev_position = -1
        scr_check_item_position()
        scr_sistema_equip()
        with (obj_item)
            instance_destroy()
        state = gml_Script_scr_player_state_move
    }
    with (obj_item)
    {
        if (visto == 0)
        {
            if (global.svela_item_now == 0)
                global.svela_item = id
            if (global.svela_item == id)
            {
                if (global.svela_item_now < global.svela_item_max)
                    global.svela_item_now += (1 * global.sk_k[(7 << 0)])
                else
                {
                    visto = 1
                    scr_level_up_skill((4 << 0), global.rate_style)
                    global.svela_item_now = 0
                }
            }
        }
    }
    return;
}

