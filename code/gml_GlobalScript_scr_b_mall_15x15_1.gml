function scr_b_mall_15x15_1(argument0, argument1) //gml_Script_scr_b_mall_15x15_1
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(12, ((xx * 16) + 16), ((yy * 16) + 176))
    scr_place_obj_map(15, ((xx * 16) + 208), ((yy * 16) + 224))
    scr_place_obj_map(300, ((xx * 16) + 223), ((yy * 16) + 96))
    scr_place_obj_map(300, ((xx * 16) + 121), ((yy * 16) + 25))
    scr_place_obj_map(300, ((xx * 16) + 216), ((yy * 16) + 185))
    scr_place_obj_map(300, ((xx * 16) + 32), ((yy * 16) + 221))
    scr_place_obj_map(300, ((xx * 16) + 13), ((yy * 16) + 146))
    scr_place_obj_map(18, ((xx * 16) + 128), ((yy * 16) + 112))
    scr_place_obj_map(17, ((xx * 16) + 208), ((yy * 16) + 144))
    scr_place_obj_map(17, ((xx * 16) + 192), ((yy * 16) + 128))
    scr_place_obj_map(17, ((xx * 16) + 192), ((yy * 16) + 112))
    scr_place_obj_map(17, ((xx * 16) + 192), ((yy * 16) + 96))
    scr_place_obj_map(17, ((xx * 16) + 208), ((yy * 16) + 80))
    scr_place_obj_map(21, ((xx * 16) + 80), ((yy * 16) + 208))
    scr_place_obj_map(21, ((xx * 16) + 112), ((yy * 16) + 192))
    scr_place_obj_map(21, ((xx * 16) + 48), ((yy * 16) + 192))
    scr_place_obj_map(21, ((xx * 16) + 16), ((yy * 16) + 112))
    scr_place_obj_map(21, ((xx * 16) + 16), ((yy * 16) + 96))
    scr_place_obj_map(21, ((xx * 16) + 32), ((yy * 16) + 80))
    scr_place_obj_map(84, ((xx * 16) + 128), ((yy * 16) + 80))
    scr_place_obj_map(84, ((xx * 16) + 176), ((yy * 16) + 64))
    scr_place_obj_map(84, ((xx * 16) + 80), ((yy * 16) + 64))
    scr_place_obj_map(84, ((xx * 16) + 112), ((yy * 16) + 176))
    instance_create_depth(((xx * 16) + 176), ((yy * 16) + 208), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 96), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 96), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 144), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 162), ((yy * 16) + 200), 0, obj_chest_bag)
    instance_create_depth(((xx * 16) + 142), ((yy * 16) + 90), 0, obj_chest_tool_box)
    instance_create_depth(((xx * 16) + 88), ((yy * 16) + 87), 0, obj_chest_medication_box)
    return;
}

