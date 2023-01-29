function scr_b_mall_15x15_2(argument0, argument1) //gml_Script_scr_b_mall_15x15_2
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(9, ((xx * 16) + 176), ((yy * 16) + 224))
    scr_place_obj_map(9, ((xx * 16) + 32), ((yy * 16) + 176))
    scr_place_obj_map(10, ((xx * 16) + 208), ((yy * 16) + 112))
    scr_place_obj_map(10, ((xx * 16) + 128), ((yy * 16) + 32))
    scr_place_obj_map(11, ((xx * 16) + 208), ((yy * 16) + 176))
    scr_place_obj_map(11, ((xx * 16) + 80), ((yy * 16) + 208))
    scr_place_obj_map(11, ((xx * 16) + 32), ((yy * 16) + 128))
    scr_place_obj_map(11, ((xx * 16) + 176), ((yy * 16) + 80))
    scr_place_obj_map(11, ((xx * 16) + 64), ((yy * 16) + 64))
    instance_create_depth(((xx * 16) + 115), ((yy * 16) + 112), 0, obj_enemy_ghoul)
    instance_create_depth(((xx * 16) + 98), ((yy * 16) + 141), 0, obj_enemy_ghoul)
    instance_create_depth(((xx * 16) + 127), ((yy * 16) + 119), 0, obj_enemy_ghoul)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 128), 0, obj_enemy_infestation)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 64), 0, obj_weapon_box_rare)
    instance_create_depth(((xx * 16) + 160), ((yy * 16) + 96), 0, obj_chest_attachment)
    return;
}

