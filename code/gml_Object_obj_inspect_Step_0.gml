var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if instance_exists(object_id)
{
    if (start == 1)
    {
        hover = -1
        for (var i = 0; i < ds_list_size(list_menu); i++)
        {
            if scr_mouse_inside(x, (y + (i * sh)), sw, sh)
                hover = ds_list_find_value(list_menu, i)
        }
        if (prompt == 1)
        {
            hover = -1
            if (prompt_action == (2 << 0))
            {
                if keyboard_check_pressed(ord("N"))
                {
                    prompt = 0
                    instance_destroy()
                }
                if mouse_check_button_pressed(mb_any)
                    prompt = 0
                if (keyboard_check_pressed(ord("Y")) || scrap_subito == 1)
                {
                    prompt = 0
                    var quant = object_id.qnt
                    var peso = item_weight[quale_item]
                    var abba = 1
                    var scrap_id = 0
                    if (item_scrap[quale_item] == (1 << 0))
                    {
                        scrap_id = (489 << 0)
                        var scrap_qnt_aggiungere = ceil((((5 * quant) * peso) * global.sk_k[(64 << 0)]))
                    }
                    if (item_scrap[quale_item] == (2 << 0))
                    {
                        scrap_id = (490 << 0)
                        scrap_qnt_aggiungere = ceil((((5 * quant) * peso) * global.sk_k[(64 << 0)]))
                    }
                    if (item_scrap[quale_item] == (4 << 0))
                    {
                        scrap_id = (491 << 0)
                        scrap_qnt_aggiungere = (((quant * peso) * 50) * global.sk_k[(64 << 0)])
                        if (scrap_qnt_aggiungere < 1)
                            abba = 0
                        scrap_qnt_aggiungere = ceil(scrap_qnt_aggiungere)
                    }
                    if (item_scrap[quale_item] == (3 << 0))
                    {
                        scrap_id = (492 << 0)
                        scrap_qnt_aggiungere = ceil((((5 * quant) * peso) * global.sk_k[(64 << 0)]))
                        scrap_qnt_aggiungere = clamp(scrap_qnt_aggiungere, quant, 999)
                    }
                    if (item_scrap[quale_item] == (5 << 0))
                    {
                        scrap_id = (493 << 0)
                        scrap_qnt_aggiungere = ceil((((5 * quant) * peso) * global.sk_k[(64 << 0)]))
                    }
                    if (abba == 1)
                    {
                        var stack_max = item_stack_max[scrap_id]
                        scrap_qnt_aggiungere = clamp(scrap_qnt_aggiungere, 1, 9999)
                        var scrap_qnt_mancante = scrap_qnt_aggiungere
                        var ho_spazio_per_item = 1
                        var grid_w = 8
                        var grid_h = 11
                        var grid_item_ = ds_grid_create(grid_w, grid_h)
                        ds_grid_clear(grid_item_, 0)
                        var placed = 0
                        var can_place = 1
                        var necessario_w = (sprite_get_width(item_sprite_inv[scrap_id]) div 16)
                        var necessario_h = (sprite_get_height(item_sprite_inv[scrap_id]) div 16)
                        for (var yy = 0; yy < grid_h; yy++)
                        {
                            for (var xx = 0; xx < grid_w; xx++)
                            {
                                if (placed == 0)
                                {
                                    if (collision_point((((camx + 41) + (xx * 16)) + 8), (((camy + 63) + (yy * 16)) + 8), obj_item, 0, 1) == -4)
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
                                                if (collision_point(((((camx + 41) + (xx * 16)) + 8) + (ix * 16)), ((((camy + 63) + (yy * 16)) + 8) + (iy * 16)), obj_item, 0, 1) != -4)
                                                    can_place = 0
                                            }
                                        }
                                        if (can_place == 1)
                                        {
                                            audio_play_sound(snd_mouse_release, 2, false)
                                            placed = 1
                                            var temp_item = instance_create_layer(((camx + 41) + (xx * 16)), ((camy + 63) + (yy * 16)), "layer_draw_item", obj_item)
                                            temp_item.my_id = scrap_id
                                            temp_item.qnt = scrap_qnt_aggiungere
                                            temp_item.sprite_index = item_sprite_inv[scrap_id]
                                            temp_item.visto = 1
                                        }
                                    }
                                }
                            }
                        }
                        if (placed == 0)
                            scr_draw_text_with_box("Not enough space!")
                        if (placed == 1)
                        {
                            with (object_id)
                                instance_destroy()
                        }
                        instance_destroy()
                    }
                    else
                        scr_draw_text_with_box("Too small quantity!")
                }
            }
        }
        if mouse_check_button_pressed(mb_left)
        {
            if (hover != -1)
            {
                switch hover
                {
                    case (0 << 0):
                        var destroy_consumable = 0
                        switch item_categoria[quale_item]
                        {
                            case (3 << 0):
                                var kk = 1
                                if (object_id.created_from_player == 1)
                                    kk = global.sk_k[(36 << 0)]
                                destroy_consumable = 1
                                var _play_animation = 1
                                if (room == r_hub)
                                {
                                    if (global.bunker_animation == 0)
                                    {
                                        _play_animation = 0
                                        obj_player.energy += (consumable_energy[quale_item] * kk)
                                        obj_player.thirst += (consumable_thirst[quale_item] * kk)
                                        obj_player.fatigue += (consumable_fatigue[quale_item] * kk)
                                        obj_player.radiation_accumulata += (consumable_radiation[quale_item] * kk)
                                        scr_draw_text_with_box("Item consumed")
                                    }
                                }
                                if (_play_animation == 1)
                                {
                                    var ani = instance_create_depth(obj_player.x, obj_player.y, ((-y) - 2), obj_arms_player_parent)
                                    ani.item_id = quale_item
                                    ani.sprite_index = consumable_animation[quale_item]
                                    ani.image_index = 0
                                    ani.r_energy = (consumable_energy[quale_item] * kk)
                                    ani.r_thirst = (consumable_thirst[quale_item] * kk)
                                    ani.r_fatigue = (consumable_fatigue[quale_item] * kk)
                                    ani.r_radiation = (consumable_radiation[quale_item] * kk)
                                }
                                break
                            case (2 << 0):
                                ani = instance_create_depth(obj_player.x, obj_player.y, ((-y) - 2), obj_arms_player_parent)
                                ani.sprite_index = med_animation[quale_item]
                                ani.image_index = 0
                                ani.alarm[2] = (med_duration[quale_item] / global.sk_k[(29 << 0)])
                                ani.item_id = quale_item
                                destroy_consumable = 1
                                break
                            case (7 << 0):
                                destroy_consumable = 0
                                var dur_min = repair_condition_min[quale_item]
                                var dur_max = repair_condition_max[quale_item]
                                var dur_gain = repair_condition_gain[quale_item]
                                var quale_item_ = quale_item
                                with (obj_item)
                                {
                                    if (position == (1 << 0))
                                    {
                                        var how_many_caliber = array_length_2d(repair_caliber, quale_item_)
                                        var caliber_found = 0
                                        for (i = 0; i < how_many_caliber; i++)
                                        {
                                            if (arma_caliber[obj_player.weapon_slot[(1 << 0)]] == repair_caliber[quale_item_][i])
                                                caliber_found = 1
                                        }
                                        if (caliber_found == 1)
                                        {
                                            if (durability >= dur_min && durability < dur_max)
                                            {
                                                durability += dur_gain
                                                destroy_consumable = 1
                                                scr_draw_text_with_box("Weapon repaired")
                                            }
                                            else
                                            {
                                                if (durability < dur_min)
                                                    scr_draw_text_with_box("The weapon's condition is too low for this repair kit")
                                                if (durability >= dur_max)
                                                    scr_draw_text_with_box("The weapon's condition is too high for this repair kit")
                                            }
                                        }
                                        else
                                            scr_draw_text_with_box("This repair kit doesn't match the weapon's caliber")
                                    }
                                }
                                break
                            case (8 << 0):
                                destroy_consumable = 0
                                dur_min = repair_condition_min[quale_item]
                                dur_max = repair_condition_max[quale_item]
                                dur_gain = repair_condition_gain[quale_item]
                                quale_item_ = quale_item
                                with (obj_item)
                                {
                                    if (position == (11 << 0))
                                    {
                                        if (durability >= dur_min && durability < dur_max)
                                        {
                                            durability += dur_gain
                                            destroy_consumable = 1
                                            scr_draw_text_with_box("Armor repaired")
                                        }
                                        else
                                        {
                                            if (durability < dur_min)
                                                scr_draw_text_with_box("The armor's condition is too low for this repair kit")
                                            if (durability >= dur_max)
                                                scr_draw_text_with_box("The armor's condition is too high for this repair kit")
                                        }
                                    }
                                }
                                break
                            case (9 << 0):
                                destroy_consumable = 1
                                global.injector_factor[(0 << 0)] += inj_max_hp[quale_item]
                                global.injector_factor[(1 << 0)] += inj_hp_regen[quale_item]
                                global.injector_factor[(2 << 0)] += inj_bleed_rec[quale_item]
                                global.injector_factor[(3 << 0)] += inj_bleed_immune[quale_item]
                                global.injector_factor[(4 << 0)] += inj_stamina_max[quale_item]
                                global.injector_factor[(5 << 0)] += inj_stamina_regen[quale_item]
                                global.injector_factor[(6 << 0)] += inj_max_weigth[quale_item]
                                global.injector_factor[(7 << 0)] += inj_rad_regen[quale_item]
                                global.injector_factor[(8 << 0)] += inj_rad_def[quale_item]
                                global.injector_factor[(9 << 0)] += inj_hunger[quale_item]
                                global.injector_factor[(10 << 0)] += inj_hunger_regen[quale_item]
                                global.injector_factor[(11 << 0)] += inj_thirst[quale_item]
                                global.injector_factor[(12 << 0)] += inj_thirst_regen[quale_item]
                                var a = quale_item
                                with (obj_player)
                                {
                                    hp_max += inj_max_hp[a]
                                    bleed_immune += inj_bleed_immune[a]
                                    stamina_max += inj_stamina_max[a]
                                    radiation_defence += inj_rad_def[a]
                                    energy += inj_hunger[a]
                                    thirst += inj_thirst[a]
                                }
                                var in = instance_create_depth(obj_player.x, obj_player.y, 0, obj_injector_timer)
                                in.injector_id = quale_item
                                in.injector_timer = inj_duration[quale_item]
                                break
                            case (12 << 0):
                                destroy_consumable = 1
                                ini_open(global.save_inventory)
                                switch item_id[quale_item]
                                {
                                    case (441 << 0):
                                        global.book_gunsmith1 = 1
                                        ini_write_real("Book", "gunsmith1", 1)
                                        break
                                    case (442 << 0):
                                        global.book_gunsmith2 = 1
                                        ini_write_real("Book", "gunsmith2", 1)
                                        break
                                    case (443 << 0):
                                        destroy_consumable = scr_level_up_skill((0 << 0), 1)
                                        break
                                    case (444 << 0):
                                        destroy_consumable = scr_level_up_skill((4 << 0), 1)
                                        break
                                    case (445 << 0):
                                        destroy_consumable = scr_level_up_skill((8 << 0), 1)
                                        break
                                    case (446 << 0):
                                        destroy_consumable = scr_level_up_skill((12 << 0), 1)
                                        break
                                    case (448 << 0):
                                        destroy_consumable = scr_level_up_skill((16 << 0), 1)
                                        break
                                    case (449 << 0):
                                        destroy_consumable = scr_level_up_skill((22 << 0), 1)
                                        break
                                    case (447 << 0):
                                        destroy_consumable = scr_level_up_skill((19 << 0), 1)
                                        break
                                    case (450 << 0):
                                        break
                                }

                                ini_close()
                                if (destroy_consumable == 0)
                                    scr_draw_text_with_box("You can't use this book: max level reached")
                                with (obj_controller)
                                    lista_craft()
                                break
                            case (13 << 0):
                                destroy_consumable = 0
                                if (room == r_hub)
                                {
                                    switch item_id[quale_item]
                                    {
                                        case (559 << 0):
                                            destroy_consumable = scr_respec_skill((0 << 0))
                                            break
                                        case (560 << 0):
                                            destroy_consumable = scr_respec_skill((4 << 0))
                                            break
                                        case (561 << 0):
                                            destroy_consumable = scr_respec_skill((8 << 0))
                                            break
                                        case (562 << 0):
                                            destroy_consumable = scr_respec_skill((12 << 0))
                                            break
                                        case (564 << 0):
                                            destroy_consumable = scr_respec_skill((16 << 0))
                                            break
                                        case (565 << 0):
                                            destroy_consumable = scr_respec_skill((22 << 0))
                                            break
                                        case (563 << 0):
                                            destroy_consumable = scr_respec_skill((19 << 0))
                                            break
                                    }

                                    scr_save_skill()
                                }
                                else
                                    scr_draw_text_with_box("You can only use this item in the bunker")
                                break
                            case (15 << 0):
                                if (room == r_hub)
                                {
                                    destroy_consumable = 0
                                    var get_base_id = base_upgrade_id[quale_item]
                                    var have_i_this_module_installed = 0
                                    for (i = 0; i < array_length_1d(global.sl_id); i++)
                                    {
                                        if (global.sl_free[i] == 2)
                                        {
                                            if (global.sl_base_id[i] == get_base_id)
                                                have_i_this_module_installed = 1
                                        }
                                    }
                                    if (have_i_this_module_installed == 1)
                                    {
                                        if (global.base_lvl[get_base_id] == base_upgrade_lvl_req[quale_item])
                                        {
                                            global.base_lvl[get_base_id] += 1
                                            destroy_consumable = 1
                                            scr_save_skill()
                                            scr_draw_text_with_box("The module has been installed correctly")
                                            obj_base_parent.alarm[0] = 1
                                            if (room == r_hub)
                                            {
                                                with (obj_controller)
                                                {
                                                    lista_craft()
                                                    alarm[7] = 1
                                                }
                                            }
                                            if (quale_item == (495 << 0))
                                                scr_increase_storage_slot(3)
                                            if (quale_item == (508 << 0))
                                                scr_increase_storage_slot(4)
                                        }
                                        else
                                            scr_draw_text_with_box("Module and building kit levels do not match")
                                    }
                                    else
                                        scr_draw_text_with_box("You don't have this module installed")
                                }
                                else
                                    scr_draw_text_with_box("You can install modules only in the bunker")
                                break
                            case (11 << 0):
                                if (room == r_hub)
                                {
                                    destroy_consumable = 1
                                    scr_increase_storage_slot(1)
                                    scr_draw_text_with_box("Stash upgraded correctly")
                                }
                                else
                                    scr_draw_text_with_box("You can use this item only in the bunker")
                                break
                        }

                        if (quale_item == (663 << 0))
                        {
                            if (room == r_hub)
                            {
                                destroy_consumable = 1
                                global.luci_natale_built = 1
                                ini_open(global.save_general)
                                ini_write_real("Christman", "lights built", 1)
                                ini_close()
                                var lay_id = layer_get_id("Natale_luci")
                                layer_set_visible(lay_id, 1)
                            }
                            else
                                scr_draw_text_with_box("You can use this item only in the bunker")
                        }
                        if (destroy_consumable == 1)
                        {
                            with (object_id)
                                qnt -= 1
                        }
                        instance_destroy()
                        break
                    case (2 << 0):
                        if (room == r_hub)
                        {
                            prompt = 1
                            prompt_action = (2 << 0)
                            scrap_subito = 1
                            if (item_categoria[quale_item] == (0 << 0) || item_categoria[quale_item] == (6 << 0) || item_categoria[quale_item] == (17 << 0))
                                scrap_subito = 0
                        }
                        else
                            scr_draw_text_with_box("You can't scrap items here")
                        break
                    case (1 << 0):
                        var ammo_n = object_id.ammo_adesso
                        var ammo_id = object_id.ammo_now_id
                        var startx = (41 + camx)
                        var starty = (63 + camy)
                        grid_w = 8
                        grid_h = 11
                        var grid_item = ds_grid_create(grid_w, grid_h)
                        ds_grid_clear(grid_item, 0)
                        placed = 0
                        can_place = 1
                        necessario_w = (sprite_get_width(item_sprite_inv[ammo_id]) div 16)
                        necessario_h = (sprite_get_height(item_sprite_inv[ammo_id]) div 16)
                        if (ammo_n < 1)
                            scr_draw_text_with_box("This weapon has no ammo")
                        with (obj_item)
                        {
                            if (position == (0 << 0))
                            {
                                if (my_id == ammo_id)
                                {
                                    var _repeat = ammo_n
                                    repeat _repeat
                                    {
                                        if (qnt < item_stack_max[my_id])
                                        {
                                            qnt += 1
                                            ammo_n -= 1
                                        }
                                    }
                                }
                            }
                        }
                        if (ammo_n < 1)
                        {
                            placed = 1
                            object_id.ammo_adesso = 0
                        }
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
                                        for (ix = 0; ix < necessario_w; ix++)
                                        {
                                            for (iy = 0; iy < necessario_h; iy++)
                                            {
                                                if place_meeting((((startx + (xx * 16)) + 8) + (ix * 16)), (((starty + (yy * 16)) + 8) + (iy * 16)), obj_item)
                                                    can_place = 0
                                            }
                                        }
                                        if (can_place == 1)
                                        {
                                            placed = 1
                                            if (ammo_n > 0)
                                            {
                                                temp_item = instance_create_layer((startx + (xx * 16)), (starty + (yy * 16)), "layer_draw_item", obj_item)
                                                temp_item.my_id = ammo_id
                                                temp_item.sprite_index = item_sprite_inv[ammo_id]
                                                temp_item.durability = 100
                                                temp_item.visto = 1
                                                temp_item.qnt = ammo_n
                                                object_id.ammo_adesso = 0
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (placed == 0)
                            scr_draw_text_with_box("You don't have enough space")
                        ds_grid_destroy(grid_item)
                        break
                }

            }
        }
        if (prompt == 0)
        {
            if (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))
                instance_destroy()
        }
    }
}
