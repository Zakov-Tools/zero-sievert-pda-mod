var viewx = camera_get_view_x(view_camera[0])
var viewy = camera_get_view_y(view_camera[0])
if (global.aiming == 1)
{
    if (!surface_exists(surface_aim))
    {
        var get_scope_id = obj_player.mod_id[obj_player.weapon_slot_now][(6 << 0)]
        var scope_sprite = obj_player.mod_scope_image[get_scope_id]
        var scopew = sprite_get_width(scope_sprite)
        var scopeh = sprite_get_height(scope_sprite)
        surface_aim = surface_create(480, 270)
        surface_set_target(surface_aim)
        draw_clear_alpha(c_black, 1)
        gpu_set_blendmode(bm_subtract)
        draw_rectangle(((x - (scopew / 2)) - viewx), ((y - (scopeh / 2)) - viewy), (((x + (scopew / 2)) - viewx) - 1), (((y + (scopeh / 2)) - viewy) - 1), false)
        gpu_set_blendmode(bm_normal)
        var _c_scope = c_white
        if (obj_mouse.linea_libera_gun_mouse == 0)
            _c_scope = 2302888
        draw_sprite_ext(scope_sprite, 0, (x - viewx), (y - viewy), 1, 1, 0, _c_scope, 1)
        surface_reset_target()
    }
    draw_surface(surface_aim, viewx, viewy)
    surface_free(surface_aim)
}
