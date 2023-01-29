var sw = sprite_get_width(s_hud_minimap_menu)
var sh = sprite_get_height(s_hud_minimap_menu)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_set_font(font_quest)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
var offx = 3
var offy = 3
var t_create = "Add new Marker"
var t_des = "Remove Marker"
if (position_now == (0 << 0))
{
    draw_sprite(s_hud_minimap_menu, 0, (startx - camx), (starty - camy))
    draw_sprite(s_hud_minimap_menu, 0, (startx - camx), ((starty - camy) + sh))
    draw_text(((startx - camx) + (sw / 2)), ((starty - camy) + offy), t_create)
    draw_text(((startx - camx) + (sw / 2)), (((starty - camy) + sh) + offy), t_des)
}
if (position_now == (1 << 0))
{
    draw_sprite(s_hud_minimap_menu, 1, (startx - camx), (starty - camy))
    draw_sprite(s_hud_minimap_menu, 0, (startx - camx), ((starty - camy) + sh))
    draw_text((((startx - 1) - camx) + (sw / 2)), ((starty - camy) + offy), t_create)
    draw_text(((startx - camx) + (sw / 2)), (((starty - camy) + sh) + offy), t_des)
}
if (position_now == (2 << 0))
{
    draw_sprite(s_hud_minimap_menu, 0, (startx - camx), (starty - camy))
    draw_sprite(s_hud_minimap_menu, 1, (startx - camx), ((starty - camy) + sh))
    draw_text(((startx - camx) + (sw / 2)), ((starty - camy) + offy), t_create)
    draw_text((((startx - 1) - camx) + (sw / 2)), (((starty - camy) + sh) + offy), t_des)
}
