function scr_move_item_quickly(argument0, argument1, argument2) //gml_Script_scr_move_item_quickly
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var inv_startx = (camx + 41)
    var inv_starty = (camy + 63)
    var loot_startx = (camx + 312)
    var loot_starty = (camy + 63)
    var trade_buy_startx = (camx + 192)
    var trade_buy_starty = (camy + 160)
    var trade_sell_startx = (camx + 192)
    var trade_sell_starty = (camy + 64)
    var mouse_or_id = argument0
    var from_ = argument1
    var to_ = argument2
    var can_stack = 0
    var is_stacked = 0
    if (from_ == (0 << 0) && to_ == (3 << 0))
    {
        var startx = loot_startx
        var starty = loot_starty
        var _w = 128
        var _h = 176
        var posizione = (0 << 0)
    }
    if (from_ == (3 << 0) && to_ == (0 << 0))
    {
        startx = inv_startx
        starty = inv_starty
        _w = 128
        _h = 176
        posizione = (3 << 0)
    }
    if (from_ == (0 << 0) && to_ == (14 << 0))
    {
        startx = trade_sell_startx
        starty = trade_sell_starty
        _w = 96
        _h = 80
        posizione = (0 << 0)
    }
    if (from_ == (14 << 0) && to_ == (0 << 0))
    {
        startx = inv_startx
        starty = inv_starty
        _w = 128
        _h = 176
        posizione = (14 << 0)
    }
    if (from_ == (3 << 0) && to_ == (13 << 0))
    {
        startx = trade_buy_startx
        starty = trade_buy_starty
        _w = 96
        _h = 80
        posizione = (3 << 0)
    }
    if (from_ == (13 << 0) && to_ == (3 << 0))
    {
        startx = loot_startx
        starty = loot_starty
        _w = 128
        _h = 176
        posizione = (13 << 0)
        can_stack = 1
    }
    if (from_ == (13 << 0) && to_ == (0 << 0))
    {
        startx = inv_startx
        starty = inv_starty
        _w = 128
        _h = 176
        posizione = (13 << 0)
        am_i_buying = 1
    }
    var item_id_clicked = noone
    var quale_item = 0
    var item_posizione = 0
    var placing = 0
    var _item_esiste = 0
    if (mouse_or_id == obj_node_roof)
    {
        if instance_place(x, y, obj_item)
        {
            item_id_clicked = instance_place(x, y, obj_item)
            quale_item = item_id_clicked.my_id
            item_posizione = item_id_clicked.position
            placing = 1
        }
    }
    else
    {
        item_id_clicked = mouse_or_id
        quale_item = item_id_clicked.my_id
        item_posizione = item_id_clicked.position
        placing = 1
    }
    if instance_exists(item_id_clicked)
        _item_esiste = 1
    if (placing == 1 && _item_esiste)
    {
        if (item_posizione == posizione)
        {
            var _qnt_da_aggiungere = item_id_clicked.qnt
            if (can_stack == 1)
            {
                if (from_ == (13 << 0) && to_ == (3 << 0))
                {
                    var trader_nearest = global.speaker_nearest
                    for (var i = 0; i < trader_nearest.quanti_item; i++)
                    {
                        if (trader_nearest.loot[i] == item_id_clicked.my_id)
                            trader_nearest.loot_qnt[i] += item_id_clicked.qnt
                    }
                }
                with (obj_item)
                {
                    if (position == to_)
                    {
                        if (my_id == quale_item)
                        {
                            var qqnt = 0
                            is_stacked = 1
                            if ((from_ == (3 << 0) && to_ == (13 << 0)) || (from_ == (13 << 0) && to_ == (3 << 0)))
                            {
                                if (item_stack_max[quale_item] < 10)
                                {
                                    qqnt = 1
                                    _qnt_da_aggiungere = 1
                                }
                                else if (item_id_clicked.qnt > item_stack_max[quale_item])
                                {
                                    qqnt = item_stack_max[quale_item]
                                    _qnt_da_aggiungere = item_stack_max[quale_item]
                                }
                                else
                                {
                                    qqnt = item_id_clicked.qnt
                                    _qnt_da_aggiungere = item_id_clicked.qnt
                                }
                            }
                            else
                            {
                                qqnt = item_id_clicked.qnt
                                _qnt_da_aggiungere = item_id_clicked.qnt
                            }
                            qnt += _qnt_da_aggiungere
                            item_id_clicked.qnt -= _qnt_da_aggiungere
                        }
                    }
                }
            }
            if (is_stacked == 0 && _qnt_da_aggiungere > 0)
            {
                var grid_w = (_w div 16)
                var grid_h = (_h div 16)
                var grid_item = ds_grid_create(grid_w, grid_h)
                ds_grid_clear(grid_item, 0)
                if (mouse_or_id != obj_node_roof)
                    mouse_or_id.mask_index = s_mouse
                var placed = 0
                var can_place = 1
                var necessario_w = (sprite_get_width(item_id_clicked.sprite_index) div 16)
                var necessario_h = (sprite_get_height(item_id_clicked.sprite_index) div 16)
                _qnt_da_aggiungere = item_id_clicked.qnt
                if (from_ == (3 << 0) && to_ == (13 << 0))
                {
                    if (item_stack_max[quale_item] < 10)
                        _qnt_da_aggiungere = 1
                    else if (item_id_clicked.qnt > item_stack_max[quale_item])
                        _qnt_da_aggiungere = item_stack_max[quale_item]
                    else
                        _qnt_da_aggiungere = item_id_clicked.qnt
                    trader_nearest = global.speaker_nearest
                    for (i = 0; i < trader_nearest.quanti_item; i++)
                    {
                        if (trader_nearest.loot[i] == item_id_clicked.my_id)
                            trader_nearest.loot_qnt[i] -= _qnt_da_aggiungere
                    }
                }
                for (var yy = 0; yy < grid_h; yy++)
                {
                    for (var xx = 0; xx < grid_w; xx++)
                    {
                        if (placed == 0)
                        {
                            var _id_pos = instance_place(((startx + (xx * 16)) + 8), ((starty + (yy * 16)) + 8), obj_item)
                            if instance_exists(_id_pos)
                            {
                                if (_id_pos.my_id == quale_item)
                                {
                                    if (_id_pos.qnt < item_stack_max[quale_item])
                                    {
                                        can_place = 1
                                        var _qnt_aggiunta = 0
                                        repeat item_stack_max[quale_item]
                                        {
                                            if (_qnt_da_aggiungere > 0)
                                            {
                                                if (_id_pos.qnt < item_stack_max[quale_item])
                                                {
                                                    _id_pos.qnt += 1
                                                    item_id_clicked.qnt -= 1
                                                    _qnt_da_aggiungere -= 1
                                                    _qnt_aggiunta++
                                                }
                                            }
                                        }
                                        if (from_ == (13 << 0) && to_ == (0 << 0))
                                        {
                                            trader_nearest = global.speaker_nearest
                                            var trader_name_ = (trader_nearest.npc_name[trader_nearest.npc_id] + "_trader")
                                            for (i = 0; i < trader_nearest.quanti_item; i++)
                                            {
                                                if (trader_nearest.loot[i] == item_id_clicked.my_id)
                                                {
                                                    ini_open(global.save_general)
                                                    ini_write_real(trader_name_, ("qnt_" + string(i)), trader_nearest.loot_qnt[i])
                                                    ini_close()
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (_qnt_da_aggiungere == 0)
                    placed = 1
                if (_qnt_da_aggiungere > 0)
                {
                    for (yy = 0; yy < grid_h; yy++)
                    {
                        for (xx = 0; xx < grid_w; xx++)
                        {
                            if (placed == 0)
                            {
                                if (!(place_meeting(((startx + (xx * 16)) + 8), ((starty + (yy * 16)) + 8), obj_item)))
                                {
                                    can_place = 1
                                    if ((xx + necessario_w) > grid_w)
                                        can_place = 0
                                    if ((yy + necessario_h) > grid_h)
                                        can_place = 0
                                    for (var ix = 0; ix < necessario_w; ix++)
                                    {
                                        for (var iy = 0; iy < necessario_h; iy++)
                                        {
                                            if place_meeting((((startx + (xx * 16)) + 8) + (ix * 16)), (((starty + (yy * 16)) + 8) + (iy * 16)), obj_item)
                                                can_place = 0
                                        }
                                    }
                                    if (can_place == 1)
                                    {
                                        audio_play_sound(snd_mouse_release, 2, false)
                                        placed = 1
                                        var temp_item = instance_create_layer((startx + (xx * 16)), (starty + (yy * 16)), "layer_draw_item", obj_item)
                                        temp_item.my_id = quale_item
                                        temp_item.sprite_index = item_sprite_inv[quale_item]
                                        temp_item.durability = item_id_clicked.durability
                                        temp_item.visto = item_id_clicked.visto
                                        qqnt = _qnt_da_aggiungere
                                        if ((from_ == (3 << 0) && to_ == (13 << 0)) || (from_ == (13 << 0) && to_ == (3 << 0)))
                                        {
                                            if (item_stack_max[quale_item] < 10)
                                                qqnt = 1
                                            else if (item_id_clicked.qnt > item_stack_max[quale_item])
                                                qqnt = item_stack_max[quale_item]
                                            else
                                                qqnt = item_id_clicked.qnt
                                        }
                                        else
                                            qqnt = _qnt_da_aggiungere
                                        temp_item.qnt = qqnt
                                        item_id_clicked.qnt -= qqnt
                                        if (item_categoria[quale_item] == (0 << 0))
                                            temp_item.ammo_adesso = item_id_clicked.ammo_adesso
                                        temp_item.mod_id[(0 << 0)] = item_id_clicked.mod_id[(0 << 0)]
                                        temp_item.mod_id[(1 << 0)] = item_id_clicked.mod_id[(1 << 0)]
                                        temp_item.mod_id[(3 << 0)] = item_id_clicked.mod_id[(3 << 0)]
                                        temp_item.mod_id[(2 << 0)] = item_id_clicked.mod_id[(2 << 0)]
                                        temp_item.mod_id[(5 << 0)] = item_id_clicked.mod_id[(5 << 0)]
                                        temp_item.mod_id[(6 << 0)] = item_id_clicked.mod_id[(6 << 0)]
                                        temp_item.mod_id[(4 << 0)] = item_id_clicked.mod_id[(4 << 0)]
                                        temp_item.mod_id[(7 << 0)] = item_id_clicked.mod_id[(7 << 0)]
                                        temp_item.mod_id[(8 << 0)] = item_id_clicked.mod_id[(8 << 0)]
                                        temp_item.mod_id[(9 << 0)] = item_id_clicked.mod_id[(9 << 0)]
                                        temp_item.mod_id[(10 << 0)] = item_id_clicked.mod_id[(10 << 0)]
                                        scr_check_item_position()
                                        if (from_ == (13 << 0) && to_ == (0 << 0))
                                        {
                                            trader_nearest = global.speaker_nearest
                                            trader_name_ = (trader_nearest.npc_name[trader_nearest.npc_id] + "_trader")
                                            for (i = 0; i < trader_nearest.quanti_item; i++)
                                            {
                                                if (trader_nearest.loot[i] == item_id_clicked.my_id)
                                                {
                                                    ini_open(global.save_general)
                                                    ini_write_real(trader_name_, ("qnt_" + string(i)), trader_nearest.loot_qnt[i])
                                                    ini_close()
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (can_place == 0 || placed == 0)
                        scr_draw_text_with_box("You don't have enough space")
                    ds_grid_destroy(grid_item)
                }
            }
        }
    }
    if (mouse_or_id != obj_node_roof)
        mouse_or_id.mask_index = mouse_or_id.sprite_index
    scr_check_item_position()
    scr_sistema_equip()
    return;
}

