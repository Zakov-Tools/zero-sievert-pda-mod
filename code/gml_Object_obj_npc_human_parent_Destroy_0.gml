event_inherited()
var drop = instance_create_depth(x, y, (-y), obj_chest_general)
drop.tipo = npc_chest_dropped[npc_id]
drop.arma_drop = arma_now
drop.ammo_drop = ammo_id_now
drop.chest_sprite[npc_chest_dropped[npc_id]] = npc_sprite_dead[npc_id]
drop.name_chest = npc_name[npc_id]
drop.chest_faction = npc_faction[npc_id]
drop.id_of_the_killer = id_of_the_killer
drop.depth = ((-y) + 10)
drop.image_xscale = image_xscale
drop.mod_id[(0 << 0)] = mod_id[(0 << 0)]
drop.mod_id[(1 << 0)] = mod_id[(1 << 0)]
drop.mod_id[(3 << 0)] = mod_id[(3 << 0)]
drop.mod_id[(2 << 0)] = mod_id[(2 << 0)]
drop.mod_id[(5 << 0)] = mod_id[(5 << 0)]
drop.mod_id[(6 << 0)] = mod_id[(6 << 0)]
drop.mod_id[(4 << 0)] = mod_id[(4 << 0)]
drop.mod_id[(7 << 0)] = mod_id[(7 << 0)]
drop.mod_id[(8 << 0)] = mod_id[(8 << 0)]
drop.mod_id[(9 << 0)] = mod_id[(9 << 0)]
drop.mod_id[(10 << 0)] = mod_id[(10 << 0)]
if (create_item_in_chest == 0)
    drop.create_item_in_chest = 0
