function scr_indoor_forest_trader_morto(argument0, argument1, argument2, argument3) //gml_Script_scr_indoor_forest_trader_morto
{
    var xx = argument0
    var yy = argument1
    var dest_x = argument2
    var dest_y = argument3
    var o = obj_map_generator
    scr_place_obj_map(262, ((xx * 16) + 80), ((yy * 16) + 47))
    scr_place_obj_map(266, ((xx * 16) + 64), ((yy * 16) + 47))
    scr_place_obj_map(247, ((xx * 16) + 28), ((yy * 16) + 47))
    scr_place_obj_map(247, ((xx * 16) + 20), ((yy * 16) + 47))
    scr_place_obj_map(247, ((xx * 16) + 28), ((yy * 16) + 40))
    scr_place_obj_map(247, ((xx * 16) + 20), ((yy * 16) + 40))
    scr_place_obj_map(131, ((xx * 16) + 16), ((yy * 16) + 96))
    scr_place_obj_map(96, ((xx * 16) + 86), ((yy * 16) + 93))
    scr_place_obj_map(95, ((xx * 16) + 105), ((yy * 16) + 92))
    scr_place_obj_map(274, ((xx * 16) + 32), ((yy * 16) + 47))
    scr_place_obj_map(268, ((xx * 16) + 48), ((yy * 16) + 47))
    scr_place_obj_map(99, ((xx * 16) + 96), ((yy * 16) + 96))
    instance_create_depth(((xx * 16) + 37), ((yy * 16) + 58), 0, obj_chest_forest_trader_morto)
    instance_create_depth(((xx * 16) + 32), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 16), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 96), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 80), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 64), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 16), 0, obj_solid)
    instance_create_depth(((xx * 16) + 16), ((yy * 16) + 16), 0, obj_solid)
    instance_create_depth(((xx * 16) + 32), ((yy * 16) + 16), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 16), 0, obj_solid)
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 16), 0, obj_solid)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 16), 0, obj_solid)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 16), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 16), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 64), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 80), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 96), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 32), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 16), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 112), 0, obj_solid)
    var o_indoor = instance_create_depth(((xx * 16) + 48), ((yy * 16) + 96), 0, obj_indoor)
    o_indoor.tele_x = dest_x
    o_indoor.tele_y = dest_y
    var o_indoor2 = instance_create_depth((x + o.b_x[decor_id][image_index]), (y + o.b_y[decor_id][image_index]), 0, obj_indoor)
    o_indoor2.tele_x = (((xx * 16) + 8) + 48)
    o_indoor2.tele_y = (((yy * 16) + 5) + 96)
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 0), (yy + 0))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 0), (yy + 1))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 0), (yy + 2))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 0), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 0), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 0), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 0), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 1), (yy + 0))
    tilemap_set(o.layer_tileset_floor_indoor, 384, (xx + 1), (yy + 1))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 1), (yy + 2))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 1), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 1), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 1), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 1), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 2), (yy + 0))
    tilemap_set(o.layer_tileset_floor_indoor, 385, (xx + 2), (yy + 1))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 2), (yy + 2))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 2), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 2), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 2), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 2), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 3), (yy + 0))
    tilemap_set(o.layer_tileset_floor_indoor, 384, (xx + 3), (yy + 1))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 3), (yy + 2))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 3), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 3), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 3), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 3), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 4), (yy + 0))
    tilemap_set(o.layer_tileset_floor_indoor, 385, (xx + 4), (yy + 1))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 4), (yy + 2))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 4), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 4), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 4), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 4), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 5), (yy + 0))
    tilemap_set(o.layer_tileset_floor_indoor, 384, (xx + 5), (yy + 1))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 5), (yy + 2))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 5), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 5), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 5), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 5), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 6), (yy + 0))
    tilemap_set(o.layer_tileset_floor_indoor, 385, (xx + 6), (yy + 1))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 6), (yy + 2))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 6), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 6), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 6), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 424, (xx + 6), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 7), (yy + 0))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 7), (yy + 1))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 7), (yy + 2))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 7), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 7), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 7), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 32, (xx + 7), (yy + 6))
    tilemap_set(o.layer_tileset_wall_below_indoor, 146, (xx + 1), (yy + 1))
    tilemap_set(o.layer_tileset_wall_below_indoor, 489, (xx + 1), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 146, (xx + 2), (yy + 1))
    tilemap_set(o.layer_tileset_wall_below_indoor, 493, (xx + 2), (yy + 4))
    tilemap_set(o.layer_tileset_wall_below_indoor, 146, (xx + 3), (yy + 1))
    tilemap_set(o.layer_tileset_wall_below_indoor, 490, (xx + 3), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 490, (xx + 3), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 146, (xx + 4), (yy + 1))
    tilemap_set(o.layer_tileset_wall_below_indoor, 146, (xx + 5), (yy + 1))
    tilemap_set(o.layer_tileset_wall_below_indoor, 146, (xx + 6), (yy + 1))
    tilemap_set(o.layer_tileset_wall_below_indoor, 489, (xx + 6), (yy + 4))
    tilemap_set(o.layer_tileset_wall_below_indoor, 461, (xx + 6), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 177, (xx + 0), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 51, (xx + 0), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 51, (xx + 0), (yy + 2))
    tilemap_set(o.layer_tileset_wall_above_indoor, 51, (xx + 0), (yy + 3))
    tilemap_set(o.layer_tileset_wall_above_indoor, 51, (xx + 0), (yy + 4))
    tilemap_set(o.layer_tileset_wall_above_indoor, 51, (xx + 0), (yy + 5))
    tilemap_set(o.layer_tileset_wall_above_indoor, 209, (xx + 0), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 0), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 82, (xx + 1), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 18, (xx + 1), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 1), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 82, (xx + 2), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 18, (xx + 2), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 2), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 82, (xx + 3), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 18, (xx + 3), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 3), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 82, (xx + 4), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 18, (xx + 4), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 4), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 82, (xx + 5), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 18, (xx + 5), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 5), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 82, (xx + 6), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 18, (xx + 6), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 6), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 178, (xx + 7), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 49, (xx + 7), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 49, (xx + 7), (yy + 2))
    tilemap_set(o.layer_tileset_wall_above_indoor, 49, (xx + 7), (yy + 3))
    tilemap_set(o.layer_tileset_wall_above_indoor, 49, (xx + 7), (yy + 4))
    tilemap_set(o.layer_tileset_wall_above_indoor, 49, (xx + 7), (yy + 5))
    tilemap_set(o.layer_tileset_wall_above_indoor, 210, (xx + 7), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 7), (yy + 7))
    return;
}

