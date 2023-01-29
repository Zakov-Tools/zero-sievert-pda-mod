var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_sprite(sprite_index, image_index, (x - camx), (y - camy))
if (obj_player.trading == 0)
{
    var startx = 0
    var starty = 16
    var box_h = (s_height - starty)
    var box_w = s_width
    var item_w = sprite_get_width(item_sprite_inv[quale_item])
    var item_h = sprite_get_height(item_sprite_inv[quale_item])
    var draw_x = ((((x - camx) + startx) + (box_w / 2)) - (item_w / 2))
    var draw_y = ((((y - camy) + starty) + (box_h / 2)) - (item_h / 2))
    draw_sprite(item_sprite_inv[quale_item], 0, draw_x, draw_y)
}
