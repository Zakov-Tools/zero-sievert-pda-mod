event_inherited()
var rot = weapon_pointing_direction
var offsetx_arma = 0
var offsety_arma = 0
var offset_arma = 2
if (alarm[1] >= (arma_rate_of_fire[arma_now] - 2))
{
    offsetx_arma = (-(lengthdir_x(offset_arma, rot)))
    offsety_arma = (-(lengthdir_y(offset_arma, rot)))
}
if (image_alpha > 0)
    draw_sprite_ext(s_shadow, 0, x, (y + 8), 1, 1, 0, c_black, (0.5 * image_alpha))
if (shader_hit == 1)
    shader_set(shd_flash_hit)
if (target_for_image_scale < x)
{
    image_xscale = -1
    rot = (weapon_pointing_direction + 180)
    if (draw_weapon == 1)
    {
    }
    draw_self()
}
else
{
    image_xscale = 1
    rot = weapon_pointing_direction
    draw_self()
    if (draw_weapon == 1)
    {
    }
}
shader_reset()
if (room == test_room)
{
    var _name_node_now = global.node_name[tree_id[node_running_now]]
    draw_text(x, (y - 16), _name_node_now)
    draw_text(x, (y - 26), ("ammo : " + string(ammo_now)))
    draw_text(x, (y - 36), ("reload : " + string(reloading)))
    draw_text(x, (y - 48), ((("cover x : " + string(round(last_cover_pos_x))) + "  :  ") + string(move_point_x)))
    draw_text(x, (y - 58), ((("cover y : " + string(round(last_cover_pos_y))) + "  :  ") + string(move_point_y)))
}
