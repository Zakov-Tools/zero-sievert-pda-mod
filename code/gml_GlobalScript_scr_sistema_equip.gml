function scr_sistema_equip() //gml_Script_scr_sistema_equip
{
    global.backpack_equipped = 0
    global.player_weight = 0
    global.primary_equipped = 0
    global.secondary_equipped = 0
    global.armor_equipped = 0
    global.max_weight = 0
    obj_player.headset_now = (0 << 0)
    with (obj_item)
    {
        if (obj_player.trading == 1)
        {
            if (prev_position == (1 << 0) || prev_position == (2 << 0) || prev_position == (4 << 0) || prev_position == (5 << 0) || prev_position == (6 << 0) || prev_position == (7 << 0) || prev_position == (11 << 0))
            {
            }
        }
        if (position == (1 << 0))
        {
            ammo_adesso = obj_player.ammo_slot[(1 << 0)]
            ammo_now_id = obj_player.ammo_id_now[(1 << 0)]
            global.primary_equipped = 1
            obj_player.weapon_slot[(1 << 0)] = my_id
            obj_player.arma_now = obj_player.weapon_slot[obj_player.weapon_slot_now]
        }
        if (position == (2 << 0))
        {
            ammo_adesso = obj_player.ammo_slot[(2 << 0)]
            ammo_now_id = obj_player.ammo_id_now[(2 << 0)]
            global.secondary_equipped = 1
            obj_player.weapon_slot[(2 << 0)] = my_id
            obj_player.arma_now = obj_player.weapon_slot[obj_player.weapon_slot_now]
        }
        if (position == (0 << 0))
            global.player_weight += (item_weight[my_id] * qnt)
        if (position == (4 << 0) || position == (5 << 0) || position == (6 << 0) || position == (7 << 0) || position == (8 << 0) || position == (9 << 0))
            global.player_weight += (item_weight[my_id] * qnt)
        if (position == (10 << 0) || prev_position == (10 << 0))
        {
            global.backpack_equipped = 1
            global.max_weight = (obj_player.base_weight + backpack_weight[my_id])
            obj_player.backpack_now = my_id
        }
        if (position == (11 << 0))
        {
            global.player_weight += item_weight[my_id]
            global.armor_equipped = 1
            obj_player.armor_now = my_id
            obj_player.durability_slot[(11 << 0)] = durability
        }
        if (position == (12 << 0))
        {
            global.player_weight += item_weight[my_id]
            obj_player.headset_now = my_id
        }
    }
    if (obj_player.trading == 0)
    {
        if (global.primary_equipped == 0)
        {
            obj_player.weapon_slot[(1 << 0)] = (2 << 0)
            obj_player.arma_now = obj_player.weapon_slot[obj_player.weapon_slot_now]
            obj_player.ammo_slot[(1 << 0)] = 0
            obj_player.ammo_slot_max[(1 << 0)] = 0
        }
        if (global.secondary_equipped == 0)
        {
            obj_player.weapon_slot[(2 << 0)] = (2 << 0)
            obj_player.arma_now = obj_player.weapon_slot[obj_player.weapon_slot_now]
            obj_player.ammo_slot[(2 << 0)] = 0
            obj_player.ammo_slot_max[(2 << 0)] = 0
        }
        if (global.backpack_equipped == 0)
            global.max_weight = obj_player.base_weight
    }
    global.max_weight += (global.sk_k[(1 << 0)] + global.injector_factor[(6 << 0)])
    global.max_weight = clamp(global.max_weight, 1, 9999)
    return;
}

