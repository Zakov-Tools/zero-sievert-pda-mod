surface_map = -4
surface_map_dinamica = -4
surface_map_statica = -4
surface_cover = -4
grid_surface_cover = -4
if (room == room1)
{
    grid_surface_cover = ds_grid_create(obj_map_generator.grid_tile_w, obj_map_generator.grid_tile_h)
    ds_grid_clear(grid_surface_cover, 0)
}
raggio_cover = 30
can_draw_cover = 0
global.list_minimap_marker_x = ds_list_create()
global.list_minimap_marker_y = ds_list_create()
global.list_obj_marker_quest_pos = ds_list_create()
global.list_obj_marker_quest_id = ds_list_create()
global.list_obj_marker_x = ds_list_create()
global.list_obj_marker_y = ds_list_create()
global.list_obj_marker_sub = ds_list_create()
global.list_extraction_x = ds_list_create()
global.list_extraction_y = ds_list_create()
global.list_intresting_id = ds_list_create()
global.list_intresting_x = ds_list_create()
global.list_intresting_y = ds_list_create()
start_drawing_surface = 0
global.minimap_off_x = 0
global.minimap_off_y = 0
global.minimap_start_off_x = 0
global.minimap_start_off_y = 0
global.mouse_pressed_x = 0
global.mouse_pressed_y = 0
