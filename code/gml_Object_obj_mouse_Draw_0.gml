var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if instance_exists(obj_player)
{
    if (obj_player.state != gml_Script_scr_player_map && obj_player.state != gml_Script_scr_player_state_inventory)
    {
        draw_self()
        if (obj_player.state == gml_Script_scr_player_state_move)
        {
            var angolo_precisione = degtorad(((obj_player.total_precision * 2) + (obj_player.recoil_from_shooting / 3)))
            var dis_mouse_player = point_distance(x, y, obj_player.x, obj_player.y)
            var offset_precisione = ((dis_mouse_player * tan(angolo_precisione)) + 5)
            offset_precisione = clamp(offset_precisione, 5, 100)
            draw_sprite(s_mouse, 3, x, (y - offset_precisione))
            draw_sprite(s_mouse, 3, x, (y + offset_precisione))
            draw_sprite(s_mouse, 2, (x + offset_precisione), y)
            draw_sprite(s_mouse, 2, (x - offset_precisione), y)
            if (linea_libera_gun_mouse == 0)
                draw_sprite_ext(s_mouse, 1, x, y, 1, 1, 0, c_red, 1)
        }
        if (obj_player.state == gml_Script_scr_player_state_dead)
            image_index = 4
    }
}
