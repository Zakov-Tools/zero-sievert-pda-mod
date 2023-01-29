function scr_b_forest_15x15_4(argument0, argument1) //gml_Script_scr_b_forest_15x15_4
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(18, ((xx * 16) + 185), ((yy * 16) + 64))
    scr_place_obj_map(18, ((xx * 16) + 81), ((yy * 16) + 202))
    scr_place_obj_map(15, ((xx * 16) + 128), ((yy * 16) + 192))
    scr_place_obj_map(12, ((xx * 16) + 48), ((yy * 16) + 160))
    scr_place_obj_map(13, ((xx * 16) + 176), ((yy * 16) + 96))
    scr_place_obj_map(17, ((xx * 16) + 208), ((yy * 16) + 160))
    scr_place_obj_map(17, ((xx * 16) + 64), ((yy * 16) + 224))
    scr_place_obj_map(17, ((xx * 16) + 192), ((yy * 16) + 32))
    scr_place_obj_map(17, ((xx * 16) + 48), ((yy * 16) + 128))
    scr_place_obj_map(11, ((xx * 16) + 96), ((yy * 16) + 224))
    scr_place_obj_map(11, ((xx * 16) + 48), ((yy * 16) + 80))
    scr_place_obj_map(10, ((xx * 16) + 32), ((yy * 16) + 192))
    scr_place_obj_map(10, ((xx * 16) + 144), ((yy * 16) + 64))
    scr_place_obj_map(9, ((xx * 16) + 176), ((yy * 16) + 192))
    scr_place_obj_map(9, ((xx * 16) + 32), ((yy * 16) + 48))
    instance_create_depth(((xx * 16) + 119), ((yy * 16) + 132), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 154), ((yy * 16) + 154), 0, obj_enemy_human_bandit_novice)
    instance_create_depth(((xx * 16) + 75), ((yy * 16) + 91), 0, obj_enemy_human_bandit_novice)
    return;
}

