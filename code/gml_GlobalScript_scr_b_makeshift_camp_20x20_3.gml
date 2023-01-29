function scr_b_makeshift_camp_20x20_3(argument0, argument1) //gml_Script_scr_b_makeshift_camp_20x20_3
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(18, ((xx * 16) + 288), ((yy * 16) + 64))
    scr_place_obj_map(18, ((xx * 16) + 176), ((yy * 16) + 272))
    scr_place_obj_map(15, ((xx * 16) + 160), ((yy * 16) + 288))
    scr_place_obj_map(13, ((xx * 16) + 304), ((yy * 16) + 80))
    scr_place_obj_map(13, ((xx * 16) + 304), ((yy * 16) + 240))
    scr_place_obj_map(12, ((xx * 16) + 0), ((yy * 16) + 160))
    scr_place_obj_map(36, ((xx * 16) + 0), ((yy * 16) + 288))
    scr_place_obj_map(36, ((xx * 16) + 64), ((yy * 16) + 288))
    scr_place_obj_map(36, ((xx * 16) + 192), ((yy * 16) + 288))
    scr_place_obj_map(36, ((xx * 16) + 256), ((yy * 16) + 288))
    scr_place_obj_map(36, ((xx * 16) + 256), ((yy * 16) + 208))
    scr_place_obj_map(36, ((xx * 16) + 192), ((yy * 16) + 208))
    scr_place_obj_map(36, ((xx * 16) + 64), ((yy * 16) + 208))
    scr_place_obj_map(36, ((xx * 16) + 0), ((yy * 16) + 208))
    scr_place_obj_map(36, ((xx * 16) + 256), ((yy * 16) + 128))
    scr_place_obj_map(36, ((xx * 16) + 256), ((yy * 16) + 48))
    scr_place_obj_map(36, ((xx * 16) + 192), ((yy * 16) + 128))
    scr_place_obj_map(36, ((xx * 16) + 192), ((yy * 16) + 48))
    scr_place_obj_map(36, ((xx * 16) + 128), ((yy * 16) + 48))
    scr_place_obj_map(36, ((xx * 16) + 64), ((yy * 16) + 48))
    scr_place_obj_map(36, ((xx * 16) + 64), ((yy * 16) + 128))
    scr_place_obj_map(36, ((xx * 16) + 0), ((yy * 16) + 128))
    scr_place_obj_map(36, ((xx * 16) + 0), ((yy * 16) + 48))
    instance_create_depth(((xx * 16) + 208), ((yy * 16) + 64), 0, obj_enemy_zombie)
    instance_create_depth(((xx * 16) + 160), ((yy * 16) + 144), 0, obj_enemy_zombie)
    instance_create_depth(((xx * 16) + 208), ((yy * 16) + 224), 0, obj_enemy_zombie)
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 256), 0, obj_enemy_zombie)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 224), 0, obj_enemy_zombie)
    instance_create_depth(((xx * 16) + 288), ((yy * 16) + 224), 0, obj_chest_medication_box)
    instance_create_depth(((xx * 16) + 32), ((yy * 16) + 144), 0, obj_chest_wood_box)
    instance_create_depth(((xx * 16) + 256), ((yy * 16) + 64), 0, obj_chest_wood_box)
    return;
}

