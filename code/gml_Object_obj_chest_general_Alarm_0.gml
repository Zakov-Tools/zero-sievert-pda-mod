depth = ((-y) + 6)
var crea = 1
if (tipo != (0 << 0) && tipo != (94 << 0) && tipo != (93 << 0) && tipo != (95 << 0))
    crea = 0
crea = 1
if (tipo != (0 << 0))
    crea = 0
if instance_exists(obj_faro)
{
    if (tipo == (43 << 0))
    {
        if (point_distance(x, y, obj_faro.x, obj_faro.y) < 300)
        {
            instance_create_depth(x, y, depth, obj_ghoul_dead)
            instance_destroy()
        }
    }
}
if (crea == 0)
{
    if (tipo != (0 << 0))
    {
        item_possibili = ds_list_create()
        var n_item = irandom_range(chest_quanti_item_min[tipo], chest_quanti_item_max[tipo])
        quanti_item = ceil((n_item * global.sk_k[(8 << 0)]))
        quanti_item_effettivi = 0
        if (chest_quanti_item_max[tipo] == 1)
            quanti_item = 1
        quanti_item_possibili = array_length_2d(chest_item, tipo)
        for (var j = 0; j < quanti_item; j++)
        {
            var rar = 60
            if scr_chance(chest_chance_uncommon[tipo])
                rar = 40
            if scr_chance(chest_chance_rare[tipo])
                rar = 25
            if scr_chance(chest_chance_epic[tipo])
                rar = 12
            if scr_chance(chest_chance_legendary[tipo])
                rar = 5
            var lista_scegli = ds_list_create()
            for (var i = 0; i < array_length_2d(chest_item, tipo); i++)
            {
                if (chest_item_rare[tipo][i] == rar)
                    ds_list_add(lista_scegli, chest_item[tipo][i])
            }
            if (ds_list_size(lista_scegli) > 0)
            {
                ds_list_shuffle(lista_scegli)
                loot[j] = ds_list_find_value(lista_scegli, 0)
            }
            ds_list_destroy(lista_scegli)
        }
        randomize()
        var k_visto = 0
        var max_dur = 0
        if (create_item_in_chest == 1)
        {
            if (chest_is_drop[tipo] == 1)
            {
                loot[0] = arma_drop
                loot[1] = ammo_drop
            }
        }
        if (tipo == (25 << 0))
            loot[2] = (520 << 0)
        if (tipo == (26 << 0))
        {
            if scr_chance(25)
                loot[2] = (584 << 0)
        }
        if (tipo == (27 << 0))
            loot[2] = (586 << 0)
        if (tipo == (30 << 0))
        {
            var l = 0
            loot = -4
            loot[l] = (80 << 0)
            l++
            loot[l] = (137 << 0)
            l++
            loot[l] = (205 << 0)
            l++
            loot[l] = (187 << 0)
            l++
            loot[l] = (38 << 0)
            l++
            loot[l] = (270 << 0)
            l++
            loot[l] = (270 << 0)
            l++
            loot[l] = (222 << 0)
            l++
            loot[l] = (221 << 0)
            quanti_item = (l + 1)
            max_dur = 1
        }
        grid_w = 8
        grid_h = 11
        grid_item = ds_grid_create(grid_w, grid_h)
        ds_grid_clear(grid_item, 0)
        if (tipo == (60 << 0) || tipo == (61 << 0) || tipo == (62 << 0) || tipo == (63 << 0) || tipo == (64 << 0) || tipo == (65 << 0) || tipo == (66 << 0) || tipo == (70 << 0) || tipo == (71 << 0) || tipo == (72 << 0) || tipo == (68 << 0) || tipo == (69 << 0) || tipo == (67 << 0) || tipo == (73 << 0) || tipo == (97 << 0) || tipo == (95 << 0) || tipo == (93 << 0) || tipo == (94 << 0) || tipo == (96 << 0) || tipo == (74 << 0))
        {
            k_visto = 1
            max_dur = 0
        }
        if (tipo == (75 << 0))
            max_dur = 1
        ini_open("all_loot.ini")
        for (i = 0; i < quanti_item; i++)
        {
            var _chance = 101
            if scr_chance(_chance)
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
                                    var quantity = ceil(irandom((item_stack_max[id_item] / 2)))
                                    quantity = clamp(quantity, 1, 1000)
                                    if (item_categoria[id_item] == (1 << 0))
                                    {
                                        quantity = (quantity div 2)
                                        if (tipo == (75 << 0))
                                            quantity = ceil((item_stack_max[id_item] * 0.5))
                                    }
                                    if (id_item == (1 << 0))
                                        quantity = irandom_range(50, 150)
                                    ini_write_real(("chest_" + string(id)), "first_time", 0)
                                    ini_write_real(("chest_" + string(id)), "chest_x", x)
                                    ini_write_real(("chest_" + string(id)), "chest_y", y)
                                    ini_write_real(("chest_" + string(id)), ("item_id_N_" + string(quanti_item_effettivi)), id_item)
                                    ini_write_string(("chest_" + string(id)), ("item_id_N_name" + string(quanti_item_effettivi)), item_name[id_item])
                                    ini_write_real(("chest_" + string(id)), ("item_quantità_N_" + string(quanti_item_effettivi)), quantity)
                                    ini_write_real(("chest_" + string(id)), ("item_x_N_" + string(quanti_item_effettivi)), (xx * 16))
                                    ini_write_real(("chest_" + string(id)), ("item_y_N_" + string(quanti_item_effettivi)), (yy * 16))
                                    ini_write_real(("chest_" + string(id)), ("visto?_N_" + string(quanti_item_effettivi)), k_visto)
                                    if (max_dur == 0)
                                        var dur = irandom_range(20, 35)
                                    else
                                        dur = 100
                                    if (item_categoria[id_item] == (0 << 0))
                                    {
                                        ini_write_real(("chest_" + string(id)), ("item_ammo_N_" + string(quanti_item_effettivi)), irandom((arma_magazine[id_item] div 2)))
                                        ini_write_real(("chest_" + string(id)), ("item_ammo_id_N_" + string(quanti_item_effettivi)), arma_ammo[id_item])
                                        if (chest_is_drop[tipo] == 1)
                                            ini_write_real(("chest_" + string(id)), ("item_ammo_id_N_" + string(quanti_item_effettivi)), ammo_drop)
                                        if (arma_moddable[id_item] == 1)
                                        {
                                            if (chest_from_enemy[tipo] == 0)
                                            {
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((0 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(0 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((1 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(1 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((3 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(3 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((2 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(2 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((5 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(5 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((6 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(6 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((4 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(4 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((7 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(7 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((8 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(8 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((9 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(9 << 0)])
                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string((10 << 0))) + "_") + "_N_") + string(quanti_item_effettivi)), arma_mod_id[id_item][(10 << 0)])
                                            }
                                            else
                                            {
                                                for (var m = 0; m < 11; m++)
                                                {
                                                    ini_write_real(("chest_" + string(id)), (((("mod_" + string(m)) + "_") + "_N_") + string(quanti_item_effettivi)), mod_id[m])
                                                    if (mod_id[m] == -1)
                                                    {
                                                        if (arma_mod_moddable[id_item][m] == 1)
                                                        {
                                                            if (arma_mod_nec[id_item][m] == 1)
                                                            {
                                                                mod_id[m] = arma_mod_id[id_item][m]
                                                                ini_write_real(("chest_" + string(id)), (((("mod_" + string(m)) + "_") + "_N_") + string(quanti_item_effettivi)), mod_id[m])
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    ini_write_real(("chest_" + string(id)), ("durability_N_" + string(quanti_item_effettivi)), dur)
                                    quanti_item_effettivi += 1
                                    ini_write_real(("chest_" + string(id)), "quanti_item", quanti_item_effettivi)
                                    placed = 1
                                }
                            }
                        }
                    }
                }
            }
        }
        var _remove_loot = 0
        if (chest_decay_item[tipo] == 1)
            _remove_loot = 1
        if (_remove_loot == 1)
        {
            if scr_chance(30)
            {
                for (i = 0; i < quanti_item_effettivi; i++)
                {
                    if scr_chance(60)
                    {
                        ini_write_real(("chest_" + string(id)), ("item_id_N_" + string(i)), (0 << 0))
                        ini_write_real(("chest_" + string(id)), ("item_quantità_N_" + string(i)), 0)
                    }
                }
            }
        }
        ini_close()
        ds_grid_destroy(grid_item)
        ds_list_destroy(item_possibili)
    }
}
sprite_index = chest_sprite[tipo]
