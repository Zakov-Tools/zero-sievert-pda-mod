function scr_b_quest_lost_convoy(argument0, argument1) //gml_Script_scr_b_quest_lost_convoy
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(104, ((xx * 16) + 104), ((yy * 16) + 144))
    scr_place_obj_map(104, ((xx * 16) + 143), ((yy * 16) + 91))
    scr_place_obj_map(104, ((xx * 16) + 25), ((yy * 16) + 75))
    scr_place_obj_map(104, ((xx * 16) + 55), ((yy * 16) + 43))
    scr_place_obj_map(314, ((xx * 16) + 27), ((yy * 16) + 136))
    scr_place_obj_map(314, ((xx * 16) + 60), ((yy * 16) + 136))
    scr_place_obj_map(314, ((xx * 16) + 109), ((yy * 16) + 71))
    scr_place_obj_map(314, ((xx * 16) + 83), ((yy * 16) + 72))
    scr_place_obj_map(84, ((xx * 16) + 48), ((yy * 16) + 128))
    scr_place_obj_map(84, ((xx * 16) + 112), ((yy * 16) + 64))
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 64), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 112), 0, obj_enemy_human_bandit_regular)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 64), 0, obj_light_enemy_torch)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 112), 0, obj_light_enemy_torch)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 80), 0, obj_quest_approach_lost_convoy)
    return;
}

