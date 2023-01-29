var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_sprite_ext(s_16x16, 0, (x - camx), (y - camy), 1, 1, 0, c_white, 0.6)
