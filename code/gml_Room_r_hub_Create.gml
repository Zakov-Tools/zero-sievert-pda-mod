layer_create(-11000, "layer_mouse")
layer_create(-10000, "layer_draw_item")
layer_create(-9900, "layer_draw_inv_hud")
layer_create(-9500, "layer_light")
instance_create_layer(0, 0, "layer_draw_inv_hud", obj_sound_controller)
instance_create_layer(0, 0, "layer_draw_inv_hud", obj_particles_controller)
instance_create_layer(0, 0, "layer_light", obj_light_controller)
instance_create_depth(0, 0, 0, obj_object_shadow)
instance_create_depth(0, 0, 0, obj_minimap)
instance_create_depth(0, 0, 0, obj_surface_aim)
instance_create_depth(0, 0, 0, obj_shader_controller)
instance_create_depth(0, 0, 0, obj_meteo_controller)
instance_create_depth(0, 0, 0, obj_light_general)
instance_create_depth(671, 943, 0, obj_camera)
instance_create_layer(x, y, "layer_mouse", obj_mouse)
instance_create_depth(0, 0, 0, obj_show_stat_item)
