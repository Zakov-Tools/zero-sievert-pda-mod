depth = -10200
if (mouse_x >= (x + yes_x) && mouse_x <= ((x + yes_x) + box_width) && mouse_y >= (y + yes_y) && mouse_y <= ((y + yes_y) + box_width))
{
    position_now = (1 << 0)
    image_index = 1
}
else if (mouse_x >= (x + no_x) && mouse_x <= ((x + no_x) + box_width) && mouse_y >= (y + no_y) && mouse_y <= ((y + no_y) + box_width))
{
    position_now = (2 << 0)
    image_index = 2
}
else
{
    position_now = (0 << 0)
    image_index = 0
}
if mouse_check_button_pressed(mb_left)
{
    if (position_now == (1 << 0))
    {
        if (obj_player.trading == 0)
        {
            var destroy_consumable = 0
            switch item_categoria[quale_item]
            {
                case (3 << 0):
                    obj_player.energy += consumable_energy[quale_item]
                    obj_player.thirst += consumable_thirst[quale_item]
                    obj_player.radiation += (consumable_radiation[quale_item] * global.skill_var[(26 << 0)])
                    destroy_consumable = 1
                    keyboard_key_press(global.kb_now[(5 << 0)])
                    var ani = instance_create_depth(obj_player.x, obj_player.y, ((-y) - 2), obj_arms_player_parent)
                    ani.item_id = quale_item
                    ani.sprite_index = consumable_animation[quale_item]
                    ani.image_index = 0
                    break
                case (2 << 0):
                    keyboard_key_press(global.kb_now[(5 << 0)])
                    ani = instance_create_depth(obj_player.x, obj_player.y, ((-y) - 2), obj_arms_player_parent)
                    ani.sprite_index = med_animation[quale_item]
                    ani.image_index = 0
                    ani.alarm[2] = med_duration[quale_item]
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
                            for (var i = 0; i < how_many_caliber; i++)
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
                            global.sk_lvl[(0 << 0)] += 1
                            break
                        case (444 << 0):
                            global.sk_lvl[(4 << 0)] += 1
                            break
                        case (445 << 0):
                            global.sk_lvl[(8 << 0)] += 1
                            break
                    }

                    ini_close()
                    with (obj_controller)
                        lista_craft()
                    break
            }

            if (destroy_consumable == 1)
            {
                with (item_id_consumable)
                    qnt -= 1
            }
            instance_destroy()
        }
    }
    if (position_now == (2 << 0) || position_now == (0 << 0))
        instance_destroy()
}
if mouse_check_button_pressed(mb_right)
    instance_destroy()
