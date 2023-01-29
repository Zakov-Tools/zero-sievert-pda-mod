function scr_b_mall_15x15_4(argument0, argument1) //gml_Script_scr_b_mall_15x15_4
{
    var xx = argument0
    var yy = argument1
    scr_place_obj_map(21, ((xx * 16) + 144), ((yy * 16) + 160))
    scr_place_obj_map(21, ((xx * 16) + 160), ((yy * 16) + 144))
    scr_place_obj_map(21, ((xx * 16) + 160), ((yy * 16) + 128))
    scr_place_obj_map(21, ((xx * 16) + 128), ((yy * 16) + 208))
    scr_place_obj_map(21, ((xx * 16) + 32), ((yy * 16) + 208))
    scr_place_obj_map(21, ((xx * 16) + 32), ((yy * 16) + 192))
    scr_place_obj_map(21, ((xx * 16) + 32), ((yy * 16) + 176))
    scr_place_obj_map(21, ((xx * 16) + 16), ((yy * 16) + 160))
    scr_place_obj_map(21, ((xx * 16) + 64), ((yy * 16) + 96))
    scr_place_obj_map(21, ((xx * 16) + 64), ((yy * 16) + 80))
    scr_place_obj_map(21, ((xx * 16) + 0), ((yy * 16) + 96))
    scr_place_obj_map(21, ((xx * 16) + 0), ((yy * 16) + 80))
    scr_place_obj_map(21, ((xx * 16) + 32), ((yy * 16) + 64))
    scr_place_obj_map(21, ((xx * 16) + 128), ((yy * 16) + 64))
    scr_place_obj_map(21, ((xx * 16) + 80), ((yy * 16) + 48))
    scr_place_obj_map(21, ((xx * 16) + 16), ((yy * 16) + 48))
    instance_create_depth(((xx * 16) + 161), ((yy * 16) + 168), 0, obj_chest_tool_box)
    instance_create_depth(((xx * 16) + 42), ((yy * 16) + 107), 0, obj_chest_electronic_box)
    instance_create_depth(((xx * 16) + 146), ((yy * 16) + 75), 0, obj_chest_attachment)
    return;
}

