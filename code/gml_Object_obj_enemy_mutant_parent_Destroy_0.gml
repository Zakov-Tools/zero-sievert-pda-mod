event_inherited()
if (object_index != obj_enemy_crow)
{
    var drop = instance_create_depth(x, y, (-y), obj_chest_general)
    drop.tipo = npc_chest_dropped[npc_id]
    drop.chest_sprite[npc_chest_dropped[npc_id]] = npc_sprite_dead[npc_id]
    drop.depth = ((-y) + 10)
    drop.image_xscale = image_xscale
    drop.name_chest = npc_name[npc_id]
    if (create_item_in_chest == 0)
        drop.create_item_in_chest = 0
}
