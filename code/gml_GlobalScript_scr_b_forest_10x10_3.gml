function scr_b_forest_10x10_3(argument0, argument1) //gml_Script_scr_b_forest_10x10_3
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(18, ((xx * 16) + 48), ((yy * 16) + 80))
    scr_place_obj_map(15, ((xx * 16) + 112), ((yy * 16) + 144))
    scr_place_obj_map(15, ((xx * 16) + 48), ((yy * 16) + 144))
    scr_place_obj_map(12, ((xx * 16) + 16), ((yy * 16) + 128))
    scr_place_obj_map(12, ((xx * 16) + 16), ((yy * 16) + 96))
    scr_place_obj_map(14, ((xx * 16) + 48), ((yy * 16) + 64))
    scr_place_obj_map(34, ((xx * 16) + 64), ((yy * 16) + 64))
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 80), 0, obj_enemy_human_bandit_novice)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 112), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 80), 0, obj_chest_medication_box)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 80), 0, obj_weapon_box_common)
    return;
}

