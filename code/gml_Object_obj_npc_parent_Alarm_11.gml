var _counter;
ds_grid_copy(grid_faction_my, global.grid_faction)
var _value = npc_ammo_value[npc_id]
if (arma_now != (2 << 0))
{
    var _caliber = arma_caliber[arma_now]
    switch _caliber
    {
        case (0 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = (215 << 0)
                    break
                case 1:
                    ammo_id_now = (215 << 0)
                    break
                case 2:
                    ammo_id_now = choose((215 << 0), (544 << 0))
                    break
                case 3:
                    ammo_id_now = (544 << 0)
                    break
                case 4:
                    ammo_id_now = (544 << 0)
                    break
            }

            break
        case (1 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = choose((216 << 0), (600 << 0), (600 << 0))
                    break
                case 1:
                    ammo_id_now = (216 << 0)
                    break
                case 2:
                    ammo_id_now = choose((216 << 0), (543 << 0))
                    break
                case 3:
                    ammo_id_now = (543 << 0)
                    break
                case 4:
                    ammo_id_now = (543 << 0)
                    break
            }

            break
        case (2 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = choose((218 << 0), (601 << 0))
                    break
                case 1:
                    ammo_id_now = (218 << 0)
                    break
                case 2:
                    ammo_id_now = choose((218 << 0), (548 << 0))
                    break
                case 3:
                    ammo_id_now = (548 << 0)
                    break
                case 4:
                    ammo_id_now = (548 << 0)
                    break
            }

            break
        case (10 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = choose((549 << 0), (602 << 0))
                    break
                case 1:
                    ammo_id_now = choose((602 << 0), (549 << 0), (219 << 0))
                    break
                case 2:
                    ammo_id_now = (219 << 0)
                    break
                case 3:
                    ammo_id_now = choose((550 << 0), (219 << 0))
                    break
                case 4:
                    ammo_id_now = (550 << 0)
                    break
            }

            break
        case (8 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = choose((542 << 0), (604 << 0))
                    break
                case 1:
                    ammo_id_now = choose((542 << 0), (213 << 0), (604 << 0))
                    break
                case 2:
                    ammo_id_now = (213 << 0)
                    break
                case 3:
                    ammo_id_now = choose((541 << 0), (213 << 0))
                    break
                case 4:
                    ammo_id_now = (541 << 0)
                    break
            }

            break
        case (11 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = choose((545 << 0), (603 << 0))
                    break
                case 1:
                    ammo_id_now = choose((545 << 0), (214 << 0), (603 << 0))
                    break
                case 2:
                    ammo_id_now = (214 << 0)
                    break
                case 3:
                    ammo_id_now = choose((546 << 0), (214 << 0))
                    break
                case 4:
                    ammo_id_now = (546 << 0)
                    break
            }

            break
        case (6 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = (551 << 0)
                    break
                case 1:
                    ammo_id_now = choose((551 << 0), (220 << 0))
                    break
                case 2:
                    ammo_id_now = (220 << 0)
                    break
                case 3:
                    ammo_id_now = choose((552 << 0), (220 << 0))
                    break
                case 4:
                    ammo_id_now = (552 << 0)
                    break
            }

            break
        case (3 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = (605 << 0)
                    break
                case 1:
                    ammo_id_now = choose((225 << 0), (605 << 0))
                    break
                case 2:
                    ammo_id_now = choose((225 << 0), (555 << 0))
                    break
                case 3:
                    ammo_id_now = (555 << 0)
                    break
                case 4:
                    ammo_id_now = (555 << 0)
                    break
            }

            break
        case (4 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = (223 << 0)
                    break
                case 1:
                    ammo_id_now = (223 << 0)
                    break
                case 2:
                    ammo_id_now = choose((223 << 0), (554 << 0))
                    break
                case 3:
                    ammo_id_now = (554 << 0)
                    break
                case 4:
                    ammo_id_now = (554 << 0)
                    break
            }

            break
        case (9 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = (217 << 0)
                    break
                case 1:
                    ammo_id_now = (217 << 0)
                    break
                case 2:
                    ammo_id_now = choose((217 << 0), (547 << 0))
                    break
                case 3:
                    ammo_id_now = (547 << 0)
                    break
                case 4:
                    ammo_id_now = (547 << 0)
                    break
            }

            break
        case (7 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = (221 << 0)
                    break
                case 1:
                    ammo_id_now = (221 << 0)
                    break
                case 2:
                    ammo_id_now = choose((221 << 0), (553 << 0))
                    break
                case 3:
                    ammo_id_now = (553 << 0)
                    break
                case 4:
                    ammo_id_now = (553 << 0)
                    break
            }

            break
        case (12 << 0):
            switch _value
            {
                case 0:
                    ammo_id_now = (222 << 0)
                    break
                case 1:
                    ammo_id_now = choose((222 << 0), (556 << 0))
                    break
                case 2:
                    ammo_id_now = choose((222 << 0), (556 << 0))
                    break
                case 3:
                    ammo_id_now = choose((222 << 0), (557 << 0))
                    break
                case 4:
                    ammo_id_now = (557 << 0)
                    break
            }

            break
    }

}
if (npc_trader_id[npc_id] != (0 << 0))
{
    var load_ = 0
    var name_ = (npc_name[npc_id] + "_trader")
    ini_open(global.save_general)
    if ini_section_exists(name_)
        load_ = 1
    ini_close()
    var _id_t = npc_trader_id[npc_id]
    if (npc_trader_id[npc_id] == (6 << 0))
    {
        lista_trader()
        load_ = 0
    }
    ini_open(global.save_general)
    if (load_ == 1)
    {
        quanti_item = array_length_2d(trader_item, npc_trader_id[npc_id])
        quanti_item_effettivi = 0
        if (room == r_hub)
            money_trader = ini_read_real("traders", "money", global.trader_money_all)
        else
            money_trader = ini_read_real(name_, "money", 0)
        for (var i = 0; i < quanti_item; i++)
        {
            loot[i] = ini_read_real(name_, ("item_" + string(i)), 0)
            lootx[i] = ini_read_real(name_, ("x_" + string(i)), 0)
            looty[i] = ini_read_real(name_, ("y_" + string(i)), 0)
            loot_qnt[i] = ini_read_real(name_, ("qnt_" + string(i)), 0)
            loot_livello_min[i] = ini_read_real(name_, ("livello_min" + string(i)), 0)
            loot_page[i] = ini_read_real(name_, ("page_" + string(i)), 0)
        }
    }
    ini_close()
    if (load_ == 0)
    {
        quanti_item = array_length_2d(trader_item, npc_trader_id[npc_id])
        quanti_item_effettivi = 0
        for (i = 0; i < quanti_item; i++)
        {
            loot[i] = 0
            lootx[i] = 0
            looty[i] = 0
            loot_page[i] = 0
            loot_qnt[i] = 0
            loot_livello_min[i] = 0
        }
        money_trader = floor((trader_money[npc_trader_id[npc_id]] * global.sk_k[(22 << 0)]))
        randomize()
        for (i = 0; i < quanti_item; i++)
            loot[i] = trader_item[npc_trader_id[npc_id]][i]
        ini_open(global.save_general)
        ini_write_real(name_, "money", money_trader)
        for (i = 0; i < 12; i++)
            _counter[i] = 0
        for (var _page = 0; _page < 12; _page++)
        {
            grid_w = 8
            grid_h = 11
            grid_item = ds_grid_create(grid_w, grid_h)
            ds_grid_clear(grid_item, 0)
            for (i = 0; i < quanti_item; i++)
            {
                if (trader_page[_id_t][i] == _page)
                {
                    var id_item = loot[i]
                    var placed = 0
                    var necessario_w = (sprite_get_width(item_sprite_inv[id_item]) div 16)
                    var necessario_h = (sprite_get_height(item_sprite_inv[id_item]) div 16)
                    for (var yy = 0; yy < grid_h; yy++)
                    {
                        for (var xx = 0; xx < grid_w; xx++)
                        {
                            if (ds_grid_get(grid_item, xx, yy) == 0)
                            {
                                if (placed == 0)
                                {
                                    var can_place = 1
                                    if ((xx + necessario_w) > grid_w)
                                        can_place = 0
                                    if ((yy + necessario_h) > grid_h)
                                        can_place = 0
                                    for (var ix = 0; ix < necessario_w; ix++)
                                    {
                                        for (var iy = 0; iy < necessario_h; iy++)
                                        {
                                            if (ds_grid_get(grid_item, (xx + ix), (yy + iy)) == 1)
                                                can_place = 0
                                        }
                                    }
                                    if (can_place == 1)
                                    {
                                        for (ix = 0; ix < necessario_w; ix++)
                                        {
                                            for (iy = 0; iy < necessario_h; iy++)
                                                ds_grid_set(grid_item, (xx + ix), (yy + iy), 1)
                                        }
                                        lootx[i] = (xx * 16)
                                        looty[i] = (yy * 16)
                                        loot_page[i] = _page
                                        loot_qnt[i] = ceil((trader_qnt[npc_trader_id[npc_id]][i] * global.sk_k[(23 << 0)]))
                                        loot_livello_min[i] = trader_liv[npc_trader_id[npc_id]][i]
                                        placed = 1
                                        _counter[_page] = (_counter[_page] + 1)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ds_grid_destroy(grid_item)
        }
        name_ = (npc_name[npc_id] + "_trader")
        for (i = 0; i < quanti_item; i++)
        {
            ini_write_real(name_, ("item_" + string(i)), loot[i])
            ini_write_real(name_, ("x_" + string(i)), lootx[i])
            ini_write_real(name_, ("y_" + string(i)), looty[i])
            ini_write_real(name_, ("qnt_" + string(i)), loot_qnt[i])
            ini_write_real(name_, ("livello_min" + string(i)), loot_livello_min[i])
            ini_write_real(name_, ("page_" + string(i)), loot_page[i])
        }
        ini_close()
    }
}
