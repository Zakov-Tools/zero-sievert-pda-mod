event_inherited()
linked_weapon_id = instance_create_depth(x, y, 0, obj_npc_weapon)
linked_weapon_id.follow_id = id
linked_weapon_id.mod_id[(0 << 0)] = mod_id[(0 << 0)]
linked_weapon_id.mod_id[(1 << 0)] = mod_id[(1 << 0)]
linked_weapon_id.mod_id[(3 << 0)] = mod_id[(3 << 0)]
linked_weapon_id.mod_id[(2 << 0)] = mod_id[(2 << 0)]
linked_weapon_id.mod_id[(5 << 0)] = mod_id[(5 << 0)]
linked_weapon_id.mod_id[(4 << 0)] = mod_id[(4 << 0)]
linked_weapon_id.mod_id[(6 << 0)] = mod_id[(6 << 0)]
linked_weapon_id.mod_id[(7 << 0)] = mod_id[(7 << 0)]
linked_weapon_id.mod_id[(8 << 0)] = mod_id[(8 << 0)]
linked_weapon_id.mod_id[(9 << 0)] = mod_id[(9 << 0)]
linked_weapon_id.mod_id[(10 << 0)] = mod_id[(10 << 0)]
if (item_categoria[arma_now] == (0 << 0))
{
    if (arma_type[arma_now] == (0 << 0))
        tipo_arma_equipped = (0 << 0)
    if (arma_type[arma_now] == (1 << 0) || arma_type[arma_now] == (2 << 0) || arma_type[arma_now] == (3 << 0))
        tipo_arma_equipped = (1 << 0)
    if (arma_type[arma_now] == (4 << 0) || arma_type[arma_now] == (5 << 0))
        tipo_arma_equipped = (2 << 0)
}
