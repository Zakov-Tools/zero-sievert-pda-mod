var _u_pos = u_pos
var _u_pos2 = u_pos2
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (global.fog_of_war_draw == 1)
{
    if instance_exists(obj_player)
    {
        var _vb = vb
        var _camx = round(camx)
        var _camy = round(camy)
        if (!surface_exists(surface_shadow))
        {
            surface_shadow = surface_create(surf_w, surf_h)
            surface_set_target(surface_shadow)
            draw_clear_alpha(c_black, 0)
            shader_set(shd_fog_new)
            shader_set_uniform_f(light_pos, (obj_player.x - _camx), (obj_player.y - _camy))
            shader_set_uniform_f(cam_pos, _camx, _camy)
            vertex_submit(_vb, 4, -1)
            surface_reset_target()
            shader_reset()
        }
        draw_surface_ext(surface_shadow, _camx, _camy, 1, 1, 0, c_black, global.fog_alpha)
        if (surface_reset == 1)
        {
            surface_free(surface_shadow)
            surface_reset = 0
        }
    }
}
