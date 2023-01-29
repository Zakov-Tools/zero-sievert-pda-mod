if ds_exists(grid_surface_cover, 5)
    ds_grid_destroy(grid_surface_cover)
if ds_exists(global.list_minimap_marker_x, 2)
    ds_list_destroy(global.list_minimap_marker_x)
if ds_exists(global.list_minimap_marker_y, 2)
    ds_list_destroy(global.list_minimap_marker_y)
if ds_exists(global.list_obj_marker_x, 2)
    ds_list_destroy(global.list_obj_marker_x)
if ds_exists(global.list_obj_marker_y, 2)
    ds_list_destroy(global.list_obj_marker_y)
if ds_exists(global.list_obj_marker_quest_pos, 2)
    ds_list_destroy(global.list_obj_marker_quest_pos)
if ds_exists(global.list_obj_marker_quest_id, 2)
    ds_list_destroy(global.list_obj_marker_quest_id)
if ds_exists(global.list_obj_marker_sub, 2)
    ds_list_destroy(global.list_obj_marker_sub)
if ds_exists(global.list_extraction_x, 2)
    ds_list_destroy(global.list_extraction_x)
if ds_exists(global.list_extraction_y, 2)
    ds_list_destroy(global.list_extraction_y)
if ds_exists(global.list_intresting_id, 2)
    ds_list_destroy(global.list_intresting_id)
if ds_exists(global.list_intresting_y, 2)
    ds_list_destroy(global.list_intresting_y)
if ds_exists(global.list_intresting_x, 2)
    ds_list_destroy(global.list_intresting_y)
if surface_exists(surface_map)
    surface_free(surface_map)
if surface_exists(surface_map_statica)
    surface_free(surface_map_statica)
if surface_exists(surface_cover)
    surface_free(surface_cover)
if surface_exists(surface_map_dinamica)
    surface_free(surface_map_dinamica)