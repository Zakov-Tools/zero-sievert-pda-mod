function scr_b_mall_15x15_3(argument0, argument1) //gml_Script_scr_b_mall_15x15_3
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(18, ((xx * 16) + 112), ((yy * 16) + 112))
    scr_place_obj_map(12, ((xx * 16) + 32), ((yy * 16) + 176))
    scr_place_obj_map(12, ((xx * 16) + 16), ((yy * 16) + 112))
    scr_place_obj_map(82, ((xx * 16) + 64), ((yy * 16) + 176))
    scr_place_obj_map(82, ((xx * 16) + 160), ((yy * 16) + 80))
    scr_place_obj_map(21, ((xx * 16) + 16), ((yy * 16) + 80))
    scr_place_obj_map(21, ((xx * 16) + 32), ((yy * 16) + 64))
    scr_place_obj_map(21, ((xx * 16) + 64), ((yy * 16) + 48))
    scr_place_obj_map(21, ((xx * 16) + 96), ((yy * 16) + 64))
    scr_place_obj_map(17, ((xx * 16) + 160), ((yy * 16) + 160))
    scr_place_obj_map(17, ((xx * 16) + 112), ((yy * 16) + 176))
    scr_place_obj_map(17, ((xx * 16) + 96), ((yy * 16) + 192))
    scr_place_obj_map(17, ((xx * 16) + 96), ((yy * 16) + 208))
    scr_place_obj_map(17, ((xx * 16) + 80), ((yy * 16) + 224))
    scr_place_obj_map(17, ((xx * 16) + 128), ((yy * 16) + 224))
    scr_place_obj_map(17, ((xx * 16) + 160), ((yy * 16) + 176))
    scr_place_obj_map(17, ((xx * 16) + 144), ((yy * 16) + 192))
    scr_place_obj_map(17, ((xx * 16) + 144), ((yy * 16) + 208))
    scr_place_obj_map(17, ((xx * 16) + 192), ((yy * 16) + 208))
    scr_place_obj_map(17, ((xx * 16) + 192), ((yy * 16) + 192))
    scr_place_obj_map(17, ((xx * 16) + 208), ((yy * 16) + 176))
    scr_place_obj_map(17, ((xx * 16) + 208), ((yy * 16) + 160))
    scr_place_obj_map(17, ((xx * 16) + 208), ((yy * 16) + 112))
    scr_place_obj_map(17, ((xx * 16) + 208), ((yy * 16) + 96))
    scr_place_obj_map(17, ((xx * 16) + 208), ((yy * 16) + 80))
    scr_place_obj_map(17, ((xx * 16) + 192), ((yy * 16) + 64))
    scr_place_obj_map(17, ((xx * 16) + 176), ((yy * 16) + 48))
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 128), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 128), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 96), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 128), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 96), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 173), ((yy * 16) + 219), 0, obj_chest_electronic_box)
    instance_create_depth(((xx * 16) + 45), ((yy * 16) + 88), 0, obj_chest_medication_box)
    instance_create_depth(((xx * 16) + 93), ((yy * 16) + 76), 0, obj_chest_tool_box)
    return;
}
