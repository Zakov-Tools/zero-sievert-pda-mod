function scr_sposta_weapon(argument0, argument1, argument2, argument3, argument4, argument5) //gml_Script_scr_sposta_weapon
{
    var quale_slot = argument0
    var startx = argument1
    var starty = argument2
    var dragged_sprite_w = argument3
    var dragged_sprite_h = argument4
    var item_id = argument5
    var can_equip = 1
    if (obj_controller.arma_moddable[item_id.my_id] == 1)
    {
        for (var i = 0; i < array_length_1d(item_id.mod_id); i++)
        {
            var get_id_mod_installed = item_id.mod_id[i]
            if (item_id.arma_mod_nec[item_id.my_id][i] == 1)
            {
                if (get_id_mod_installed == -1)
                    can_equip = 0
            }
        }
    }
    if (can_equip == 1)
    {
        if (item_categoria[item_id.my_id] == (0 << 0))
        {
            if (obj_player.weapon_slot[quale_slot] == (2 << 0))
            {
                item_id.x = ((startx + 40) - (dragged_sprite_w / 2))
                item_id.y = ((starty + 16) - (dragged_sprite_h / 2))
                obj_player.ammo_slot[quale_slot] = item_id.ammo_adesso
                obj_player.ammo_slot_max[quale_slot] = arma_magazine[item_id.my_id]
                obj_player.durability_slot[quale_slot] = item_id.durability
                obj_player.fire_mode_slot[quale_slot] = arma_fire_mode[item_id.my_id]
                obj_player.ammo_id_now[quale_slot] = item_id.ammo_now_id
                obj_player.jammed_slot[quale_slot] = 0
                obj_player.mod_id[quale_slot][(0 << 0)] = item_id.mod_id[(0 << 0)]
                obj_player.mod_id[quale_slot][(1 << 0)] = item_id.mod_id[(1 << 0)]
                obj_player.mod_id[quale_slot][(3 << 0)] = item_id.mod_id[(3 << 0)]
                obj_player.mod_id[quale_slot][(2 << 0)] = item_id.mod_id[(2 << 0)]
                obj_player.mod_id[quale_slot][(5 << 0)] = item_id.mod_id[(5 << 0)]
                obj_player.mod_id[quale_slot][(6 << 0)] = item_id.mod_id[(6 << 0)]
                obj_player.mod_id[quale_slot][(4 << 0)] = item_id.mod_id[(4 << 0)]
                obj_player.mod_id[quale_slot][(7 << 0)] = item_id.mod_id[(7 << 0)]
                obj_player.mod_id[quale_slot][(8 << 0)] = item_id.mod_id[(8 << 0)]
                obj_player.mod_id[quale_slot][(9 << 0)] = item_id.mod_id[(9 << 0)]
                obj_player.mod_id[quale_slot][(10 << 0)] = item_id.mod_id[(10 << 0)]
                audio_play_sound(snd_weapon_equipped, 5, false)
                obj_player.laser_on[quale_slot][(7 << 0)] = 0
                obj_player.laser_on[quale_slot][(8 << 0)] = 0
                obj_player.laser_on[quale_slot][(9 << 0)] = 0
                obj_player.laser_on[quale_slot][(10 << 0)] = 0
            }
            else
                global.can_be_placed = 0
        }
        else
            global.can_be_placed = 0
    }
    if (can_equip == 0)
    {
        global.can_be_placed = 0
        scr_draw_text_with_box("Essential parts for the weapon are missing")
    }
    return;
}

