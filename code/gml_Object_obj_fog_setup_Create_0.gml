u_pos = shader_get_uniform(shd_fog_light, "u_pos")
u_pos2 = shader_get_uniform(shd_fog_shadow, "u_pos")
light_pos = shader_get_uniform(shd_fog_new, "lightPos")
cam_pos = shader_get_uniform(shd_fog_new, "camPos")
surf_w = 480
surf_h = 270
created_first_time = 0
surface_reset = 0
surface_shadow = surface_create(surf_w, surf_h)
buffer_size = 0
buffer_count = 0
intervallo_generate_vertex = 60
intervallo_generate_surface = (61 - (global.fog_surface_reset * 60))
if (room != room1)
    alarm[0] = 1
alarm[2] = intervallo_generate_surface
fog_of_war = 1
global.fog_of_war_draw = 0
vertex_format_begin()
vertex_format_add_position_3d()
vf = vertex_format_end()
vb = -4
